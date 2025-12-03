@interface MKFileMigrator
- (MKFileMigrator)init;
- (void)import:(id)import filename:(id)filename offset:(unint64_t)offset length:(unint64_t)length total:(unint64_t)total complete:(BOOL)complete;
@end

@implementation MKFileMigrator

- (MKFileMigrator)init
{
  v10.receiver = self;
  v10.super_class = MKFileMigrator;
  v2 = [(MKMigrator *)&v10 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_3;
  }

  [(MKMigrator *)v2 setType:9];
  v4 = objc_alloc_init(MKFileProvider);
  fetchRootPath = [(MKFileProvider *)v4 fetchRootPath];
  root = v3->_root;
  v3->_root = fetchRootPath;

  if (!v3->_root)
  {
    v8 = +[MKLog log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MKFileMigrator init];
    }

    v7 = 0;
  }

  else
  {
LABEL_3:
    v7 = v3;
  }

  return v7;
}

- (void)import:(id)import filename:(id)filename offset:(unint64_t)offset length:(unint64_t)length total:(unint64_t)total complete:(BOOL)complete
{
  completeCopy = complete;
  v48 = *MEMORY[0x277D85DE8];
  importCopy = import;
  filenameCopy = filename;
  if ([filenameCopy length])
  {
    lengthCopy = length;
    totalCopy = total;
    date = [MEMORY[0x277CBEAA8] date];
    v40 = self->_root;
    v16 = [(NSString *)v40 stringByAppendingPathComponent:filenameCopy];
    stringByDeletingLastPathComponent = [v16 stringByDeletingLastPathComponent];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if (([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent] & 1) != 0 || (v45 = 0, objc_msgSend(defaultManager, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", stringByDeletingLastPathComponent, 1, 0, &v45), (v41 = v45) == 0))
    {
      v41 = 0;
      if (offset)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v18 = +[MKLog log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [MKFileMigrator import:filename:offset:length:total:complete:];
      }

      if (offset)
      {
LABEL_7:
        v44 = 0;
        v19 = [defaultManager attributesOfItemAtPath:v16 error:&v44];
        v20 = v44;
        if (v20)
        {
          v21 = v20;
          v22 = +[MKLog log];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [MKFileMigrator import:filename:offset:length:total:complete:];
          }

          goto LABEL_35;
        }

        v24 = [v19 objectForKey:*MEMORY[0x277CCA1C0]];
        unsignedLongLongValue = [v24 unsignedLongLongValue];

        if (unsignedLongLongValue == offset)
        {
          v26 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v16];
          [v26 seekToEndOfFile];
          [v26 writeData:importCopy];
          [v26 synchronizeFile];
          [v26 closeFile];
          v27 = +[MKLog log];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = [importCopy length];
            *buf = 134217984;
            v47 = v28;
            _os_log_impl(&dword_2592D2000, v27, OS_LOG_TYPE_INFO, "appended some bytes to a file. bytes=%ld", buf, 0xCu);
          }

          if (offset + lengthCopy == totalCopy)
          {
            completeCopy = 1;
          }
        }

        else
        {
          if (unsignedLongLongValue == totalCopy)
          {
            completeCopy = 1;
LABEL_31:

LABEL_32:
            -[MKMigrator migratorDidAppendDataSize:](self, "migratorDidAppendDataSize:", [importCopy length]);
            if (!completeCopy)
            {
LABEL_36:

              goto LABEL_37;
            }

            [(MKMigrator *)self migratorDidImport];
            v21 = +[MKAnalytics sharedInstance];
            objc_sync_enter(v21);
            payload = [v21 payload];
            files = [payload files];

            date2 = [MEMORY[0x277CBEAA8] date];
            [date2 timeIntervalSinceDate:date];
            v33 = v32;

            v34 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v33];
            importElapsedTime = [files importElapsedTime];
            v36 = [importElapsedTime decimalNumberByAdding:v34];
            [files setImportElapsedTime:v36];

            objc_sync_exit(v21);
            v19 = +[MKLog log];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_2592D2000, v19, OS_LOG_TYPE_INFO, "did import a file.", buf, 2u);
            }

LABEL_35:

            goto LABEL_36;
          }

          v26 = +[MKLog log];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [MKFileMigrator import:v26 filename:? offset:? length:? total:? complete:?];
          }
        }

        goto LABEL_31;
      }
    }

    if (([defaultManager fileExistsAtPath:v16] & 1) == 0 && (objc_msgSend(importCopy, "writeToFile:atomically:", v16, 1) & 1) == 0)
    {
      mk_validatePath = [filenameCopy mk_validatePath];
      if (!mk_validatePath)
      {
        mk_validatePath = [MEMORY[0x277CCA9B8] errorWithDomain:@"MKFileError" code:1 userInfo:0];
      }

      [(MKMigrator *)self migratorDidFailWithImportError:mk_validatePath];
    }

    if (length == totalCopy)
    {
      completeCopy = 1;
    }

    goto LABEL_32;
  }

  date = +[MKLog log];
  if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
  {
    [MKFileMigrator import:filename:offset:length:total:complete:];
  }

LABEL_37:

  v37 = *MEMORY[0x277D85DE8];
}

@end