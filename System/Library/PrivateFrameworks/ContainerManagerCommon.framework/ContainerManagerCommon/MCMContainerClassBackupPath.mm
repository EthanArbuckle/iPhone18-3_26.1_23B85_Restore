@interface MCMContainerClassBackupPath
+ (id)systemContainerBackupBaseDirectoryWithUserIdentity:(id)a3;
+ (id)systemContainerBackupDirectoryWithUserIdentity:(id)a3;
+ (id)systemGroupContainerBackupDirectoryWithUserIdentity:(id)a3;
@end

@implementation MCMContainerClassBackupPath

+ (id)systemGroupContainerBackupDirectoryWithUserIdentity:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 systemContainerBackupBaseDirectoryWithUserIdentity:a3];
  v4 = [v3 URLByAppendingPathComponent:@"Shared" isDirectory:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)systemContainerBackupDirectoryWithUserIdentity:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 systemContainerBackupBaseDirectoryWithUserIdentity:a3];
  v4 = [v3 URLByAppendingPathComponent:@"Data" isDirectory:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)systemContainerBackupBaseDirectoryWithUserIdentity:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = containermanager_copy_global_configuration();
  v5 = [v4 systemContainerMode];

  if (v5 == 1)
  {
    v6 = containermanager_copy_global_configuration();
    v7 = [v6 defaultUser];
    v8 = [v7 homeDirectoryURL];

    if (_os_feature_enabled_impl())
    {
      v9 = containermanager_copy_global_configuration();
      v10 = [v9 currentUser];
      v11 = [v10 homeDirectoryURL];

      v8 = v11;
    }
  }

  else
  {
    v8 = [v3 homeDirectoryURL];
  }

  v12 = [v8 URLByAppendingPathComponent:@"Library/Backup/SystemContainers" isDirectory:1];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

@end