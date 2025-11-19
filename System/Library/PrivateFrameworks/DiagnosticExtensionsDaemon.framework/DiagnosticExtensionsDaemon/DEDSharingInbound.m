@interface DEDSharingInbound
- (DEDController)delegate;
- (DEDSharingConnection)connection;
- (DEDSharingInbound)init;
- (DEDSharingInbound)initWithController:(id)a3 sharingConnection:(id)a4;
- (void)handleObject:(id)a3 forSFSession:(id)a4;
- (void)handleObject:(id)a3 forSFSession:(id)a4 forBugSession:(id)a5 callingDevice:(id)a6;
- (void)handleRequest:(id)a3 forSFSession:(id)a4 completion:(id)a5;
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

- (DEDSharingInbound)initWithController:(id)a3 sharingConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(DEDSharingInbound);

  if (v8)
  {
    [(DEDSharingInbound *)v8 setDelegate:v6];
    [(DEDSharingInbound *)v8 setConnection:v7];
  }

  return v8;
}

- (void)handleObject:(id)a3 forSFSession:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(DEDSharingInbound *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DEDSharingInbound handleObject:forSFSession:];
  }

  v9 = [v6 objectForKeyedSubscript:@"setup"];
  v10 = [v9 isEqualToString:@"ready_check"];

  if (v10)
  {
    v11 = [(DEDSharingInbound *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 objectForKeyedSubscript:@"myIdentifier"];
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
    v15 = [v6 objectForKeyedSubscript:{@"yourIdentifier", @"setup", @"myIdentifier"}];
    v61[1] = v15;
    v60[2] = @"device";
    v16 = [v14 serialize];
    v61[2] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:3];

    [v7 sendWithFlags:0 object:v17];
  }

  v18 = [v6 objectForKeyedSubscript:@"setup"];
  v19 = [v18 isEqualToString:@"ready_device"];

  if (v19)
  {
    v20 = [(DEDSharingInbound *)self log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v6 objectForKeyedSubscript:@"myIdentifier"];
      *buf = 138412290;
      v63 = v21;
      _os_log_impl(&dword_248AD7000, v20, OS_LOG_TYPE_DEFAULT, "received ready_device setup command with identifier [%@]", buf, 0xCu);
    }

    v22 = [(DEDSharingInbound *)self log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [DEDSharingInbound handleObject:forSFSession:];
    }

    v23 = [v6 objectForKeyedSubscript:@"device"];
    v24 = [DEDDevice deviceWithDictionary:v23];

    v25 = [v6 objectForKeyedSubscript:@"myIdentifier"];
    [v24 setAddress:v25];

    [v24 setTransport:3];
    [v24 setRemoteTransport:3];
    v26 = [v7 peerDevice];
    [v24 setSfDevice:v26];

    v27 = [(DEDSharingInbound *)self log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [DEDSharingInbound handleObject:v24 forSFSession:v27];
    }

    v28 = [(DEDSharingInbound *)self connection];
    [v28 updateControllerWithDevice:v24 andStatus:{objc_msgSend(v24, "status")}];
  }

  v29 = [v6 objectForKeyedSubscript:@"setup"];
  v30 = [v29 isEqualToString:@"start_session"];

  if (v30)
  {
    v31 = [(DEDSharingInbound *)self log];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v6 objectForKeyedSubscript:@"myIdentifier"];
      *buf = 138412290;
      v63 = v32;
      _os_log_impl(&dword_248AD7000, v31, OS_LOG_TYPE_DEFAULT, "received start_session setup command with identifier [%@]", buf, 0xCu);
    }

    v33 = [(DEDSharingInbound *)self log];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [DEDSharingInbound handleObject:forSFSession:];
    }

    v34 = [v6 objectForKeyedSubscript:@"sessionID"];
    v35 = [v6 objectForKeyedSubscript:@"config"];
    v36 = [DEDBugSessionConfiguration secureUnarchiveWithData:v35];

    v37 = [v6 objectForKeyedSubscript:@"callingDevice"];
    v38 = [DEDDevice deviceWithDictionary:v37];

    v39 = [v6 objectForKeyedSubscript:@"targetDevice"];
    v40 = [DEDDevice deviceWithDictionary:v39];

    [v38 setTransport:3];
    v41 = [v38 identifier];
    [v38 setAddress:v41];

    v42 = [(DEDSharingInbound *)self connection];
    v43 = [v38 identifier];
    [v42 addIncomingSFSession:v7 forIdentifier:v43];

    v44 = [(DEDSharingInbound *)self delegate];
    [v44 sharingInbound_startBugSessionWithIdentifier:v34 configuration:v36 caller:v38 target:v40];
  }

  v45 = [v6 objectForKeyedSubscript:@"setup"];
  v46 = [v45 isEqualToString:@"did_start_session"];

  if (v46)
  {
    v47 = [(DEDSharingInbound *)self log];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [v6 objectForKeyedSubscript:@"myIdentifier"];
      *buf = 138412290;
      v63 = v48;
      _os_log_impl(&dword_248AD7000, v47, OS_LOG_TYPE_DEFAULT, "received start_session setup command with identifier [%@]", buf, 0xCu);
    }

    v49 = [(DEDSharingInbound *)self log];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      [DEDSharingInbound handleObject:forSFSession:];
    }

    v50 = [(DEDSharingInbound *)self delegate];
    [v50 sharingInbound_didStartBugSessionWithInfo:v6];
  }

  v51 = [v6 objectForKeyedSubscript:@"session"];

  if (v51)
  {
    v52 = [(DEDSharingInbound *)self log];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = [v6 objectForKeyedSubscript:@"myIdentifier"];
      *buf = 138412290;
      v63 = v53;
      _os_log_impl(&dword_248AD7000, v52, OS_LOG_TYPE_DEFAULT, "received session setup command with identifier [%@]", buf, 0xCu);
    }

    v54 = [(DEDSharingInbound *)self log];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      [DEDSharingInbound handleObject:forSFSession:];
    }

    v55 = [v6 objectForKeyedSubscript:@"sessionID"];
    v56 = [v6 objectForKeyedSubscript:@"callingDevice"];
    v57 = [DEDDevice deviceWithDictionary:v56];

    [v57 setTransport:3];
    v58 = [v57 identifier];
    [v57 setAddress:v58];

    [(DEDSharingInbound *)self handleObject:v6 forSFSession:v7 forBugSession:v55 callingDevice:v57];
  }

  v59 = *MEMORY[0x277D85DE8];
}

- (void)handleObject:(id)a3 forSFSession:(id)a4 forBugSession:(id)a5 callingDevice:(id)a6
{
  v67 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(DEDSharingInbound *)self log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [DEDSharingInbound handleObject:forSFSession:forBugSession:callingDevice:];
  }

  v15 = [(DEDSharingInbound *)self delegate];

  if (v15)
  {
    v16 = [v10 objectForKeyedSubscript:@"session"];
    v17 = [(DEDSharingInbound *)self connection];
    v18 = [v13 identifier];
    [v17 addIncomingSFSession:v11 forIdentifier:v18];

    v19 = [(DEDSharingInbound *)self delegate];
    v20 = [v19 sessionForIdentifier:v12];

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
      v21 = [v10 objectForKeyedSubscript:@"identifier"];
      v22 = [v10 objectForKeyedSubscript:@"parameters"];
      v61 = v21;
      v23 = [[DEDExtensionIdentifier alloc] initWithString:v21];
      v24 = [v10 objectForKeyedSubscript:@"deferDate"];
      v25 = [(DEDExtensionIdentifier *)v23 extensionIdentifier];
      if (v24)
      {
        v26 = [v20 startDiagnosticExtensionWithIdentifier:v25 parameters:v22 deferRunUntil:v24 completion:0];
      }

      else
      {
        v36 = [v20 startDiagnosticExtensionWithIdentifier:v25 parameters:v22 completion:0];
      }

      goto LABEL_28;
    }

    if ([v16 isEqualToString:@"terminateExtension"])
    {
      v27 = [v10 objectForKeyedSubscript:@"identifier"];
      v28 = [v10 objectForKeyedSubscript:@"info"];
      [v20 terminateExtension:v27 withInfo:v28];
    }

    else
    {
      if ([v16 isEqualToString:@"supportsExtensions"])
      {
        v59 = v20;
        v60 = v13;
        v29 = [MEMORY[0x277CBEB18] array];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v30 = [v10 objectForKeyedSubscript:@"extensions"];
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
              [v29 addObject:v35];
            }

            v32 = [v30 countByEnumeratingWithState:&v62 objects:v66 count:16];
          }

          while (v32);
        }

        v20 = v59;
        [v59 supportsDiagnostics:v29];

        v13 = v60;
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
          v39 = [v10 objectForKeyedSubscript:@"groups"];
          v40 = [v39 ded_mapWithBlock:&__block_literal_global_31];

          v41 = [v10 objectForKeyedSubscript:@"extensions"];
          v42 = [v41 ded_mapWithBlock:&__block_literal_global_117];

          [v20 hasCollected:v40 isCollecting:v42];
        }

        else
        {
          if ([v16 isEqualToString:@"didGetState"])
          {
            v43 = [v10 objectForKeyedSubscript:@"state"];
            v44 = [v43 integerValue];

            v27 = [v10 objectForKeyedSubscript:@"info"];
            [v20 didGetState:v44 info:v27];
            goto LABEL_16;
          }

          if ([v16 isEqualToString:@"didSyncStatus"])
          {
            v45 = [v10 objectForKeyedSubscript:@"groups"];
            v27 = [v45 ded_mapWithBlock:&__block_literal_global_128];

            v46 = [v10 objectForKeyedSubscript:@"extensions"];
            v47 = [v46 ded_mapWithBlock:&__block_literal_global_130];

            v48 = [v10 objectForKeyedSubscript:@"identifiers"];
            v49 = [v48 ded_mapWithBlock:&__block_literal_global_135];

            [v20 hasCollected:v27 isCollecting:v47 identifiers:v49];
            goto LABEL_16;
          }

          if (![v16 isEqualToString:@"adoptFiles"])
          {
            if ([v16 isEqualToString:@"didAdoptFiles"])
            {
              v27 = [v10 objectForKey:@"error"];
              [v20 didAdoptFilesWithError:v27];
            }

            else
            {
              if ([v16 isEqualToString:@"compressionProgress"])
              {
                v51 = [v10 objectForKeyedSubscript:@"compressed"];
                v52 = [v51 unsignedLongLongValue];

                v53 = [v10 objectForKeyedSubscript:@"total"];
                v54 = [v53 unsignedLongLongValue];

                [v20 compressionProgress:v52 total:v54];
                goto LABEL_28;
              }

              if ([v16 isEqualToString:@"uploadProgress"])
              {
                v55 = [v10 objectForKeyedSubscript:@"uploaded"];
                v56 = [v55 longLongValue];

                v57 = [v10 objectForKeyedSubscript:@"total"];
                v58 = [v57 longLongValue];

                [v20 uploadProgress:v56 total:v58];
                goto LABEL_28;
              }

              if ([v16 isEqualToString:@"uploadFinished"])
              {
                v27 = [v10 objectForKeyedSubscript:@"error"];
                [v20 didFinishUploadingWithError:v27];
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
                  v27 = [(DEDSharingInbound *)self delegate];
                  [v27 sharingInbound_didAbortSessionWithID:v12];
                }

                else
                {
                  v27 = [(DEDSharingInbound *)self log];
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                  {
                    [DEDSharingInbound handleObject:forSFSession:forBugSession:callingDevice:];
                  }
                }
              }
            }

            goto LABEL_16;
          }

          v40 = [v10 objectForKeyedSubscript:@"filesForAdopt"];
          v50 = [(DEDSharingInbound *)self log];
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            [DEDSharingInbound handleObject:v50 forSFSession:? forBugSession:? callingDevice:?];
          }

          [v20 adoptFiles:v40 withCompletion:0];
        }

        goto LABEL_28;
      }

      v27 = [v10 objectForKeyedSubscript:@"identifier"];
      v38 = [v10 objectForKeyedSubscript:@"group"];
      v28 = [DEDAttachmentGroup groupWithDictionary:v38];

      [v20 finishedDiagnosticWithIdentifier:v27 result:v28];
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

- (void)handleRequest:(id)a3 forSFSession:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
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