@interface DEDSharingInbound
- (DEDController)delegate;
- (DEDSharingConnection)connection;
- (DEDSharingInbound)init;
- (DEDSharingInbound)initWithController:(id)controller sharingConnection:(id)connection;
- (void)handleObject:(id)object forSFSession:(id)session;
- (void)handleObject:(id)object forSFSession:(id)session forBugSession:(id)bugSession callingDevice:(id)device;
- (void)handleRequest:(id)request forSFSession:(id)session completion:(id)completion;
@end

@implementation DEDSharingInbound

- (DEDSharingInbound)init
{
  v8.receiver = self;
  v8.super_class = DEDSharingInbound;
  v2 = [(DEDSharingInbound *)&v8 init];
  if (v2)
  {
    v3 = +[DEDConfiguration sharedInstance];
    v4 = os_log_create([v3 loggingSubsystem], "sharing-inbound");
    log = v2->_log;
    v2->_log = v4;

    v6 = [(DEDSharingInbound *)v2 log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [DEDSharingInbound init];
    }
  }

  return v2;
}

- (DEDSharingInbound)initWithController:(id)controller sharingConnection:(id)connection
{
  controllerCopy = controller;
  connectionCopy = connection;
  v8 = objc_alloc_init(DEDSharingInbound);

  if (v8)
  {
    [(DEDSharingInbound *)v8 setDelegate:controllerCopy];
    [(DEDSharingInbound *)v8 setConnection:connectionCopy];
  }

  return v8;
}

- (void)handleObject:(id)object forSFSession:(id)session
{
  v64 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  sessionCopy = session;
  v8 = [(DEDSharingInbound *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DEDSharingInbound handleObject:forSFSession:];
  }

  v9 = [objectCopy objectForKeyedSubscript:@"setup"];
  v10 = [v9 isEqualToString:@"ready_check"];

  if (v10)
  {
    v11 = [(DEDSharingInbound *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [objectCopy objectForKeyedSubscript:@"myIdentifier"];
      *buf = 138412290;
      v63 = v12;
      _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "received ready_check setup command with identifier [%@]", buf, 0xCu);
    }

    v13 = [(DEDSharingInbound *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [DEDSharingInbound handleObject:forSFSession:];
    }

    v14 = +[DEDDevice currentDeviceWithDaemonInfo];
    v61[0] = @"ready_device";
    v15 = [objectCopy objectForKeyedSubscript:{@"yourIdentifier", @"setup", @"myIdentifier"}];
    v61[1] = v15;
    v60[2] = @"device";
    serialize = [v14 serialize];
    v61[2] = serialize;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:3];

    [sessionCopy sendWithFlags:0 object:v17];
  }

  v18 = [objectCopy objectForKeyedSubscript:@"setup"];
  v19 = [v18 isEqualToString:@"ready_device"];

  if (v19)
  {
    v20 = [(DEDSharingInbound *)self log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [objectCopy objectForKeyedSubscript:@"myIdentifier"];
      *buf = 138412290;
      v63 = v21;
      _os_log_impl(&dword_248AD7000, v20, OS_LOG_TYPE_DEFAULT, "received ready_device setup command with identifier [%@]", buf, 0xCu);
    }

    v22 = [(DEDSharingInbound *)self log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [DEDSharingInbound handleObject:forSFSession:];
    }

    v23 = [objectCopy objectForKeyedSubscript:@"device"];
    v24 = [DEDDevice deviceWithDictionary:v23];

    v25 = [objectCopy objectForKeyedSubscript:@"myIdentifier"];
    [v24 setAddress:v25];

    [v24 setTransport:3];
    [v24 setRemoteTransport:3];
    peerDevice = [sessionCopy peerDevice];
    [v24 setSfDevice:peerDevice];

    v27 = [(DEDSharingInbound *)self log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [DEDSharingInbound handleObject:v24 forSFSession:v27];
    }

    connection = [(DEDSharingInbound *)self connection];
    [connection updateControllerWithDevice:v24 andStatus:{objc_msgSend(v24, "status")}];
  }

  v29 = [objectCopy objectForKeyedSubscript:@"setup"];
  v30 = [v29 isEqualToString:@"start_session"];

  if (v30)
  {
    v31 = [(DEDSharingInbound *)self log];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [objectCopy objectForKeyedSubscript:@"myIdentifier"];
      *buf = 138412290;
      v63 = v32;
      _os_log_impl(&dword_248AD7000, v31, OS_LOG_TYPE_DEFAULT, "received start_session setup command with identifier [%@]", buf, 0xCu);
    }

    v33 = [(DEDSharingInbound *)self log];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [DEDSharingInbound handleObject:forSFSession:];
    }

    v34 = [objectCopy objectForKeyedSubscript:@"sessionID"];
    v35 = [objectCopy objectForKeyedSubscript:@"config"];
    v36 = [DEDBugSessionConfiguration secureUnarchiveWithData:v35];

    v37 = [objectCopy objectForKeyedSubscript:@"callingDevice"];
    v38 = [DEDDevice deviceWithDictionary:v37];

    v39 = [objectCopy objectForKeyedSubscript:@"targetDevice"];
    v40 = [DEDDevice deviceWithDictionary:v39];

    [v38 setTransport:3];
    identifier = [v38 identifier];
    [v38 setAddress:identifier];

    connection2 = [(DEDSharingInbound *)self connection];
    identifier2 = [v38 identifier];
    [connection2 addIncomingSFSession:sessionCopy forIdentifier:identifier2];

    delegate = [(DEDSharingInbound *)self delegate];
    [delegate sharingInbound_startBugSessionWithIdentifier:v34 configuration:v36 caller:v38 target:v40];
  }

  v45 = [objectCopy objectForKeyedSubscript:@"setup"];
  v46 = [v45 isEqualToString:@"did_start_session"];

  if (v46)
  {
    v47 = [(DEDSharingInbound *)self log];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [objectCopy objectForKeyedSubscript:@"myIdentifier"];
      *buf = 138412290;
      v63 = v48;
      _os_log_impl(&dword_248AD7000, v47, OS_LOG_TYPE_DEFAULT, "received start_session setup command with identifier [%@]", buf, 0xCu);
    }

    v49 = [(DEDSharingInbound *)self log];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      [DEDSharingInbound handleObject:forSFSession:];
    }

    delegate2 = [(DEDSharingInbound *)self delegate];
    [delegate2 sharingInbound_didStartBugSessionWithInfo:objectCopy];
  }

  v51 = [objectCopy objectForKeyedSubscript:@"session"];

  if (v51)
  {
    v52 = [(DEDSharingInbound *)self log];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = [objectCopy objectForKeyedSubscript:@"myIdentifier"];
      *buf = 138412290;
      v63 = v53;
      _os_log_impl(&dword_248AD7000, v52, OS_LOG_TYPE_DEFAULT, "received session setup command with identifier [%@]", buf, 0xCu);
    }

    v54 = [(DEDSharingInbound *)self log];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      [DEDSharingInbound handleObject:forSFSession:];
    }

    v55 = [objectCopy objectForKeyedSubscript:@"sessionID"];
    v56 = [objectCopy objectForKeyedSubscript:@"callingDevice"];
    v57 = [DEDDevice deviceWithDictionary:v56];

    [v57 setTransport:3];
    identifier3 = [v57 identifier];
    [v57 setAddress:identifier3];

    [(DEDSharingInbound *)self handleObject:objectCopy forSFSession:sessionCopy forBugSession:v55 callingDevice:v57];
  }

  v59 = *MEMORY[0x277D85DE8];
}

- (void)handleObject:(id)object forSFSession:(id)session forBugSession:(id)bugSession callingDevice:(id)device
{
  v67 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  sessionCopy = session;
  bugSessionCopy = bugSession;
  deviceCopy = device;
  v14 = [(DEDSharingInbound *)self log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [DEDSharingInbound handleObject:forSFSession:forBugSession:callingDevice:];
  }

  delegate = [(DEDSharingInbound *)self delegate];

  if (delegate)
  {
    v16 = [objectCopy objectForKeyedSubscript:@"session"];
    connection = [(DEDSharingInbound *)self connection];
    identifier = [deviceCopy identifier];
    [connection addIncomingSFSession:sessionCopy forIdentifier:identifier];

    delegate2 = [(DEDSharingInbound *)self delegate];
    v20 = [delegate2 sessionForIdentifier:bugSessionCopy];

    if ([v16 isEqualToString:@"ping"])
    {
      [v20 pingWithCallback:0];
LABEL_28:

      goto LABEL_29;
    }

    if ([v16 isEqualToString:@"pong"])
    {
      [v20 pong];
      goto LABEL_28;
    }

    if ([v16 isEqualToString:@"listExtensions"])
    {
      [v20 listDiagnosticExtensionsWithCompletion:0];
      goto LABEL_28;
    }

    if ([v16 isEqualToString:@"startDiagnostic"])
    {
      v21 = [objectCopy objectForKeyedSubscript:@"identifier"];
      v22 = [objectCopy objectForKeyedSubscript:@"parameters"];
      v61 = v21;
      v23 = [[DEDExtensionIdentifier alloc] initWithString:v21];
      v24 = [objectCopy objectForKeyedSubscript:@"deferDate"];
      extensionIdentifier = [(DEDExtensionIdentifier *)v23 extensionIdentifier];
      if (v24)
      {
        v26 = [v20 startDiagnosticExtensionWithIdentifier:extensionIdentifier parameters:v22 deferRunUntil:v24 completion:0];
      }

      else
      {
        v36 = [v20 startDiagnosticExtensionWithIdentifier:extensionIdentifier parameters:v22 completion:0];
      }

      goto LABEL_28;
    }

    if ([v16 isEqualToString:@"terminateExtension"])
    {
      delegate3 = [objectCopy objectForKeyedSubscript:@"identifier"];
      v28 = [objectCopy objectForKeyedSubscript:@"info"];
      [v20 terminateExtension:delegate3 withInfo:v28];
    }

    else
    {
      if ([v16 isEqualToString:@"supportsExtensions"])
      {
        v59 = v20;
        v60 = deviceCopy;
        array = [MEMORY[0x277CBEB18] array];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v30 = [objectCopy objectForKeyedSubscript:@"extensions"];
        v31 = [v30 countByEnumeratingWithState:&v62 objects:v66 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v63;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v63 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = [DEDExtension extensionWithDictionary:*(*(&v62 + 1) + 8 * i)];
              [array addObject:v35];
            }

            v32 = [v30 countByEnumeratingWithState:&v62 objects:v66 count:16];
          }

          while (v32);
        }

        v20 = v59;
        [v59 supportsDiagnostics:array];

        deviceCopy = v60;
        goto LABEL_28;
      }

      if (![v16 isEqualToString:@"finishedDiagnostic"])
      {
        if ([v16 isEqualToString:@"getStatus"])
        {
          [v20 getSessionStatusWithCompletion:0];
          goto LABEL_28;
        }

        if ([v16 isEqualToString:@"getState"])
        {
          [v20 getStateWithCompletion:0];
          goto LABEL_28;
        }

        if ([v16 isEqualToString:@"syncStatus"])
        {
          [v20 synchronizeSessionStatusWithCompletion:0];
          goto LABEL_28;
        }

        if ([v16 isEqualToString:@"didGetStatus"])
        {
          v39 = [objectCopy objectForKeyedSubscript:@"groups"];
          v40 = [v39 ded_mapWithBlock:&__block_literal_global_31];

          v41 = [objectCopy objectForKeyedSubscript:@"extensions"];
          v42 = [v41 ded_mapWithBlock:&__block_literal_global_117];

          [v20 hasCollected:v40 isCollecting:v42];
        }

        else
        {
          if ([v16 isEqualToString:@"didGetState"])
          {
            v43 = [objectCopy objectForKeyedSubscript:@"state"];
            integerValue = [v43 integerValue];

            delegate3 = [objectCopy objectForKeyedSubscript:@"info"];
            [v20 didGetState:integerValue info:delegate3];
            goto LABEL_16;
          }

          if ([v16 isEqualToString:@"didSyncStatus"])
          {
            v45 = [objectCopy objectForKeyedSubscript:@"groups"];
            delegate3 = [v45 ded_mapWithBlock:&__block_literal_global_128];

            v46 = [objectCopy objectForKeyedSubscript:@"extensions"];
            v47 = [v46 ded_mapWithBlock:&__block_literal_global_130];

            v48 = [objectCopy objectForKeyedSubscript:@"identifiers"];
            v49 = [v48 ded_mapWithBlock:&__block_literal_global_135];

            [v20 hasCollected:delegate3 isCollecting:v47 identifiers:v49];
            goto LABEL_16;
          }

          if (![v16 isEqualToString:@"adoptFiles"])
          {
            if ([v16 isEqualToString:@"didAdoptFiles"])
            {
              delegate3 = [objectCopy objectForKey:@"error"];
              [v20 didAdoptFilesWithError:delegate3];
            }

            else
            {
              if ([v16 isEqualToString:@"compressionProgress"])
              {
                v51 = [objectCopy objectForKeyedSubscript:@"compressed"];
                unsignedLongLongValue = [v51 unsignedLongLongValue];

                v53 = [objectCopy objectForKeyedSubscript:@"total"];
                unsignedLongLongValue2 = [v53 unsignedLongLongValue];

                [v20 compressionProgress:unsignedLongLongValue total:unsignedLongLongValue2];
                goto LABEL_28;
              }

              if ([v16 isEqualToString:@"uploadProgress"])
              {
                v55 = [objectCopy objectForKeyedSubscript:@"uploaded"];
                longLongValue = [v55 longLongValue];

                v57 = [objectCopy objectForKeyedSubscript:@"total"];
                longLongValue2 = [v57 longLongValue];

                [v20 uploadProgress:longLongValue total:longLongValue2];
                goto LABEL_28;
              }

              if ([v16 isEqualToString:@"uploadFinished"])
              {
                delegate3 = [objectCopy objectForKeyedSubscript:@"error"];
                [v20 didFinishUploadingWithError:delegate3];
              }

              else
              {
                if ([v16 isEqualToString:@"commitSession"])
                {
                  [v20 commit];
                  goto LABEL_28;
                }

                if ([v16 isEqualToString:@"didCommitSession"])
                {
                  [v20 didCommit];
                  goto LABEL_28;
                }

                if ([v16 isEqualToString:@"cancelSession"])
                {
                  [v20 cancel];
                  goto LABEL_28;
                }

                if ([v16 isEqualToString:@"didCancelSession"])
                {
                  delegate3 = [(DEDSharingInbound *)self delegate];
                  [delegate3 sharingInbound_didAbortSessionWithID:bugSessionCopy];
                }

                else
                {
                  delegate3 = [(DEDSharingInbound *)self log];
                  if (os_log_type_enabled(delegate3, OS_LOG_TYPE_ERROR))
                  {
                    [DEDSharingInbound handleObject:forSFSession:forBugSession:callingDevice:];
                  }
                }
              }
            }

            goto LABEL_16;
          }

          v40 = [objectCopy objectForKeyedSubscript:@"filesForAdopt"];
          v50 = [(DEDSharingInbound *)self log];
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            [DEDSharingInbound handleObject:v50 forSFSession:? forBugSession:? callingDevice:?];
          }

          [v20 adoptFiles:v40 withCompletion:0];
        }

        goto LABEL_28;
      }

      delegate3 = [objectCopy objectForKeyedSubscript:@"identifier"];
      v38 = [objectCopy objectForKeyedSubscript:@"group"];
      v28 = [DEDAttachmentGroup groupWithDictionary:v38];

      [v20 finishedDiagnosticWithIdentifier:delegate3 result:v28];
    }

LABEL_16:
    goto LABEL_28;
  }

LABEL_29:

  v37 = *MEMORY[0x277D85DE8];
}

DEDExtensionIdentifier *__75__DEDSharingInbound_handleObject_forSFSession_forBugSession_callingDevice___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[DEDExtensionIdentifier alloc] initWithString:v2];

  return v3;
}

- (void)handleRequest:(id)request forSFSession:(id)session completion:(id)completion
{
  requestCopy = request;
  sessionCopy = session;
  completionCopy = completion;
  __assert_rtn("[DEDSharingInbound handleRequest:forSFSession:completion:]", "DEDSharingInbound.m", 257, "false");
}

- (DEDController)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DEDSharingConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (void)handleObject:forSFSession:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleObject:forSFSession:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleObject:(void *)a1 forSFSession:(NSObject *)a2 .cold.4(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a1 name];
  v6 = 138412546;
  v7 = v4;
  v8 = 2048;
  v9 = [a1 status];
  _os_log_debug_impl(&dword_248AD7000, a2, OS_LOG_TYPE_DEBUG, "checkReadiness callback for %@ (status %ld)", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleObject:forSFSession:forBugSession:callingDevice:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleObject:forSFSession:forBugSession:callingDevice:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_248AD7000, v0, OS_LOG_TYPE_ERROR, "Unknown command given [%{public}@]", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end