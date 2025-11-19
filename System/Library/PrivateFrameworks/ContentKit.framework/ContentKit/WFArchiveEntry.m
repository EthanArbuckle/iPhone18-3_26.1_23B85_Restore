@interface WFArchiveEntry
+ (id)archiveEntriesWithTopLevelFileRepresentation:(id)a3 usedFilenames:(id)a4;
- (WFArchiveEntry)initWithFilename:(id)a3 fileRepresentation:(id)a4;
- (WFArchiveEntry)initWithFilename:(id)a3 fileType:(unsigned __int16)a4 filePermission:(unsigned __int16)a5 fileSize:(int64_t)a6 modificationDate:(id)a7 creationDate:(id)a8 dataProvider:(id)a9;
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

- (WFArchiveEntry)initWithFilename:(id)a3 fileType:(unsigned __int16)a4 filePermission:(unsigned __int16)a5 fileSize:(int64_t)a6 modificationDate:(id)a7 creationDate:(id)a8 dataProvider:(id)a9
{
  v11 = a4;
  v14 = a3;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  if (!v14)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"WFLibArchive.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"filename"}];
  }

  v25.receiver = self;
  v25.super_class = WFArchiveEntry;
  v18 = [(WFArchiveEntry *)&v25 init];
  if (v18)
  {
    v18->_entry = archive_entry_new();
    v19 = [v17 copy];
    dataProvider = v18->_dataProvider;
    v18->_dataProvider = v19;

    if (v11 == 0x4000 && ([v14 hasSuffix:@"/"] & 1) == 0)
    {
      v21 = [v14 stringByAppendingString:@"/"];

      v14 = v21;
    }

    [v14 fileSystemRepresentation];
    archive_entry_set_pathname();
    archive_entry_set_filetype();
    archive_entry_set_perm();
    archive_entry_set_size();
    if (v15)
    {
      [v15 timeIntervalSince1970];
      archive_entry_set_mtime();
    }

    if (v16)
    {
      [v16 timeIntervalSince1970];
      archive_entry_set_ctime();
    }

    v22 = v18;
  }

  return v18;
}

- (WFArchiveEntry)initWithFilename:(id)a3 fileRepresentation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v6 = [v7 filename];
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
  v15 = v6;
  if (!v6)
  {
    v15 = [v8 filename];
  }

  v16 = [v8 fileSize];
  v17 = [v8 modificationDate];
  v18 = [v8 creationDate];
  v19 = [(WFArchiveEntry *)self initWithFilename:v15 fileType:v12 filePermission:v13 fileSize:v16 modificationDate:v17 creationDate:v18 dataProvider:v14];

  if (!v6)
  {
  }

  if (v22)
  {
  }

  return v19;
}

+ (id)archiveEntriesWithTopLevelFileRepresentation:(id)a3 usedFilenames:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 representationType] == 1 && (objc_msgSend(v5, "fileURL"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "wf_fileIsDirectory"), v7, v8))
  {
    v37 = v6;
    v9 = [v5 fileURL];
    v10 = objc_opt_new();
    v11 = [a1 alloc];
    v12 = [v9 lastPathComponent];
    v35 = v5;
    v13 = [v11 initWithFilename:v12 fileRepresentation:v5];

    v14 = v10;
    v34 = v13;
    [v10 addObject:v13];
    v15 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = [v9 path];
    v17 = [v15 subpathsOfDirectoryAtPath:v16 error:0];

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
          v23 = [v9 URLByAppendingPathComponent:v22];
          v24 = [WFFileRepresentation fileWithURL:v23 options:0];
          v25 = [v9 lastPathComponent];
          v26 = [v25 stringByAppendingPathComponent:v22];

          v27 = [a1 alloc];
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
    v5 = v35;
    v6 = v37;
  }

  else
  {
    v32 = [a1 alloc];
    v9 = [v5 filename];
    v31 = WFAvailableArchiveFilename(v9, v6);
    v30 = [v32 initWithFilename:v31 fileRepresentation:v5];
    v43 = v30;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  }

  return v14;
}

@end