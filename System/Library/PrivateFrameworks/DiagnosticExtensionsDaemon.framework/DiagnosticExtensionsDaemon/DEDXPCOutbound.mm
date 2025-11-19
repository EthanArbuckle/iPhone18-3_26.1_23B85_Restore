@interface DEDXPCOutbound
- (DEDXPCOutbound)initWithRemoteObject:(id)a3;
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

@implementation DEDXPCOutbound

- (DEDXPCOutbound)initWithRemoteObject:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DEDXPCOutbound;
  v5 = [(DEDXPCOutbound *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DEDXPCOutbound *)v5 setRemoteObject:v4];
  }

  return v6;
}

- (void)pingSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDXPCOutbound *)self remoteObject];
  [v5 xpc_pingSession:v4];
}

- (void)pongSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDXPCOutbound *)self remoteObject];
  [v5 xpc_pongSession:v4];
}

- (void)listAvailableExtensionsForSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDXPCOutbound *)self remoteObject];
  [v5 xpc_listAvailableExtensionsForSession:v4];
}

- (void)getSessionStatusWithSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDXPCOutbound *)self remoteObject];
  [v5 xpc_getSessionStatusWithSession:v4];
}

- (void)syncSessionStatusWithSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDXPCOutbound *)self remoteObject];
  [v5 xpc_syncSessionStatusWithSession:v4];
}

- (void)hasCollected:(id)a3 isCollecting:(id)a4 inSession:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 valueForKeyPath:@"serialize"];
  v11 = v10;
  v12 = &unk_285B899E8;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = [v9 valueForKeyPath:@"serialize"];

  v15 = &unk_285B89A00;
  if (v14)
  {
    v15 = v14;
  }

  v16 = v15;

  v17 = [(DEDXPCOutbound *)self remoteObject];
  [v17 xpc_hasCollected:v13 isCollecting:v16 inSession:v8];
}

- (void)hasCollected:(id)a3 isCollecting:(id)a4 withIdentifiers:(id)a5 inSession:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [a3 valueForKeyPath:@"serialize"];
  v14 = v13;
  v15 = &unk_285B89A18;
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  v17 = [v12 valueForKeyPath:@"serialize"];

  v18 = &unk_285B89A30;
  if (v17)
  {
    v18 = v17;
  }

  v19 = v18;

  v20 = [v11 valueForKey:@"stringValue"];

  v21 = MEMORY[0x277CBEBF8];
  if (v20)
  {
    v21 = v20;
  }

  v22 = v21;

  v23 = [(DEDXPCOutbound *)self remoteObject];
  [v23 xpc_hasCollected:v16 isCollecting:v19 withIdentifiers:v22 inSession:v10];
}

- (void)deviceSupportsDiagnosticExtensions:(id)a3 session:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * v13) serialize];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [(DEDXPCOutbound *)self remoteObject];
  [v15 xpc_deviceSupportsDiagnosticExtensions:v8 session:v7];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)startDiagnosticWithIdentifier:(id)a3 parameters:(id)a4 session:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DEDXPCOutbound *)self remoteObject];
  [v11 xpc_startDiagnosticWithIdentifier:v10 parameters:v9 session:v8];
}

- (void)startDiagnosticWithIdentifier:(id)a3 parameters:(id)a4 deferRunUntil:(id)a5 session:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(DEDXPCOutbound *)self remoteObject];
  [v14 xpc_startDiagnosticWithIdentifier:v13 parameters:v12 deferRunUntil:v11 session:v10];
}

- (void)finishedDiagnosticWithIdentifier:(id)a3 result:(id)a4 session:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [(DEDXPCOutbound *)self remoteObject];
  v11 = [v9 serialize];

  [v12 xpc_finishedDiagnosticWithIdentifier:v10 result:v11 session:v8];
}

- (void)terminateExtension:(id)a3 info:(id)a4 session:(id)a5
{
  v8 = MEMORY[0x277CBEC10];
  if (a4)
  {
    v8 = a4;
  }

  v9 = v8;
  v10 = a5;
  v11 = a3;
  v12 = [(DEDXPCOutbound *)self remoteObject];
  [v12 xpc_terminateExtension:v11 info:v9 session:v10];
}

- (void)adoptFiles:(id)a3 forSession:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DEDXPCOutbound *)self remoteObject];
  [v8 xpc_adoptFiles:v7 forSession:v6];
}

- (void)didAdoptFilesWithError:(id)a3 forSession:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DEDXPCOutbound *)self remoteObject];
  [v8 xpc_didAdoptFilesWithError:v7 forSession:v6];
}

- (void)compressionProgress:(unint64_t)a3 total:(unint64_t)a4 sessionID:(id)a5
{
  v8 = a5;
  v9 = [(DEDXPCOutbound *)self remoteObject];
  [v9 xpc_compressionProgress:a3 total:a4 session:v8];
}

- (void)uploadProgress:(unint64_t)a3 total:(unint64_t)a4 sessionID:(id)a5
{
  v8 = a5;
  v9 = [(DEDXPCOutbound *)self remoteObject];
  [v9 xpc_uploadProgress:a3 total:a4 session:v8];
}

- (void)didFinishUploadingWithError:(id)a3 sessionID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DEDXPCOutbound *)self remoteObject];
  [v8 xpc_didFinishUploadingWithError:v7 sessionID:v6];
}

- (void)commitSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDXPCOutbound *)self remoteObject];
  [v5 xpc_commitSession:v4];
}

- (void)didCommitSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDXPCOutbound *)self remoteObject];
  [v5 xpc_didCommitSession:v4];
}

- (void)cancelSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDXPCOutbound *)self remoteObject];
  [v5 xpc_cancelSession:v4];
}

- (void)scheduleNotificationForSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDXPCOutbound *)self remoteObject];
  [v5 xpc_notifySession:v4];
}

- (void)unscheduleNotificationForSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDXPCOutbound *)self remoteObject];
  [v5 xpc_cancelNotifySession:v4];
}

- (void)getSessionStateWithSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDXPCOutbound *)self remoteObject];
  [v5 xpc_getSessionStateWithSession:v4];
}

- (void)addSessionData:(id)a3 withFilename:(id)a4 forSession:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DEDXPCOutbound *)self remoteObject];
  [v11 xpc_addData:v10 withFilename:v9 forSession:v8];
}

- (void)didCancelSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDXPCOutbound *)self remoteObject];
  [v5 xpc_didCancelSession:v4];
}

- (void)didGetState:(int64_t)a3 info:(id)a4 sessionID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(DEDXPCOutbound *)self remoteObject];
  [v10 xpc_didGetState:a3 info:v9 sessionID:v8];
}

- (void)loadTextDataForExtensions:(id)a3 localization:(id)a4 sessionID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v11 = [a3 valueForKeyPath:@"serialize"];
  v10 = [(DEDXPCOutbound *)self remoteObject];
  [v10 xpc_loadTextDataForExtensions:v11 localization:v9 sessionID:v8];
}

- (void)didLoadTextDataForExtensions:(id)a3 localization:(id)a4 session:(id)a5
{
  v8 = a5;
  v9 = a4;
  v11 = [a3 valueForKeyPath:@"serialize"];
  v10 = [(DEDXPCOutbound *)self remoteObject];
  [v10 xpc_didLoadTextDataForExtensions:v11 localization:v9 sessionID:v8];
}

@end