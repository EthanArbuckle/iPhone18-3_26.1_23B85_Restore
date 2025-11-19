@interface NSUserDefaults(FIBackupSupport)
+ (id)fi_npsManager;
+ (void)fi_backupAndSetBool:()FIBackupSupport forKey:;
+ (void)fi_backupAndSetDouble:()FIBackupSupport forKey:;
+ (void)fi_backupAndSetFloat:()FIBackupSupport forKey:;
+ (void)fi_backupAndSetInteger:()FIBackupSupport forKey:;
+ (void)fi_backupAndSetObject:()FIBackupSupport forKey:;
+ (void)fi_backupAndSetURL:()FIBackupSupport forKey:;
+ (void)fi_backupStandardUserDefaultsKey:()FIBackupSupport useContainer:;
+ (void)fi_synchronizeStandardUserDefaultsKey:()FIBackupSupport useContainer:;
@end

@implementation NSUserDefaults(FIBackupSupport)

+ (id)fi_npsManager
{
  if (fi_npsManager_onceToken != -1)
  {
    +[NSUserDefaults(FIBackupSupport) fi_npsManager];
  }

  v1 = fi_npsManager_npsManager;

  return v1;
}

+ (void)fi_backupAndSetObject:()FIBackupSupport forKey:
{
  v6 = MEMORY[0x277CBEBD0];
  v9 = a4;
  v7 = a3;
  v8 = [v6 standardUserDefaults];
  [v8 setObject:v7 forKey:v9];

  [a1 fi_backupStandardUserDefaultsKey:v9];
}

+ (void)fi_backupAndSetInteger:()FIBackupSupport forKey:
{
  v6 = MEMORY[0x277CBEBD0];
  v8 = a4;
  v7 = [v6 standardUserDefaults];
  [v7 setInteger:a3 forKey:v8];

  [a1 fi_backupStandardUserDefaultsKey:v8];
}

+ (void)fi_backupAndSetFloat:()FIBackupSupport forKey:
{
  v6 = MEMORY[0x277CBEBD0];
  v9 = a4;
  v7 = [v6 standardUserDefaults];
  *&v8 = a2;
  [v7 setFloat:v9 forKey:v8];

  [a1 fi_backupStandardUserDefaultsKey:v9];
}

+ (void)fi_backupAndSetDouble:()FIBackupSupport forKey:
{
  v6 = MEMORY[0x277CBEBD0];
  v8 = a4;
  v7 = [v6 standardUserDefaults];
  [v7 setDouble:v8 forKey:a2];

  [a1 fi_backupStandardUserDefaultsKey:v8];
}

+ (void)fi_backupAndSetBool:()FIBackupSupport forKey:
{
  v6 = MEMORY[0x277CBEBD0];
  v8 = a4;
  v7 = [v6 standardUserDefaults];
  [v7 setBool:a3 forKey:v8];

  [a1 fi_backupStandardUserDefaultsKey:v8];
}

+ (void)fi_backupAndSetURL:()FIBackupSupport forKey:
{
  v6 = MEMORY[0x277CBEBD0];
  v9 = a4;
  v7 = a3;
  v8 = [v6 standardUserDefaults];
  [v8 setURL:v7 forKey:v9];

  [a1 fi_backupStandardUserDefaultsKey:v9];
}

+ (void)fi_backupStandardUserDefaultsKey:()FIBackupSupport useContainer:
{
  _HKInitializeLogging();
  v0 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
  {
    [NSUserDefaults(FIBackupSupport) fi_backupStandardUserDefaultsKey:v0 useContainer:?];
  }
}

+ (void)fi_synchronizeStandardUserDefaultsKey:()FIBackupSupport useContainer:
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&dword_24B35E000, v7, OS_LOG_TYPE_DEFAULT, "Synchronizing default with key: %@", &v14, 0xCu);
  }

  v8 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [v8 bundleIdentifier];

  v10 = [a1 fi_npsManager];
  v11 = [MEMORY[0x277CBEB98] setWithObject:v6];
  if (a4)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  [v10 synchronizeUserDefaultsDomain:v9 keys:v11 container:v12];

  v13 = *MEMORY[0x277D85DE8];
}

@end