@interface ML3MaintenanceTasksOperation
- (ML3MaintenanceTasksOperation)initWithLibrary:(id)library activity:(id)activity;
- (void)main;
@end

@implementation ML3MaintenanceTasksOperation

- (void)main
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.medialibrary", "Service");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    selfCopy3 = self;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting maintenance operation...", &v12, 0xCu);
  }

  databasePath = [(ML3MusicLibrary *)self->_library databasePath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager fileExistsAtPath:databasePath];

  if (v6)
  {
    v7 = [(ML3MusicLibrary *)self->_library performMainentanceTasksUsingActivity:self->_activity];
    v8 = os_log_create("com.apple.amp.medialibrary", "Service");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      selfCopy3 = self;
      v14 = 1024;
      LODWORD(v15) = v7;
      v9 = "%{public}@ Maintenance operation completed. success = %{BOOL}u";
      v10 = v8;
      v11 = 18;
LABEL_8:
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, v9, &v12, v11);
    }
  }

  else
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Service");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      selfCopy3 = self;
      v14 = 2114;
      v15 = databasePath;
      v9 = "%{public}@ Skipping maintenance because no file exists at path '%{public}@'";
      v10 = v8;
      v11 = 22;
      goto LABEL_8;
    }
  }
}

- (ML3MaintenanceTasksOperation)initWithLibrary:(id)library activity:(id)activity
{
  libraryCopy = library;
  activityCopy = activity;
  v12.receiver = self;
  v12.super_class = ML3MaintenanceTasksOperation;
  v9 = [(ML3MaintenanceTasksOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_library, library);
    objc_storeStrong(&v10->_activity, activity);
  }

  return v10;
}

@end