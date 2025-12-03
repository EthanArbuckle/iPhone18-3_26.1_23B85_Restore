@interface ML3RemoveTracksOperation
- (BOOL)_execute:(id *)_execute;
- (BOOL)_verifyLibraryConnectionAndAttributesProperties:(id *)properties;
@end

@implementation ML3RemoveTracksOperation

- (BOOL)_verifyLibraryConnectionAndAttributesProperties:(id *)properties
{
  v9.receiver = self;
  v9.super_class = ML3RemoveTracksOperation;
  if (![(ML3DatabaseOperation *)&v9 _verifyLibraryConnectionAndAttributesProperties:?])
  {
    return 0;
  }

  attributes = [(ML3DatabaseOperation *)self attributes];
  v6 = [attributes objectForKey:@"MLDatabaseOperationAttributeTrackSourceKey"];
  v7 = v6 != 0;

  if (properties && !v6)
  {
    [ML3MediaLibraryWriter writerErrorWithCode:500 description:@"ML3RemoveTracksOperation requires a track source attribute"];
    *properties = v7 = 0;
  }

  return v7;
}

- (BOOL)_execute:(id *)_execute
{
  v26 = *MEMORY[0x277D85DE8];
  transaction = [(ML3DatabaseOperation *)self transaction];
  connection = [transaction connection];
  library = [transaction library];
  attributes = [(ML3DatabaseOperation *)self attributes];
  v9 = [attributes objectForKey:@"MLDatabaseOperationAttributeTrackSourceKey"];
  intValue = [v9 intValue];

  attributes2 = [(ML3DatabaseOperation *)self attributes];
  v12 = [attributes2 objectForKey:@"MLDatabaseOperationAttributePersistentIDsArrayKey"];

  v13 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 67109376;
    v23 = intValue;
    v24 = 2048;
    v25 = COERCE_DOUBLE([v12 count]);
    _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, "[ML3RemoveTracksOperation] Beginning remove tracks operation with source %d (%lu specified tracks)", &v22, 0x12u);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v15 = v14;
  if ([v12 count])
  {
    v16 = [library removeSource:intValue fromPersistentIDS:v12 forImportOperation:self usingConnection:connection postNotifications:1];
  }

  else
  {
    v16 = [library removeSource:intValue forImportOperation:self usingConnection:connection postNotifications:1];
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

  if (_execute)
  {
    *_execute = 0;
  }

  return v17;
}

@end