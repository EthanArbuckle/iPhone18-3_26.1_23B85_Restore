@interface ML3RemoveTracksOperation
- (BOOL)_execute:(id *)a3;
- (BOOL)_verifyLibraryConnectionAndAttributesProperties:(id *)a3;
@end

@implementation ML3RemoveTracksOperation

- (BOOL)_verifyLibraryConnectionAndAttributesProperties:(id *)a3
{
  v9.receiver = self;
  v9.super_class = ML3RemoveTracksOperation;
  if (![(ML3DatabaseOperation *)&v9 _verifyLibraryConnectionAndAttributesProperties:?])
  {
    return 0;
  }

  v5 = [(ML3DatabaseOperation *)self attributes];
  v6 = [v5 objectForKey:@"MLDatabaseOperationAttributeTrackSourceKey"];
  v7 = v6 != 0;

  if (a3 && !v6)
  {
    [ML3MediaLibraryWriter writerErrorWithCode:500 description:@"ML3RemoveTracksOperation requires a track source attribute"];
    *a3 = v7 = 0;
  }

  return v7;
}

- (BOOL)_execute:(id *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [(ML3DatabaseOperation *)self transaction];
  v6 = [v5 connection];
  v7 = [v5 library];
  v8 = [(ML3DatabaseOperation *)self attributes];
  v9 = [v8 objectForKey:@"MLDatabaseOperationAttributeTrackSourceKey"];
  v10 = [v9 intValue];

  v11 = [(ML3DatabaseOperation *)self attributes];
  v12 = [v11 objectForKey:@"MLDatabaseOperationAttributePersistentIDsArrayKey"];

  v13 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 67109376;
    v23 = v10;
    v24 = 2048;
    v25 = COERCE_DOUBLE([v12 count]);
    _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, "[ML3RemoveTracksOperation] Beginning remove tracks operation with source %d (%lu specified tracks)", &v22, 0x12u);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v15 = v14;
  if ([v12 count])
  {
    v16 = [v7 removeSource:v10 fromPersistentIDS:v12 forImportOperation:self usingConnection:v6 postNotifications:1];
  }

  else
  {
    v16 = [v7 removeSource:v10 forImportOperation:self usingConnection:v6 postNotifications:1];
  }

  v17 = v16;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v19 = v18;
  v20 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 67109376;
    v23 = v17;
    v24 = 2048;
    v25 = v19 - v15;
    _os_log_impl(&dword_22D2FA000, v20, OS_LOG_TYPE_DEFAULT, "[ML3RemoveTracksOperation] Remove tracks operation success=%d in %.3f seconds", &v22, 0x12u);
  }

  if (a3)
  {
    *a3 = 0;
  }

  return v17;
}

@end