@interface DEDXPCInbound
- (DEDXPCInbound)initWithDelegate:(id)delegate senderPid:(id)pid;
- (DEDXPCInboundDelegate)delegate;
- (void)xpc_addData:(id)data withFilename:(id)filename forSession:(id)session;
- (void)xpc_adoptFiles:(id)files forSession:(id)session;
- (void)xpc_cancelNotifySession:(id)session;
- (void)xpc_cancelSession:(id)session;
- (void)xpc_commitSession:(id)session;
- (void)xpc_compressionProgress:(unint64_t)progress total:(unint64_t)total session:(id)session;
- (void)xpc_deviceSupportsDiagnosticExtensions:(id)extensions session:(id)session;
- (void)xpc_didAdoptFilesWithError:(id)error forSession:(id)session;
- (void)xpc_didCancelSession:(id)session;
- (void)xpc_didCommitSession:(id)session;
- (void)xpc_didDiscoverDevices:(id)devices;
- (void)xpc_didFinishUploadingWithError:(id)error sessionID:(id)d;
- (void)xpc_didGetState:(int64_t)state info:(id)info sessionID:(id)d;
- (void)xpc_didLoadTextDataForExtensions:(id)extensions localization:(id)localization sessionID:(id)d;
- (void)xpc_didStartBugSessionWithInfo:(id)info;
- (void)xpc_discoverAllAvailableDevices;
- (void)xpc_finishedDiagnosticWithIdentifier:(id)identifier result:(id)result session:(id)session;
- (void)xpc_forceRemoveNotificationOfType:(int64_t)type identifier:(id)identifier hostIdentifier:(id)hostIdentifier;
- (void)xpc_getSessionStateWithSession:(id)session;
- (void)xpc_getSessionStatusWithSession:(id)session;
- (void)xpc_gotDeviceUpdate:(id)update;
- (void)xpc_hasActiveSession:(id)session;
- (void)xpc_hasCollected:(id)collected isCollecting:(id)collecting inSession:(id)session;
- (void)xpc_hasCollected:(id)collected isCollecting:(id)collecting withIdentifiers:(id)identifiers inSession:(id)session;
- (void)xpc_listAvailableExtensionsForSession:(id)session;
- (void)xpc_listClientXPCConnections;
- (void)xpc_listClientXPCConnectionsReply:(id)reply;
- (void)xpc_loadTextDataForExtensions:(id)extensions localization:(id)localization sessionID:(id)d;
- (void)xpc_notifySession:(id)session;
- (void)xpc_ping;
- (void)xpc_pingSession:(id)session;
- (void)xpc_pong;
- (void)xpc_pongSession:(id)session;
- (void)xpc_promptPINForDevice:(id)device;
- (void)xpc_startBugSessionWithIdentifier:(id)identifier configuration:(id)configuration caller:(id)caller target:(id)target;
- (void)xpc_startDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters deferRunUntil:(id)until session:(id)session;
- (void)xpc_startDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters session:(id)session;
- (void)xpc_startPairSetupForDevice:(id)device;
- (void)xpc_stopDeviceDiscovery;
- (void)xpc_successPINForDevice:(id)device;
- (void)xpc_syncSessionStatusWithSession:(id)session;
- (void)xpc_terminateExtension:(id)extension info:(id)info session:(id)session;
- (void)xpc_tryPIN:(id)n forDevice:(id)device;
- (void)xpc_uploadProgress:(unint64_t)progress total:(int64_t)total session:(id)session;
@end

@implementation DEDXPCInbound

- (DEDXPCInbound)initWithDelegate:(id)delegate senderPid:(id)pid
{
  delegateCopy = delegate;
  pidCopy = pid;
  v13.receiver = self;
  v13.super_class = DEDXPCInbound;
  v8 = [(DEDXPCInbound *)&v13 init];
  if (v8)
  {
    v9 = +[DEDConfiguration sharedInstance];
    v10 = os_log_create([v9 loggingSubsystem], "xpc-inbound");
    log = v8->_log;
    v8->_log = v10;

    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v8->_senderPid, pid);
  }

  return v8;
}

- (void)xpc_ping
{
  delegate = [(DEDXPCInbound *)self delegate];
  [delegate xpcInbound_ping:self];
}

- (void)xpc_pong
{
  delegate = [(DEDXPCInbound *)self delegate];
  [delegate xpcInbound_pong];
}

- (void)xpc_discoverAllAvailableDevices
{
  delegate = [(DEDXPCInbound *)self delegate];
  [delegate xpcInbound_discoverAllAvailableDevices:self];
}

- (void)xpc_stopDeviceDiscovery
{
  delegate = [(DEDXPCInbound *)self delegate];
  [delegate xpcInbound_stopDeviceDiscovery:self];
}

- (void)xpc_didDiscoverDevices:(id)devices
{
  v16 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [devicesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(devicesCopy);
        }

        [*(*(&v11 + 1) + 8 * v8++) setTransport:2];
      }

      while (v6 != v8);
      v6 = [devicesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  delegate = [(DEDXPCInbound *)self delegate];
  [delegate xpcInbound_didDiscoverDevices:devicesCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)xpc_gotDeviceUpdate:(id)update
{
  updateCopy = update;
  [updateCopy setTransport:2];
  delegate = [(DEDXPCInbound *)self delegate];
  [delegate xpcInbound_gotDeviceUpdate:updateCopy];
}

- (void)xpc_startPairSetupForDevice:(id)device
{
  deviceCopy = device;
  delegate = [(DEDXPCInbound *)self delegate];
  [delegate xpcInbound_startPairSetupForDevice:deviceCopy fromInbound:self];
}

- (void)xpc_promptPINForDevice:(id)device
{
  deviceCopy = device;
  delegate = [(DEDXPCInbound *)self delegate];
  [delegate xpcInbound_promptPINForDevice:deviceCopy];
}

- (void)xpc_tryPIN:(id)n forDevice:(id)device
{
  deviceCopy = device;
  nCopy = n;
  delegate = [(DEDXPCInbound *)self delegate];
  [delegate xpcInbound_tryPIN:nCopy forDevice:deviceCopy fromInbound:self];
}

- (void)xpc_successPINForDevice:(id)device
{
  deviceCopy = device;
  delegate = [(DEDXPCInbound *)self delegate];
  [delegate xpcInbound_successPINForDevice:deviceCopy];
}

- (void)xpc_startBugSessionWithIdentifier:(id)identifier configuration:(id)configuration caller:(id)caller target:(id)target
{
  targetCopy = target;
  callerCopy = caller;
  configurationCopy = configuration;
  identifierCopy = identifier;
  [callerCopy setTransport:2];
  [callerCopy setAddress:@"0"];
  delegate = [(DEDXPCInbound *)self delegate];
  [delegate xpcInbound_startBugSessionWithIdentifier:identifierCopy configuration:configurationCopy caller:callerCopy target:targetCopy fromInbound:self];
}

- (void)xpc_didStartBugSessionWithInfo:(id)info
{
  infoCopy = info;
  v5 = DEDSessionStartLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "(DEDXPCInbound) didStartBugSessionWithInfo", v9, 2u);
  }

  delegate = [(DEDXPCInbound *)self delegate];

  if (!delegate)
  {
    v7 = DEDSessionStartLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DEDXPCInbound xpc_didStartBugSessionWithInfo:];
    }
  }

  delegate2 = [(DEDXPCInbound *)self delegate];
  [delegate2 xpcInbound_didStartBugSessionWithInfo:infoCopy];
}

- (void)xpc_hasActiveSession:(id)session
{
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];
  [delegate xpcInbound_hasActiveSession:sessionCopy fromInbound:self];
}

- (void)xpc_didCancelSession:(id)session
{
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];

  if (delegate)
  {
    delegate2 = [(DEDXPCInbound *)self delegate];
    [delegate2 xpcInbound_didAbortSessionWithID:sessionCopy];
  }
}

- (void)xpc_listClientXPCConnections
{
  delegate = [(DEDXPCInbound *)self delegate];
  [delegate xpc_listClientXPCConnectionsFromInbound:self];
}

- (void)xpc_listClientXPCConnectionsReply:(id)reply
{
  replyCopy = reply;
  delegate = [(DEDXPCInbound *)self delegate];
  [delegate xpcInbound_listClientXPCConnectionsReply:replyCopy];
}

- (void)xpc_forceRemoveNotificationOfType:(int64_t)type identifier:(id)identifier hostIdentifier:(id)hostIdentifier
{
  hostIdentifierCopy = hostIdentifier;
  identifierCopy = identifier;
  delegate = [(DEDXPCInbound *)self delegate];
  [delegate xpcInbound_forceRemoveNotificationOfType:type identifier:identifierCopy hostIdentifier:hostIdentifierCopy];
}

- (void)xpc_pingSession:(id)session
{
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];

  if (delegate)
  {
    delegate2 = [(DEDXPCInbound *)self delegate];
    v6 = [delegate2 xpcInbound_sessionForIdentifier:sessionCopy];

    [v6 pingWithCallback:0];
  }
}

- (void)xpc_pongSession:(id)session
{
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];

  if (sessionCopy && delegate)
  {
    delegate2 = [(DEDXPCInbound *)self delegate];
    v6 = [delegate2 xpcInbound_sessionForIdentifier:sessionCopy];
    [v6 pong];
  }
}

- (void)xpc_listAvailableExtensionsForSession:(id)session
{
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];

  if (sessionCopy && delegate)
  {
    delegate2 = [(DEDXPCInbound *)self delegate];
    v6 = [delegate2 xpcInbound_sessionForIdentifier:sessionCopy];
    [v6 listDiagnosticExtensionsWithCompletion:0];
  }
}

- (void)xpc_deviceSupportsDiagnosticExtensions:(id)extensions session:(id)session
{
  v25 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];

  if (delegate)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(extensionsCopy, "count")}];
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
    delegate2 = [(DEDXPCInbound *)self delegate];
    v18 = [delegate2 xpcInbound_sessionForIdentifier:sessionCopy];
    [v18 supportsDiagnostics:v16];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)xpc_startDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters session:(id)session
{
  identifierCopy = identifier;
  parametersCopy = parameters;
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];

  if (delegate)
  {
    v11 = [[DEDExtensionIdentifier alloc] initWithString:identifierCopy];
    v12 = v11;
    if (v11)
    {
      extensionIdentifier = [(DEDExtensionIdentifier *)v11 extensionIdentifier];

      identifierCopy = extensionIdentifier;
    }

    delegate2 = [(DEDXPCInbound *)self delegate];
    v15 = [delegate2 xpcInbound_sessionForIdentifier:sessionCopy];
    v16 = [v15 startDiagnosticExtensionWithIdentifier:identifierCopy parameters:parametersCopy completion:0];
  }
}

- (void)xpc_startDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters deferRunUntil:(id)until session:(id)session
{
  identifierCopy = identifier;
  parametersCopy = parameters;
  untilCopy = until;
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];

  if (delegate)
  {
    v14 = [[DEDExtensionIdentifier alloc] initWithString:identifierCopy];
    v15 = v14;
    if (v14)
    {
      extensionIdentifier = [(DEDExtensionIdentifier *)v14 extensionIdentifier];

      identifierCopy = extensionIdentifier;
    }

    delegate2 = [(DEDXPCInbound *)self delegate];
    v18 = [delegate2 xpcInbound_sessionForIdentifier:sessionCopy];
    v19 = [v18 startDiagnosticExtensionWithIdentifier:identifierCopy parameters:parametersCopy deferRunUntil:untilCopy completion:0];
  }
}

- (void)xpc_finishedDiagnosticWithIdentifier:(id)identifier result:(id)result session:(id)session
{
  identifierCopy = identifier;
  resultCopy = result;
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];

  if (delegate)
  {
    delegate2 = [(DEDXPCInbound *)self delegate];
    v12 = [delegate2 xpcInbound_sessionForIdentifier:sessionCopy];
    v13 = [DEDAttachmentGroup groupWithDictionary:resultCopy];
    [v12 finishedDiagnosticWithIdentifier:identifierCopy result:v13];
  }
}

- (void)xpc_terminateExtension:(id)extension info:(id)info session:(id)session
{
  extensionCopy = extension;
  infoCopy = info;
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];

  if (delegate)
  {
    delegate2 = [(DEDXPCInbound *)self delegate];
    v13 = [delegate2 xpcInbound_sessionForIdentifier:sessionCopy];

    if (v13)
    {
      [v13 terminateExtension:extensionCopy withInfo:infoCopy];
    }

    else
    {
      v14 = [(DEDXPCInbound *)self log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [DEDXPCInbound xpc_terminateExtension:extensionCopy info:v14 session:?];
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

- (void)xpc_getSessionStateWithSession:(id)session
{
  v12 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];

  if (delegate)
  {
    delegate2 = [(DEDXPCInbound *)self delegate];
    v7 = [delegate2 xpcInbound_sessionForIdentifier:sessionCopy];

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
        v11 = sessionCopy;
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

- (void)xpc_didGetState:(int64_t)state info:(id)info sessionID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dCopy = d;
  delegate = [(DEDXPCInbound *)self delegate];

  if (delegate)
  {
    delegate2 = [(DEDXPCInbound *)self delegate];
    v12 = [delegate2 xpcInbound_sessionForIdentifier:dCopy];

    if (v12)
    {
      [v12 didGetState:state info:infoCopy];
    }

    else
    {
      v13 = [(DEDXPCInbound *)self log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543362;
        v16 = dCopy;
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

- (void)xpc_getSessionStatusWithSession:(id)session
{
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];

  if (sessionCopy && delegate)
  {
    delegate2 = [(DEDXPCInbound *)self delegate];
    v6 = [delegate2 xpcInbound_sessionForIdentifier:sessionCopy];
    [v6 getSessionStatusWithCompletion:0];
  }
}

- (void)xpc_syncSessionStatusWithSession:(id)session
{
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];

  if (sessionCopy && delegate)
  {
    delegate2 = [(DEDXPCInbound *)self delegate];
    v6 = [delegate2 xpcInbound_sessionForIdentifier:sessionCopy];
    [v6 synchronizeSessionStatusWithCompletion:0];
  }
}

- (void)xpc_hasCollected:(id)collected isCollecting:(id)collecting inSession:(id)session
{
  collectedCopy = collected;
  collectingCopy = collecting;
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];

  if (sessionCopy && delegate)
  {
    v11 = [collectingCopy ded_mapWithBlock:&__block_literal_global_36];
    v12 = [collectedCopy ded_mapWithBlock:&__block_literal_global_20];
    delegate2 = [(DEDXPCInbound *)self delegate];
    v14 = [delegate2 xpcInbound_sessionForIdentifier:sessionCopy];
    [v14 hasCollected:v12 isCollecting:v11];
  }
}

- (void)xpc_hasCollected:(id)collected isCollecting:(id)collecting withIdentifiers:(id)identifiers inSession:(id)session
{
  collectedCopy = collected;
  collectingCopy = collecting;
  identifiersCopy = identifiers;
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];

  if (sessionCopy && delegate)
  {
    v14 = [collectingCopy ded_mapWithBlock:&__block_literal_global_22_0];
    v15 = [collectedCopy ded_mapWithBlock:&__block_literal_global_24];
    v16 = [identifiersCopy ded_mapWithBlock:&__block_literal_global_26];
    delegate2 = [(DEDXPCInbound *)self delegate];
    v18 = [delegate2 xpcInbound_sessionForIdentifier:sessionCopy];
    [v18 hasCollected:v15 isCollecting:v14 identifiers:v16];
  }
}

DEDExtensionIdentifier *__73__DEDXPCInbound_xpc_hasCollected_isCollecting_withIdentifiers_inSession___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[DEDExtensionIdentifier alloc] initWithString:v2];

  return v3;
}

- (void)xpc_adoptFiles:(id)files forSession:(id)session
{
  filesCopy = files;
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];

  if (delegate)
  {
    delegate2 = [(DEDXPCInbound *)self delegate];
    v10 = [delegate2 xpcInbound_sessionForIdentifier:sessionCopy];
    [v10 adoptFiles:filesCopy withCompletion:0];
  }

  else
  {
    delegate2 = [(DEDXPCInbound *)self log];
    if (os_log_type_enabled(delegate2, OS_LOG_TYPE_ERROR))
    {
      [DEDXPCInbound xpc_adoptFiles:forSession:];
    }
  }
}

- (void)xpc_didAdoptFilesWithError:(id)error forSession:(id)session
{
  errorCopy = error;
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];

  if (delegate)
  {
    delegate2 = [(DEDXPCInbound *)self delegate];
    v10 = [delegate2 xpcInbound_sessionForIdentifier:sessionCopy];
    [v10 didAdoptFilesWithError:errorCopy];
  }

  else
  {
    delegate2 = [(DEDXPCInbound *)self log];
    if (os_log_type_enabled(delegate2, OS_LOG_TYPE_ERROR))
    {
      [DEDXPCInbound xpc_didAdoptFilesWithError:forSession:];
    }
  }
}

- (void)xpc_compressionProgress:(unint64_t)progress total:(unint64_t)total session:(id)session
{
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];
  v9 = [delegate xpcInbound_sessionForIdentifier:sessionCopy];

  [v9 compressionProgress:progress total:total];
}

- (void)xpc_uploadProgress:(unint64_t)progress total:(int64_t)total session:(id)session
{
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];
  v9 = [delegate xpcInbound_sessionForIdentifier:sessionCopy];

  [v9 uploadProgress:progress total:total];
}

- (void)xpc_didFinishUploadingWithError:(id)error sessionID:(id)d
{
  dCopy = d;
  errorCopy = error;
  delegate = [(DEDXPCInbound *)self delegate];
  v8 = [delegate xpcInbound_sessionForIdentifier:dCopy];

  [v8 didFinishUploadingWithError:errorCopy];
}

- (void)xpc_commitSession:(id)session
{
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];

  if (sessionCopy && delegate)
  {
    delegate2 = [(DEDXPCInbound *)self delegate];
    v6 = [delegate2 xpcInbound_sessionForIdentifier:sessionCopy];
    [v6 commit];
  }
}

- (void)xpc_didCommitSession:(id)session
{
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];

  if (sessionCopy && delegate)
  {
    delegate2 = [(DEDXPCInbound *)self delegate];
    v6 = [delegate2 xpcInbound_sessionForIdentifier:sessionCopy];
    [v6 didCommit];
  }
}

- (void)xpc_cancelSession:(id)session
{
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];

  if (sessionCopy && delegate)
  {
    delegate2 = [(DEDXPCInbound *)self delegate];
    v6 = [delegate2 xpcInbound_sessionForIdentifier:sessionCopy];
    [v6 cancel];
  }
}

- (void)xpc_notifySession:(id)session
{
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];

  if (delegate)
  {
    delegate2 = [(DEDXPCInbound *)self delegate];
    v6 = [delegate2 xpcInbound_sessionForIdentifier:sessionCopy];
    [v6 scheduleNotification];
  }
}

- (void)xpc_cancelNotifySession:(id)session
{
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];

  if (delegate)
  {
    delegate2 = [(DEDXPCInbound *)self delegate];
    v6 = [delegate2 xpcInbound_sessionForIdentifier:sessionCopy];
    [v6 clearNotification];
  }
}

- (void)xpc_addData:(id)data withFilename:(id)filename forSession:(id)session
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  filenameCopy = filename;
  sessionCopy = session;
  delegate = [(DEDXPCInbound *)self delegate];

  if (delegate)
  {
    delegate2 = [(DEDXPCInbound *)self delegate];
    v13 = [delegate2 xpcInbound_sessionForIdentifier:sessionCopy];

    if (v13)
    {
      [v13 addData:dataCopy withFilename:filenameCopy];
    }

    else
    {
      v14 = [(DEDXPCInbound *)self log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        v17 = sessionCopy;
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

- (void)xpc_loadTextDataForExtensions:(id)extensions localization:(id)localization sessionID:(id)d
{
  dCopy = d;
  localizationCopy = localization;
  v12 = [extensions ded_flatMapWithBlock:&__block_literal_global_29];
  delegate = [(DEDXPCInbound *)self delegate];
  v11 = [delegate xpcInbound_sessionForIdentifier:dCopy];

  [v11 loadTextDataForExtensions:v12 localization:localizationCopy completion:0];
}

- (void)xpc_didLoadTextDataForExtensions:(id)extensions localization:(id)localization sessionID:(id)d
{
  dCopy = d;
  localizationCopy = localization;
  v12 = [extensions ded_flatMapWithBlock:&__block_literal_global_31];
  delegate = [(DEDXPCInbound *)self delegate];
  v11 = [delegate xpcInbound_sessionForIdentifier:dCopy];

  [v11 didLoadTextDataForExtensions:v12 localization:localizationCopy];
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