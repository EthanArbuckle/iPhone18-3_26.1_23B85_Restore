@interface MRCriticalSectionCoordinator
+ (id)enterCriticalSection;
+ (void)enterCriticalSection;
+ (void)exitCriticalSection:(id)a3;
+ (void)exitCriticalSectionUsingRequestID:(id)a3;
@end

@implementation MRCriticalSectionCoordinator

+ (id)enterCriticalSection
{
  v2 = +[MRUserSettings currentSettings];
  v3 = [v2 supportCriticalSectionManagement];

  if (v3)
  {
    v4 = objc_alloc_init(MRCriticalSectionToken);
    v5 = MRCreateXPCMessage(0x10000000000001BuLL);
    xpc_dictionary_set_int64(v5, "MRXPC_CRITICAL_SECTION_TRANSITION_KEY", 0);
    v6 = [(MRCriticalSectionToken *)v4 requestID];
    v7 = [v6 UUIDString];
    xpc_dictionary_set_string(v5, "MRXPC_CRITICAL_SECTION_IDENTIFIER_KEY", [v7 UTF8String]);

    v8 = +[MRMediaRemoteServiceClient sharedServiceClient];
    v9 = [v8 service];
    v10 = [v9 mrXPCConnection];
    v23 = 0;
    v11 = [v10 sendSyncMessage:v5 error:&v23];
    v12 = v23;

    if (v12)
    {
      v13 = _MRLogForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        +[(MRCriticalSectionCoordinator *)v12];
      }

      v14 = 0;
    }

    else
    {
      v14 = v4;
    }
  }

  else
  {
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_ERROR))
    {
      [(MRCriticalSectionCoordinator *)&v4->super enterCriticalSection:v15];
    }

    v14 = 0;
  }

  return v14;
}

+ (void)exitCriticalSection:(id)a3
{
  v3 = a3;
  v4 = +[MRUserSettings currentSettings];
  v5 = [v4 supportCriticalSectionManagement];

  if (v5)
  {
    [v3 setInvalidated:1];
    v6 = [v3 requestID];
    v7 = [v6 copy];

    [MRCriticalSectionCoordinator exitCriticalSectionUsingRequestID:v7];
  }

  else
  {
    v8 = _MRLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(MRCriticalSectionCoordinator *)v8 enterCriticalSection:v9];
    }
  }
}

+ (void)exitCriticalSectionUsingRequestID:(id)a3
{
  v3 = a3;
  v4 = +[MRUserSettings currentSettings];
  v5 = [v4 supportCriticalSectionManagement];

  if ((v5 & 1) == 0)
  {
    v6 = _MRLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MRCriticalSectionCoordinator *)v6 enterCriticalSection:v14];
    }

    goto LABEL_10;
  }

  if (v3)
  {
    v6 = MRCreateXPCMessage(0x10000000000001BuLL);
    xpc_dictionary_set_int64(v6, "MRXPC_CRITICAL_SECTION_TRANSITION_KEY", 1);
    v7 = [v3 UUIDString];
    xpc_dictionary_set_string(v6, "MRXPC_CRITICAL_SECTION_IDENTIFIER_KEY", [v7 UTF8String]);

    v8 = +[MRMediaRemoteServiceClient sharedServiceClient];
    v9 = [v8 service];
    v10 = [v9 mrXPCConnection];
    v21 = 0;
    v11 = [v10 sendSyncMessage:v6 error:&v21];
    v12 = v21;

    if (v12)
    {
      v13 = _MRLogForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(MRCriticalSectionCoordinator *)v3 exitCriticalSectionUsingRequestID:v12, v13];
      }
    }

LABEL_10:
  }
}

+ (void)enterCriticalSection
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "failed to enter critical section. error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

+ (void)exitCriticalSectionUsingRequestID:(NSObject *)a3 .cold.2(void *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a1 UUIDString];
  v6 = [a2 localizedDescription];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_1A2860000, a3, OS_LOG_TYPE_ERROR, "failed to exit critical section for requestID: %@. error: %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end