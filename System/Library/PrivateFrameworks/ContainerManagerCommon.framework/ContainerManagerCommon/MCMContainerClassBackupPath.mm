@interface MCMContainerClassBackupPath
+ (id)systemContainerBackupBaseDirectoryWithUserIdentity:(id)identity;
+ (id)systemContainerBackupDirectoryWithUserIdentity:(id)identity;
+ (id)systemGroupContainerBackupDirectoryWithUserIdentity:(id)identity;
@end

@implementation MCMContainerClassBackupPath

+ (id)systemGroupContainerBackupDirectoryWithUserIdentity:(id)identity
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [self systemContainerBackupBaseDirectoryWithUserIdentity:identity];
  v4 = [v3 URLByAppendingPathComponent:@"Shared" isDirectory:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)systemContainerBackupDirectoryWithUserIdentity:(id)identity
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [self systemContainerBackupBaseDirectoryWithUserIdentity:identity];
  v4 = [v3 URLByAppendingPathComponent:@"Data" isDirectory:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)systemContainerBackupBaseDirectoryWithUserIdentity:(id)identity
{
  v15 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v4 = containermanager_copy_global_configuration();
  systemContainerMode = [v4 systemContainerMode];

  if (systemContainerMode == 1)
  {
    v6 = containermanager_copy_global_configuration();
    defaultUser = [v6 defaultUser];
    homeDirectoryURL = [defaultUser homeDirectoryURL];

    if (_os_feature_enabled_impl())
    {
      v9 = containermanager_copy_global_configuration();
      currentUser = [v9 currentUser];
      homeDirectoryURL2 = [currentUser homeDirectoryURL];

      homeDirectoryURL = homeDirectoryURL2;
    }
  }

  else
  {
    homeDirectoryURL = [identityCopy homeDirectoryURL];
  }

  v12 = [homeDirectoryURL URLByAppendingPathComponent:@"Library/Backup/SystemContainers" isDirectory:1];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

@end