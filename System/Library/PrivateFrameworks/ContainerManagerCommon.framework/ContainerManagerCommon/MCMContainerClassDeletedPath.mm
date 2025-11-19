@interface MCMContainerClassDeletedPath
+ (id)_posixOwnerForDeletedPathForContainerClass:(unint64_t)a3 user:(id)a4;
+ (id)containerPathForUserIdentity:(id)a3 containerClass:(unint64_t)a4;
+ (id)deletedGlobalURL;
+ (id)deletedURLWithUserIdentity:(id)a3;
@end

@implementation MCMContainerClassDeletedPath

+ (id)_posixOwnerForDeletedPathForContainerClass:(unint64_t)a3 user:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = containermanager_copy_global_configuration();
  LODWORD(a3) = [v6 isGlobalContainerClass:a3];

  if (a3)
  {
    v7 = containermanager_copy_global_configuration();
    v8 = [v7 currentUser];
  }

  else
  {
    v8 = v5;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)deletedURLWithUserIdentity:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[MCMUserIdentitySharedCache sharedInstance];
  v5 = [v4 libraryRepairForUserIdentity:v3];

  v6 = [v5 userRegistry];
  v7 = [v6 containermanagerUserDeathrow];

  v8 = [v7 url];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)deletedGlobalURL
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = containermanager_copy_global_configuration();
  v4 = [v3 managedPathRegistry];
  v5 = [v4 containermanagerDeathrow];

  if (!v5)
  {
    v10 = 0;
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v6 = containermanager_copy_global_configuration();
  v7 = [v6 libraryRepair];
  v8 = [v5 url];
  v16[4] = a1;
  v17 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__MCMContainerClassDeletedPath_deletedGlobalURL__block_invoke;
  v16[3] = &__block_descriptor_40_e19_B24__0__NSURL_8__16l;
  v9 = [v7 fixAndRetryIfPermissionsErrorWithURL:v8 error:&v17 duringBlock:v16];
  v10 = v17;

  if (!v9)
  {
    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v19 = v5;
      v20 = 2114;
      v21 = v10;
      _os_log_fault_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_FAULT, "Failed to create deathrow at %@: %{public}@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  v11 = [v5 url];
LABEL_9:
  v13 = v11;

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t __48__MCMContainerClassDeletedPath_deletedGlobalURL__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = containermanager_copy_global_configuration();
  v7 = [v6 currentUser];
  v8 = [v4 _inLibraryRepairBlock_createURLIfNecessary:v5 mode:493 owner:v7 dataProtectionClass:0xFFFFFFFFLL quarantine:0 exists:0 error:a3];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (id)containerPathForUserIdentity:(id)a3 containerClass:(unint64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 posixUser];
  v8 = [a1 _posixOwnerForDeletedPathForContainerClass:a4 user:v7];

  v9 = [a1 _modeForContainerClass:a4];
  v10 = containermanager_copy_global_configuration();
  v11 = [v10 isGlobalContainerClass:a4];

  if (v11)
  {
    v12 = [a1 deletedGlobalURL];
LABEL_5:
    v13 = v12;
    goto LABEL_6;
  }

  if (v6)
  {
    v12 = [a1 deletedURLWithUserIdentity:v6];
    goto LABEL_5;
  }

  v17 = container_log_handle_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    *buf = 134217984;
    v19 = a4;
    _os_log_fault_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_FAULT, "Container class [%llu] requires a user identity.", buf, 0xCu);
  }

  v13 = 0;
LABEL_6:
  v14 = [[a1 alloc] initWithBaseURL:v13 categoryComponent:0 classComponent:0 containerClass:a4 POSIXOwner:v8 POSIXMode:v9 userIdentity:v6];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

@end