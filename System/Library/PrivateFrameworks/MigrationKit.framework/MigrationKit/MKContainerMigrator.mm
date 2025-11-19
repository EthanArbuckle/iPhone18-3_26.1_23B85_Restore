@interface MKContainerMigrator
- (MKContainerMigrator)init;
- (void)import:(id)a3 signature:(id)a4 chunk:(id)a5 filename:(id)a6 offset:(unint64_t)a7 length:(unint64_t)a8 total:(unint64_t)a9 required:(BOOL)a10 excludedFromBackup:(BOOL)a11 complete:(BOOL)a12;
- (void)importContainer:(id)a3 signature:(id)a4 chunk:(id)a5 filename:(id)a6 offset:(unint64_t)a7 length:(unint64_t)a8 total:(unint64_t)a9 required:(BOOL)a10 excludedFromBackup:(BOOL)a11 complete:(BOOL)a12;
@end

@implementation MKContainerMigrator

- (MKContainerMigrator)init
{
  v24[1] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = MKContainerMigrator;
  v2 = [(MKMigrator *)&v21 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    containers = v2->_containers;
    v2->_containers = v3;

    v5 = objc_alloc_init(MKHex);
    v6 = [MKCrypto alloc];
    v7 = [(MKHex *)v5 hexToData:@"331BB104B13265802FC130A8AC28927CFF1CC3F0D502D0B0DE25A8D6F87D3528"];
    v8 = [(MKCrypto *)v6 initWithKey:v7];

    v9 = [(MKHex *)v5 hexToData:@"94FBBFDC34ECDA1EBEF8B963954CCE8370B1841A7E12A080793994F1184A8F213A0430023E"];
    v10 = [(MKCrypto *)v8 decryptData:v9];

    v11 = [(MKHex *)v5 hexToData:@"28EB9810F0391B9C3EDE3CF2BF6877F3BA7DE19BD371E17ABADE930CD817916E9CBBA56265158D4F4B32F15DF9BA7C0C843BE510FE128C505A33DD0C922309853DD00A6EDD954F254D5666F40362AD6F"];
    v12 = [(MKCrypto *)v8 decryptData:v11];

    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:4];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v12 encoding:4];
    v22 = v14;
    v23 = v13;
    v15 = MEMORY[0x277CBEB98];
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    v17 = [v15 setWithArray:v16];
    v24[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    [(MKContainerMigrator *)v2 setSignatures:v18];

    [(MKMigrator *)v2 setType:7];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)importContainer:(id)a3 signature:(id)a4 chunk:(id)a5 filename:(id)a6 offset:(unint64_t)a7 length:(unint64_t)a8 total:(unint64_t)a9 required:(BOOL)a10 excludedFromBackup:(BOOL)a11 complete:(BOOL)a12
{
  v24 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = self;
  objc_sync_enter(v20);
  v21 = objc_autoreleasePoolPush();
  BYTE2(v22) = a12;
  LOWORD(v22) = __PAIR16__(a11, a10);
  [MKContainerMigrator import:v20 signature:"import:signature:chunk:filename:offset:length:total:required:excludedFromBackup:complete:" chunk:v24 filename:v17 offset:v18 length:v19 total:a7 required:a8 excludedFromBackup:a9 complete:v22];
  objc_autoreleasePoolPop(v21);
  objc_sync_exit(v20);
}

- (void)import:(id)a3 signature:(id)a4 chunk:(id)a5 filename:(id)a6 offset:(unint64_t)a7 length:(unint64_t)a8 total:(unint64_t)a9 required:(BOOL)a10 excludedFromBackup:(BOOL)a11 complete:(BOOL)a12
{
  v77 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  if ([v21 length])
  {
    if (v18)
    {
      if (v19)
      {
        v22 = [MEMORY[0x277CBEAA8] date];
        v66 = [(NSDictionary *)self->_signatures objectForKey:v18];
        if ([v66 containsObject:v19])
        {
          v23 = [(NSMutableDictionary *)self->_containers objectForKey:v18];
          if (v23)
          {
            goto LABEL_6;
          }

          v34 = [[MKPlaceholder alloc] initWithBundleIdentifier:v18];
          if ([(MKPlaceholder *)v34 enabled])
          {
            v35 = [(MKPlaceholder *)v34 container];
            [(NSMutableDictionary *)self->_containers setObject:v35 forKey:v18];

            v23 = v35;
            if (v35)
            {
LABEL_6:
              v65 = [v23 stringByAppendingPathComponent:{v21, v23}];
              v63 = [v65 stringByDeletingLastPathComponent];
              v24 = +[MKLog log];
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                *buf = 138413058;
                v72 = v65;
                v73 = 2048;
                *v74 = a7;
                *&v74[8] = 2048;
                *&v74[10] = a8;
                v75 = 2048;
                v76 = a9;
                _os_log_impl(&dword_2592D2000, v24, OS_LOG_TYPE_INFO, "file=%@, offset=%lld, length=%lld, total=%lld", buf, 0x2Au);
              }

              v64 = [MEMORY[0x277CCAA00] defaultManager];
              if (([v64 fileExistsAtPath:v63] & 1) != 0 || (v70 = 0, objc_msgSend(v64, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v63, 1, 0, &v70), (v62 = v70) == 0))
              {
                v62 = 0;
                if (a7)
                {
LABEL_13:
                  v67 = 0;
                  v26 = [v64 attributesOfItemAtPath:v65 error:&v67];
                  v27 = v67;
                  if (v27)
                  {
                    v28 = v27;
                    v29 = +[MKLog log];
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                    {
                      [MKContainerMigrator import:signature:chunk:filename:offset:length:total:required:excludedFromBackup:complete:];
                    }

                    v26 = v28;
                    goto LABEL_59;
                  }

                  v36 = [v26 objectForKey:*MEMORY[0x277CCA1C0]];
                  v37 = [v36 unsignedLongLongValue];

                  if (v37 == a7)
                  {
                    v38 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v65];
                    [v38 seekToEndOfFile];
                    [v38 writeData:v20];
                    [v38 synchronizeFile];
                    [v38 closeFile];
                    v39 = +[MKLog log];
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                    {
                      v40 = [v20 length];
                      *buf = 134217984;
                      v72 = v40;
                      _os_log_impl(&dword_2592D2000, v39, OS_LOG_TYPE_INFO, "appended some bytes to a file. bytes=%ld", buf, 0xCu);
                    }
                  }

LABEL_58:

                  -[MKMigrator migratorDidAppendDataSize:](self, "migratorDidAppendDataSize:", [v20 length]);
                  v50 = +[MKAnalytics sharedInstance];
                  objc_sync_enter(v50);
                  v26 = v50;
                  v51 = [v50 payload];
                  v52 = [v51 whatsapp];

                  v53 = [MEMORY[0x277CBEAA8] date];
                  [v53 timeIntervalSinceDate:v22];
                  v55 = v54;

                  v56 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v55];
                  v57 = [v52 importElapsedTime];
                  v58 = [v57 decimalNumberByAdding:v56];
                  [v52 setImportElapsedTime:v58];

                  objc_sync_exit(v26);
LABEL_59:

                  v31 = v61;
                  goto LABEL_60;
                }
              }

              else
              {
                v25 = +[MKLog log];
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  [MKContainerMigrator import:signature:chunk:filename:offset:length:total:required:excludedFromBackup:complete:];
                }

                if (a7)
                {
                  goto LABEL_13;
                }
              }

              if ([v64 fileExistsAtPath:v65])
              {
                if (![v64 isDeletableFileAtPath:v65])
                {
                  v49 = +[MKLog log];
                  v26 = v49;
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                  {
                    [MKContainerMigrator import:signature:chunk:filename:offset:length:total:required:excludedFromBackup:complete:];
                    v26 = v49;
                  }

                  goto LABEL_59;
                }

                v69 = 0;
                [v64 removeItemAtPath:v65 error:&v69];
                v32 = v69;
                if (v32)
                {
                  v26 = v32;
                  v33 = +[MKLog log];
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                  {
                    [MKContainerMigrator import:v65 signature:v26 chunk:v33 filename:? offset:? length:? total:? required:? excludedFromBackup:? complete:?];
                  }

                  goto LABEL_59;
                }
              }

              v41 = [v20 writeToFile:v65 atomically:1];
              v42 = +[MKLog log];
              v43 = os_log_type_enabled(v42, OS_LOG_TYPE_INFO);
              if (v41)
              {
                if (v43)
                {
                  *buf = 138412290;
                  v72 = v65;
                  _os_log_impl(&dword_2592D2000, v42, OS_LOG_TYPE_INFO, "created a file. file=%@", buf, 0xCu);
                }

                v26 = [MEMORY[0x277CBEBC0] fileURLWithPath:v65];
                v44 = [MEMORY[0x277CCABB0] numberWithBool:a11];
                v45 = *MEMORY[0x277CBE878];
                v68 = v62;
                [v26 setResourceValue:v44 forKey:v45 error:&v68];
                v46 = v68;

                if (v46)
                {
                  v47 = +[MKLog log];
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                  {
                    v60 = [v46 description];
                    *buf = 138412802;
                    v72 = v65;
                    v73 = 1024;
                    *v74 = a11;
                    *&v74[4] = 2112;
                    *&v74[6] = v60;
                    _os_log_error_impl(&dword_2592D2000, v47, OS_LOG_TYPE_ERROR, "could not set a resource value. file=%@, is_excluded_from_backup=%d, error=%@", buf, 0x1Cu);
                  }

                  v62 = v46;
                  goto LABEL_59;
                }

                [(MKMigrator *)self migratorDidImport];
                v62 = 0;
              }

              else
              {
                if (v43)
                {
                  *buf = 138412290;
                  v72 = v65;
                  _os_log_impl(&dword_2592D2000, v42, OS_LOG_TYPE_INFO, "could not create a file. file=%@", buf, 0xCu);
                }

                v48 = [v21 mk_validatePath];
                if (!v48)
                {
                  v48 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MKContainerError" code:1 userInfo:0];
                }

                v26 = v48;
                [(MKMigrator *)self migratorDidFailWithImportError:?];
              }

              goto LABEL_58;
            }
          }

          else
          {
          }

          v30 = +[MKLog log];
          v31 = v30;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [MKContainerMigrator import:signature:chunk:filename:offset:length:total:required:excludedFromBackup:complete:];
            goto LABEL_38;
          }
        }

        else
        {
          v30 = +[MKLog log];
          v31 = v30;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [MKContainerMigrator import:signature:chunk:filename:offset:length:total:required:excludedFromBackup:complete:];
LABEL_38:
            v31 = v30;
          }
        }

LABEL_60:

        goto LABEL_61;
      }

      v22 = +[MKLog log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [MKContainerMigrator import:signature:chunk:filename:offset:length:total:required:excludedFromBackup:complete:];
      }
    }

    else
    {
      v22 = +[MKLog log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [MKContainerMigrator import:signature:chunk:filename:offset:length:total:required:excludedFromBackup:complete:];
      }
    }
  }

  else
  {
    v22 = +[MKLog log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [MKContainerMigrator import:signature:chunk:filename:offset:length:total:required:excludedFromBackup:complete:];
    }
  }

LABEL_61:

  v59 = *MEMORY[0x277D85DE8];
}

@end