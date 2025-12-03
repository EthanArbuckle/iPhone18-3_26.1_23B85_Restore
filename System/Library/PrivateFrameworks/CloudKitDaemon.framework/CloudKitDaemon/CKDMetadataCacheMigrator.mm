@interface CKDMetadataCacheMigrator
- (BOOL)migrateDatabase:(id)database fromVersion:(int)version;
@end

@implementation CKDMetadataCacheMigrator

- (BOOL)migrateDatabase:(id)database fromVersion:(int)version
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = 1525120803;
  databaseCopy = database;
  v8 = databaseCopy;
  if (version == -421944720)
  {
    v9 = objc_msgSend_performDatabaseOperation_(databaseCopy, v7, &unk_28385C980);
    v10 = *MEMORY[0x277CBC878];
    v11 = *MEMORY[0x277CBC880];
    if (v9)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v10);
      }

      v12 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
      {
        *buf = 67109378;
        v23 = -421944720;
        v24 = 2112;
        v25 = v9;
        _os_log_fault_impl(&dword_22506F000, v12, OS_LOG_TYPE_FAULT, "Failed to migrate metadata cache from version %d with error: %@", buf, 0x12u);
      }

      version = -421944720;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v10);
      }

      v13 = *MEMORY[0x277CBC830];
      version = 1525120803;
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v23 = -421944720;
        _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEFAULT, "Successfully migrated metadata cache from version %d", buf, 8u);
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v8;
  }

  else
  {
    v14 = 0;
  }

  if (version == 1525120803)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2251540B4;
    v20[3] = &unk_2785468F8;
    v21 = v14;
    v16 = objc_msgSend_performDatabaseOperation_(v8, v15, v20);
    if (v16)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v17 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109378;
        v23 = 1525120803;
        v24 = 2112;
        v25 = v16;
        _os_log_error_impl(&dword_22506F000, v17, OS_LOG_TYPE_ERROR, "Failed to migrate metadata cache from version %d with error: %@", buf, 0x12u);
      }
    }

    else
    {
      v5 = -533383990;
    }

    version = v5;
  }

  v18 = *MEMORY[0x277D85DE8];
  return version == -533383990;
}

@end