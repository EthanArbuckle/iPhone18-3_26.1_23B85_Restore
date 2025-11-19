@interface DEDSharingOutbound
- (DEDSharingConnection)connection;
- (DEDSharingOutbound)initWithID:(id)a3 withSFSession:(id)a4 connection:(id)a5;
- (id)basePayloadForCommand:(id)a3;
- (void)addSessionData:(id)a3 withFilename:(id)a4 forSession:(id)a5;
- (void)adoptFiles:(id)a3 forSession:(id)a4;
- (void)cancelSession:(id)a3;
- (void)commitSession:(id)a3;
- (void)compressionProgress:(unint64_t)a3 total:(unint64_t)a4 sessionID:(id)a5;
- (void)deviceSupportsDiagnosticExtensions:(id)a3 session:(id)a4;
- (void)didAdoptFilesWithError:(id)a3 forSession:(id)a4;
- (void)didCancelSession:(id)a3;
- (void)didCommitSession:(id)a3;
- (void)didFinishUploadingWithError:(id)a3 sessionID:(id)a4;
- (void)didGetState:(int64_t)a3 info:(id)a4 sessionID:(id)a5;
- (void)didLoadTextDataForExtensions:(id)a3 localization:(id)a4 session:(id)a5;
- (void)finishedDiagnosticWithIdentifier:(id)a3 result:(id)a4 session:(id)a5;
- (void)getSessionStateWithSession:(id)a3;
- (void)getSessionStatusWithSession:(id)a3;
- (void)hasCollected:(id)a3 isCollecting:(id)a4 inSession:(id)a5;
- (void)hasCollected:(id)a3 isCollecting:(id)a4 withIdentifiers:(id)a5 inSession:(id)a6;
- (void)listAvailableExtensionsForSession:(id)a3;
- (void)loadTextDataForExtensions:(id)a3 localization:(id)a4 sessionID:(id)a5;
- (void)pingSession:(id)a3;
- (void)pongSession:(id)a3;
- (void)scheduleNotificationForSession:(id)a3;
- (void)startDiagnosticWithIdentifier:(id)a3 parameters:(id)a4 deferRunUntil:(id)a5 session:(id)a6;
- (void)startDiagnosticWithIdentifier:(id)a3 parameters:(id)a4 session:(id)a5;
- (void)syncSessionStatusWithSession:(id)a3;
- (void)terminateExtension:(id)a3 info:(id)a4 session:(id)a5;
- (void)unscheduleNotificationForSession:(id)a3;
- (void)uploadProgress:(unint64_t)a3 total:(unint64_t)a4 sessionID:(id)a5;
@end

@implementation DEDSharingOutbound

- (DEDSharingOutbound)initWithID:(id)a3 withSFSession:(id)a4 connection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = DEDSharingOutbound;
  v11 = [(DEDSharingOutbound *)&v15 init];
  if (v11)
  {
    v12 = +[DEDConfiguration sharedInstance];
    v13 = os_log_create([v12 loggingSubsystem], "sharing-outbound");
    [(DEDSharingOutbound *)v11 setLog:v13];

    [(DEDSharingOutbound *)v11 setIdentifier:v8];
    [(DEDSharingOutbound *)v11 setSession:v9];
    [(DEDSharingOutbound *)v11 setConnection:v10];
  }

  return v11;
}

- (id)basePayloadForCommand:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = [v4 dictionaryWithCapacity:3];
  v7 = +[DEDDevice currentDevice];
  v8 = [v7 serialize];
  [v6 setObject:v8 forKeyedSubscript:@"callingDevice"];

  v9 = [(DEDSharingOutbound *)self identifier];
  [v6 setObject:v9 forKeyedSubscript:@"sessionID"];

  [v6 setObject:v5 forKeyedSubscript:@"session"];

  return v6;
}

- (void)pingSession:(id)a3
{
  v5 = [(DEDSharingOutbound *)self session];
  v4 = [(DEDSharingOutbound *)self basePayloadForCommand:@"ping"];
  [v5 sendWithFlags:0 object:v4];
}

- (void)pongSession:(id)a3
{
  v5 = [(DEDSharingOutbound *)self session];
  v4 = [(DEDSharingOutbound *)self basePayloadForCommand:@"pong"];
  [v5 sendWithFlags:0 object:v4];
}

- (void)listAvailableExtensionsForSession:(id)a3
{
  v5 = [(DEDSharingOutbound *)self session];
  v4 = [(DEDSharingOutbound *)self basePayloadForCommand:@"listExtensions"];
  [v5 sendWithFlags:0 object:v4];
}

- (void)startDiagnosticWithIdentifier:(id)a3 parameters:(id)a4 session:(id)a5
{
  v7 = a4;
  v8 = a3;
  v10 = [(DEDSharingOutbound *)self basePayloadForCommand:@"startDiagnostic"];
  [v10 setObject:v8 forKeyedSubscript:@"identifier"];

  [v10 setObject:v7 forKeyedSubscript:@"parameters"];
  v9 = [(DEDSharingOutbound *)self session];
  [v9 sendWithFlags:0 object:v10];
}

- (void)startDiagnosticWithIdentifier:(id)a3 parameters:(id)a4 deferRunUntil:(id)a5 session:(id)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v13 = [(DEDSharingOutbound *)self basePayloadForCommand:@"startDiagnostic"];
  [v13 setObject:v11 forKeyedSubscript:@"identifier"];

  [v13 setObject:v10 forKeyedSubscript:@"parameters"];
  [v13 setObject:v9 forKeyedSubscript:@"deferDate"];

  v12 = [(DEDSharingOutbound *)self session];
  [v12 sendWithFlags:0 object:v13];
}

- (void)terminateExtension:(id)a3 info:(id)a4 session:(id)a5
{
  v7 = a4;
  v8 = a3;
  v10 = [(DEDSharingOutbound *)self basePayloadForCommand:@"terminateExtension"];
  [v10 setObject:v8 forKeyedSubscript:@"identifier"];

  [v10 setObject:v7 forKeyedSubscript:@"info"];
  v9 = [(DEDSharingOutbound *)self session];
  [v9 sendWithFlags:0 object:v10];
}

- (void)deviceSupportsDiagnosticExtensions:(id)a3 session:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(DEDSharingOutbound *)self basePayloadForCommand:@"supportsExtensions"];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) serialize];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [v6 setObject:v7 forKeyedSubscript:@"extensions"];
  v14 = [(DEDSharingOutbound *)self session];
  [v14 sendWithFlags:0 object:v6];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)finishedDiagnosticWithIdentifier:(id)a3 result:(id)a4 session:(id)a5
{
  v7 = a4;
  v8 = a3;
  v11 = [(DEDSharingOutbound *)self basePayloadForCommand:@"finishedDiagnostic"];
  [v11 setObject:v8 forKeyedSubscript:@"identifier"];

  v9 = [v7 serialize];

  [v11 setObject:v9 forKeyedSubscript:@"group"];
  v10 = [(DEDSharingOutbound *)self session];
  [v10 sendWithFlags:0 object:v11];
}

- (void)getSessionStatusWithSession:(id)a3
{
  v5 = [(DEDSharingOutbound *)self basePayloadForCommand:@"getStatus"];
  v4 = [(DEDSharingOutbound *)self session];
  [v4 sendWithFlags:0 object:v5];
}

- (void)getSessionStateWithSession:(id)a3
{
  v5 = [(DEDSharingOutbound *)self basePayloadForCommand:@"getState"];
  v4 = [(DEDSharingOutbound *)self session];
  [v4 sendWithFlags:0 object:v5];
}

- (void)didGetState:(int64_t)a3 info:(id)a4 sessionID:(id)a5
{
  v7 = a4;
  v11 = [(DEDSharingOutbound *)self basePayloadForCommand:@"didGetState"];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v11 setObject:v8 forKeyedSubscript:@"state"];

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  [v11 setObject:v9 forKeyedSubscript:@"info"];

  v10 = [(DEDSharingOutbound *)self session];
  [v10 sendWithFlags:0 object:v11];
}

- (void)syncSessionStatusWithSession:(id)a3
{
  v5 = [(DEDSharingOutbound *)self basePayloadForCommand:@"syncStatus"];
  v4 = [(DEDSharingOutbound *)self session];
  [v4 sendWithFlags:0 object:v5];
}

- (void)hasCollected:(id)a3 isCollecting:(id)a4 inSession:(id)a5
{
  v7 = a4;
  v8 = a3;
  v12 = [(DEDSharingOutbound *)self basePayloadForCommand:@"didGetStatus"];
  v9 = [v7 ded_mapWithBlock:&__block_literal_global_34];

  [v12 setObject:v9 forKeyedSubscript:@"extensions"];
  v10 = [v8 ded_mapWithBlock:&__block_literal_global_83];

  [v12 setObject:v10 forKeyedSubscript:@"groups"];
  v11 = [(DEDSharingOutbound *)self session];
  [v11 sendWithFlags:0 object:v12];
}

- (void)hasCollected:(id)a3 isCollecting:(id)a4 withIdentifiers:(id)a5 inSession:(id)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v16 = [(DEDSharingOutbound *)self basePayloadForCommand:@"didSyncStatus"];
  v12 = [v10 ded_mapWithBlock:&__block_literal_global_91];

  [v16 setObject:v12 forKeyedSubscript:@"extensions"];
  v13 = [v11 ded_mapWithBlock:&__block_literal_global_93];

  [v16 setObject:v13 forKeyedSubscript:@"groups"];
  v14 = [v9 ded_mapWithBlock:&__block_literal_global_95];

  [v16 setObject:v14 forKeyedSubscript:@"identifiers"];
  v15 = [(DEDSharingOutbound *)self session];
  [v15 sendWithFlags:0 object:v16];
}

- (void)adoptFiles:(id)a3 forSession:(id)a4
{
  v5 = a3;
  v7 = [(DEDSharingOutbound *)self basePayloadForCommand:@"adoptFiles"];
  [v7 setObject:v5 forKeyedSubscript:@"filesForAdopt"];

  v6 = [(DEDSharingOutbound *)self session];
  [v6 sendWithFlags:0 object:v7];
}

- (void)didAdoptFilesWithError:(id)a3 forSession:(id)a4
{
  v7 = a3;
  v5 = [(DEDSharingOutbound *)self basePayloadForCommand:@"didAdoptFiles"];
  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:@"error"];
  }

  v6 = [(DEDSharingOutbound *)self session];
  [v6 sendWithFlags:0 object:v5];
}

- (void)compressionProgress:(unint64_t)a3 total:(unint64_t)a4 sessionID:(id)a5
{
  v11 = [(DEDSharingOutbound *)self basePayloadForCommand:@"compressionProgress", a4, a5];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [v11 setObject:v8 forKeyedSubscript:@"compressed"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
  [v11 setObject:v9 forKeyedSubscript:@"total"];

  v10 = [(DEDSharingOutbound *)self session];
  [v10 sendWithFlags:0 object:v11];
}

- (void)uploadProgress:(unint64_t)a3 total:(unint64_t)a4 sessionID:(id)a5
{
  v11 = [(DEDSharingOutbound *)self basePayloadForCommand:@"uploadProgress", a4, a5];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [v11 setObject:v8 forKeyedSubscript:@"uploaded"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
  [v11 setObject:v9 forKeyedSubscript:@"total"];

  v10 = [(DEDSharingOutbound *)self session];
  [v10 sendWithFlags:0 object:v11];
}

- (void)didFinishUploadingWithError:(id)a3 sessionID:(id)a4
{
  v7 = a3;
  v5 = [(DEDSharingOutbound *)self basePayloadForCommand:@"uploadFinished"];
  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:@"error"];
  }

  v6 = [(DEDSharingOutbound *)self session];
  [v6 sendWithFlags:0 object:v5];
}

- (void)commitSession:(id)a3
{
  v5 = [(DEDSharingOutbound *)self basePayloadForCommand:@"commitSession"];
  v4 = [(DEDSharingOutbound *)self session];
  [v4 sendWithFlags:0 object:v5];
}

- (void)didCommitSession:(id)a3
{
  v5 = [(DEDSharingOutbound *)self basePayloadForCommand:@"didCommitSession"];
  v4 = [(DEDSharingOutbound *)self session];
  [v4 sendWithFlags:0 object:v5];
}

- (void)cancelSession:(id)a3
{
  v5 = [(DEDSharingOutbound *)self basePayloadForCommand:@"cancelSession"];
  v4 = [(DEDSharingOutbound *)self session];
  [v4 sendWithFlags:0 object:v5];
}

- (void)scheduleNotificationForSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDSharingOutbound *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(DEDSharingOutbound *)v4 scheduleNotificationForSession:v5, v6, v7, v8, v9, v10, v11];
  }
}

- (void)unscheduleNotificationForSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDSharingOutbound *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(DEDSharingOutbound *)v4 scheduleNotificationForSession:v5, v6, v7, v8, v9, v10, v11];
  }
}

- (void)addSessionData:(id)a3 withFilename:(id)a4 forSession:(id)a5
{
  v6 = a5;
  v7 = [(DEDSharingOutbound *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(DEDSharingOutbound *)v6 addSessionData:v7 withFilename:v8 forSession:v9, v10, v11, v12, v13];
  }
}

- (void)didCancelSession:(id)a3
{
  v5 = [(DEDSharingOutbound *)self basePayloadForCommand:@"didCancelSession"];
  v4 = [(DEDSharingOutbound *)self session];
  [v4 sendWithFlags:0 object:v5];
}

- (void)loadTextDataForExtensions:(id)a3 localization:(id)a4 sessionID:(id)a5
{
  v5 = [(DEDSharingOutbound *)self log:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(DEDSharingOutbound *)v5 loadTextDataForExtensions:v6 localization:v7 sessionID:v8, v9, v10, v11, v12];
  }
}

- (void)didLoadTextDataForExtensions:(id)a3 localization:(id)a4 session:(id)a5
{
  v5 = [(DEDSharingOutbound *)self log:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(DEDSharingOutbound *)v5 didLoadTextDataForExtensions:v6 localization:v7 session:v8, v9, v10, v11, v12];
  }
}

- (DEDSharingConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (void)scheduleNotificationForSession:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, a2, a3, "Remote devices cannot use notifications. Session ID: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)addSessionData:(uint64_t)a3 withFilename:(uint64_t)a4 forSession:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, a2, a3, "Adding Session Data is not implemented for Sharing Framework. Session ID: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)loadTextDataForExtensions:(uint64_t)a3 localization:(uint64_t)a4 sessionID:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, a1, a3, "%s not supported", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)didLoadTextDataForExtensions:(uint64_t)a3 localization:(uint64_t)a4 session:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, a1, a3, "%s not supported", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end