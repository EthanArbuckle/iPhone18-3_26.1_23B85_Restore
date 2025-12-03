@interface DSMutableArchive
+ (BOOL)extractArchive:(id)archive toDirectory:(id)directory;
+ (BOOL)extractEntry:(archive *)entry toArchive:(archive *)archive;
+ (id)archive;
- (BOOL)_addDirectoryToContents:(id)contents searchQueue:(id)queue flatten:(BOOL)flatten error:(id *)error;
- (BOOL)_addFile:(id)file archive:(archive *)archive error:(id *)error;
- (BOOL)_writeArchive:(archive *)archive error:(id *)error;
- (BOOL)archiveAsFile:(id)file error:(id *)error;
- (BOOL)archiveAsFileUsingDescriptor:(int)descriptor error:(id *)error;
- (DSMutableArchive)init;
- (id)archiveAsDataWithError:(id *)error;
- (id)archiveAsTempDirectoryWithName:(id)name error:(id *)error;
- (id)archiveAsTempFileWithTemplate:(id)template directory:(id)directory suffix:(id)suffix error:(id *)error;
- (void)_setFormatOnArchive:(archive *)archive;
@end

@implementation DSMutableArchive

+ (id)archive
{
  v2 = objc_alloc_init(DSMutableArchive);

  return v2;
}

- (DSMutableArchive)init
{
  v6.receiver = self;
  v6.super_class = DSMutableArchive;
  v2 = [(DSMutableArchive *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    tableOfContents = v2->_tableOfContents;
    v2->_tableOfContents = array;

    v2->_format = 0;
  }

  return v2;
}

- (BOOL)_addDirectoryToContents:(id)contents searchQueue:(id)queue flatten:(BOOL)flatten error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  contentsCopy = contents;
  queueCopy = queue;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  sourceUrl = [contentsCopy sourceUrl];
  v32 = 0;
  v13 = [defaultManager contentsOfDirectoryAtURL:sourceUrl includingPropertiesForKeys:0 options:0 error:&v32];
  v14 = v32;

  if (v13)
  {
    prefix = [contentsCopy prefix];
    v27 = v14;
    if (([contentsCopy root] & 1) == 0 && !flatten)
    {
      sourceUrl2 = [contentsCopy sourceUrl];
      lastPathComponent = [sourceUrl2 lastPathComponent];
      v18 = [prefix stringByAppendingPathComponent:lastPathComponent];

      prefix = v18;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = v13;
    v20 = [v19 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v29;
      do
      {
        v23 = 0;
        do
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [DSArchivePath archivePathWithSource:*(*(&v28 + 1) + 8 * v23) prefix:prefix root:0];
          [queueCopy addObject:v24];

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v21);
    }

    v14 = v27;
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Diagnostics.DSMutableArchive" code:5 userInfo:0];
    }

    prefix = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(prefix, OS_LOG_TYPE_ERROR))
    {
      [DSMutableArchive _addDirectoryToContents:contentsCopy searchQueue:? flatten:? error:?];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v13 != 0;
}

- (BOOL)_addFile:(id)file archive:(archive *)archive error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  sourceUrl = [fileCopy sourceUrl];
  path = [sourceUrl path];

  prefix = [fileCopy prefix];
  sourceUrl2 = [fileCopy sourceUrl];
  lastPathComponent = [sourceUrl2 lastPathComponent];
  v12 = [prefix stringByAppendingPathComponent:lastPathComponent];

  v13 = DiagnosticLogHandleForCategory(3);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = path;
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&dword_248BD5000, v13, OS_LOG_TYPE_DEFAULT, "Archiving [%@] as [%@]", buf, 0x16u);
  }

  v14 = open([path UTF8String], 0);
  if (v14 == -1)
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Diagnostics.DSMutableArchive" code:3 userInfo:0];
    v20 = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [DSMutableArchive _addFile:archive:error:];
    }

    if (v15)
    {
      v19 = 0;
      goto LABEL_29;
    }
  }

  if (fstat(v14, &v25))
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Diagnostics.DSMutableArchive" code:2 userInfo:0];
    v16 = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [DSMutableArchive _addFile:archive:error:];
    }

    if (v15)
    {
      goto LABEL_26;
    }
  }

  v17 = archive_entry_new();
  if (!v17)
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Diagnostics.DSMutableArchive" code:8 userInfo:0];
    v21 = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [DSMutableArchive _addFile:v21 archive:? error:?];
    }

    if (v15)
    {
LABEL_26:
      v19 = 0;
      goto LABEL_27;
    }
  }

  archive_entry_copy_stat();
  [v12 UTF8String];
  archive_entry_set_pathname();
  if (!archive_write_header())
  {
    goto LABEL_19;
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Diagnostics.DSMutableArchive" code:9 userInfo:0];
  v18 = DiagnosticLogHandleForCategory(3);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [DSMutableArchive _addFile:archive:error:];
  }

  if (!v15)
  {
LABEL_19:
    bzero(buf, 0x2000uLL);
    if (read(v14, buf, 0x2000uLL) >= 1)
    {
      do
      {
        archive_write_data();
      }

      while (read(v14, buf, 0x2000uLL) > 0);
    }

    v15 = 0;
    v19 = 1;
    if (!v17)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  v19 = 0;
  if (v17)
  {
LABEL_22:
    archive_entry_free();
  }

LABEL_27:
  if ((v14 & 0x80000000) == 0)
  {
    close(v14);
  }

LABEL_29:
  if (error)
  {
    v22 = v15;
    *error = v15;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)_setFormatOnArchive:(archive *)archive
{
  format = [(DSMutableArchive *)self format];
  if (format == 2)
  {
    archive_write_add_filter_gzip();
    goto LABEL_5;
  }

  if (format == 1)
  {
    archive_write_add_filter_compress();
LABEL_5:

    MEMORY[0x2821F7220](archive);
    return;
  }

  archive_write_add_filter_gzip();

  MEMORY[0x2821F7240](archive);
}

- (BOOL)_writeArchive:(archive *)archive error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  tableOfContents = [(DSMutableArchive *)self tableOfContents];
  v8 = [tableOfContents countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(tableOfContents);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if (![(DSMutableArchive *)self _addFile:v12 archive:archive error:error])
        {
          v15 = DiagnosticLogHandleForCategory(3);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            [DSMutableArchive _writeArchive:v12 error:v15];
          }

          goto LABEL_17;
        }
      }

      v9 = [tableOfContents countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = archive_write_free();
  if (v13)
  {
    v14 = v13;
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Diagnostics.DSMutableArchive" code:10 userInfo:0];
    }

    tableOfContents = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(tableOfContents, OS_LOG_TYPE_FAULT))
    {
      [DSMutableArchive _writeArchive:v14 error:tableOfContents];
    }

LABEL_17:

    result = 0;
  }

  else
  {
    result = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)archiveAsDataWithError:(id *)error
{
  v5 = archive_write_new();
  [(DSMutableArchive *)self _setFormatOnArchive:v5];
  if (archive_write_open())
  {
    v6 = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DSMutableArchive archiveAsDataWithError:];
    }

    if (error)
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Diagnostics.DSMutableArchive" code:1 userInfo:0];
      v8 = v7;
      dataBuffer = 0;
      *error = v7;
      goto LABEL_9;
    }
  }

  else if ([(DSMutableArchive *)self _writeArchive:v5 error:error])
  {
    dataBuffer = [(DSMutableArchive *)self dataBuffer];
    goto LABEL_9;
  }

  dataBuffer = 0;
LABEL_9:

  return dataBuffer;
}

- (id)archiveAsTempDirectoryWithName:(id)name error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = DiagnosticLogHandleForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = nameCopy;
    _os_log_impl(&dword_248BD5000, v7, OS_LOG_TYPE_DEFAULT, "Archiving as temp directory with name %@", buf, 0xCu);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = MEMORY[0x277CBEBC0];
  v10 = NSTemporaryDirectory();
  v11 = [v9 fileURLWithPath:v10];

  v12 = [v11 URLByAppendingPathComponent:nameCopy];

  path = [v12 path];
  v14 = [defaultManager fileExistsAtPath:path];

  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = DiagnosticLogHandleForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = v12;
    _os_log_impl(&dword_248BD5000, v15, OS_LOG_TYPE_DEFAULT, "Cleaning up prior temp directory archive at [%@]", buf, 0xCu);
  }

  [defaultManager removeItemAtURL:v12 error:error];
  if (*error)
  {
    v16 = DiagnosticLogHandleForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [DSMutableArchive archiveAsTempDirectoryWithName:v12 error:error];
    }

    v17 = 0;
  }

  else
  {
LABEL_10:
    [defaultManager createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:error];
    if (!*error)
    {
      v40 = defaultManager;
      v37 = nameCopy;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      obj = self->_tableOfContents;
      v18 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v51 count:16];
      if (v18)
      {
        v19 = v18;
        v39 = *v42;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v42 != v39)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v41 + 1) + 8 * i);
            prefix = [v21 prefix];
            v23 = v12;
            v24 = [v12 URLByAppendingPathComponent:prefix];
            sourceUrl = [v21 sourceUrl];
            lastPathComponent = [sourceUrl lastPathComponent];
            v27 = [v24 URLByAppendingPathComponent:lastPathComponent];

            uRLByDeletingLastPathComponent = [v27 URLByDeletingLastPathComponent];
            [v40 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:error];

            sourceUrl2 = [v21 sourceUrl];
            if (*error)
            {
              errorCopy = 0;
            }

            else
            {
              errorCopy = error;
            }

            v31 = [v40 copyItemAtURL:sourceUrl2 toURL:v27 error:errorCopy];

            if ((v31 & 1) == 0)
            {
              v32 = DiagnosticLogHandleForCategory(0);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                sourceUrl3 = [v21 sourceUrl];
                v34 = [*error description];
                *buf = 138412802;
                v46 = sourceUrl3;
                v47 = 2112;
                v48 = v27;
                v49 = 2112;
                v50 = v34;
                _os_log_error_impl(&dword_248BD5000, v32, OS_LOG_TYPE_ERROR, "Failed to copy file in archive to temp directory from [%@] to [%@]. Error: [%@]", buf, 0x20u);
              }
            }

            v12 = v23;
          }

          v19 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v51 count:16];
        }

        while (v19);
      }

      nameCopy = v37;
      defaultManager = v40;
    }

    v17 = v12;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)archiveAsTempFileWithTemplate:(id)template directory:(id)directory suffix:(id)suffix error:(id *)error
{
  templateCopy = template;
  directoryCopy = directory;
  suffixCopy = suffix;
  if (!directoryCopy)
  {
    v13 = MEMORY[0x277CBEBC0];
    v14 = NSTemporaryDirectory();
    directoryCopy = [v13 fileURLWithPath:v14];
  }

  v15 = [directoryCopy URLByAppendingPathComponent:templateCopy];
  path = [v15 path];

  if (suffixCopy)
  {
    v17 = [path stringByAppendingString:suffixCopy];

    v18 = [suffixCopy length];
    path = v17;
  }

  else
  {
    v18 = 0;
  }

  fileSystemRepresentation = [path fileSystemRepresentation];
  v20 = strlen(fileSystemRepresentation);
  v21 = malloc_type_malloc(v20 + 1, 0x100004077774924uLL);
  if (v21)
  {
    v22 = v21;
    v23 = strcpy(v21, fileSystemRepresentation);
    v24 = mkstemps(v23, v18);
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    v30 = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [DSMutableArchive archiveAsTempFileWithTemplate:directory:suffix:error:];
    }

    v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Diagnostics.DSMutableArchive" code:4 userInfo:0];
    if (!v31)
    {
LABEL_29:
      if ([(DSMutableArchive *)self archiveAsFileUsingDescriptor:v24 error:error])
      {
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v26 = [defaultManager stringWithFileSystemRepresentation:v22 length:strlen(v22)];

        v27 = [MEMORY[0x277CBEBC0] fileURLWithPath:v26];
      }

      else
      {
        v27 = 0;
      }

      free(v22);
      if ((v24 & 0x80000000) == 0)
      {
        close(v24);
      }

      v29 = 0;
      goto LABEL_24;
    }

    v29 = v31;
    free(v22);
  }

  else
  {
    v28 = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [DSMutableArchive archiveAsTempFileWithTemplate:directory:suffix:error:];
    }

    v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Diagnostics.DSMutableArchive" code:7 userInfo:0];
  }

  v27 = 0;
  if (error && v29)
  {
    v32 = v29;
    v27 = 0;
    *error = v29;
  }

LABEL_24:

  return v27;
}

- (BOOL)archiveAsFile:(id)file error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v7 = archive_write_new();
  [(DSMutableArchive *)self _setFormatOnArchive:v7];
  v8 = DiagnosticLogHandleForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    path = [fileCopy path];
    v16 = 138412290;
    v17 = path;
    _os_log_impl(&dword_248BD5000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to write archive to [%@]", &v16, 0xCu);
  }

  path2 = [fileCopy path];
  [path2 UTF8String];
  v11 = archive_write_open_filename();

  if (v11)
  {
    v12 = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DSMutableArchive archiveAsDataWithError:];
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Diagnostics.DSMutableArchive" code:1 userInfo:0];
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = [(DSMutableArchive *)self _writeArchive:v7 error:error];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)archiveAsFileUsingDescriptor:(int)descriptor error:(id *)error
{
  v6 = archive_write_new();
  [(DSMutableArchive *)self _setFormatOnArchive:v6];
  v7 = DiagnosticLogHandleForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_248BD5000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to write archive to file descriptor.", v12, 2u);
  }

  if (!archive_write_open_fd())
  {
    return [(DSMutableArchive *)self _writeArchive:v6 error:error];
  }

  v8 = DiagnosticLogHandleForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [DSMutableArchive archiveAsDataWithError:];
  }

  if (!error)
  {
    return 0;
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Diagnostics.DSMutableArchive" code:1 userInfo:0];
  v10 = v9;
  result = 0;
  *error = v9;
  return result;
}

+ (BOOL)extractEntry:(archive *)entry toArchive:(archive *)archive
{
  while (1)
  {
    data_block = archive_read_data_block();
    if (data_block)
    {
      break;
    }

    if (archive_write_data_block() < 0)
    {
      return 0;
    }
  }

  return data_block == 1;
}

+ (BOOL)extractArchive:(id)archive toDirectory:(id)directory
{
  v32 = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  directoryCopy = directory;
  v7 = DiagnosticLogHandleForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = archiveCopy;
    _os_log_impl(&dword_248BD5000, v7, OS_LOG_TYPE_DEFAULT, "Opening archive for extraction: %@", buf, 0xCu);
  }

  v8 = archive_read_new();
  v9 = archive_write_disk_new();
  archive_write_disk_set_options();
  archive_write_disk_set_standard_lookup();
  archive_read_support_format_all();
  archive_read_support_filter_all();
  v10 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  [archiveCopy getFileSystemRepresentation:v10 maxLength:1024];
  v11 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  [directoryCopy getFileSystemRepresentation:v11 maxLength:1024];
  v12 = strlen(v11);
  if (v12 + 1 > 0x3FF)
  {
    v16 = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[DSMutableArchive extractArchive:toDirectory:];
    }

    v15 = 0;
    v13 = v11;
  }

  else
  {
    v11[v12] = 47;
    v11[v12 + 1] = 0;
    v13 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
    __strcpy_chk();
    if (archive_read_open_filename())
    {
      v14 = DiagnosticLogHandleForCategory(3);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[DSMutableArchive extractArchive:toDirectory:];
      }
    }

    else
    {
      v15 = 1;
      while (1)
      {
        next_header = archive_read_next_header();
        if (next_header)
        {
          break;
        }

        v20 = archive_entry_pathname();
        v21 = strlen(v11);
        strcpy(&v13[v21], v20);
        archive_entry_set_pathname();
        v22 = DiagnosticLogHandleForCategory(3);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v31 = v13;
          _os_log_impl(&dword_248BD5000, v22, OS_LOG_TYPE_DEFAULT, "Extracting %s", buf, 0xCu);
        }

        if ((archive_write_header() & 0x80000000) != 0)
        {
          v27 = DiagnosticLogHandleForCategory(3);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            +[DSMutableArchive extractArchive:toDirectory:];
          }

          v14 = DiagnosticLogHandleForCategory(3);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
LABEL_31:
            +[DSMutableArchive extractArchive:toDirectory:];
            goto LABEL_7;
          }

          goto LABEL_7;
        }

        v23 = [DSMutableArchive extractEntry:v8 toArchive:v9];
        v15 = v23;
        if (!v23 || archive_write_finish_entry())
        {
          v24 = DiagnosticLogHandleForCategory(3);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v31 = archiveCopy;
            _os_log_error_impl(&dword_248BD5000, v24, OS_LOG_TYPE_ERROR, "Failed to extract %@", buf, 0xCu);
          }

          v25 = DiagnosticLogHandleForCategory(3);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [(DSMutableArchive *)v28 extractArchive:v8 toDirectory:&v29, v25];
          }
        }
      }

      if (next_header == 1)
      {
        v14 = DiagnosticLogHandleForCategory(3);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = archiveCopy;
          _os_log_impl(&dword_248BD5000, v14, OS_LOG_TYPE_DEFAULT, "Finished extracting %@", buf, 0xCu);
        }

        goto LABEL_8;
      }

      v26 = DiagnosticLogHandleForCategory(3);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        +[DSMutableArchive extractArchive:toDirectory:];
      }

      v14 = DiagnosticLogHandleForCategory(3);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }
    }

LABEL_7:
    v15 = 0;
LABEL_8:

    archive_read_close();
    archive_read_free();
    archive_write_close();
    archive_write_free();
    free(v10);
    v10 = v11;
  }

  free(v10);
  free(v13);

  v17 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)_addPathToContents:(void *)a1 searchQueue:flatten:error:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 sourceUrl];
  v2 = [v1 path];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_addDirectoryToContents:(void *)a1 searchQueue:flatten:error:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 sourceUrl];
  v2 = [v1 path];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_addFile:archive:error:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_addFile:archive:error:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_addFile:archive:error:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  archive_error_string();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_writeArchive:(void *)a1 error:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 sourceUrl];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_248BD5000, a2, OS_LOG_TYPE_FAULT, "Failed to add file to archive: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_writeArchive:(int)a1 error:(NSObject *)a2 .cold.2(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_248BD5000, a2, OS_LOG_TYPE_FAULT, "Failed to write completed archive to storage with archive status: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)archiveAsDataWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  archive_error_string();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)archiveAsTempDirectoryWithName:(uint64_t)a1 error:(id *)a2 .cold.1(uint64_t a1, id *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [*a2 description];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)archiveAsTempFileWithTemplate:directory:suffix:error:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)archiveAsTempFileWithTemplate:directory:suffix:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_248BD5000, v0, v1, "Could not allocate %lu bytes.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)extractArchive:toDirectory:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_248BD5000, v0, v1, "The extract destination path %@ is too long to use as the extraction destination!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)extractArchive:toDirectory:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_248BD5000, v0, v1, "Failed to open archive for extraction: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)extractArchive:(uint64_t *)a3 toDirectory:(NSObject *)a4 .cold.3(uint8_t *a1, uint64_t a2, uint64_t *a3, NSObject *a4)
{
  v7 = archive_error_string();
  *a1 = 136315138;
  *a3 = v7;
  _os_log_error_impl(&dword_248BD5000, a4, OS_LOG_TYPE_ERROR, "Extract error: %s", a1, 0xCu);
}

+ (void)extractArchive:toDirectory:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_248BD5000, v0, v1, "Failed to extract from %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)extractArchive:toDirectory:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  archive_error_string();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)extractArchive:toDirectory:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_248BD5000, v0, v1, "Failed to extract %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end