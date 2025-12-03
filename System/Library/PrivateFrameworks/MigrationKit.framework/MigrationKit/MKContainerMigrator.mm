@interface MKContainerMigrator
- (MKContainerMigrator)init;
- (void)import:(id)import signature:(id)signature chunk:(id)chunk filename:(id)filename offset:(unint64_t)offset length:(unint64_t)length total:(unint64_t)total required:(BOOL)self0 excludedFromBackup:(BOOL)self1 complete:(BOOL)self2;
- (void)importContainer:(id)container signature:(id)signature chunk:(id)chunk filename:(id)filename offset:(unint64_t)offset length:(unint64_t)length total:(unint64_t)total required:(BOOL)self0 excludedFromBackup:(BOOL)self1 complete:(BOOL)self2;
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

- (void)importContainer:(id)container signature:(id)signature chunk:(id)chunk filename:(id)filename offset:(unint64_t)offset length:(unint64_t)length total:(unint64_t)total required:(BOOL)self0 excludedFromBackup:(BOOL)self1 complete:(BOOL)self2
{
  containerCopy = container;
  signatureCopy = signature;
  chunkCopy = chunk;
  filenameCopy = filename;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v21 = objc_autoreleasePoolPush();
  BYTE2(v22) = complete;
  LOWORD(v22) = __PAIR16__(backup, required);
  [MKContainerMigrator import:selfCopy signature:"import:signature:chunk:filename:offset:length:total:required:excludedFromBackup:complete:" chunk:containerCopy filename:signatureCopy offset:chunkCopy length:filenameCopy total:offset required:length excludedFromBackup:total complete:v22];
  objc_autoreleasePoolPop(v21);
  objc_sync_exit(selfCopy);
}

- (void)import:(id)import signature:(id)signature chunk:(id)chunk filename:(id)filename offset:(unint64_t)offset length:(unint64_t)length total:(unint64_t)total required:(BOOL)self0 excludedFromBackup:(BOOL)self1 complete:(BOOL)self2
{
  v77 = *MEMORY[0x277D85DE8];
  importCopy = import;
  signatureCopy = signature;
  chunkCopy = chunk;
  filenameCopy = filename;
  if ([filenameCopy length])
  {
    if (importCopy)
    {
      if (signatureCopy)
      {
        date = [MEMORY[0x277CBEAA8] date];
        v66 = [(NSDictionary *)self->_signatures objectForKey:importCopy];
        if ([v66 containsObject:signatureCopy])
        {
          v23 = [(NSMutableDictionary *)self->_containers objectForKey:importCopy];
          if (v23)
          {
            goto LABEL_6;
          }

          v34 = [[MKPlaceholder alloc] initWithBundleIdentifier:importCopy];
          if ([(MKPlaceholder *)v34 enabled])
          {
            container = [(MKPlaceholder *)v34 container];
            [(NSMutableDictionary *)self->_containers setObject:container forKey:importCopy];

            v23 = container;
            if (container)
            {
LABEL_6:
              v65 = [v23 stringByAppendingPathComponent:{filenameCopy, v23}];
              stringByDeletingLastPathComponent = [v65 stringByDeletingLastPathComponent];
              v24 = +[MKLog log];
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                *buf = 138413058;
                v72 = v65;
                v73 = 2048;
                *v74 = offset;
                *&v74[8] = 2048;
                *&v74[10] = length;
                v75 = 2048;
                totalCopy = total;
                _os_log_impl(&dword_2592D2000, v24, OS_LOG_TYPE_INFO, "file=%@, offset=%lld, length=%lld, total=%lld", buf, 0x2Au);
              }

              defaultManager = [MEMORY[0x277CCAA00] defaultManager];
              if (([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent] & 1) != 0 || (v70 = 0, objc_msgSend(defaultManager, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", stringByDeletingLastPathComponent, 1, 0, &v70), (v62 = v70) == 0))
              {
                v62 = 0;
                if (offset)
                {
LABEL_13:
                  v67 = 0;
                  v26 = [defaultManager attributesOfItemAtPath:v65 error:&v67];
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
                  unsignedLongLongValue = [v36 unsignedLongLongValue];

                  if (unsignedLongLongValue == offset)
                  {
                    v38 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v65];
                    [v38 seekToEndOfFile];
                    [v38 writeData:chunkCopy];
                    [v38 synchronizeFile];
                    [v38 closeFile];
                    v39 = +[MKLog log];
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                    {
                      v40 = [chunkCopy length];
                      *buf = 134217984;
                      v72 = v40;
                      _os_log_impl(&dword_2592D2000, v39, OS_LOG_TYPE_INFO, "appended some bytes to a file. bytes=%ld", buf, 0xCu);
                    }
                  }

LABEL_58:

                  -[MKMigrator migratorDidAppendDataSize:](self, "migratorDidAppendDataSize:", [chunkCopy length]);
                  v50 = +[MKAnalytics sharedInstance];
                  objc_sync_enter(v50);
                  v26 = v50;
                  payload = [v50 payload];
                  whatsapp = [payload whatsapp];

                  date2 = [MEMORY[0x277CBEAA8] date];
                  [date2 timeIntervalSinceDate:date];
                  v55 = v54;

                  v56 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v55];
                  importElapsedTime = [whatsapp importElapsedTime];
                  v58 = [importElapsedTime decimalNumberByAdding:v56];
                  [whatsapp setImportElapsedTime:v58];

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

                if (offset)
                {
                  goto LABEL_13;
                }
              }

              if ([defaultManager fileExistsAtPath:v65])
              {
                if (![defaultManager isDeletableFileAtPath:v65])
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
                [defaultManager removeItemAtPath:v65 error:&v69];
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

              v41 = [chunkCopy writeToFile:v65 atomically:1];
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
                v44 = [MEMORY[0x277CCABB0] numberWithBool:backup];
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
                    *v74 = backup;
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

                mk_validatePath = [filenameCopy mk_validatePath];
                if (!mk_validatePath)
                {
                  mk_validatePath = [MEMORY[0x277CCA9B8] errorWithDomain:@"MKContainerError" code:1 userInfo:0];
                }

                v26 = mk_validatePath;
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

      date = +[MKLog log];
      if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
      {
        [MKContainerMigrator import:signature:chunk:filename:offset:length:total:required:excludedFromBackup:complete:];
      }
    }

    else
    {
      date = +[MKLog log];
      if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
      {
        [MKContainerMigrator import:signature:chunk:filename:offset:length:total:required:excludedFromBackup:complete:];
      }
    }
  }

  else
  {
    date = +[MKLog log];
    if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
    {
      [MKContainerMigrator import:signature:chunk:filename:offset:length:total:required:excludedFromBackup:complete:];
    }
  }

LABEL_61:

  v59 = *MEMORY[0x277D85DE8];
}

@end