@interface DEDIDSOutbound
+ (id)archivedClasses;
+ (id)outboundWithSessionID:(id)d withDeviceAtAddress:(id)address connection:(id)connection;
- (DEDIDSConnection)connection;
- (DEDIDSOutbound)init;
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
- (void)presentNotificationForSession:(id)session;
- (void)removeNotificationForSession:(id)session;
- (void)scheduleNotificationForSession:(id)session;
- (void)startDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters deferRunUntil:(id)until session:(id)session;
- (void)startDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters session:(id)session;
- (void)syncSessionStatusWithSession:(id)session;
- (void)terminateExtension:(id)extension info:(id)info session:(id)session;
- (void)unscheduleNotificationForSession:(id)session;
- (void)uploadProgress:(unint64_t)progress total:(unint64_t)total sessionID:(id)d;
@end

@implementation DEDIDSOutbound

+ (id)outboundWithSessionID:(id)d withDeviceAtAddress:(id)address connection:(id)connection
{
  connectionCopy = connection;
  addressCopy = address;
  dCopy = d;
  v10 = objc_alloc_init(DEDIDSOutbound);
  [(DEDIDSOutbound *)v10 setConnection:connectionCopy];

  [(DEDIDSOutbound *)v10 setDeviceAddress:addressCopy];
  [(DEDIDSOutbound *)v10 setSessionID:dCopy];

  return v10;
}

- (DEDIDSOutbound)init
{
  v9.receiver = self;
  v9.super_class = DEDIDSOutbound;
  v2 = [(DEDIDSOutbound *)&v9 init];
  if (v2)
  {
    v3 = +[DEDConfiguration sharedInstance];
    v4 = os_log_create([v3 loggingSubsystem], "ids-outbound");
    log = v2->_log;
    v2->_log = v4;

    deviceAddress = v2->_deviceAddress;
    v2->_deviceAddress = 0;

    sessionID = v2->_sessionID;
    v2->_sessionID = 0;
  }

  return v2;
}

- (void)pingSession:(id)session
{
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (sessionCopy)
  {
    [dictionary setValue:sessionCopy forKey:@"sessionID"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:10 withData:v6 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)terminateExtension:(id)extension info:(id)info session:(id)session
{
  extensionCopy = extension;
  infoCopy = info;
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (extensionCopy && sessionCopy)
  {
    [dictionary setValue:sessionCopy forKey:@"sessionID"];
    [dictionary setValue:extensionCopy forKey:@"triggerDE"];
  }

  if (infoCopy)
  {
    [dictionary setValue:infoCopy forKey:@"triggerDEParams"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v12 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:12 withData:v12 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)pongSession:(id)session
{
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (sessionCopy)
  {
    [dictionary setValue:sessionCopy forKey:@"sessionID"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:11 withData:v6 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)listAvailableExtensionsForSession:(id)session
{
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (sessionCopy)
  {
    [dictionary setValue:sessionCopy forKey:@"sessionID"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:2 withData:v6 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)deviceSupportsDiagnosticExtensions:(id)extensions session:(id)session
{
  v25 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(extensionsCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = extensionsCopy;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        serialize = [*(*(&v20 + 1) + 8 * v14) serialize];
        [v9 addObject:serialize];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  [dictionary setValue:sessionCopy forKey:@"sessionID"];
  [dictionary setValue:v9 forKey:@"getDEList"];
  connection = [(DEDIDSOutbound *)self connection];
  v17 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:3 withData:v17 forIDSDeviceID:deviceAddress isResponse:0];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)startDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters session:(id)session
{
  identifierCopy = identifier;
  parametersCopy = parameters;
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (identifierCopy && sessionCopy)
  {
    [dictionary setValue:sessionCopy forKey:@"sessionID"];
    [dictionary setValue:identifierCopy forKey:@"triggerDE"];
    [dictionary setValue:parametersCopy forKey:@"triggerDEParams"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v12 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:4 withData:v12 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)startDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters deferRunUntil:(id)until session:(id)session
{
  identifierCopy = identifier;
  parametersCopy = parameters;
  untilCopy = until;
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (identifierCopy && sessionCopy)
  {
    [dictionary setValue:sessionCopy forKey:@"sessionID"];
    [dictionary setValue:identifierCopy forKey:@"triggerDE"];
    [dictionary setValue:parametersCopy forKey:@"triggerDEParams"];
    [dictionary setValue:untilCopy forKey:@"triggerDERunDate"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v15 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:4 withData:v15 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)finishedDiagnosticWithIdentifier:(id)identifier result:(id)result session:(id)session
{
  identifierCopy = identifier;
  resultCopy = result;
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (resultCopy && identifierCopy && sessionCopy)
  {
    [dictionary setValue:sessionCopy forKey:@"sessionID"];
    [dictionary setValue:identifierCopy forKey:@"triggerDE"];
    serialize = [resultCopy serialize];
    [dictionary setValue:serialize forKey:@"finishedDEDGroups"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v13 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:5 withData:v13 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)getSessionStatusWithSession:(id)session
{
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (sessionCopy)
  {
    [dictionary setValue:sessionCopy forKey:@"sessionID"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:13 withData:v6 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)getSessionStateWithSession:(id)session
{
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (sessionCopy)
  {
    [dictionary setValue:sessionCopy forKey:@"sessionID"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:24 withData:v6 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)addSessionData:(id)data withFilename:(id)filename forSession:(id)session
{
  dataCopy = data;
  filenameCopy = filename;
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11 = dictionary;
  if (sessionCopy)
  {
    [dictionary setValue:sessionCopy forKey:@"sessionID"];
    [v11 setValue:dataCopy forKey:@"sessionData"];
    [v11 setValue:filenameCopy forKey:@"sessionDataFilename"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v13 = [DEDIDSConnection packPayload:v11];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:30 withData:v13 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)didGetState:(int64_t)state info:(id)info sessionID:(id)d
{
  infoCopy = info;
  dCopy = d;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11 = dictionary;
  if (dCopy)
  {
    [dictionary setObject:dCopy forKeyedSubscript:@"sessionID"];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:state];
    [v11 setObject:v12 forKeyedSubscript:@"sessionState"];

    if (infoCopy)
    {
      v13 = infoCopy;
    }

    else
    {
      v13 = MEMORY[0x277CBEC10];
    }

    [v11 setObject:v13 forKeyedSubscript:@"sessionStateInfo"];
  }

  else
  {
    v14 = [(DEDIDSOutbound *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [DEDIDSOutbound didGetState:v14 info:? sessionID:?];
    }
  }

  connection = [(DEDIDSOutbound *)self connection];
  v16 = [DEDIDSConnection packPayload:v11];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:25 withData:v16 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)hasCollected:(id)collected isCollecting:(id)collecting inSession:(id)session
{
  collectedCopy = collected;
  collectingCopy = collecting;
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (collectedCopy && sessionCopy)
  {
    [dictionary setObject:sessionCopy forKeyedSubscript:@"sessionID"];
    v11 = [collectingCopy ded_mapWithBlock:&__block_literal_global_21];
    [dictionary setObject:v11 forKeyedSubscript:@"runningDEs"];

    v12 = [collectedCopy ded_mapWithBlock:&__block_literal_global_54];
    [dictionary setObject:v12 forKeyedSubscript:@"finishedDEDGroups"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v14 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:14 withData:v14 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)hasCollected:(id)collected isCollecting:(id)collecting withIdentifiers:(id)identifiers inSession:(id)session
{
  collectedCopy = collected;
  collectingCopy = collecting;
  identifiersCopy = identifiers;
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (collectedCopy && sessionCopy)
  {
    [dictionary setObject:sessionCopy forKeyedSubscript:@"sessionID"];
    v14 = [collectingCopy ded_mapWithBlock:&__block_literal_global_56_0];
    [dictionary setObject:v14 forKeyedSubscript:@"runningDEs"];

    v15 = [collectedCopy ded_mapWithBlock:&__block_literal_global_58];
    [dictionary setObject:v15 forKeyedSubscript:@"finishedDEDGroups"];

    v16 = [identifiersCopy ded_mapWithBlock:&__block_literal_global_60];
    [dictionary setObject:v16 forKeyedSubscript:@"extensionIdentifiers"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v18 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:23 withData:v18 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)adoptFiles:(id)files forSession:(id)session
{
  v6 = MEMORY[0x277CBEB38];
  sessionCopy = session;
  filesCopy = files;
  dictionary = [v6 dictionary];
  [dictionary setObject:filesCopy forKeyedSubscript:@"filesForAdopt"];

  [dictionary setObject:sessionCopy forKeyedSubscript:@"sessionID"];
  connection = [(DEDIDSOutbound *)self connection];
  v10 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:15 withData:v10 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)didAdoptFilesWithError:(id)error forSession:(id)session
{
  v6 = MEMORY[0x277CBEB38];
  sessionCopy = session;
  errorCopy = error;
  dictionary = [v6 dictionary];
  [dictionary setObject:errorCopy forKeyedSubscript:@"error"];

  [dictionary setObject:sessionCopy forKeyedSubscript:@"sessionID"];
  connection = [(DEDIDSOutbound *)self connection];
  v10 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:16 withData:v10 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)compressionProgress:(unint64_t)progress total:(unint64_t)total sessionID:(id)d
{
  v8 = MEMORY[0x277CBEB38];
  dCopy = d;
  dictionary = [v8 dictionary];
  [dictionary setObject:dCopy forKeyedSubscript:@"sessionID"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:progress];
  [dictionary setObject:v10 forKeyedSubscript:@"compressedBytes"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:total];
  [dictionary setObject:v11 forKeyedSubscript:@"totalBytes"];

  connection = [(DEDIDSOutbound *)self connection];
  v13 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:32 withData:v13 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)uploadProgress:(unint64_t)progress total:(unint64_t)total sessionID:(id)d
{
  v8 = MEMORY[0x277CBEB38];
  dCopy = d;
  dictionary = [v8 dictionary];
  [dictionary setObject:dCopy forKeyedSubscript:@"sessionID"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:progress];
  [dictionary setObject:v10 forKeyedSubscript:@"uploadedBytes"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:total];
  [dictionary setObject:v11 forKeyedSubscript:@"totalBytes"];

  connection = [(DEDIDSOutbound *)self connection];
  v13 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:17 withData:v13 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)didFinishUploadingWithError:(id)error sessionID:(id)d
{
  v6 = MEMORY[0x277CBEB38];
  dCopy = d;
  errorCopy = error;
  dictionary = [v6 dictionary];
  [dictionary setObject:errorCopy forKeyedSubscript:@"error"];

  [dictionary setObject:dCopy forKeyedSubscript:@"sessionID"];
  connection = [(DEDIDSOutbound *)self connection];
  v10 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:33 withData:v10 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)commitSession:(id)session
{
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (sessionCopy)
  {
    [dictionary setValue:sessionCopy forKey:@"sessionID"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:18 withData:v6 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)didCommitSession:(id)session
{
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (sessionCopy)
  {
    [dictionary setValue:sessionCopy forKey:@"sessionID"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:19 withData:v6 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)cancelSession:(id)session
{
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (sessionCopy)
  {
    [dictionary setValue:sessionCopy forKey:@"sessionID"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:20 withData:v6 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)syncSessionStatusWithSession:(id)session
{
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (sessionCopy)
  {
    [dictionary setValue:sessionCopy forKey:@"sessionID"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:22 withData:v6 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)didCancelSession:(id)session
{
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (sessionCopy)
  {
    [dictionary setValue:sessionCopy forKey:@"sessionID"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:21 withData:v6 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)scheduleNotificationForSession:(id)session
{
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (sessionCopy)
  {
    [dictionary setValue:sessionCopy forKey:@"sessionID"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:26 withData:v6 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)unscheduleNotificationForSession:(id)session
{
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (sessionCopy)
  {
    [dictionary setValue:sessionCopy forKey:@"sessionID"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:27 withData:v6 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)loadTextDataForExtensions:(id)extensions localization:(id)localization sessionID:(id)d
{
  extensionsCopy = extensions;
  localizationCopy = localization;
  dCopy = d;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11 = dictionary;
  if (dCopy)
  {
    [dictionary setValue:dCopy forKey:@"sessionID"];
    v12 = [extensionsCopy ded_flatMapWithBlock:&__block_literal_global_81_0];
    [v11 setValue:v12 forKey:@"extensions"];
    [v11 setValue:localizationCopy forKey:@"localization"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v14 = [DEDIDSConnection packPayload:v11];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:31 withData:v14 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)didLoadTextDataForExtensions:(id)extensions localization:(id)localization session:(id)session
{
  extensionsCopy = extensions;
  localizationCopy = localization;
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11 = dictionary;
  if (sessionCopy)
  {
    [dictionary setValue:sessionCopy forKey:@"sessionID"];
    v12 = [extensionsCopy ded_flatMapWithBlock:&__block_literal_global_89];
    [v11 setValue:v12 forKey:@"extensions"];
    [v11 setValue:localizationCopy forKey:@"localization"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v14 = [DEDIDSConnection packPayload:v11];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:31 withData:v14 forIDSDeviceID:deviceAddress isResponse:1];
}

- (void)presentNotificationForSession:(id)session
{
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (sessionCopy)
  {
    [dictionary setValue:sessionCopy forKey:@"sessionID"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:28 withData:v6 forIDSDeviceID:deviceAddress isResponse:0];
}

- (void)removeNotificationForSession:(id)session
{
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (sessionCopy)
  {
    [dictionary setValue:sessionCopy forKey:@"sessionID"];
  }

  connection = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:dictionary];
  deviceAddress = [(DEDIDSOutbound *)self deviceAddress];
  [connection sendMessage:29 withData:v6 forIDSDeviceID:deviceAddress isResponse:0];
}

+ (id)archivedClasses
{
  if (archivedClasses_onceToken_5 != -1)
  {
    +[DEDIDSOutbound archivedClasses];
  }

  v3 = archivedClasses__outboundClasses_0;

  return v3;
}

void __33__DEDIDSOutbound_archivedClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB58];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v13 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];
  v8 = +[DEDExtension archivedClasses];
  [v13 unionSet:v8];

  v9 = +[DEDAttachmentGroup archivedClasses];
  [v13 unionSet:v9];

  v10 = +[DEDExtensionIdentifier archivedClasses];
  [v13 unionSet:v10];

  v11 = [MEMORY[0x277CBEB98] setWithSet:v13];
  v12 = archivedClasses__outboundClasses_0;
  archivedClasses__outboundClasses_0 = v11;
}

- (DEDIDSConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end