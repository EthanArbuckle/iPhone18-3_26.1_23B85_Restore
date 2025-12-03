@interface WFArchiveEntry
+ (id)archiveEntriesWithTopLevelFileRepresentation:(id)representation usedFilenames:(id)filenames;
- (WFArchiveEntry)initWithFilename:(id)filename fileRepresentation:(id)representation;
- (WFArchiveEntry)initWithFilename:(id)filename fileType:(unsigned __int16)type filePermission:(unsigned __int16)permission fileSize:(int64_t)size modificationDate:(id)date creationDate:(id)creationDate dataProvider:(id)provider;
- (void)dealloc;
@end

@implementation WFArchiveEntry

- (void)dealloc
{
  archive_entry_free();
  v3.receiver = self;
  v3.super_class = WFArchiveEntry;
  [(WFArchiveEntry *)&v3 dealloc];
}

- (WFArchiveEntry)initWithFilename:(id)filename fileType:(unsigned __int16)type filePermission:(unsigned __int16)permission fileSize:(int64_t)size modificationDate:(id)date creationDate:(id)creationDate dataProvider:(id)provider
{
  typeCopy = type;
  filenameCopy = filename;
  dateCopy = date;
  creationDateCopy = creationDate;
  providerCopy = provider;
  if (!filenameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFLibArchive.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"filename"}];
  }

  v25.receiver = self;
  v25.super_class = WFArchiveEntry;
  v18 = [(WFArchiveEntry *)&v25 init];
  if (v18)
  {
    v18->_entry = archive_entry_new();
    v19 = [providerCopy copy];
    dataProvider = v18->_dataProvider;
    v18->_dataProvider = v19;

    if (typeCopy == 0x4000 && ([filenameCopy hasSuffix:@"/"] & 1) == 0)
    {
      v21 = [filenameCopy stringByAppendingString:@"/"];

      filenameCopy = v21;
    }

    [filenameCopy fileSystemRepresentation];
    archive_entry_set_pathname();
    archive_entry_set_filetype();
    archive_entry_set_perm();
    archive_entry_set_size();
    if (dateCopy)
    {
      [dateCopy timeIntervalSince1970];
      archive_entry_set_mtime();
    }

    if (creationDateCopy)
    {
      [creationDateCopy timeIntervalSince1970];
      archive_entry_set_ctime();
    }

    v22 = v18;
  }

  return v18;
}

- (WFArchiveEntry)initWithFilename:(id)filename fileRepresentation:(id)representation
{
  filenameCopy = filename;
  representationCopy = representation;
  v8 = representationCopy;
  if (!filenameCopy)
  {
    filenameCopy = [representationCopy filename];
  }

  if ([v8 representationType] == 1 && (objc_msgSend(v8, "fileURL"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "wf_fileIsDirectory"), v9, (v10 & 1) != 0))
  {
    v22 = 0;
    v11 = 0;
    v12 = 0x4000;
    v13 = 493;
  }

  else
  {
    v11 = v23;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __54__WFArchiveEntry_initWithFilename_fileRepresentation___block_invoke;
    v23[3] = &unk_2783477F0;
    v21 = &v24;
    v24 = v8;
    v12 = 0x8000;
    v13 = 420;
    v22 = 1;
  }

  v14 = _Block_copy(v11);
  filename = filenameCopy;
  if (!filenameCopy)
  {
    filename = [v8 filename];
  }

  fileSize = [v8 fileSize];
  modificationDate = [v8 modificationDate];
  creationDate = [v8 creationDate];
  v19 = [(WFArchiveEntry *)self initWithFilename:filename fileType:v12 filePermission:v13 fileSize:fileSize modificationDate:modificationDate creationDate:creationDate dataProvider:v14];

  if (!filenameCopy)
  {
  }

  if (v22)
  {
  }

  return v19;
}

+ (id)archiveEntriesWithTopLevelFileRepresentation:(id)representation usedFilenames:(id)filenames
{
  v45 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  filenamesCopy = filenames;
  if ([representationCopy representationType] == 1 && (objc_msgSend(representationCopy, "fileURL"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "wf_fileIsDirectory"), v7, v8))
  {
    v37 = filenamesCopy;
    fileURL = [representationCopy fileURL];
    v10 = objc_opt_new();
    v11 = [self alloc];
    lastPathComponent = [fileURL lastPathComponent];
    v35 = representationCopy;
    v13 = [v11 initWithFilename:lastPathComponent fileRepresentation:representationCopy];

    v14 = v10;
    v34 = v13;
    [v10 addObject:v13];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [fileURL path];
    v17 = [defaultManager subpathsOfDirectoryAtPath:path error:0];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v17;
    v18 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v40;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v40 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v39 + 1) + 8 * i);
          v23 = [fileURL URLByAppendingPathComponent:v22];
          v24 = [WFFileRepresentation fileWithURL:v23 options:0];
          lastPathComponent2 = [fileURL lastPathComponent];
          v26 = [lastPathComponent2 stringByAppendingPathComponent:v22];

          v27 = [self alloc];
          v28 = WFAvailableArchiveFilename(v26, v37);
          v29 = [v27 initWithFilename:v28 fileRepresentation:v24];

          [v14 addObject:v29];
        }

        v19 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v19);
    }

    v30 = obj;

    v31 = v34;
    representationCopy = v35;
    filenamesCopy = v37;
  }

  else
  {
    v32 = [self alloc];
    fileURL = [representationCopy filename];
    v31 = WFAvailableArchiveFilename(fileURL, filenamesCopy);
    v30 = [v32 initWithFilename:v31 fileRepresentation:representationCopy];
    v43 = v30;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  }

  return v14;
}

@end