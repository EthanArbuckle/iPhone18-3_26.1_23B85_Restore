@interface DEDIDSInbound
+ (id)archivedClasses;
- (DEDIDSConnection)connection;
- (DEDIDSInbound)init;
- (DEDIDSInbound)initWithConnection:(id)a3 controller:(id)a4;
- (DEDIDSInboundDelegate)delegate;
- (void)add_session_data:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)adopt_files:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)cancel_session:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)commit_session:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)compression_progress:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)device_supports_diagnostic_extensions:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)did_adopt_files:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)did_cancel_session:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)did_commit_session:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)did_get_session_state:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)did_get_session_status:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)did_load_extension_text_data:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)did_present_notification_on_passthrough_daemon:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)did_remove_notification_on_passthrough_daemon:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)did_start_session:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)did_sync_session_status:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)finished_diagnostic_with_identifier:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)get_session_state:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)get_session_status:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)load_extension_text_data:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)local_device_query_callback:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)logMalformedMessage;
- (void)present_notification_on_passthrough_daemon:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)remote_device_query_request:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)remote_list_DE:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)remove_notification_on_passthrough_daemon:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)schedule_notification:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 fromID:(id)a6 hasBeenDeliveredWithContext:(id)a7;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 sentBytes:(int64_t)a6 totalBytes:(int64_t)a7;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 inviteReceivedForSession:(id)a5 fromID:(id)a6;
- (void)service:(id)a3 account:(id)a4 inviteReceivedForSession:(id)a5 fromID:(id)a6 withContext:(id)a7;
- (void)service:(id)a3 account:(id)a4 inviteReceivedForSession:(id)a5 fromID:(id)a6 withOptions:(id)a7;
- (void)service:(id)a3 account:(id)a4 receivedGroupSessionParticipantUpdate:(id)a5;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 connectedDevicesChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)service:(id)a3 didSwitchActivePairedDevice:(id)a4 acknowledgementBlock:(id)a5;
- (void)service:(id)a3 nearbyDevicesChanged:(id)a4;
- (void)serviceAllowedTrafficClassifiersDidReset:(id)a3;
- (void)serviceSpaceDidBecomeAvailable:(id)a3;
- (void)session_ping:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)session_pong:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)start_diagnostic_with_identifier:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)start_session:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)sync_session_status:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)terminate_diagnostic_with_identifier:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)unschedule_notification:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)upload_finished:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)upload_progress:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation DEDIDSInbound

- (DEDIDSInbound)init
{
  v5.receiver = self;
  v5.super_class = DEDIDSInbound;
  v2 = [(DEDIDSInbound *)&v5 init];
  if (v2)
  {
    v3 = Log_2();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [DEDIDSInbound init];
    }
  }

  return v2;
}

- (DEDIDSInbound)initWithConnection:(id)a3 controller:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(DEDIDSInbound);

  if (v8)
  {
    [(DEDIDSInbound *)v8 setConnection:v6];
    [(DEDIDSInbound *)v8 setDelegate:v7];
  }

  return v8;
}

- (void)logMalformedMessage
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (id)archivedClasses
{
  if (archivedClasses_onceToken_4 != -1)
  {
    +[DEDIDSInbound archivedClasses];
  }

  v3 = archivedClasses__classes_2;

  return v3;
}

void __32__DEDIDSInbound_archivedClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB58];
  v1 = objc_opt_class();
  v5 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v2 = +[DEDExtensionIdentifier archivedClasses];
  [v5 unionSet:v2];

  v3 = [MEMORY[0x277CBEB98] setWithSet:v5];
  v4 = archivedClasses__classes_2;
  archivedClasses__classes_2 = v3;
}

- (void)local_device_query_callback:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v28 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a6;
  v13 = a7;
  if (isKnownDevice(a4, v12))
  {
    v14 = Log_2();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [DEDIDSInbound local_device_query_callback:service:account:fromID:context:];
    }

    v15 = [DEDIDSConnection unpackProtobuf:v11];
    if (v15)
    {
      v16 = [DEDDevice deviceWithDictionary:v15];
      [v16 setTransport:4];
      [v16 setRemoteTransport:4];
      [v16 setAddress:v12];
      v17 = Log_2();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v16 identifier];
        v19 = [v13 serviceIdentifier];
        v24 = 138543618;
        v25 = v18;
        v26 = 2114;
        v27 = v19;
        _os_log_impl(&dword_248AD7000, v17, OS_LOG_TYPE_DEFAULT, "local_device_query_callback: IDS device ready [%{public}@] on service [%{public}@]", &v24, 0x16u);
      }

      v20 = [(DEDIDSInbound *)self connection];

      if (!v20)
      {
        v21 = Log_2();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [DEDIDSInbound local_device_query_callback:service:account:fromID:context:];
        }
      }

      v22 = [(DEDIDSInbound *)self connection];
      [v22 incomingDeviceReceived:v16];
    }

    else
    {
      v16 = Log_2();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [DEDIDSInbound local_device_query_callback:service:account:fromID:context:];
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)start_session:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "start_session", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = [v13 objectForKeyedSubscript:@"config"];
    v15 = [v13 objectForKeyedSubscript:@"callingDevice"];
    v16 = [v13 objectForKeyedSubscript:@"targetDevice"];
    v17 = [v13 objectForKeyedSubscript:@"sessionID"];
    [v15 setTransport:4];
    [v15 setAddress:v11];
    v18 = [(DEDIDSInbound *)self delegate];
    [v18 idsInbound_startBugSessionWithIdentifier:v17 configuration:v14 caller:v15 target:v16];
  }
}

- (void)did_start_session:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  if (isKnownDevice(a4, a6))
  {
    v11 = Log_2();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "did_start_session", v14, 2u);
    }

    v12 = [DEDIDSConnection unpackProtobuf:v10];
    v13 = [(DEDIDSInbound *)self delegate];
    [v13 idsInbound_didStartBugSessionWithInfo:v12];
  }
}

- (void)session_ping:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "session_ping", v18, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [(DEDIDSInbound *)self delegate];
      v17 = [v16 idsInbound_sessionForIdentifier:v15];
      [v17 pingWithCallback:0];
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v16 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v16 forIDSDeviceID:v11 isResponse:0];
    }
  }
}

- (void)session_pong:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "session_pong", v18, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [(DEDIDSInbound *)self delegate];
      v17 = [v16 idsInbound_sessionForIdentifier:v15];
      [v17 pong];
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v16 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v16 forIDSDeviceID:v11 isResponse:0];
    }
  }
}

- (void)remote_list_DE:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "remote_list_DE", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [(DEDIDSInbound *)self delegate];

      if (!v16)
      {
LABEL_9:

        goto LABEL_10;
      }

      v17 = [(DEDIDSInbound *)self delegate];
      v18 = [v17 idsInbound_sessionForIdentifier:v15];
      [v18 listDiagnosticExtensionsWithCompletion:0];
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v17 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v17 forIDSDeviceID:v11 isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)device_supports_diagnostic_extensions:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  if (isKnownDevice(a4, a6))
  {
    v11 = Log_2();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "device_supports_diagnostic_extensions", buf, 2u);
    }

    v12 = [DEDIDSConnection unpackProtobuf:v10];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 objectForKeyedSubscript:@"getDEList"];
      v27 = [v13 objectForKeyedSubscript:@"sessionID"];
      v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v14, "count")}];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v29;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v29 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [DEDExtension extensionWithDictionary:*(*(&v28 + 1) + 8 * i)];
            [v15 addObject:v21];
          }

          v18 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v18);
      }

      v22 = [v15 copy];
      v23 = [(DEDIDSInbound *)self delegate];

      if (v23)
      {
        v24 = [(DEDIDSInbound *)self delegate];
        v25 = [v24 idsInbound_sessionForIdentifier:v27];
        [v25 supportsDiagnostics:v22];
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)start_diagnostic_with_identifier:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "start_diagnostic_with_identifier", buf, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [v14 objectForKeyedSubscript:@"triggerDE"];
      v17 = [v14 objectForKeyedSubscript:@"triggerDEParams"];
      v18 = [v14 objectForKeyedSubscript:@"triggerDERunDate"];
      v19 = [(DEDIDSInbound *)self delegate];

      if (v19)
      {
        v26 = v17;
        v20 = [[DEDExtensionIdentifier alloc] initWithString:v16];
        v21 = [(DEDIDSInbound *)self delegate];
        v22 = [v21 idsInbound_sessionForIdentifier:v15];
        v23 = [(DEDExtensionIdentifier *)v20 extensionIdentifier];
        if (v18)
        {
          v24 = [v22 startDiagnosticExtensionWithIdentifier:v23 parameters:v26 deferRunUntil:v18 completion:0];
        }

        else
        {
          v25 = [v22 startDiagnosticExtensionWithIdentifier:v23 parameters:v26 completion:0];
        }

        v17 = v26;
      }
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v16 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v16 forIDSDeviceID:v11 isResponse:0];
    }
  }
}

- (void)finished_diagnostic_with_identifier:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "finished_diagnostic_with_identifier", v22, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [v14 objectForKeyedSubscript:@"triggerDE"];
      v17 = [v14 objectForKeyedSubscript:@"finishedDEDGroups"];
      v18 = [DEDAttachmentGroup groupWithDictionary:v17];

      v19 = [(DEDIDSInbound *)self delegate];

      if (v19)
      {
        v20 = [(DEDIDSInbound *)self delegate];
        v21 = [v20 idsInbound_sessionForIdentifier:v15];
        [v21 finishedDiagnosticWithIdentifier:v16 result:v18];
      }
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v16 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v16 forIDSDeviceID:v11 isResponse:0];
    }
  }
}

- (void)remote_device_query_request:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a6;
  if (isKnownDevice(a4, v9))
  {
    v10 = Log_2();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "remote_device_query_request from %@", buf, 0xCu);
    }

    v11 = +[DEDDevice currentDeviceWithDaemonInfo];
    v12 = MEMORY[0x277CCAAB0];
    v13 = [v11 serialize];
    v18 = 0;
    v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v18];
    v15 = v18;

    if (v15)
    {
      v16 = Log_2();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [DEDIDSInbound remote_device_query_request:service:account:fromID:context:];
      }
    }

    else
    {
      v16 = [(DEDIDSInbound *)self connection];
      [v16 sendMessage:1 withData:v14 forIDSDeviceID:v9 isResponse:1];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)terminate_diagnostic_with_identifier:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "terminate_diagnostic_with_identifier", v21, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [v14 objectForKeyedSubscript:@"triggerDE"];
      v17 = [v14 objectForKeyedSubscript:@"triggerDEParams"];
      v18 = [(DEDIDSInbound *)self delegate];

      if (v18)
      {
        v19 = [(DEDIDSInbound *)self delegate];
        v20 = [v19 idsInbound_sessionForIdentifier:v15];
        [v20 terminateExtension:v16 withInfo:v17];
      }

      else
      {
        v19 = Log_2();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [DEDIDSInbound terminate_diagnostic_with_identifier:service:account:fromID:context:];
        }
      }
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v16 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v16 forIDSDeviceID:v11 isResponse:0];
    }
  }
}

- (void)get_session_state:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "get_session_state", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [(DEDIDSInbound *)self delegate];

      if (!v16)
      {
LABEL_9:

        goto LABEL_10;
      }

      v17 = [(DEDIDSInbound *)self delegate];
      v18 = [v17 idsInbound_sessionForIdentifier:v15];
      [v18 getStateWithCompletion:0];
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v17 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v17 forIDSDeviceID:v11 isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)did_get_session_state:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "did_get_session_state", v22, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [v14 objectForKeyedSubscript:@"sessionState"];
      v17 = [v16 integerValue];

      v18 = [v14 objectForKeyedSubscript:@"sessionStateInfo"];
      v19 = [(DEDIDSInbound *)self delegate];

      if (v19)
      {
        v20 = [(DEDIDSInbound *)self delegate];
        v21 = [v20 idsInbound_sessionForIdentifier:v15];
        [v21 didGetState:v17 info:v18];
      }
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v18 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v18 forIDSDeviceID:v11 isResponse:0];
    }
  }
}

- (void)add_session_data:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "add_session_data", v21, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [v14 objectForKeyedSubscript:@"sessionData"];
      v17 = [v14 objectForKeyedSubscript:@"sessionDataFilename"];
      v18 = [(DEDIDSInbound *)self delegate];

      if (v18)
      {
        v19 = [(DEDIDSInbound *)self delegate];
        v20 = [v19 idsInbound_sessionForIdentifier:v15];
        [v20 addData:v16 withFilename:v17];
      }
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v16 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v16 forIDSDeviceID:v11 isResponse:0];
    }
  }
}

- (void)get_session_status:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "get_session_status", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [(DEDIDSInbound *)self delegate];

      if (!v16)
      {
LABEL_9:

        goto LABEL_10;
      }

      v17 = [(DEDIDSInbound *)self delegate];
      v18 = [v17 idsInbound_sessionForIdentifier:v15];
      [v18 getSessionStatusWithCompletion:0];
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v17 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v17 forIDSDeviceID:v11 isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)sync_session_status:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "sync_session_status", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [(DEDIDSInbound *)self delegate];

      if (!v16)
      {
LABEL_9:

        goto LABEL_10;
      }

      v17 = [(DEDIDSInbound *)self delegate];
      v18 = [v17 idsInbound_sessionForIdentifier:v15];
      [v18 synchronizeSessionStatusWithCompletion:0];
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v17 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v17 forIDSDeviceID:v11 isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)did_get_session_status:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "did_get_session_status", v23, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [v14 objectForKeyedSubscript:@"finishedDEDGroups"];
      v17 = [v16 ded_mapWithBlock:&__block_literal_global_67];

      v18 = [v14 objectForKeyedSubscript:@"runningDEs"];
      v19 = [v18 ded_mapWithBlock:&__block_literal_global_72];

      v20 = [(DEDIDSInbound *)self delegate];

      if (v20)
      {
        v21 = [(DEDIDSInbound *)self delegate];
        v22 = [v21 idsInbound_sessionForIdentifier:v15];
        [v22 hasCollected:v17 isCollecting:v19];
      }
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v17 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v17 forIDSDeviceID:v11 isResponse:0];
    }
  }
}

- (void)did_sync_session_status:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "did_sync_session_status", v25, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [v14 objectForKeyedSubscript:@"finishedDEDGroups"];
      v17 = [v16 ded_mapWithBlock:&__block_literal_global_74];

      v18 = [v14 objectForKeyedSubscript:@"runningDEs"];
      v19 = [v18 ded_mapWithBlock:&__block_literal_global_76];

      v20 = [v14 objectForKeyedSubscript:@"extensionIdentifiers"];
      v21 = [v20 ded_mapWithBlock:&__block_literal_global_81];

      v22 = [(DEDIDSInbound *)self delegate];

      if (v22)
      {
        v23 = [(DEDIDSInbound *)self delegate];
        v24 = [v23 idsInbound_sessionForIdentifier:v15];
        [v24 hasCollected:v17 isCollecting:v19 identifiers:v21];
      }
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v17 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v17 forIDSDeviceID:v11 isResponse:0];
    }
  }
}

DEDExtensionIdentifier *__72__DEDIDSInbound_did_sync_session_status_service_account_fromID_context___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[DEDExtensionIdentifier alloc] initWithString:v2];

  return v3;
}

- (void)adopt_files:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "adopt_files", v20, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [v14 objectForKeyedSubscript:@"filesForAdopt"];
      v17 = Log_2();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [DEDIDSInbound adopt_files:service:account:fromID:context:];
      }

      v18 = [(DEDIDSInbound *)self delegate];
      v19 = [v18 idsInbound_sessionForIdentifier:v15];
      [v19 adoptFiles:v16 withCompletion:0];
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v16 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v16 forIDSDeviceID:v11 isResponse:0];
    }
  }
}

- (void)did_adopt_files:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "did_adopt_files", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [v14 objectForKeyedSubscript:@"error"];
      v17 = [(DEDIDSInbound *)self delegate];
      v18 = [v17 idsInbound_sessionForIdentifier:v15];
      [v18 didAdoptFilesWithError:v16];
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v16 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v16 forIDSDeviceID:v11 isResponse:0];
    }
  }
}

- (void)compression_progress:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = [DEDIDSConnection unpackProtobuf:v10];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 objectForKeyedSubscript:@"sessionID"];
      v15 = Log_2();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [DEDIDSInbound compression_progress:service:account:fromID:context:];
      }

      v16 = [v13 objectForKeyedSubscript:@"compressedBytes"];
      v17 = [v16 unsignedLongLongValue];

      v18 = [v13 objectForKeyedSubscript:@"totalBytes"];
      v19 = [v18 unsignedLongLongValue];

      v20 = [(DEDIDSInbound *)self delegate];
      v21 = [v20 idsInbound_sessionForIdentifier:v14];
      [v21 compressionProgress:v17 total:v19];
    }

    else
    {
      v22 = [(DEDIDSInbound *)self connection];
      v23 = [MEMORY[0x277CBEA90] data];
      [v22 sendMessage:0 withData:v23 forIDSDeviceID:v11 isResponse:0];
    }
  }
}

- (void)upload_progress:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = [DEDIDSConnection unpackProtobuf:v10];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 objectForKeyedSubscript:@"sessionID"];
      v15 = Log_2();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [DEDIDSInbound upload_progress:service:account:fromID:context:];
      }

      v16 = [v13 objectForKeyedSubscript:@"uploadedBytes"];
      v17 = [v16 longLongValue];

      v18 = [v13 objectForKeyedSubscript:@"totalBytes"];
      v19 = [v18 longLongValue];

      v20 = [(DEDIDSInbound *)self delegate];
      v21 = [v20 idsInbound_sessionForIdentifier:v14];
      [v21 uploadProgress:v17 total:v19];
    }

    else
    {
      v22 = [(DEDIDSInbound *)self connection];
      v23 = [MEMORY[0x277CBEA90] data];
      [v22 sendMessage:0 withData:v23 forIDSDeviceID:v11 isResponse:0];
    }
  }
}

- (void)upload_finished:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = [DEDIDSConnection unpackProtobuf:v10];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 objectForKeyedSubscript:@"sessionID"];
      v15 = Log_2();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [DEDIDSInbound upload_finished:service:account:fromID:context:];
      }

      v16 = [v13 objectForKeyedSubscript:@"error"];
      v17 = [(DEDIDSInbound *)self delegate];
      v18 = [v17 idsInbound_sessionForIdentifier:v14];
      [v18 didFinishUploadingWithError:v16];
    }

    else
    {
      v19 = [(DEDIDSInbound *)self connection];
      v20 = [MEMORY[0x277CBEA90] data];
      [v19 sendMessage:0 withData:v20 forIDSDeviceID:v11 isResponse:0];
    }
  }
}

- (void)commit_session:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "commit_session", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [(DEDIDSInbound *)self delegate];

      if (!v16)
      {
LABEL_9:

        goto LABEL_10;
      }

      v17 = [(DEDIDSInbound *)self delegate];
      v18 = [v17 idsInbound_sessionForIdentifier:v15];
      [v18 commit];
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v17 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v17 forIDSDeviceID:v11 isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)did_commit_session:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "did_commit_session", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [(DEDIDSInbound *)self delegate];

      if (!v16)
      {
LABEL_9:

        goto LABEL_10;
      }

      v17 = [(DEDIDSInbound *)self delegate];
      v18 = [v17 idsInbound_sessionForIdentifier:v15];
      [v18 didCommit];
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v17 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v17 forIDSDeviceID:v11 isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)cancel_session:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "cancel_session", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [(DEDIDSInbound *)self delegate];

      if (!v16)
      {
LABEL_9:

        goto LABEL_10;
      }

      v17 = [(DEDIDSInbound *)self delegate];
      v18 = [v17 idsInbound_sessionForIdentifier:v15];
      [v18 cancel];
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v17 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v17 forIDSDeviceID:v11 isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)did_cancel_session:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "did_cancel_session", v18, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [(DEDIDSInbound *)self delegate];

      if (!v16)
      {
LABEL_9:

        goto LABEL_10;
      }

      v17 = [(DEDIDSInbound *)self delegate];
      [v17 idsInbound_didAbortSessionWithID:v15];
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v17 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v17 forIDSDeviceID:v11 isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)schedule_notification:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "schedule_notification", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [(DEDIDSInbound *)self delegate];

      if (!v16)
      {
LABEL_9:

        goto LABEL_10;
      }

      v17 = [(DEDIDSInbound *)self delegate];
      v18 = [v17 idsInbound_sessionForIdentifier:v15];
      [v18 scheduleNotification];
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v17 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v17 forIDSDeviceID:v11 isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)unschedule_notification:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "unschedule_notification", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [(DEDIDSInbound *)self delegate];

      if (!v16)
      {
LABEL_9:

        goto LABEL_10;
      }

      v17 = [(DEDIDSInbound *)self delegate];
      v18 = [v17 idsInbound_sessionForIdentifier:v15];
      [v18 clearNotification];
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v17 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v17 forIDSDeviceID:v11 isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)present_notification_on_passthrough_daemon:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "present_notification_on_passthrough_daemon", v20, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [(DEDIDSInbound *)self delegate];
      v17 = [v16 idsInbound_sessionForIdentifier:v15];
      [v17 idsInbound_presentNotificationOnFilingDevice];

      v18 = [(DEDIDSInbound *)self connection];
      v19 = [DEDIDSConnection packPayload:v14];
      [v18 sendMessage:28 withData:v19 forIDSDeviceID:v11 isResponse:1];
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v18 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v18 forIDSDeviceID:v11 isResponse:0];
    }
  }
}

- (void)did_present_notification_on_passthrough_daemon:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "did_present_notification_on_passthrough_daemon", v18, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [(DEDIDSInbound *)self delegate];
      v17 = [v16 idsInbound_sessionForIdentifier:v15];
      [v17 idsInbound_didPresentNotificationOnFilingDevice];
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v16 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v16 forIDSDeviceID:v11 isResponse:0];
    }
  }
}

- (void)remove_notification_on_passthrough_daemon:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "remove_notification_on_passthrough_daemon", v21, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [(DEDIDSInbound *)self delegate];

      if (v16)
      {
        v17 = [(DEDIDSInbound *)self delegate];
        v18 = [v17 idsInbound_sessionForIdentifier:v15];
        [v18 idsInbound_clearNotificationOnFilingDevice];
      }

      v19 = [(DEDIDSInbound *)self connection];
      v20 = [DEDIDSConnection packPayload:v14];
      [v19 sendMessage:29 withData:v20 forIDSDeviceID:v11 isResponse:1];
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v19 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v19 forIDSDeviceID:v11 isResponse:0];
    }
  }
}

- (void)did_remove_notification_on_passthrough_daemon:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "did_remove_notification_on_passthrough_daemon", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [(DEDIDSInbound *)self delegate];

      if (!v16)
      {
LABEL_9:

        goto LABEL_10;
      }

      v17 = [(DEDIDSInbound *)self delegate];
      v18 = [v17 idsInbound_sessionForIdentifier:v15];
      [v18 idsInbound_didClearNotificationOnFilingDevice];
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v17 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v17 forIDSDeviceID:v11 isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)load_extension_text_data:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "load_extension_text_data", v22, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [v14 objectForKeyedSubscript:@"localization"];
      v17 = [v14 objectForKeyedSubscript:@"extensions"];
      v18 = [v17 ded_flatMapWithBlock:&__block_literal_global_105];
      v19 = [(DEDIDSInbound *)self delegate];

      if (v19)
      {
        v20 = [(DEDIDSInbound *)self delegate];
        v21 = [v20 idsInbound_sessionForIdentifier:v15];
        [v21 loadTextDataForExtensions:v18 localization:v16 completion:0];
      }
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v16 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v16 forIDSDeviceID:v11 isResponse:0];
    }
  }
}

- (void)did_load_extension_text_data:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  if (isKnownDevice(a4, v11))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "did_load_extension_text_data", v22, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [v14 objectForKeyedSubscript:@"localization"];
      v17 = [v14 objectForKeyedSubscript:@"extensions"];
      v18 = [v17 ded_flatMapWithBlock:&__block_literal_global_107];
      v19 = [(DEDIDSInbound *)self delegate];

      if (v19)
      {
        v20 = [(DEDIDSInbound *)self delegate];
        v21 = [v20 idsInbound_sessionForIdentifier:v15];
        [v21 didLoadTextDataForExtensions:v18 localization:v16];
      }
    }

    else
    {
      v15 = [(DEDIDSInbound *)self connection];
      v16 = [MEMORY[0x277CBEA90] data];
      [v15 sendMessage:0 withData:v16 forIDSDeviceID:v11 isResponse:0];
    }
  }
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v7 = a6;
  v8 = IDSDelLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:incomingMessage:fromID:context:];
  }
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v7 = a6;
  v8 = IDSDelLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:incomingData:fromID:context:];
  }
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v8 = a5;
  v9 = a6;
  v10 = IDSDelLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:v8 account:v9 incomingUnhandledProtobuf:v10 fromID:? context:?];
  }
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 fromID:(id)a6 context:(id)a7
{
  v8 = a5;
  v9 = a6;
  v10 = IDSDelLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:incomingResourceAtURL:fromID:context:];
  }
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
{
  v21 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = IDSDelLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412802;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    _os_log_debug_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEBUG, "incoming resource [%@] metadata [%@] from [%@]", &v15, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v4 = a4;
  v5 = IDSDelLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:activeAccountsChanged:];
  }
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = IDSDelLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_248AD7000, v6, OS_LOG_TYPE_DEFAULT, "Devices changed", &v11, 2u);
  }

  v7 = [(DEDIDSInbound *)self delegate];

  if (v7)
  {
    v8 = [v5 ded_mapWithBlock:&__block_literal_global_110];
    v9 = [(DEDIDSInbound *)self delegate];
    [v9 idsInbound_devicesChanged:v8];
  }

  else
  {
    v8 = IDSDelLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[DEDIDSInbound service:devicesChanged:]";
      _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "no delegate set for %s", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

id __40__DEDIDSInbound_service_devicesChanged___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = DEDAddressForIDSDevice();
  v4 = [DEDDevice deviceWithIDSDevice:v2 address:v3];

  return v4;
}

- (void)service:(id)a3 nearbyDevicesChanged:(id)a4
{
  v4 = a4;
  v5 = IDSDelLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:nearbyDevicesChanged:];
  }
}

- (void)service:(id)a3 connectedDevicesChanged:(id)a4
{
  v4 = a4;
  v5 = IDSDelLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:connectedDevicesChanged:];
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v23 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a7;
  v13 = DEDIDSConnectionLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 serviceDomain];
    v17 = 138543874;
    v18 = v11;
    v19 = 2114;
    v20 = v14;
    v21 = 1024;
    v22 = v8;
    _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "Did send IDS command with guid: [%{public}@] on service [%{public}@], success? [%i]", &v17, 0x1Cu);
  }

  if (v12)
  {
    v15 = IDSDelLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [DEDIDSInbound service:account:identifier:didSendWithSuccess:error:];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8
{
  v9 = a6;
  v24 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = DEDIDSConnectionLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v11 serviceName];
    v18 = 138543874;
    v19 = v12;
    v20 = 2114;
    v21 = v15;
    v22 = 1024;
    v23 = v9;
    _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_DEFAULT, "Did send message with guid [%{public}@] on service [%{public}@], success? [%i]", &v18, 0x1Cu);
  }

  if (v13)
  {
    v16 = IDSDelLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [DEDIDSInbound service:account:identifier:didSendWithSuccess:error:];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 sentBytes:(int64_t)a6 totalBytes:(int64_t)a7
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = IDSDelLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134218498;
    v13 = a6;
    v14 = 2048;
    v15 = a7;
    v16 = 2112;
    v17 = v9;
    _os_log_debug_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEBUG, "sent bytes [%li] total [%li] identifier [%@]", &v12, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6
{
  v6 = a5;
  v7 = IDSDelLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:identifier:hasBeenDeliveredWithContext:];
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 fromID:(id)a6 hasBeenDeliveredWithContext:(id)a7
{
  v8 = a5;
  v9 = a6;
  v10 = IDSDelLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:identifier:fromID:hasBeenDeliveredWithContext:];
  }
}

- (void)service:(id)a3 account:(id)a4 inviteReceivedForSession:(id)a5 fromID:(id)a6
{
  v6 = a6;
  v7 = IDSDelLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:inviteReceivedForSession:fromID:];
  }
}

- (void)service:(id)a3 account:(id)a4 inviteReceivedForSession:(id)a5 fromID:(id)a6 withOptions:(id)a7
{
  v8 = a6;
  v9 = a7;
  v10 = IDSDelLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:inviteReceivedForSession:fromID:withOptions:];
  }
}

- (void)service:(id)a3 account:(id)a4 inviteReceivedForSession:(id)a5 fromID:(id)a6 withContext:(id)a7
{
  v7 = a6;
  v8 = IDSDelLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:inviteReceivedForSession:fromID:withContext:];
  }
}

- (void)service:(id)a3 account:(id)a4 receivedGroupSessionParticipantUpdate:(id)a5
{
  v5 = IDSDelLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:receivedGroupSessionParticipantUpdate:];
  }
}

- (void)serviceSpaceDidBecomeAvailable:(id)a3
{
  v3 = a3;
  v4 = IDSDelLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound serviceSpaceDidBecomeAvailable:];
  }
}

- (void)serviceAllowedTrafficClassifiersDidReset:(id)a3
{
  v3 = a3;
  v4 = IDSDelLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound serviceAllowedTrafficClassifiersDidReset:];
  }
}

- (void)service:(id)a3 didSwitchActivePairedDevice:(id)a4 acknowledgementBlock:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = IDSDelLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:didSwitchActivePairedDevice:acknowledgementBlock:];
  }

  v7[2](v7);
}

- (DEDIDSConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (DEDIDSInboundDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)local_device_query_callback:service:account:fromID:context:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)local_device_query_callback:service:account:fromID:context:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)remote_device_query_request:service:account:fromID:context:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)terminate_diagnostic_with_identifier:service:account:fromID:context:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)adopt_files:service:account:fromID:context:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)compression_progress:service:account:fromID:context:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "compression_progress on session [%{public}@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)upload_progress:service:account:fromID:context:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "upload_progress on session [%{public}@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)upload_finished:service:account:fromID:context:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "upload_finished on session [%{public}@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)service:account:incomingMessage:fromID:context:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "incoming message from [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)service:account:incomingData:fromID:context:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "incoming data from [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)service:(NSObject *)a3 account:incomingUnhandledProtobuf:fromID:context:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 67109378;
  v6[1] = [a1 type];
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_248AD7000, a3, OS_LOG_TYPE_DEBUG, "Incoming unhandled protobuf of type [%hu] from [%@]", v6, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)service:account:incomingResourceAtURL:fromID:context:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_0(&dword_248AD7000, v0, v1, "incoming resource [%@] from [%@]");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)service:activeAccountsChanged:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "Active Accounts changed %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)service:nearbyDevicesChanged:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "Nearby Devices changed %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)service:connectedDevicesChanged:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "Connected Devices changed %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)service:account:identifier:didSendWithSuccess:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_7_0(&dword_248AD7000, v0, v1, "Error sending message: [%{public}@] error: [%{public}@]");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)service:account:identifier:hasBeenDeliveredWithContext:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "identifier [%@] has been delivered", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)service:account:identifier:fromID:hasBeenDeliveredWithContext:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_0(&dword_248AD7000, v0, v1, "identifier [%@] from id [%@] has been delivered");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)service:account:inviteReceivedForSession:fromID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "invite received from id [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)service:account:inviteReceivedForSession:fromID:withOptions:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_0(&dword_248AD7000, v0, v1, "invite received from id [%@] with options [%@]");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)service:account:inviteReceivedForSession:fromID:withContext:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "invite received from id [%{public}@] with context", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)serviceSpaceDidBecomeAvailable:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "service space became available [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)serviceAllowedTrafficClassifiersDidReset:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "service traffic did reset [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)service:didSwitchActivePairedDevice:acknowledgementBlock:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "did switch active paired device [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end