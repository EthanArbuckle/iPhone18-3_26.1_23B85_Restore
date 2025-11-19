@interface CalMigrationBackup
+ (BOOL)backupCalendarDirectory:(id)a3 intoArchiveNamed:(id)a4 error:(id *)a5;
+ (BOOL)removeExistingBackupWithArchiveName:(id)a3 inCalendarDirectory:(id)a4 error:(id *)a5;
+ (BOOL)shouldBackupCalendarDirectory:(id)a3 withPrivacySafePathProvider:(id)a4;
@end

@implementation CalMigrationBackup

+ (BOOL)backupCalendarDirectory:(id)a3 intoArchiveNamed:(id)a4 error:(id *)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v7 URLByAppendingPathComponent:v8];
  v11 = [v10 path];
  v12 = [v9 fileExistsAtPath:v11];

  if (v12)
  {
    v33 = 0;
    v13 = [v9 removeItemAtURL:v10 error:&v33];
    v14 = v33;
    if ((v13 & 1) == 0)
    {
      v15 = +[CalMigrationLog defaultCategory];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CalMigrationBackup backupCalendarDirectory:v10 intoArchiveNamed:? error:?];
      }
    }
  }

  v16 = [v9 temporaryDirectory];
  v17 = [v16 URLByAppendingPathComponent:v8];

  v32 = 0;
  LOBYTE(v16) = [v9 archiveURLToFile:v7 toFile:v17 createPKZipArchive:1 error:&v32];
  v18 = v32;
  v19 = v18;
  if (v16)
  {
    v31 = v18;
    v20 = [v9 moveItemAtURL:v17 toURL:v10 error:&v31];
    v21 = v31;

    if (v20)
    {
      v22 = 1;
      if (!a5)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v23 = +[CalMigrationLog defaultCategory];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v29 = [v17 path];
      v30 = [v10 path];
      *buf = 138412802;
      v35 = v29;
      v36 = 2112;
      v37 = v30;
      v38 = 2112;
      v39 = v21;
      _os_log_error_impl(&dword_2428EA000, v23, OS_LOG_TYPE_ERROR, "Failed to move backup archive %@ to %@. error = %@", buf, 0x20u);
    }

    v19 = v21;
  }

  else
  {
    v23 = +[CalMigrationLog defaultCategory];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [v17 path];
      v25 = [v7 path];
      *buf = 138412802;
      v35 = v24;
      v36 = 2112;
      v37 = v25;
      v38 = 2112;
      v39 = v19;
      _os_log_error_impl(&dword_2428EA000, v23, OS_LOG_TYPE_ERROR, "Failed to create backup archive %@ for calendar directory %@. error = %@", buf, 0x20u);
    }
  }

  v22 = 0;
  v21 = v19;
  if (a5)
  {
LABEL_17:
    v26 = v21;
    *a5 = v21;
  }

LABEL_18:

  v27 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (BOOL)shouldBackupCalendarDirectory:(id)a3 withPrivacySafePathProvider:(id)a4
{
  v46[1] = *MEMORY[0x277D85DE8];
  v25 = a3;
  v5 = a4;
  v26 = [MEMORY[0x277CCAA00] defaultManager];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v28 = *MEMORY[0x277CBE838];
  v46[0] = *MEMORY[0x277CBE838];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __80__CalMigrationBackup_shouldBackupCalendarDirectory_withPrivacySafePathProvider___block_invoke;
  v35[3] = &unk_278D6D6A8;
  v24 = v5;
  v36 = v24;
  v37 = &v38;
  v7 = [v26 enumeratorAtURL:v25 includingPropertiesForKeys:v6 options:0 errorHandler:v35];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v31 objects:v45 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = *v32;
    while (2)
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v31 + 1) + 8 * v12);
        v29 = 0;
        v30 = 0;
        v15 = [v14 getResourceValue:&v30 forKey:v28 error:&v29];
        v16 = v30;
        v10 = v29;

        if ((v15 & 1) == 0)
        {
          v17 = +[CalMigrationLog defaultCategory];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = [v24 privacySafePathForURLInCalendarDirectory:v14];
            [(CalMigrationBackup *)v18 shouldBackupCalendarDirectory:v10 withPrivacySafePathProvider:v44, v17];
          }

          *(v39 + 24) = 1;
          goto LABEL_15;
        }

        v9 += [v16 unsignedLongLongValue];
        if (v9 > 0x6400000)
        {
          v21 = +[CalMigrationLog defaultCategory];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *v44 = 0;
            _os_log_impl(&dword_2428EA000, v21, OS_LOG_TYPE_DEFAULT, "Calendar directory is too big. Will not create a backup!", v44, 2u);
          }

          v20 = 0;
          v19 = obj;
          goto LABEL_25;
        }

        ++v12;
        v13 = v10;
      }

      while (v8 != v12);
      v8 = [obj countByEnumeratingWithState:&v31 objects:v45 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

LABEL_15:

  if (*(v39 + 24) == 1)
  {
    v19 = +[CalMigrationLog defaultCategory];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2428EA000, v19, OS_LOG_TYPE_DEFAULT, "Failed to get total size of calendar directory. Will not create a backup!", buf, 2u);
    }

    v20 = 0;
  }

  else
  {
    v19 = +[CalMigrationLog defaultCategory];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v43 = v9;
      _os_log_impl(&dword_2428EA000, v19, OS_LOG_TYPE_DEFAULT, "Calendar directory is %llu bytes. Will create a backup", buf, 0xCu);
    }

    v20 = 1;
  }

LABEL_25:

  _Block_object_dispose(&v38, 8);
  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t __80__CalMigrationBackup_shouldBackupCalendarDirectory_withPrivacySafePathProvider___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[CalMigrationLog defaultCategory];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = [*(a1 + 32) privacySafePathForURLInCalendarDirectory:v5];
    v11 = 138543618;
    v12 = v10;
    v13 = 2112;
    v14 = v6;
    _os_log_error_impl(&dword_2428EA000, v7, OS_LOG_TYPE_ERROR, "Error enumerating calendar directory at URL %{public}@: %@", &v11, 0x16u);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (BOOL)removeExistingBackupWithArchiveName:(id)a3 inCalendarDirectory:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x277CCAA00];
  v8 = a4;
  v9 = a3;
  v10 = [v7 defaultManager];
  v11 = [v8 URLByAppendingPathComponent:v9];

  v12 = [v11 path];
  LODWORD(v9) = [v10 fileExistsAtPath:v12];

  if (v9)
  {
    v18 = 0;
    v13 = [v10 removeItemAtURL:v11 error:&v18];
    v14 = v18;
    if ((v13 & 1) == 0)
    {
      v15 = +[CalMigrationLog reminders];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CalMigrationBackup backupCalendarDirectory:v11 intoArchiveNamed:? error:?];
      }

      if (a5)
      {
        v16 = v14;
        *a5 = v14;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

+ (void)backupCalendarDirectory:(void *)a1 intoArchiveNamed:error:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_2428EA000, v2, v3, "Failed to delete existing backup file %@. error = %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)shouldBackupCalendarDirectory:(uint8_t *)buf withPrivacySafePathProvider:(os_log_t)log .cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_2428EA000, log, OS_LOG_TYPE_ERROR, "Failed to get file size of URL %{public}@: %@", buf, 0x16u);
}

@end