@interface ICEvernoteNoteParser
- (ICEvernoteNoteParser)init;
- (NSURL)importDirectory;
- (id)archiveItemsFromFileURL:(id)l error:(id *)error;
- (id)dateFromDateString:(id)string;
- (id)importDirectoryURLWithImportIdentifier:(id)identifier;
- (id)unarchiveEvernoteNoteFromArchiveId:(id)id noteArchiveId:(id)archiveId;
- (id)unarchiveEvernoteResourceFromArchiveId:(id)id resourceArchiveId:(id)archiveId;
- (unint64_t)countEvernoteNotesFromFileURL:(id)l;
- (void)archiveEvernoteNote:(id)note;
- (void)archiveEvernoteResource:(id)resource;
- (void)cleanupArchiveId:(id)id;
- (void)parseFileAtFileURL:(id)l shouldCountOnly:(BOOL)only;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
- (void)parserDidEndDocument:(id)document;
@end

@implementation ICEvernoteNoteParser

- (ICEvernoteNoteParser)init
{
  v7.receiver = self;
  v7.super_class = ICEvernoteNoteParser;
  v2 = [(ICEvernoteNoteParser *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.notes.EvernoteNoteParser", v3);
    parseQueue = v2->_parseQueue;
    v2->_parseQueue = v4;
  }

  return v2;
}

- (NSURL)importDirectory
{
  importDocumentsURL = [MEMORY[0x277D36230] importDocumentsURL];
  v3 = [importDocumentsURL URLByAppendingPathComponent:@"tmp" isDirectory:1];

  v4 = [v3 URLByAppendingPathComponent:@"Import" isDirectory:1];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:0];

  return v4;
}

- (unint64_t)countEvernoteNotesFromFileURL:(id)l
{
  lCopy = l;
  v5 = objc_autoreleasePoolPush();
  [(ICEvernoteNoteParser *)self parseFileAtFileURL:lCopy shouldCountOnly:1];
  noteCount = [(ICEvernoteNoteParser *)self noteCount];
  objc_autoreleasePoolPop(v5);

  return noteCount;
}

- (id)archiveItemsFromFileURL:(id)l error:(id *)error
{
  v6 = MEMORY[0x277CBEB18];
  lCopy = l;
  v8 = objc_alloc_init(v6);
  [(ICEvernoteNoteParser *)self setImportItems:v8];

  [(ICEvernoteNoteParser *)self parseFileAtFileURL:lCopy shouldCountOnly:0];
  if (error)
  {
    parseError = [(ICEvernoteNoteParser *)self parseError];

    if (parseError)
    {
      *error = [(ICEvernoteNoteParser *)self parseError];
    }
  }

  return [(ICEvernoteNoteParser *)self importItems];
}

- (id)unarchiveEvernoteNoteFromArchiveId:(id)id noteArchiveId:(id)archiveId
{
  archiveIdCopy = archiveId;
  v7 = archiveIdCopy;
  v8 = 0;
  if (id && archiveIdCopy)
  {
    idCopy = id;
    importDirectory = [(ICEvernoteNoteParser *)self importDirectory];
    v11 = [importDirectory URLByAppendingPathComponent:idCopy isDirectory:1];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v11 path];
    v14 = [defaultManager fileExistsAtPath:path];

    if (v14)
    {
      v15 = [v11 URLByAppendingPathComponent:v7 isDirectory:0];
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      path2 = [v15 path];
      v18 = [defaultManager2 fileExistsAtPath:path2];

      if (v18)
      {
        v31 = 0;
        v19 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v15 options:1 error:&v31];
        v20 = v31;
        if (v19)
        {
          v30 = 0;
          v21 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v19 error:&v30];
          v22 = v30;
          if (v22)
          {
            v23 = os_log_create("com.apple.notes", "Import");
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [ICEvernoteNoteParser unarchiveEvernoteNoteFromArchiveId:noteArchiveId:];
            }
          }

          v8 = [[ICEvernoteNote alloc] initWithCoder:v21];
        }

        else
        {
          v22 = os_log_create("com.apple.notes", "Import");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [ICEvernoteNoteParser unarchiveEvernoteNoteFromArchiveId:noteArchiveId:];
          }

          v8 = 0;
        }

        defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
        v29 = v20;
        v25 = [defaultManager3 removeItemAtURL:v15 error:&v29];
        v26 = v29;

        if ((v25 & 1) == 0)
        {
          v27 = os_log_create("com.apple.notes", "Import");
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [ICEvernoteNoteParser unarchiveEvernoteNoteFromArchiveId:v26 noteArchiveId:?];
          }
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)unarchiveEvernoteResourceFromArchiveId:(id)id resourceArchiveId:(id)archiveId
{
  archiveIdCopy = archiveId;
  v7 = archiveIdCopy;
  v8 = 0;
  if (id && archiveIdCopy)
  {
    idCopy = id;
    importDirectory = [(ICEvernoteNoteParser *)self importDirectory];
    v11 = [importDirectory URLByAppendingPathComponent:idCopy isDirectory:1];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v11 path];
    v14 = [defaultManager fileExistsAtPath:path];

    if (v14)
    {
      v15 = [v11 URLByAppendingPathComponent:v7 isDirectory:0];
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      path2 = [v15 path];
      v18 = [defaultManager2 fileExistsAtPath:path2];

      if (v18)
      {
        v31 = 0;
        v19 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v15 options:1 error:&v31];
        v20 = v31;
        if (v19)
        {
          v30 = 0;
          v21 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v19 error:&v30];
          v22 = v30;
          if (v22)
          {
            v23 = os_log_create("com.apple.notes", "Import");
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [ICEvernoteNoteParser unarchiveEvernoteNoteFromArchiveId:noteArchiveId:];
            }
          }

          v8 = [[ICEvernoteResource alloc] initWithCoder:v21];
        }

        else
        {
          v22 = os_log_create("com.apple.notes", "Import");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [ICEvernoteNoteParser unarchiveEvernoteResourceFromArchiveId:resourceArchiveId:];
          }

          v8 = 0;
        }

        defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
        v29 = v20;
        v25 = [defaultManager3 removeItemAtURL:v15 error:&v29];
        v26 = v29;

        if ((v25 & 1) == 0)
        {
          v27 = os_log_create("com.apple.notes", "Import");
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [ICEvernoteNoteParser unarchiveEvernoteResourceFromArchiveId:v26 resourceArchiveId:?];
          }
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)cleanupArchiveId:(id)id
{
  idCopy = id;
  importDirectory = [(ICEvernoteNoteParser *)self importDirectory];
  v6 = [importDirectory URLByAppendingPathComponent:idCopy isDirectory:1];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v6 path];
  v9 = [defaultManager fileExistsAtPath:path];

  if (v9)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = 0;
    [defaultManager2 removeItemAtURL:v6 error:&v13];
    v11 = v13;

    if (v11)
    {
      v12 = os_log_create("com.apple.notes", "Import");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [ICEvernoteNoteParser cleanupArchiveId:v11];
      }
    }
  }
}

- (void)parserDidEndDocument:(id)document
{
  parseQueue = [(ICEvernoteNoteParser *)self parseQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ICEvernoteNoteParser_parserDidEndDocument___block_invoke;
  block[3] = &unk_278194B00;
  block[4] = self;
  dispatch_async(parseQueue, block);
}

void __45__ICEvernoteNoteParser_parserDidEndDocument___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) parseSemaphore];
  dispatch_semaphore_signal(v1);
}

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  occurredCopy = occurred;
  parseQueue = [(ICEvernoteNoteParser *)self parseQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__ICEvernoteNoteParser_parser_parseErrorOccurred___block_invoke;
  v8[3] = &unk_278194AD8;
  v9 = occurredCopy;
  selfCopy = self;
  v7 = occurredCopy;
  dispatch_async(parseQueue, v8);
}

void __50__ICEvernoteNoteParser_parser_parseErrorOccurred___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Import");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__ICEvernoteNoteParser_parser_parseErrorOccurred___block_invoke_cold_1(a1);
  }

  [*(a1 + 40) setParseError:*(a1 + 32)];
  v3 = [*(a1 + 40) parseSemaphore];
  dispatch_semaphore_signal(v3);
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  elementCopy = element;
  parseQueue = [(ICEvernoteNoteParser *)self parseQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__ICEvernoteNoteParser_parser_didStartElement_namespaceURI_qualifiedName_attributes___block_invoke;
  v11[3] = &unk_278194AD8;
  v11[4] = self;
  v12 = elementCopy;
  v10 = elementCopy;
  dispatch_async(parseQueue, v11);
}

void __85__ICEvernoteNoteParser_parser_didStartElement_namespaceURI_qualifiedName_attributes___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (([*(a1 + 32) shouldCountOnly] & 1) == 0 && (objc_msgSend(*(a1 + 32), "shouldIgnoreCurrentNote") & 1) == 0)
  {
    if (![*(a1 + 32) contentLevel])
    {
      v3 = [*(a1 + 32) contentString];
      v4 = [*(a1 + 32) bufferString];
      [v3 appendString:v4];
    }

    v5 = [*(a1 + 40) lowercaseString];
    if ([v5 isEqualToString:@"note"])
    {
      [*(a1 + 32) setShouldIgnoreCurrentNote:0];
      v6 = objc_alloc_init(ICEvernoteNote);
      [*(a1 + 32) setCurrentNote:v6];

      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [*(a1 + 32) setCurrentImportItem:v7];

      v8 = [MEMORY[0x277CCAD78] UUID];
      v9 = [v8 UUIDString];

      v10 = [*(a1 + 32) currentImportItem];
      [v10 setObject:v9 forKeyedSubscript:@"archiveId"];

      v11 = [*(a1 + 32) importDirectoryURLWithImportIdentifier:v9];
      [*(a1 + 32) setCurrentImportDirectory:v11];
    }

    else
    {
      if ([v5 isEqualToString:@"content"])
      {
        [*(a1 + 32) setContentLevel:0];
        v12 = objc_alloc_init(MEMORY[0x277CCAB68]);
        [*(a1 + 32) setContentString:v12];
      }

      else
      {
        if (![v5 isEqualToString:@"resource"])
        {
          if (([*(a1 + 32) contentLevel] & 0x8000000000000000) == 0)
          {
            [*(a1 + 32) setContentLevel:{objc_msgSend(*(a1 + 32), "contentLevel") + 1}];
          }

          goto LABEL_12;
        }

        v12 = objc_alloc_init(ICEvernoteResource);
        [*(a1 + 32) setCurrentResource:v12];
      }
    }

LABEL_12:
    v13 = objc_alloc_init(MEMORY[0x277CCAB68]);
    [*(a1 + 32) setBufferString:v13];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  charactersCopy = characters;
  parseQueue = [(ICEvernoteNoteParser *)self parseQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__ICEvernoteNoteParser_parser_foundCharacters___block_invoke;
  v8[3] = &unk_278194AD8;
  v8[4] = self;
  v9 = charactersCopy;
  v7 = charactersCopy;
  dispatch_async(parseQueue, v8);
}

void __47__ICEvernoteNoteParser_parser_foundCharacters___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (([*(a1 + 32) shouldCountOnly] & 1) == 0 && (objc_msgSend(*(a1 + 32), "shouldIgnoreCurrentNote") & 1) == 0)
  {
    v3 = [*(a1 + 32) bufferString];
    [v3 appendString:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  elementCopy = element;
  parseQueue = [(ICEvernoteNoteParser *)self parseQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__ICEvernoteNoteParser_parser_didEndElement_namespaceURI_qualifiedName___block_invoke;
  v10[3] = &unk_278194AD8;
  v11 = elementCopy;
  selfCopy = self;
  v9 = elementCopy;
  dispatch_async(parseQueue, v10);
}

void __72__ICEvernoteNoteParser_parser_didEndElement_namespaceURI_qualifiedName___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) lowercaseString];
  v4 = [*(a1 + 40) shouldCountOnly];
  v5 = [v3 isEqualToString:@"note"];
  if (v4)
  {
    if (v5)
    {
      [*(a1 + 40) setNoteCount:{objc_msgSend(*(a1 + 40), "noteCount") + 1}];
    }

    goto LABEL_22;
  }

  if (v5)
  {
    v6 = [*(a1 + 40) currentNote];

    if (v6)
    {
      v7 = [*(a1 + 40) shouldIgnoreCurrentNote];
      v8 = *(a1 + 40);
      if (v7)
      {
        v9 = [*(a1 + 40) currentImportItem];
        v10 = [v9 objectForKeyedSubscript:@"archiveId"];

        [*(a1 + 40) cleanupArchiveId:v10];
        [*(a1 + 40) setShouldIgnoreCurrentNote:0];
      }

      else
      {
        v21 = [*(a1 + 40) currentNote];
        [v8 archiveEvernoteNote:v21];

        v10 = [*(a1 + 40) notes];
        v22 = [*(a1 + 40) currentNote];
        [v10 addObject:v22];
      }
    }

    [*(a1 + 40) setCurrentNote:0];
    [*(a1 + 40) setCurrentImportItem:0];
    [*(a1 + 40) setCurrentImportDirectory:0];
    goto LABEL_19;
  }

  v11 = [v3 isEqualToString:@"title"];
  v12 = *(a1 + 40);
  if (v11)
  {
    v13 = [v12 bufferString];
    v14 = [v13 copy];
    v15 = [*(a1 + 40) currentNote];
    [v15 setTitle:v14];
    goto LABEL_10;
  }

  if ([v12 shouldIgnoreCurrentNote])
  {
    goto LABEL_22;
  }

  if ([v3 isEqualToString:@"created"])
  {
    v16 = *(a1 + 40);
    v17 = [v16 bufferString];
    v18 = [v17 copy];
    v19 = [v16 dateFromDateString:v18];
    v20 = [*(a1 + 40) currentNote];
    [v20 setCreated:v19];
LABEL_25:

    goto LABEL_19;
  }

  if ([v3 isEqualToString:@"updated"])
  {
    v23 = *(a1 + 40);
    v17 = [v23 bufferString];
    v18 = [v17 copy];
    v19 = [v23 dateFromDateString:v18];
    v20 = [*(a1 + 40) currentNote];
    [v20 setUpdated:v19];
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"tag"])
  {
    v13 = [*(a1 + 40) currentNote];
    v14 = [v13 tags];
    v15 = [*(a1 + 40) bufferString];
    v24 = [v14 arrayByAddingObject:v15];
    v25 = [*(a1 + 40) currentNote];
    [v25 setTags:v24];
  }

  else if ([v3 isEqualToString:@"content"])
  {
    v26 = [*(a1 + 40) contentString];
    v27 = [*(a1 + 40) bufferString];
    [v26 appendString:v27];

    v13 = [*(a1 + 40) contentString];
    v14 = [v13 copy];
    v15 = [*(a1 + 40) currentNote];
    [v15 setContent:v14];
  }

  else
  {
    v28 = [v3 isEqualToString:@"resource"];
    v29 = *(a1 + 40);
    v30 = [v29 currentResource];
    v31 = v30;
    if (v28)
    {
      [v29 archiveEvernoteResource:v30];

      [*(a1 + 40) setCurrentResource:0];
      goto LABEL_19;
    }

    if (!v31)
    {
      goto LABEL_19;
    }

    if ([v3 isEqualToString:@"mime"])
    {
      v13 = [*(a1 + 40) bufferString];
      v14 = [*(a1 + 40) currentResource];
      [v14 setMime:v13];
      goto LABEL_11;
    }

    if ([v3 isEqualToString:@"width"])
    {
      v13 = [*(a1 + 40) bufferString];
      v32 = [v13 integerValue];
      v14 = [*(a1 + 40) currentResource];
      [v14 setImageWidth:v32];
      goto LABEL_11;
    }

    if ([v3 isEqualToString:@"height"])
    {
      v13 = [*(a1 + 40) bufferString];
      v33 = [v13 integerValue];
      v14 = [*(a1 + 40) currentResource];
      [v14 setImageHeight:v33];
      goto LABEL_11;
    }

    if ([v3 isEqualToString:@"duration"])
    {
      v13 = [*(a1 + 40) bufferString];
      [v13 doubleValue];
      v35 = v34;
      v14 = [*(a1 + 40) currentResource];
      [v14 setDuration:v35];
      goto LABEL_11;
    }

    if ([v3 isEqualToString:@"file-name"])
    {
      v13 = [*(a1 + 40) bufferString];
      v14 = [*(a1 + 40) currentResource];
      [v14 setFileName:v13];
      goto LABEL_11;
    }

    if (![v3 isEqualToString:@"data"])
    {
      goto LABEL_19;
    }

    v36 = objc_alloc(MEMORY[0x277CBEA90]);
    v37 = [*(a1 + 40) bufferString];
    v13 = [v36 initWithBase64EncodedString:v37 options:1];

    if (!v13)
    {
      v14 = os_log_create("com.apple.notes", "Import");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __72__ICEvernoteNoteParser_parser_didEndElement_namespaceURI_qualifiedName___block_invoke_cold_2(v14);
      }

      goto LABEL_11;
    }

    v38 = +[ICCloudConfiguration sharedConfiguration];
    v39 = [v38 maximumAttachmentSizeMB];
    v40 = [v39 unsignedLongLongValue];

    if ([v13 length] > (v40 << 20))
    {
      v41 = os_log_create("com.apple.notes", "Import");
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        __72__ICEvernoteNoteParser_parser_didEndElement_namespaceURI_qualifiedName___block_invoke_cold_1(v13, v40 << 20);
      }

      [*(a1 + 40) setShouldIgnoreCurrentNote:1];
      goto LABEL_12;
    }

    v42 = [*(a1 + 40) currentResource];
    [v42 setData:v13];

    v14 = [v13 ic_md5];
    v15 = [*(a1 + 40) currentResource];
    [v15 setMd5Hash:v14];
  }

LABEL_10:

LABEL_11:
LABEL_12:

LABEL_19:
  if (([*(a1 + 40) contentLevel] & 0x8000000000000000) == 0)
  {
    [*(a1 + 40) setContentLevel:{objc_msgSend(*(a1 + 40), "contentLevel") - 1}];
  }

  [*(a1 + 40) setBufferString:0];
LABEL_22:

  objc_autoreleasePoolPop(v2);
}

- (void)parseFileAtFileURL:(id)l shouldCountOnly:(BOOL)only
{
  onlyCopy = only;
  lCopy = l;
  [(ICEvernoteNoteParser *)self setShouldCountOnly:onlyCopy];
  [(ICEvernoteNoteParser *)self setShouldIgnoreCurrentNote:0];
  [(ICEvernoteNoteParser *)self setContentLevel:-1];
  [(ICEvernoteNoteParser *)self setNoteCount:0];
  [(ICEvernoteNoteParser *)self setParseError:0];
  v7 = dispatch_semaphore_create(0);
  [(ICEvernoteNoteParser *)self setParseSemaphore:v7];

  parseQueue = [(ICEvernoteNoteParser *)self parseQueue];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __59__ICEvernoteNoteParser_parseFileAtFileURL_shouldCountOnly___block_invoke;
  v14 = &unk_278194AD8;
  v15 = lCopy;
  selfCopy = self;
  v9 = lCopy;
  dispatch_async(parseQueue, &v11);

  v10 = [(ICEvernoteNoteParser *)self parseSemaphore:v11];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
}

void __59__ICEvernoteNoteParser_parseFileAtFileURL_shouldCountOnly___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CBEAE0] inputStreamWithURL:*(a1 + 32)];
  v2 = [objc_alloc(MEMORY[0x277CCAE70]) initWithStream:v3];
  [v2 setShouldResolveExternalEntities:0];
  [v2 setShouldProcessNamespaces:1];
  [v2 setDelegate:*(a1 + 40)];
  [v2 parse];
}

- (void)archiveEvernoteNote:(id)note
{
  if (note)
  {
    v4 = MEMORY[0x277CCAD78];
    noteCopy = note;
    uUID = [v4 UUID];
    uUIDString = [uUID UUIDString];

    currentImportDirectory = [(ICEvernoteNoteParser *)self currentImportDirectory];
    v9 = [currentImportDirectory URLByAppendingPathComponent:uUIDString isDirectory:0];

    v10 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [noteCopy encodeWithCoder:v10];

    encodedData = [v10 encodedData];
    v18 = 0;
    v12 = [encodedData writeToURL:v9 options:2 error:&v18];
    v13 = v18;
    if (v12)
    {
      currentImportItem = [(ICEvernoteNoteParser *)self currentImportItem];
      [currentImportItem setObject:uUIDString forKeyedSubscript:@"noteId"];

      importItems = [(ICEvernoteNoteParser *)self importItems];
      currentImportItem2 = [(ICEvernoteNoteParser *)self currentImportItem];
      v17 = [currentImportItem2 copy];
      [importItems addObject:v17];
    }

    else
    {
      importItems = os_log_create("com.apple.notes", "Import");
      if (os_log_type_enabled(importItems, OS_LOG_TYPE_ERROR))
      {
        [ICEvernoteNoteParser archiveEvernoteNote:];
      }
    }
  }
}

- (void)archiveEvernoteResource:(id)resource
{
  if (resource)
  {
    v4 = MEMORY[0x277CCAD78];
    resourceCopy = resource;
    uUID = [v4 UUID];
    uUIDString = [uUID UUIDString];

    currentImportDirectory = [(ICEvernoteNoteParser *)self currentImportDirectory];
    v9 = [currentImportDirectory URLByAppendingPathComponent:uUIDString isDirectory:0];

    v10 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [resourceCopy encodeWithCoder:v10];

    encodedData = [v10 encodedData];
    v17 = 0;
    v12 = [encodedData writeToURL:v9 options:2 error:&v17];
    v13 = v17;
    if (v12)
    {
      currentImportItem = [(ICEvernoteNoteParser *)self currentImportItem];
      v15 = [currentImportItem objectForKeyedSubscript:@"resourceIds"];

      if (!v15)
      {
        v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      [v15 addObject:uUIDString];
      currentImportItem2 = [(ICEvernoteNoteParser *)self currentImportItem];
      [currentImportItem2 setObject:v15 forKeyedSubscript:@"resourceIds"];
    }

    else
    {
      v15 = os_log_create("com.apple.notes", "Import");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ICEvernoteNoteParser archiveEvernoteResource:];
      }
    }
  }
}

- (id)importDirectoryURLWithImportIdentifier:(id)identifier
{
  identifierCopy = identifier;
  importDirectory = [(ICEvernoteNoteParser *)self importDirectory];
  v6 = [importDirectory URLByAppendingPathComponent:identifierCopy isDirectory:1];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  [defaultManager createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v11];
  v8 = v11;

  if (v8)
  {
    v9 = os_log_create("com.apple.notes", "Import");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICEvernoteNoteParser importDirectoryURLWithImportIdentifier:v8];
    }
  }

  return v6;
}

- (id)dateFromDateString:(id)string
{
  stringCopy = string;
  v4 = dateFromDateString__dateFormatter;
  if (!dateFromDateString__dateFormatter)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA968]);
    v6 = dateFromDateString__dateFormatter;
    dateFromDateString__dateFormatter = v5;

    v7 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [dateFromDateString__dateFormatter setLocale:v7];
    v8 = dateFromDateString__dateFormatter;
    v9 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    [v8 setTimeZone:v9];

    [dateFromDateString__dateFormatter setDateFormat:@"yyyyMMdd'T'HHmmss'Z'"];
    v4 = dateFromDateString__dateFormatter;
  }

  v10 = [v4 dateFromString:stringCopy];

  return v10;
}

- (void)unarchiveEvernoteNoteFromArchiveId:(void *)a1 noteArchiveId:.cold.3(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)unarchiveEvernoteResourceFromArchiveId:(void *)a1 resourceArchiveId:.cold.3(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)cleanupArchiveId:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __50__ICEvernoteNoteParser_parser_parseErrorOccurred___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __72__ICEvernoteNoteParser_parser_didEndElement_namespaceURI_qualifiedName___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCA8E8] stringFromByteCount:objc_msgSend(a1 countStyle:{"length"), 0}];
  v9 = [MEMORY[0x277CCA8E8] stringFromByteCount:a2 countStyle:0];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)importDirectoryURLWithImportIdentifier:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end