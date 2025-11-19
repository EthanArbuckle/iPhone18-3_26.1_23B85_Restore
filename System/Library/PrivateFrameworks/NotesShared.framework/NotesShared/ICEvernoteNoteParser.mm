@interface ICEvernoteNoteParser
- (ICEvernoteNoteParser)init;
- (NSURL)importDirectory;
- (id)archiveItemsFromFileURL:(id)a3 error:(id *)a4;
- (id)dateFromDateString:(id)a3;
- (id)importDirectoryURLWithImportIdentifier:(id)a3;
- (id)unarchiveEvernoteNoteFromArchiveId:(id)a3 noteArchiveId:(id)a4;
- (id)unarchiveEvernoteResourceFromArchiveId:(id)a3 resourceArchiveId:(id)a4;
- (unint64_t)countEvernoteNotesFromFileURL:(id)a3;
- (void)archiveEvernoteNote:(id)a3;
- (void)archiveEvernoteResource:(id)a3;
- (void)cleanupArchiveId:(id)a3;
- (void)parseFileAtFileURL:(id)a3 shouldCountOnly:(BOOL)a4;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCharacters:(id)a4;
- (void)parser:(id)a3 parseErrorOccurred:(id)a4;
- (void)parserDidEndDocument:(id)a3;
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
  v2 = [MEMORY[0x277D36230] importDocumentsURL];
  v3 = [v2 URLByAppendingPathComponent:@"tmp" isDirectory:1];

  v4 = [v3 URLByAppendingPathComponent:@"Import" isDirectory:1];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  [v5 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:0];

  return v4;
}

- (unint64_t)countEvernoteNotesFromFileURL:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  [(ICEvernoteNoteParser *)self parseFileAtFileURL:v4 shouldCountOnly:1];
  v6 = [(ICEvernoteNoteParser *)self noteCount];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)archiveItemsFromFileURL:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBEB18];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  [(ICEvernoteNoteParser *)self setImportItems:v8];

  [(ICEvernoteNoteParser *)self parseFileAtFileURL:v7 shouldCountOnly:0];
  if (a4)
  {
    v9 = [(ICEvernoteNoteParser *)self parseError];

    if (v9)
    {
      *a4 = [(ICEvernoteNoteParser *)self parseError];
    }
  }

  return [(ICEvernoteNoteParser *)self importItems];
}

- (id)unarchiveEvernoteNoteFromArchiveId:(id)a3 noteArchiveId:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (a3 && v6)
  {
    v9 = a3;
    v10 = [(ICEvernoteNoteParser *)self importDirectory];
    v11 = [v10 URLByAppendingPathComponent:v9 isDirectory:1];

    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [v11 path];
    v14 = [v12 fileExistsAtPath:v13];

    if (v14)
    {
      v15 = [v11 URLByAppendingPathComponent:v7 isDirectory:0];
      v16 = [MEMORY[0x277CCAA00] defaultManager];
      v17 = [v15 path];
      v18 = [v16 fileExistsAtPath:v17];

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

        v24 = [MEMORY[0x277CCAA00] defaultManager];
        v29 = v20;
        v25 = [v24 removeItemAtURL:v15 error:&v29];
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

- (id)unarchiveEvernoteResourceFromArchiveId:(id)a3 resourceArchiveId:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (a3 && v6)
  {
    v9 = a3;
    v10 = [(ICEvernoteNoteParser *)self importDirectory];
    v11 = [v10 URLByAppendingPathComponent:v9 isDirectory:1];

    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [v11 path];
    v14 = [v12 fileExistsAtPath:v13];

    if (v14)
    {
      v15 = [v11 URLByAppendingPathComponent:v7 isDirectory:0];
      v16 = [MEMORY[0x277CCAA00] defaultManager];
      v17 = [v15 path];
      v18 = [v16 fileExistsAtPath:v17];

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

        v24 = [MEMORY[0x277CCAA00] defaultManager];
        v29 = v20;
        v25 = [v24 removeItemAtURL:v15 error:&v29];
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

- (void)cleanupArchiveId:(id)a3
{
  v4 = a3;
  v5 = [(ICEvernoteNoteParser *)self importDirectory];
  v6 = [v5 URLByAppendingPathComponent:v4 isDirectory:1];

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v6 path];
  v9 = [v7 fileExistsAtPath:v8];

  if (v9)
  {
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = 0;
    [v10 removeItemAtURL:v6 error:&v13];
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

- (void)parserDidEndDocument:(id)a3
{
  v4 = [(ICEvernoteNoteParser *)self parseQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ICEvernoteNoteParser_parserDidEndDocument___block_invoke;
  block[3] = &unk_278194B00;
  block[4] = self;
  dispatch_async(v4, block);
}

void __45__ICEvernoteNoteParser_parserDidEndDocument___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) parseSemaphore];
  dispatch_semaphore_signal(v1);
}

- (void)parser:(id)a3 parseErrorOccurred:(id)a4
{
  v5 = a4;
  v6 = [(ICEvernoteNoteParser *)self parseQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__ICEvernoteNoteParser_parser_parseErrorOccurred___block_invoke;
  v8[3] = &unk_278194AD8;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
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

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v8 = a4;
  v9 = [(ICEvernoteNoteParser *)self parseQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__ICEvernoteNoteParser_parser_didStartElement_namespaceURI_qualifiedName_attributes___block_invoke;
  v11[3] = &unk_278194AD8;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(v9, v11);
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

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v5 = a4;
  v6 = [(ICEvernoteNoteParser *)self parseQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__ICEvernoteNoteParser_parser_foundCharacters___block_invoke;
  v8[3] = &unk_278194AD8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
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

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v7 = a4;
  v8 = [(ICEvernoteNoteParser *)self parseQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__ICEvernoteNoteParser_parser_didEndElement_namespaceURI_qualifiedName___block_invoke;
  v10[3] = &unk_278194AD8;
  v11 = v7;
  v12 = self;
  v9 = v7;
  dispatch_async(v8, v10);
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

- (void)parseFileAtFileURL:(id)a3 shouldCountOnly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(ICEvernoteNoteParser *)self setShouldCountOnly:v4];
  [(ICEvernoteNoteParser *)self setShouldIgnoreCurrentNote:0];
  [(ICEvernoteNoteParser *)self setContentLevel:-1];
  [(ICEvernoteNoteParser *)self setNoteCount:0];
  [(ICEvernoteNoteParser *)self setParseError:0];
  v7 = dispatch_semaphore_create(0);
  [(ICEvernoteNoteParser *)self setParseSemaphore:v7];

  v8 = [(ICEvernoteNoteParser *)self parseQueue];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __59__ICEvernoteNoteParser_parseFileAtFileURL_shouldCountOnly___block_invoke;
  v14 = &unk_278194AD8;
  v15 = v6;
  v16 = self;
  v9 = v6;
  dispatch_async(v8, &v11);

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

- (void)archiveEvernoteNote:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCAD78];
    v5 = a3;
    v6 = [v4 UUID];
    v7 = [v6 UUIDString];

    v8 = [(ICEvernoteNoteParser *)self currentImportDirectory];
    v9 = [v8 URLByAppendingPathComponent:v7 isDirectory:0];

    v10 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v5 encodeWithCoder:v10];

    v11 = [v10 encodedData];
    v18 = 0;
    v12 = [v11 writeToURL:v9 options:2 error:&v18];
    v13 = v18;
    if (v12)
    {
      v14 = [(ICEvernoteNoteParser *)self currentImportItem];
      [v14 setObject:v7 forKeyedSubscript:@"noteId"];

      v15 = [(ICEvernoteNoteParser *)self importItems];
      v16 = [(ICEvernoteNoteParser *)self currentImportItem];
      v17 = [v16 copy];
      [v15 addObject:v17];
    }

    else
    {
      v15 = os_log_create("com.apple.notes", "Import");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ICEvernoteNoteParser archiveEvernoteNote:];
      }
    }
  }
}

- (void)archiveEvernoteResource:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCAD78];
    v5 = a3;
    v6 = [v4 UUID];
    v7 = [v6 UUIDString];

    v8 = [(ICEvernoteNoteParser *)self currentImportDirectory];
    v9 = [v8 URLByAppendingPathComponent:v7 isDirectory:0];

    v10 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v5 encodeWithCoder:v10];

    v11 = [v10 encodedData];
    v17 = 0;
    v12 = [v11 writeToURL:v9 options:2 error:&v17];
    v13 = v17;
    if (v12)
    {
      v14 = [(ICEvernoteNoteParser *)self currentImportItem];
      v15 = [v14 objectForKeyedSubscript:@"resourceIds"];

      if (!v15)
      {
        v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      [v15 addObject:v7];
      v16 = [(ICEvernoteNoteParser *)self currentImportItem];
      [v16 setObject:v15 forKeyedSubscript:@"resourceIds"];
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

- (id)importDirectoryURLWithImportIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ICEvernoteNoteParser *)self importDirectory];
  v6 = [v5 URLByAppendingPathComponent:v4 isDirectory:1];

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  [v7 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v11];
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

- (id)dateFromDateString:(id)a3
{
  v3 = a3;
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

  v10 = [v4 dateFromString:v3];

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