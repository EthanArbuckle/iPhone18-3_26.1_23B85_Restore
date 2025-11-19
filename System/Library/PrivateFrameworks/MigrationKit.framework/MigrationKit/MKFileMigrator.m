@interface MKFileMigrator
- (MKFileMigrator)init;
- (void)import:(id)a3 filename:(id)a4 offset:(unint64_t)a5 length:(unint64_t)a6 total:(unint64_t)a7 complete:(BOOL)a8;
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
  v5 = [(MKFileProvider *)v4 fetchRootPath];
  root = v3->_root;
  v3->_root = v5;

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

- (void)import:(id)a3 filename:(id)a4 offset:(unint64_t)a5 length:(unint64_t)a6 total:(unint64_t)a7 complete:(BOOL)a8
{
  v8 = a8;
  v48 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v14 = a4;
  if ([v14 length])
  {
    v38 = a6;
    v39 = a7;
    v15 = [MEMORY[0x277CBEAA8] date];
    v40 = self->_root;
    v16 = [(NSString *)v40 stringByAppendingPathComponent:v14];
    v42 = [v16 stringByDeletingLastPathComponent];
    v17 = [MEMORY[0x277CCAA00] defaultManager];
    if (([v17 fileExistsAtPath:v42] & 1) != 0 || (v45 = 0, objc_msgSend(v17, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v42, 1, 0, &v45), (v41 = v45) == 0))
    {
      v41 = 0;
      if (a5)
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

      if (a5)
      {
LABEL_7:
        v44 = 0;
        v19 = [v17 attributesOfItemAtPath:v16 error:&v44];
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
        v25 = [v24 unsignedLongLongValue];

        if (v25 == a5)
        {
          v26 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v16];
          [v26 seekToEndOfFile];
          [v26 writeData:v43];
          [v26 synchronizeFile];
          [v26 closeFile];
          v27 = +[MKLog log];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = [v43 length];
            *buf = 134217984;
            v47 = v28;
            _os_log_impl(&dword_2592D2000, v27, OS_LOG_TYPE_INFO, "appended some bytes to a file. bytes=%ld", buf, 0xCu);
          }

          if (a5 + v38 == v39)
          {
            v8 = 1;
          }
        }

        else
        {
          if (v25 == v39)
          {
            v8 = 1;
LABEL_31:

LABEL_32:
            -[MKMigrator migratorDidAppendDataSize:](self, "migratorDidAppendDataSize:", [v43 length]);
            if (!v8)
            {
LABEL_36:

              goto LABEL_37;
            }

            [(MKMigrator *)self migratorDidImport];
            v21 = +[MKAnalytics sharedInstance];
            objc_sync_enter(v21);
            v29 = [v21 payload];
            v30 = [v29 files];

            v31 = [MEMORY[0x277CBEAA8] date];
            [v31 timeIntervalSinceDate:v15];
            v33 = v32;

            v34 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v33];
            v35 = [v30 importElapsedTime];
            v36 = [v35 decimalNumberByAdding:v34];
            [v30 setImportElapsedTime:v36];

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

    if (([v17 fileExistsAtPath:v16] & 1) == 0 && (objc_msgSend(v43, "writeToFile:atomically:", v16, 1) & 1) == 0)
    {
      v23 = [v14 mk_validatePath];
      if (!v23)
      {
        v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MKFileError" code:1 userInfo:0];
      }

      [(MKMigrator *)self migratorDidFailWithImportError:v23];
    }

    if (a6 == v39)
    {
      v8 = 1;
    }

    goto LABEL_32;
  }

  v15 = +[MKLog log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [MKFileMigrator import:filename:offset:length:total:complete:];
  }

LABEL_37:

  v37 = *MEMORY[0x277D85DE8];
}

@end