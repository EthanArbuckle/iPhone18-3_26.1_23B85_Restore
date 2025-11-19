@interface CRPluginsController
- (BOOL)isApplicationInstalledWithMaxRetries:(int)a3 bundleName:(id)a4;
- (BOOL)rebuildApplicationDataBase;
@end

@implementation CRPluginsController

- (BOOL)isApplicationInstalledWithMaxRetries:(int)a3 bundleName:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = v5;
  if (v5 && [v5 length])
  {
    v7 = 0;
    if (a3 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = a3;
    }

    while (1)
    {
      v9 = handleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v16 = v7;
        _os_log_impl(&dword_24785F000, v9, OS_LOG_TYPE_DEFAULT, "application is not installed Sleeping retry:%d", buf, 8u);
      }

      sleep(0xAu);
      v10 = [MEMORY[0x277CC1E80] defaultWorkspace];
      if ([v10 applicationIsInstalled:v6])
      {
        break;
      }

      ++v7;

      if (v8 == v7)
      {
        v7 = v8;
LABEL_16:
        v12 = handleForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [CRPluginsController isApplicationInstalledWithMaxRetries:v7 bundleName:v12];
        }

        v11 = 0;
        goto LABEL_19;
      }
    }

    if (v7 >= a3)
    {
      goto LABEL_16;
    }

    v12 = handleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24785F000, v12, OS_LOG_TYPE_DEFAULT, "Application found", buf, 2u);
    }

    v11 = 1;
LABEL_19:
  }

  else
  {
    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)rebuildApplicationDataBase
{
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [v2 _LSPrivateRebuildApplicationDatabasesForSystemApps:1 internal:0 user:0];

  v4 = handleForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_24785F000, v5, OS_LOG_TYPE_DEFAULT, "Re building DB successful", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CRPluginsController *)v5 rebuildApplicationDataBase];
  }

  return v3;
}

- (void)isApplicationInstalledWithMaxRetries:(int)a1 bundleName:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_24785F000, a2, OS_LOG_TYPE_ERROR, "Unable to find Application after:%d retries", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end