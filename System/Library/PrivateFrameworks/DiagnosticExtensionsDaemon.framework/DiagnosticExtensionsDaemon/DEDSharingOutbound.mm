@interface DEDSharingOutbound
- (DEDSharingConnection)connection;
- (DEDSharingOutbound)initWithID:(id)d withSFSession:(id)session connection:(id)connection;
- (id)basePayloadForCommand:(id)command;
- (void)addSessionData:(id)data withFilename:(id)filename forSession:(id)session;
- (void)adoptFiles:(id)files forSession:(id)session;
- (void)cancelSession:(id)session;
- (void)commitSession:(id)session;
- (void)compressionProgress:(unint64_t)progress total:(unint64_t)total sessionID:(id)d;
- (void)deviceSupportsDiagnosticExtensions:(id)extensions session:(id)session;
- (void)didAdoptFilesWithError:(id)error forSession:(id)session;
- (void)didCancelSession:(id)session;
- (void)didCommitSession:(id)session;
- (void)didFinishUploadingWithError:(id)error sessionID:(id)d;
- (void)didGetState:(int64_t)state info:(id)info sessionID:(id)d;
- (void)didLoadTextDataForExtensions:(id)extensions localization:(id)localization session:(id)session;
- (void)finishedDiagnosticWithIdentifier:(id)identifier result:(id)result session:(id)session;
- (void)getSessionStateWithSession:(id)session;
- (void)getSessionStatusWithSession:(id)session;
- (void)hasCollected:(id)collected isCollecting:(id)collecting inSession:(id)session;
- (void)hasCollected:(id)collected isCollecting:(id)collecting withIdentifiers:(id)identifiers inSession:(id)session;
- (void)listAvailableExtensionsForSession:(id)session;
- (void)loadTextDataForExtensions:(id)extensions localization:(id)localization sessionID:(id)d;
- (void)pingSession:(id)session;
- (void)pongSession:(id)session;
- (void)scheduleNotificationForSession:(id)session;
- (void)startDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters deferRunUntil:(id)until session:(id)session;
- (void)startDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters session:(id)session;
- (void)syncSessionStatusWithSession:(id)session;
- (void)terminateExtension:(id)extension info:(id)info session:(id)session;
- (void)unscheduleNotificationForSession:(id)session;
- (void)uploadProgress:(unint64_t)progress total:(unint64_t)total sessionID:(id)d;
@end

@implementation DEDSharingOutbound

- (DEDSharingOutbound)initWithID:(id)d withSFSession:(id)session connection:(id)connection
{
  dCopy = d;
  sessionCopy = session;
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = DEDSharingOutbound;
  v11 = [(DEDSharingOutbound *)&v15 init];
  if (v11)
  {
    v12 = +[DEDConfiguration sharedInstance];
    v13 = os_log_create([v12 loggingSubsystem], "sharing-outbound");
    [(DEDSharingOutbound *)v11 setLog:v13];

    [(DEDSharingOutbound *)v11 setIdentifier:dCopy];
    [(DEDSharingOutbound *)v11 setSession:sessionCopy];
    [(DEDSharingOutbound *)v11 setConnection:connectionCopy];
  }

  return v11;
}

- (id)basePayloadForCommand:(id)command
{
  v4 = MEMORY[0x277CBEB38];
  commandCopy = command;
  v6 = [v4 dictionaryWithCapacity:3];
  v7 = +[DEDDevice currentDevice];
  serialize = [v7 serialize];
  [v6 setObject:serialize forKeyedSubscript:@"callingDevice"];

  identifier = [(DEDSharingOutbound *)self identifier];
  [v6 setObject:identifier forKeyedSubscript:@"sessionID"];

  [v6 setObject:commandCopy forKeyedSubscript:@"session"];

  return v6;
}

- (void)pingSession:(id)session
{
  session = [(DEDSharingOutbound *)self session];
  v4 = [(DEDSharingOutbound *)self basePayloadForCommand:@"ping"];
  [session sendWithFlags:0 object:v4];
}

- (void)pongSession:(id)session
{
  session = [(DEDSharingOutbound *)self session];
  v4 = [(DEDSharingOutbound *)self basePayloadForCommand:@"pong"];
  [session sendWithFlags:0 object:v4];
}

- (void)listAvailableExtensionsForSession:(id)session
{
  session = [(DEDSharingOutbound *)self session];
  v4 = [(DEDSharingOutbound *)self basePayloadForCommand:@"listExtensions"];
  [session sendWithFlags:0 object:v4];
}

- (void)startDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters session:(id)session
{
  parametersCopy = parameters;
  identifierCopy = identifier;
  v10 = [(DEDSharingOutbound *)self basePayloadForCommand:@"startDiagnostic"];
  [v10 setObject:identifierCopy forKeyedSubscript:@"identifier"];

  [v10 setObject:parametersCopy forKeyedSubscript:@"parameters"];
  session = [(DEDSharingOutbound *)self session];
  [session sendWithFlags:0 object:v10];
}

- (void)startDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters deferRunUntil:(id)until session:(id)session
{
  untilCopy = until;
  parametersCopy = parameters;
  identifierCopy = identifier;
  v13 = [(DEDSharingOutbound *)self basePayloadForCommand:@"startDiagnostic"];
  [v13 setObject:identifierCopy forKeyedSubscript:@"identifier"];

  [v13 setObject:parametersCopy forKeyedSubscript:@"parameters"];
  [v13 setObject:untilCopy forKeyedSubscript:@"deferDate"];

  session = [(DEDSharingOutbound *)self session];
  [session sendWithFlags:0 object:v13];
}

- (void)terminateExtension:(id)extension info:(id)info session:(id)session
{
  infoCopy = info;
  extensionCopy = extension;
  v10 = [(DEDSharingOutbound *)self basePayloadForCommand:@"terminateExtension"];
  [v10 setObject:extensionCopy forKeyedSubscript:@"identifier"];

  [v10 setObject:infoCopy forKeyedSubscript:@"info"];
  session = [(DEDSharingOutbound *)self session];
  [session sendWithFlags:0 object:v10];
}

- (void)deviceSupportsDiagnosticExtensions:(id)extensions session:(id)session
{
  v21 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  v6 = [(DEDSharingOutbound *)self basePayloadForCommand:@"supportsExtensions"];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(extensionsCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = extensionsCopy;
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

        serialize = [*(*(&v16 + 1) + 8 * v12) serialize];
        [v7 addObject:serialize];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [v6 setObject:v7 forKeyedSubscript:@"extensions"];
  session = [(DEDSharingOutbound *)self session];
  [session sendWithFlags:0 object:v6];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)finishedDiagnosticWithIdentifier:(id)identifier result:(id)result session:(id)session
{
  resultCopy = result;
  identifierCopy = identifier;
  v11 = [(DEDSharingOutbound *)self basePayloadForCommand:@"finishedDiagnostic"];
  [v11 setObject:identifierCopy forKeyedSubscript:@"identifier"];

  serialize = [resultCopy serialize];

  [v11 setObject:serialize forKeyedSubscript:@"group"];
  session = [(DEDSharingOutbound *)self session];
  [session sendWithFlags:0 object:v11];
}

- (void)getSessionStatusWithSession:(id)session
{
  v5 = [(DEDSharingOutbound *)self basePayloadForCommand:@"getStatus"];
  session = [(DEDSharingOutbound *)self session];
  [session sendWithFlags:0 object:v5];
}

- (void)getSessionStateWithSession:(id)session
{
  v5 = [(DEDSharingOutbound *)self basePayloadForCommand:@"getState"];
  session = [(DEDSharingOutbound *)self session];
  [session sendWithFlags:0 object:v5];
}

- (void)didGetState:(int64_t)state info:(id)info sessionID:(id)d
{
  infoCopy = info;
  v11 = [(DEDSharingOutbound *)self basePayloadForCommand:@"didGetState"];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  [v11 setObject:v8 forKeyedSubscript:@"state"];

  if (infoCopy)
  {
    v9 = infoCopy;
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  [v11 setObject:v9 forKeyedSubscript:@"info"];

  session = [(DEDSharingOutbound *)self session];
  [session sendWithFlags:0 object:v11];
}

- (void)syncSessionStatusWithSession:(id)session
{
  v5 = [(DEDSharingOutbound *)self basePayloadForCommand:@"syncStatus"];
  session = [(DEDSharingOutbound *)self session];
  [session sendWithFlags:0 object:v5];
}

- (void)hasCollected:(id)collected isCollecting:(id)collecting inSession:(id)session
{
  collectingCopy = collecting;
  collectedCopy = collected;
  v12 = [(DEDSharingOutbound *)self basePayloadForCommand:@"didGetStatus"];
  v9 = [collectingCopy ded_mapWithBlock:&__block_literal_global_34];

  [v12 setObject:v9 forKeyedSubscript:@"extensions"];
  v10 = [collectedCopy ded_mapWithBlock:&__block_literal_global_83];

  [v12 setObject:v10 forKeyedSubscript:@"groups"];
  session = [(DEDSharingOutbound *)self session];
  [session sendWithFlags:0 object:v12];
}

- (void)hasCollected:(id)collected isCollecting:(id)collecting withIdentifiers:(id)identifiers inSession:(id)session
{
  identifiersCopy = identifiers;
  collectingCopy = collecting;
  collectedCopy = collected;
  v16 = [(DEDSharingOutbound *)self basePayloadForCommand:@"didSyncStatus"];
  v12 = [collectingCopy ded_mapWithBlock:&__block_literal_global_91];

  [v16 setObject:v12 forKeyedSubscript:@"extensions"];
  v13 = [collectedCopy ded_mapWithBlock:&__block_literal_global_93];

  [v16 setObject:v13 forKeyedSubscript:@"groups"];
  v14 = [identifiersCopy ded_mapWithBlock:&__block_literal_global_95];

  [v16 setObject:v14 forKeyedSubscript:@"identifiers"];
  session = [(DEDSharingOutbound *)self session];
  [session sendWithFlags:0 object:v16];
}

- (void)adoptFiles:(id)files forSession:(id)session
{
  filesCopy = files;
  v7 = [(DEDSharingOutbound *)self basePayloadForCommand:@"adoptFiles"];
  [v7 setObject:filesCopy forKeyedSubscript:@"filesForAdopt"];

  session = [(DEDSharingOutbound *)self session];
  [session sendWithFlags:0 object:v7];
}

- (void)didAdoptFilesWithError:(id)error forSession:(id)session
{
  errorCopy = error;
  v5 = [(DEDSharingOutbound *)self basePayloadForCommand:@"didAdoptFiles"];
  if (errorCopy)
  {
    [v5 setObject:errorCopy forKeyedSubscript:@"error"];
  }

  session = [(DEDSharingOutbound *)self session];
  [session sendWithFlags:0 object:v5];
}

- (void)compressionProgress:(unint64_t)progress total:(unint64_t)total sessionID:(id)d
{
  v11 = [(DEDSharingOutbound *)self basePayloadForCommand:@"compressionProgress", total, d];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:progress];
  [v11 setObject:v8 forKeyedSubscript:@"compressed"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:total];
  [v11 setObject:v9 forKeyedSubscript:@"total"];

  session = [(DEDSharingOutbound *)self session];
  [session sendWithFlags:0 object:v11];
}

- (void)uploadProgress:(unint64_t)progress total:(unint64_t)total sessionID:(id)d
{
  v11 = [(DEDSharingOutbound *)self basePayloadForCommand:@"uploadProgress", total, d];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:progress];
  [v11 setObject:v8 forKeyedSubscript:@"uploaded"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:total];
  [v11 setObject:v9 forKeyedSubscript:@"total"];

  session = [(DEDSharingOutbound *)self session];
  [session sendWithFlags:0 object:v11];
}

- (void)didFinishUploadingWithError:(id)error sessionID:(id)d
{
  errorCopy = error;
  v5 = [(DEDSharingOutbound *)self basePayloadForCommand:@"uploadFinished"];
  if (errorCopy)
  {
    [v5 setObject:errorCopy forKeyedSubscript:@"error"];
  }

  session = [(DEDSharingOutbound *)self session];
  [session sendWithFlags:0 object:v5];
}

- (void)commitSession:(id)session
{
  v5 = [(DEDSharingOutbound *)self basePayloadForCommand:@"commitSession"];
  session = [(DEDSharingOutbound *)self session];
  [session sendWithFlags:0 object:v5];
}

- (void)didCommitSession:(id)session
{
  v5 = [(DEDSharingOutbound *)self basePayloadForCommand:@"didCommitSession"];
  session = [(DEDSharingOutbound *)self session];
  [session sendWithFlags:0 object:v5];
}

- (void)cancelSession:(id)session
{
  v5 = [(DEDSharingOutbound *)self basePayloadForCommand:@"cancelSession"];
  session = [(DEDSharingOutbound *)self session];
  [session sendWithFlags:0 object:v5];
}

- (void)scheduleNotificationForSession:(id)session
{
  sessionCopy = session;
  v5 = [(DEDSharingOutbound *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(DEDSharingOutbound *)sessionCopy scheduleNotificationForSession:v5, v6, v7, v8, v9, v10, v11];
  }
}

- (void)unscheduleNotificationForSession:(id)session
{
  sessionCopy = session;
  v5 = [(DEDSharingOutbound *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(DEDSharingOutbound *)sessionCopy scheduleNotificationForSession:v5, v6, v7, v8, v9, v10, v11];
  }
}

- (void)addSessionData:(id)data withFilename:(id)filename forSession:(id)session
{
  sessionCopy = session;
  v7 = [(DEDSharingOutbound *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(DEDSharingOutbound *)sessionCopy addSessionData:v7 withFilename:v8 forSession:v9, v10, v11, v12, v13];
  }
}

- (void)didCancelSession:(id)session
{
  v5 = [(DEDSharingOutbound *)self basePayloadForCommand:@"didCancelSession"];
  session = [(DEDSharingOutbound *)self session];
  [session sendWithFlags:0 object:v5];
}

- (void)loadTextDataForExtensions:(id)extensions localization:(id)localization sessionID:(id)d
{
  v5 = [(DEDSharingOutbound *)self log:extensions];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(DEDSharingOutbound *)v5 loadTextDataForExtensions:v6 localization:v7 sessionID:v8, v9, v10, v11, v12];
  }
}

- (void)didLoadTextDataForExtensions:(id)extensions localization:(id)localization session:(id)session
{
  v5 = [(DEDSharingOutbound *)self log:extensions];
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