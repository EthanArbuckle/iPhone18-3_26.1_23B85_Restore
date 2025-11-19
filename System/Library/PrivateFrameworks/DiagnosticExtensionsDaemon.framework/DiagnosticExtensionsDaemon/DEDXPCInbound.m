@interface DEDXPCInbound
- (DEDXPCInbound)initWithDelegate:(id)a3 senderPid:(id)a4;
- (DEDXPCInboundDelegate)delegate;
- (void)xpc_addData:(id)a3 withFilename:(id)a4 forSession:(id)a5;
- (void)xpc_adoptFiles:(id)a3 forSession:(id)a4;
- (void)xpc_cancelNotifySession:(id)a3;
- (void)xpc_cancelSession:(id)a3;
- (void)xpc_commitSession:(id)a3;
- (void)xpc_compressionProgress:(unint64_t)a3 total:(unint64_t)a4 session:(id)a5;
- (void)xpc_deviceSupportsDiagnosticExtensions:(id)a3 session:(id)a4;
- (void)xpc_didAdoptFilesWithError:(id)a3 forSession:(id)a4;
- (void)xpc_didCancelSession:(id)a3;
- (void)xpc_didCommitSession:(id)a3;
- (void)xpc_didDiscoverDevices:(id)a3;
- (void)xpc_didFinishUploadingWithError:(id)a3 sessionID:(id)a4;
- (void)xpc_didGetState:(int64_t)a3 info:(id)a4 sessionID:(id)a5;
- (void)xpc_didLoadTextDataForExtensions:(id)a3 localization:(id)a4 sessionID:(id)a5;
- (void)xpc_didStartBugSessionWithInfo:(id)a3;
- (void)xpc_discoverAllAvailableDevices;
- (void)xpc_finishedDiagnosticWithIdentifier:(id)a3 result:(id)a4 session:(id)a5;
- (void)xpc_forceRemoveNotificationOfType:(int64_t)a3 identifier:(id)a4 hostIdentifier:(id)a5;
- (void)xpc_getSessionStateWithSession:(id)a3;
- (void)xpc_getSessionStatusWithSession:(id)a3;
- (void)xpc_gotDeviceUpdate:(id)a3;
- (void)xpc_hasActiveSession:(id)a3;
- (void)xpc_hasCollected:(id)a3 isCollecting:(id)a4 inSession:(id)a5;
- (void)xpc_hasCollected:(id)a3 isCollecting:(id)a4 withIdentifiers:(id)a5 inSession:(id)a6;
- (void)xpc_listAvailableExtensionsForSession:(id)a3;
- (void)xpc_listClientXPCConnections;
- (void)xpc_listClientXPCConnectionsReply:(id)a3;
- (void)xpc_loadTextDataForExtensions:(id)a3 localization:(id)a4 sessionID:(id)a5;
- (void)xpc_notifySession:(id)a3;
- (void)xpc_ping;
- (void)xpc_pingSession:(id)a3;
- (void)xpc_pong;
- (void)xpc_pongSession:(id)a3;
- (void)xpc_promptPINForDevice:(id)a3;
- (void)xpc_startBugSessionWithIdentifier:(id)a3 configuration:(id)a4 caller:(id)a5 target:(id)a6;
- (void)xpc_startDiagnosticWithIdentifier:(id)a3 parameters:(id)a4 deferRunUntil:(id)a5 session:(id)a6;
- (void)xpc_startDiagnosticWithIdentifier:(id)a3 parameters:(id)a4 session:(id)a5;
- (void)xpc_startPairSetupForDevice:(id)a3;
- (void)xpc_stopDeviceDiscovery;
- (void)xpc_successPINForDevice:(id)a3;
- (void)xpc_syncSessionStatusWithSession:(id)a3;
- (void)xpc_terminateExtension:(id)a3 info:(id)a4 session:(id)a5;
- (void)xpc_tryPIN:(id)a3 forDevice:(id)a4;
- (void)xpc_uploadProgress:(unint64_t)a3 total:(int64_t)a4 session:(id)a5;
@end

@implementation DEDXPCInbound

- (DEDXPCInbound)initWithDelegate:(id)a3 senderPid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = DEDXPCInbound;
  v8 = [(DEDXPCInbound *)&v13 init];
  if (v8)
  {
    v9 = +[DEDConfiguration sharedInstance];
    v10 = os_log_create([v9 loggingSubsystem], "xpc-inbound");
    log = v8->_log;
    v8->_log = v10;

    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v8->_senderPid, a4);
  }

  return v8;
}

- (void)xpc_ping
{
  v3 = [(DEDXPCInbound *)self delegate];
  [v3 xpcInbound_ping:self];
}

- (void)xpc_pong
{
  v2 = [(DEDXPCInbound *)self delegate];
  [v2 xpcInbound_pong];
}

- (void)xpc_discoverAllAvailableDevices
{
  v3 = [(DEDXPCInbound *)self delegate];
  [v3 xpcInbound_discoverAllAvailableDevices:self];
}

- (void)xpc_stopDeviceDiscovery
{
  v3 = [(DEDXPCInbound *)self delegate];
  [v3 xpcInbound_stopDeviceDiscovery:self];
}

- (void)xpc_didDiscoverDevices:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8++) setTransport:2];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [(DEDXPCInbound *)self delegate];
  [v9 xpcInbound_didDiscoverDevices:v4];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)xpc_gotDeviceUpdate:(id)a3
{
  v4 = a3;
  [v4 setTransport:2];
  v5 = [(DEDXPCInbound *)self delegate];
  [v5 xpcInbound_gotDeviceUpdate:v4];
}

- (void)xpc_startPairSetupForDevice:(id)a3
{
  v4 = a3;
  v5 = [(DEDXPCInbound *)self delegate];
  [v5 xpcInbound_startPairSetupForDevice:v4 fromInbound:self];
}

- (void)xpc_promptPINForDevice:(id)a3
{
  v4 = a3;
  v5 = [(DEDXPCInbound *)self delegate];
  [v5 xpcInbound_promptPINForDevice:v4];
}

- (void)xpc_tryPIN:(id)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DEDXPCInbound *)self delegate];
  [v8 xpcInbound_tryPIN:v7 forDevice:v6 fromInbound:self];
}

- (void)xpc_successPINForDevice:(id)a3
{
  v4 = a3;
  v5 = [(DEDXPCInbound *)self delegate];
  [v5 xpcInbound_successPINForDevice:v4];
}

- (void)xpc_startBugSessionWithIdentifier:(id)a3 configuration:(id)a4 caller:(id)a5 target:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [v11 setTransport:2];
  [v11 setAddress:@"0"];
  v14 = [(DEDXPCInbound *)self delegate];
  [v14 xpcInbound_startBugSessionWithIdentifier:v13 configuration:v12 caller:v11 target:v10 fromInbound:self];
}

- (void)xpc_didStartBugSessionWithInfo:(id)a3
{
  v4 = a3;
  v5 = DEDSessionStartLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "(DEDXPCInbound) didStartBugSessionWithInfo", v9, 2u);
  }

  v6 = [(DEDXPCInbound *)self delegate];

  if (!v6)
  {
    v7 = DEDSessionStartLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DEDXPCInbound xpc_didStartBugSessionWithInfo:];
    }
  }

  v8 = [(DEDXPCInbound *)self delegate];
  [v8 xpcInbound_didStartBugSessionWithInfo:v4];
}

- (void)xpc_hasActiveSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDXPCInbound *)self delegate];
  [v5 xpcInbound_hasActiveSession:v4 fromInbound:self];
}

- (void)xpc_didCancelSession:(id)a3
{
  v6 = a3;
  v4 = [(DEDXPCInbound *)self delegate];

  if (v4)
  {
    v5 = [(DEDXPCInbound *)self delegate];
    [v5 xpcInbound_didAbortSessionWithID:v6];
  }
}

- (void)xpc_listClientXPCConnections
{
  v3 = [(DEDXPCInbound *)self delegate];
  [v3 xpc_listClientXPCConnectionsFromInbound:self];
}

- (void)xpc_listClientXPCConnectionsReply:(id)a3
{
  v4 = a3;
  v5 = [(DEDXPCInbound *)self delegate];
  [v5 xpcInbound_listClientXPCConnectionsReply:v4];
}

- (void)xpc_forceRemoveNotificationOfType:(int64_t)a3 identifier:(id)a4 hostIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(DEDXPCInbound *)self delegate];
  [v10 xpcInbound_forceRemoveNotificationOfType:a3 identifier:v9 hostIdentifier:v8];
}

- (void)xpc_pingSession:(id)a3
{
  v7 = a3;
  v4 = [(DEDXPCInbound *)self delegate];

  if (v4)
  {
    v5 = [(DEDXPCInbound *)self delegate];
    v6 = [v5 xpcInbound_sessionForIdentifier:v7];

    [v6 pingWithCallback:0];
  }
}

- (void)xpc_pongSession:(id)a3
{
  v7 = a3;
  v4 = [(DEDXPCInbound *)self delegate];

  if (v7 && v4)
  {
    v5 = [(DEDXPCInbound *)self delegate];
    v6 = [v5 xpcInbound_sessionForIdentifier:v7];
    [v6 pong];
  }
}

- (void)xpc_listAvailableExtensionsForSession:(id)a3
{
  v7 = a3;
  v4 = [(DEDXPCInbound *)self delegate];

  if (v7 && v4)
  {
    v5 = [(DEDXPCInbound *)self delegate];
    v6 = [v5 xpcInbound_sessionForIdentifier:v7];
    [v6 listDiagnosticExtensionsWithCompletion:0];
  }
}

- (void)xpc_deviceSupportsDiagnosticExtensions:(id)a3 session:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(DEDXPCInbound *)self delegate];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
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

          v15 = [DEDExtension extensionWithDictionary:*(*(&v20 + 1) + 8 * v14), v20];
          [v9 addObject:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    v16 = [v9 copy];
    v17 = [(DEDXPCInbound *)self delegate];
    v18 = [v17 xpcInbound_sessionForIdentifier:v7];
    [v18 supportsDiagnostics:v16];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)xpc_startDiagnosticWithIdentifier:(id)a3 parameters:(id)a4 session:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(DEDXPCInbound *)self delegate];

  if (v10)
  {
    v11 = [[DEDExtensionIdentifier alloc] initWithString:v17];
    v12 = v11;
    if (v11)
    {
      v13 = [(DEDExtensionIdentifier *)v11 extensionIdentifier];

      v17 = v13;
    }

    v14 = [(DEDXPCInbound *)self delegate];
    v15 = [v14 xpcInbound_sessionForIdentifier:v9];
    v16 = [v15 startDiagnosticExtensionWithIdentifier:v17 parameters:v8 completion:0];
  }
}

- (void)xpc_startDiagnosticWithIdentifier:(id)a3 parameters:(id)a4 deferRunUntil:(id)a5 session:(id)a6
{
  v20 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(DEDXPCInbound *)self delegate];

  if (v13)
  {
    v14 = [[DEDExtensionIdentifier alloc] initWithString:v20];
    v15 = v14;
    if (v14)
    {
      v16 = [(DEDExtensionIdentifier *)v14 extensionIdentifier];

      v20 = v16;
    }

    v17 = [(DEDXPCInbound *)self delegate];
    v18 = [v17 xpcInbound_sessionForIdentifier:v12];
    v19 = [v18 startDiagnosticExtensionWithIdentifier:v20 parameters:v10 deferRunUntil:v11 completion:0];
  }
}

- (void)xpc_finishedDiagnosticWithIdentifier:(id)a3 result:(id)a4 session:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(DEDXPCInbound *)self delegate];

  if (v10)
  {
    v11 = [(DEDXPCInbound *)self delegate];
    v12 = [v11 xpcInbound_sessionForIdentifier:v9];
    v13 = [DEDAttachmentGroup groupWithDictionary:v8];
    [v12 finishedDiagnosticWithIdentifier:v14 result:v13];
  }
}

- (void)xpc_terminateExtension:(id)a3 info:(id)a4 session:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DEDXPCInbound *)self delegate];

  if (v11)
  {
    v12 = [(DEDXPCInbound *)self delegate];
    v13 = [v12 xpcInbound_sessionForIdentifier:v10];

    if (v13)
    {
      [v13 terminateExtension:v8 withInfo:v9];
    }

    else
    {
      v14 = [(DEDXPCInbound *)self log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [DEDXPCInbound xpc_terminateExtension:v8 info:v14 session:?];
      }
    }
  }

  else
  {
    v13 = [(DEDXPCInbound *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [DEDXPCInbound xpc_terminateExtension:info:session:];
    }
  }
}

- (void)xpc_getSessionStateWithSession:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DEDXPCInbound *)self delegate];

  if (v5)
  {
    v6 = [(DEDXPCInbound *)self delegate];
    v7 = [v6 xpcInbound_sessionForIdentifier:v4];

    if (v7)
    {
      [v7 getStateWithCompletion:0];
    }

    else
    {
      v8 = [(DEDXPCInbound *)self log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = v4;
        _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "no session found for identifier [%{public}@]. Cannot get state.", &v10, 0xCu);
      }
    }
  }

  else
  {
    v7 = [(DEDXPCInbound *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DEDXPCInbound xpc_getSessionStateWithSession:];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)xpc_didGetState:(int64_t)a3 info:(id)a4 sessionID:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(DEDXPCInbound *)self delegate];

  if (v10)
  {
    v11 = [(DEDXPCInbound *)self delegate];
    v12 = [v11 xpcInbound_sessionForIdentifier:v9];

    if (v12)
    {
      [v12 didGetState:a3 info:v8];
    }

    else
    {
      v13 = [(DEDXPCInbound *)self log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543362;
        v16 = v9;
        _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "no session found for identifier [%{public}@]. Cannot reply with state", &v15, 0xCu);
      }
    }
  }

  else
  {
    v12 = [(DEDXPCInbound *)self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DEDXPCInbound xpc_didGetState:info:sessionID:];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)xpc_getSessionStatusWithSession:(id)a3
{
  v7 = a3;
  v4 = [(DEDXPCInbound *)self delegate];

  if (v7 && v4)
  {
    v5 = [(DEDXPCInbound *)self delegate];
    v6 = [v5 xpcInbound_sessionForIdentifier:v7];
    [v6 getSessionStatusWithCompletion:0];
  }
}

- (void)xpc_syncSessionStatusWithSession:(id)a3
{
  v7 = a3;
  v4 = [(DEDXPCInbound *)self delegate];

  if (v7 && v4)
  {
    v5 = [(DEDXPCInbound *)self delegate];
    v6 = [v5 xpcInbound_sessionForIdentifier:v7];
    [v6 synchronizeSessionStatusWithCompletion:0];
  }
}

- (void)xpc_hasCollected:(id)a3 isCollecting:(id)a4 inSession:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(DEDXPCInbound *)self delegate];

  if (v9 && v10)
  {
    v11 = [v8 ded_mapWithBlock:&__block_literal_global_36];
    v12 = [v15 ded_mapWithBlock:&__block_literal_global_20];
    v13 = [(DEDXPCInbound *)self delegate];
    v14 = [v13 xpcInbound_sessionForIdentifier:v9];
    [v14 hasCollected:v12 isCollecting:v11];
  }
}

- (void)xpc_hasCollected:(id)a3 isCollecting:(id)a4 withIdentifiers:(id)a5 inSession:(id)a6
{
  v19 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(DEDXPCInbound *)self delegate];

  if (v12 && v13)
  {
    v14 = [v10 ded_mapWithBlock:&__block_literal_global_22_0];
    v15 = [v19 ded_mapWithBlock:&__block_literal_global_24];
    v16 = [v11 ded_mapWithBlock:&__block_literal_global_26];
    v17 = [(DEDXPCInbound *)self delegate];
    v18 = [v17 xpcInbound_sessionForIdentifier:v12];
    [v18 hasCollected:v15 isCollecting:v14 identifiers:v16];
  }
}

DEDExtensionIdentifier *__73__DEDXPCInbound_xpc_hasCollected_isCollecting_withIdentifiers_inSession___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[DEDExtensionIdentifier alloc] initWithString:v2];

  return v3;
}

- (void)xpc_adoptFiles:(id)a3 forSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DEDXPCInbound *)self delegate];

  if (v8)
  {
    v9 = [(DEDXPCInbound *)self delegate];
    v10 = [v9 xpcInbound_sessionForIdentifier:v7];
    [v10 adoptFiles:v6 withCompletion:0];
  }

  else
  {
    v9 = [(DEDXPCInbound *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DEDXPCInbound xpc_adoptFiles:forSession:];
    }
  }
}

- (void)xpc_didAdoptFilesWithError:(id)a3 forSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DEDXPCInbound *)self delegate];

  if (v8)
  {
    v9 = [(DEDXPCInbound *)self delegate];
    v10 = [v9 xpcInbound_sessionForIdentifier:v7];
    [v10 didAdoptFilesWithError:v6];
  }

  else
  {
    v9 = [(DEDXPCInbound *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DEDXPCInbound xpc_didAdoptFilesWithError:forSession:];
    }
  }
}

- (void)xpc_compressionProgress:(unint64_t)a3 total:(unint64_t)a4 session:(id)a5
{
  v8 = a5;
  v10 = [(DEDXPCInbound *)self delegate];
  v9 = [v10 xpcInbound_sessionForIdentifier:v8];

  [v9 compressionProgress:a3 total:a4];
}

- (void)xpc_uploadProgress:(unint64_t)a3 total:(int64_t)a4 session:(id)a5
{
  v8 = a5;
  v10 = [(DEDXPCInbound *)self delegate];
  v9 = [v10 xpcInbound_sessionForIdentifier:v8];

  [v9 uploadProgress:a3 total:a4];
}

- (void)xpc_didFinishUploadingWithError:(id)a3 sessionID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(DEDXPCInbound *)self delegate];
  v8 = [v9 xpcInbound_sessionForIdentifier:v6];

  [v8 didFinishUploadingWithError:v7];
}

- (void)xpc_commitSession:(id)a3
{
  v7 = a3;
  v4 = [(DEDXPCInbound *)self delegate];

  if (v7 && v4)
  {
    v5 = [(DEDXPCInbound *)self delegate];
    v6 = [v5 xpcInbound_sessionForIdentifier:v7];
    [v6 commit];
  }
}

- (void)xpc_didCommitSession:(id)a3
{
  v7 = a3;
  v4 = [(DEDXPCInbound *)self delegate];

  if (v7 && v4)
  {
    v5 = [(DEDXPCInbound *)self delegate];
    v6 = [v5 xpcInbound_sessionForIdentifier:v7];
    [v6 didCommit];
  }
}

- (void)xpc_cancelSession:(id)a3
{
  v7 = a3;
  v4 = [(DEDXPCInbound *)self delegate];

  if (v7 && v4)
  {
    v5 = [(DEDXPCInbound *)self delegate];
    v6 = [v5 xpcInbound_sessionForIdentifier:v7];
    [v6 cancel];
  }
}

- (void)xpc_notifySession:(id)a3
{
  v7 = a3;
  v4 = [(DEDXPCInbound *)self delegate];

  if (v4)
  {
    v5 = [(DEDXPCInbound *)self delegate];
    v6 = [v5 xpcInbound_sessionForIdentifier:v7];
    [v6 scheduleNotification];
  }
}

- (void)xpc_cancelNotifySession:(id)a3
{
  v7 = a3;
  v4 = [(DEDXPCInbound *)self delegate];

  if (v4)
  {
    v5 = [(DEDXPCInbound *)self delegate];
    v6 = [v5 xpcInbound_sessionForIdentifier:v7];
    [v6 clearNotification];
  }
}

- (void)xpc_addData:(id)a3 withFilename:(id)a4 forSession:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DEDXPCInbound *)self delegate];

  if (v11)
  {
    v12 = [(DEDXPCInbound *)self delegate];
    v13 = [v12 xpcInbound_sessionForIdentifier:v10];

    if (v13)
    {
      [v13 addData:v8 withFilename:v9];
    }

    else
    {
      v14 = [(DEDXPCInbound *)self log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        v17 = v10;
        _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_DEFAULT, "no session found for identifier [%{public}@]. Cannot send data.", &v16, 0xCu);
      }
    }
  }

  else
  {
    v13 = [(DEDXPCInbound *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [DEDXPCInbound xpc_addData:withFilename:forSession:];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)xpc_loadTextDataForExtensions:(id)a3 localization:(id)a4 sessionID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v12 = [a3 ded_flatMapWithBlock:&__block_literal_global_29];
  v10 = [(DEDXPCInbound *)self delegate];
  v11 = [v10 xpcInbound_sessionForIdentifier:v8];

  [v11 loadTextDataForExtensions:v12 localization:v9 completion:0];
}

- (void)xpc_didLoadTextDataForExtensions:(id)a3 localization:(id)a4 sessionID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v12 = [a3 ded_flatMapWithBlock:&__block_literal_global_31];
  v10 = [(DEDXPCInbound *)self delegate];
  v11 = [v10 xpcInbound_sessionForIdentifier:v8];

  [v11 didLoadTextDataForExtensions:v12 localization:v9];
}

- (DEDXPCInboundDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)xpc_terminateExtension:(uint64_t)a1 info:(NSObject *)a2 session:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "no session found for identifier [%{public}@]", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end