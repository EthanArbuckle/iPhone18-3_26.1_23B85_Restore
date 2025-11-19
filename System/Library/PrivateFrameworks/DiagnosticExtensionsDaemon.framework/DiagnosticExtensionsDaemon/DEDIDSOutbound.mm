@interface DEDIDSOutbound
+ (id)archivedClasses;
+ (id)outboundWithSessionID:(id)a3 withDeviceAtAddress:(id)a4 connection:(id)a5;
- (DEDIDSConnection)connection;
- (DEDIDSOutbound)init;
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
- (void)presentNotificationForSession:(id)a3;
- (void)removeNotificationForSession:(id)a3;
- (void)scheduleNotificationForSession:(id)a3;
- (void)startDiagnosticWithIdentifier:(id)a3 parameters:(id)a4 deferRunUntil:(id)a5 session:(id)a6;
- (void)startDiagnosticWithIdentifier:(id)a3 parameters:(id)a4 session:(id)a5;
- (void)syncSessionStatusWithSession:(id)a3;
- (void)terminateExtension:(id)a3 info:(id)a4 session:(id)a5;
- (void)unscheduleNotificationForSession:(id)a3;
- (void)uploadProgress:(unint64_t)a3 total:(unint64_t)a4 sessionID:(id)a5;
@end

@implementation DEDIDSOutbound

+ (id)outboundWithSessionID:(id)a3 withDeviceAtAddress:(id)a4 connection:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(DEDIDSOutbound);
  [(DEDIDSOutbound *)v10 setConnection:v7];

  [(DEDIDSOutbound *)v10 setDeviceAddress:v8];
  [(DEDIDSOutbound *)v10 setSessionID:v9];

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

- (void)pingSession:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (v8)
  {
    [v4 setValue:v8 forKey:@"sessionID"];
  }

  v5 = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:v4];
  v7 = [(DEDIDSOutbound *)self deviceAddress];
  [v5 sendMessage:10 withData:v6 forIDSDeviceID:v7 isResponse:0];
}

- (void)terminateExtension:(id)a3 info:(id)a4 session:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB38] dictionary];
  if (v14 && v9)
  {
    [v10 setValue:v9 forKey:@"sessionID"];
    [v10 setValue:v14 forKey:@"triggerDE"];
  }

  if (v8)
  {
    [v10 setValue:v8 forKey:@"triggerDEParams"];
  }

  v11 = [(DEDIDSOutbound *)self connection];
  v12 = [DEDIDSConnection packPayload:v10];
  v13 = [(DEDIDSOutbound *)self deviceAddress];
  [v11 sendMessage:12 withData:v12 forIDSDeviceID:v13 isResponse:0];
}

- (void)pongSession:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (v8)
  {
    [v4 setValue:v8 forKey:@"sessionID"];
  }

  v5 = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:v4];
  v7 = [(DEDIDSOutbound *)self deviceAddress];
  [v5 sendMessage:11 withData:v6 forIDSDeviceID:v7 isResponse:0];
}

- (void)listAvailableExtensionsForSession:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (v8)
  {
    [v4 setValue:v8 forKey:@"sessionID"];
  }

  v5 = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:v4];
  v7 = [(DEDIDSOutbound *)self deviceAddress];
  [v5 sendMessage:2 withData:v6 forIDSDeviceID:v7 isResponse:0];
}

- (void)deviceSupportsDiagnosticExtensions:(id)a3 session:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v6;
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

        v15 = [*(*(&v20 + 1) + 8 * v14) serialize];
        [v9 addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  [v8 setValue:v7 forKey:@"sessionID"];
  [v8 setValue:v9 forKey:@"getDEList"];
  v16 = [(DEDIDSOutbound *)self connection];
  v17 = [DEDIDSConnection packPayload:v8];
  v18 = [(DEDIDSOutbound *)self deviceAddress];
  [v16 sendMessage:3 withData:v17 forIDSDeviceID:v18 isResponse:0];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)startDiagnosticWithIdentifier:(id)a3 parameters:(id)a4 session:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB38] dictionary];
  if (v14 && v9)
  {
    [v10 setValue:v9 forKey:@"sessionID"];
    [v10 setValue:v14 forKey:@"triggerDE"];
    [v10 setValue:v8 forKey:@"triggerDEParams"];
  }

  v11 = [(DEDIDSOutbound *)self connection];
  v12 = [DEDIDSConnection packPayload:v10];
  v13 = [(DEDIDSOutbound *)self deviceAddress];
  [v11 sendMessage:4 withData:v12 forIDSDeviceID:v13 isResponse:0];
}

- (void)startDiagnosticWithIdentifier:(id)a3 parameters:(id)a4 deferRunUntil:(id)a5 session:(id)a6
{
  v17 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x277CBEB38] dictionary];
  if (v17 && v12)
  {
    [v13 setValue:v12 forKey:@"sessionID"];
    [v13 setValue:v17 forKey:@"triggerDE"];
    [v13 setValue:v10 forKey:@"triggerDEParams"];
    [v13 setValue:v11 forKey:@"triggerDERunDate"];
  }

  v14 = [(DEDIDSOutbound *)self connection];
  v15 = [DEDIDSConnection packPayload:v13];
  v16 = [(DEDIDSOutbound *)self deviceAddress];
  [v14 sendMessage:4 withData:v15 forIDSDeviceID:v16 isResponse:0];
}

- (void)finishedDiagnosticWithIdentifier:(id)a3 result:(id)a4 session:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB38] dictionary];
  if (v8 && v15 && v9)
  {
    [v10 setValue:v9 forKey:@"sessionID"];
    [v10 setValue:v15 forKey:@"triggerDE"];
    v11 = [v8 serialize];
    [v10 setValue:v11 forKey:@"finishedDEDGroups"];
  }

  v12 = [(DEDIDSOutbound *)self connection];
  v13 = [DEDIDSConnection packPayload:v10];
  v14 = [(DEDIDSOutbound *)self deviceAddress];
  [v12 sendMessage:5 withData:v13 forIDSDeviceID:v14 isResponse:0];
}

- (void)getSessionStatusWithSession:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (v8)
  {
    [v4 setValue:v8 forKey:@"sessionID"];
  }

  v5 = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:v4];
  v7 = [(DEDIDSOutbound *)self deviceAddress];
  [v5 sendMessage:13 withData:v6 forIDSDeviceID:v7 isResponse:0];
}

- (void)getSessionStateWithSession:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (v8)
  {
    [v4 setValue:v8 forKey:@"sessionID"];
  }

  v5 = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:v4];
  v7 = [(DEDIDSOutbound *)self deviceAddress];
  [v5 sendMessage:24 withData:v6 forIDSDeviceID:v7 isResponse:0];
}

- (void)addSessionData:(id)a3 withFilename:(id)a4 forSession:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = v10;
  if (v9)
  {
    [v10 setValue:v9 forKey:@"sessionID"];
    [v11 setValue:v15 forKey:@"sessionData"];
    [v11 setValue:v8 forKey:@"sessionDataFilename"];
  }

  v12 = [(DEDIDSOutbound *)self connection];
  v13 = [DEDIDSConnection packPayload:v11];
  v14 = [(DEDIDSOutbound *)self deviceAddress];
  [v12 sendMessage:30 withData:v13 forIDSDeviceID:v14 isResponse:0];
}

- (void)didGetState:(int64_t)a3 info:(id)a4 sessionID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = v10;
  if (v9)
  {
    [v10 setObject:v9 forKeyedSubscript:@"sessionID"];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [v11 setObject:v12 forKeyedSubscript:@"sessionState"];

    if (v8)
    {
      v13 = v8;
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

  v15 = [(DEDIDSOutbound *)self connection];
  v16 = [DEDIDSConnection packPayload:v11];
  v17 = [(DEDIDSOutbound *)self deviceAddress];
  [v15 sendMessage:25 withData:v16 forIDSDeviceID:v17 isResponse:0];
}

- (void)hasCollected:(id)a3 isCollecting:(id)a4 inSession:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB38] dictionary];
  if (v16 && v9)
  {
    [v10 setObject:v9 forKeyedSubscript:@"sessionID"];
    v11 = [v8 ded_mapWithBlock:&__block_literal_global_21];
    [v10 setObject:v11 forKeyedSubscript:@"runningDEs"];

    v12 = [v16 ded_mapWithBlock:&__block_literal_global_54];
    [v10 setObject:v12 forKeyedSubscript:@"finishedDEDGroups"];
  }

  v13 = [(DEDIDSOutbound *)self connection];
  v14 = [DEDIDSConnection packPayload:v10];
  v15 = [(DEDIDSOutbound *)self deviceAddress];
  [v13 sendMessage:14 withData:v14 forIDSDeviceID:v15 isResponse:0];
}

- (void)hasCollected:(id)a3 isCollecting:(id)a4 withIdentifiers:(id)a5 inSession:(id)a6
{
  v20 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x277CBEB38] dictionary];
  if (v20 && v12)
  {
    [v13 setObject:v12 forKeyedSubscript:@"sessionID"];
    v14 = [v10 ded_mapWithBlock:&__block_literal_global_56_0];
    [v13 setObject:v14 forKeyedSubscript:@"runningDEs"];

    v15 = [v20 ded_mapWithBlock:&__block_literal_global_58];
    [v13 setObject:v15 forKeyedSubscript:@"finishedDEDGroups"];

    v16 = [v11 ded_mapWithBlock:&__block_literal_global_60];
    [v13 setObject:v16 forKeyedSubscript:@"extensionIdentifiers"];
  }

  v17 = [(DEDIDSOutbound *)self connection];
  v18 = [DEDIDSConnection packPayload:v13];
  v19 = [(DEDIDSOutbound *)self deviceAddress];
  [v17 sendMessage:23 withData:v18 forIDSDeviceID:v19 isResponse:0];
}

- (void)adoptFiles:(id)a3 forSession:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v12 = [v6 dictionary];
  [v12 setObject:v8 forKeyedSubscript:@"filesForAdopt"];

  [v12 setObject:v7 forKeyedSubscript:@"sessionID"];
  v9 = [(DEDIDSOutbound *)self connection];
  v10 = [DEDIDSConnection packPayload:v12];
  v11 = [(DEDIDSOutbound *)self deviceAddress];
  [v9 sendMessage:15 withData:v10 forIDSDeviceID:v11 isResponse:0];
}

- (void)didAdoptFilesWithError:(id)a3 forSession:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v12 = [v6 dictionary];
  [v12 setObject:v8 forKeyedSubscript:@"error"];

  [v12 setObject:v7 forKeyedSubscript:@"sessionID"];
  v9 = [(DEDIDSOutbound *)self connection];
  v10 = [DEDIDSConnection packPayload:v12];
  v11 = [(DEDIDSOutbound *)self deviceAddress];
  [v9 sendMessage:16 withData:v10 forIDSDeviceID:v11 isResponse:0];
}

- (void)compressionProgress:(unint64_t)a3 total:(unint64_t)a4 sessionID:(id)a5
{
  v8 = MEMORY[0x277CBEB38];
  v9 = a5;
  v15 = [v8 dictionary];
  [v15 setObject:v9 forKeyedSubscript:@"sessionID"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [v15 setObject:v10 forKeyedSubscript:@"compressedBytes"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
  [v15 setObject:v11 forKeyedSubscript:@"totalBytes"];

  v12 = [(DEDIDSOutbound *)self connection];
  v13 = [DEDIDSConnection packPayload:v15];
  v14 = [(DEDIDSOutbound *)self deviceAddress];
  [v12 sendMessage:32 withData:v13 forIDSDeviceID:v14 isResponse:0];
}

- (void)uploadProgress:(unint64_t)a3 total:(unint64_t)a4 sessionID:(id)a5
{
  v8 = MEMORY[0x277CBEB38];
  v9 = a5;
  v15 = [v8 dictionary];
  [v15 setObject:v9 forKeyedSubscript:@"sessionID"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [v15 setObject:v10 forKeyedSubscript:@"uploadedBytes"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
  [v15 setObject:v11 forKeyedSubscript:@"totalBytes"];

  v12 = [(DEDIDSOutbound *)self connection];
  v13 = [DEDIDSConnection packPayload:v15];
  v14 = [(DEDIDSOutbound *)self deviceAddress];
  [v12 sendMessage:17 withData:v13 forIDSDeviceID:v14 isResponse:0];
}

- (void)didFinishUploadingWithError:(id)a3 sessionID:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v12 = [v6 dictionary];
  [v12 setObject:v8 forKeyedSubscript:@"error"];

  [v12 setObject:v7 forKeyedSubscript:@"sessionID"];
  v9 = [(DEDIDSOutbound *)self connection];
  v10 = [DEDIDSConnection packPayload:v12];
  v11 = [(DEDIDSOutbound *)self deviceAddress];
  [v9 sendMessage:33 withData:v10 forIDSDeviceID:v11 isResponse:0];
}

- (void)commitSession:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (v8)
  {
    [v4 setValue:v8 forKey:@"sessionID"];
  }

  v5 = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:v4];
  v7 = [(DEDIDSOutbound *)self deviceAddress];
  [v5 sendMessage:18 withData:v6 forIDSDeviceID:v7 isResponse:0];
}

- (void)didCommitSession:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (v8)
  {
    [v4 setValue:v8 forKey:@"sessionID"];
  }

  v5 = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:v4];
  v7 = [(DEDIDSOutbound *)self deviceAddress];
  [v5 sendMessage:19 withData:v6 forIDSDeviceID:v7 isResponse:0];
}

- (void)cancelSession:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (v8)
  {
    [v4 setValue:v8 forKey:@"sessionID"];
  }

  v5 = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:v4];
  v7 = [(DEDIDSOutbound *)self deviceAddress];
  [v5 sendMessage:20 withData:v6 forIDSDeviceID:v7 isResponse:0];
}

- (void)syncSessionStatusWithSession:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (v8)
  {
    [v4 setValue:v8 forKey:@"sessionID"];
  }

  v5 = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:v4];
  v7 = [(DEDIDSOutbound *)self deviceAddress];
  [v5 sendMessage:22 withData:v6 forIDSDeviceID:v7 isResponse:0];
}

- (void)didCancelSession:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (v8)
  {
    [v4 setValue:v8 forKey:@"sessionID"];
  }

  v5 = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:v4];
  v7 = [(DEDIDSOutbound *)self deviceAddress];
  [v5 sendMessage:21 withData:v6 forIDSDeviceID:v7 isResponse:0];
}

- (void)scheduleNotificationForSession:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (v8)
  {
    [v4 setValue:v8 forKey:@"sessionID"];
  }

  v5 = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:v4];
  v7 = [(DEDIDSOutbound *)self deviceAddress];
  [v5 sendMessage:26 withData:v6 forIDSDeviceID:v7 isResponse:0];
}

- (void)unscheduleNotificationForSession:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (v8)
  {
    [v4 setValue:v8 forKey:@"sessionID"];
  }

  v5 = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:v4];
  v7 = [(DEDIDSOutbound *)self deviceAddress];
  [v5 sendMessage:27 withData:v6 forIDSDeviceID:v7 isResponse:0];
}

- (void)loadTextDataForExtensions:(id)a3 localization:(id)a4 sessionID:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = v10;
  if (v9)
  {
    [v10 setValue:v9 forKey:@"sessionID"];
    v12 = [v16 ded_flatMapWithBlock:&__block_literal_global_81_0];
    [v11 setValue:v12 forKey:@"extensions"];
    [v11 setValue:v8 forKey:@"localization"];
  }

  v13 = [(DEDIDSOutbound *)self connection];
  v14 = [DEDIDSConnection packPayload:v11];
  v15 = [(DEDIDSOutbound *)self deviceAddress];
  [v13 sendMessage:31 withData:v14 forIDSDeviceID:v15 isResponse:0];
}

- (void)didLoadTextDataForExtensions:(id)a3 localization:(id)a4 session:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = v10;
  if (v9)
  {
    [v10 setValue:v9 forKey:@"sessionID"];
    v12 = [v16 ded_flatMapWithBlock:&__block_literal_global_89];
    [v11 setValue:v12 forKey:@"extensions"];
    [v11 setValue:v8 forKey:@"localization"];
  }

  v13 = [(DEDIDSOutbound *)self connection];
  v14 = [DEDIDSConnection packPayload:v11];
  v15 = [(DEDIDSOutbound *)self deviceAddress];
  [v13 sendMessage:31 withData:v14 forIDSDeviceID:v15 isResponse:1];
}

- (void)presentNotificationForSession:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (v8)
  {
    [v4 setValue:v8 forKey:@"sessionID"];
  }

  v5 = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:v4];
  v7 = [(DEDIDSOutbound *)self deviceAddress];
  [v5 sendMessage:28 withData:v6 forIDSDeviceID:v7 isResponse:0];
}

- (void)removeNotificationForSession:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (v8)
  {
    [v4 setValue:v8 forKey:@"sessionID"];
  }

  v5 = [(DEDIDSOutbound *)self connection];
  v6 = [DEDIDSConnection packPayload:v4];
  v7 = [(DEDIDSOutbound *)self deviceAddress];
  [v5 sendMessage:29 withData:v6 forIDSDeviceID:v7 isResponse:0];
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