@interface DEDIDSInbound
+ (id)archivedClasses;
- (DEDIDSConnection)connection;
- (DEDIDSInbound)init;
- (DEDIDSInbound)initWithConnection:(id)connection controller:(id)controller;
- (DEDIDSInboundDelegate)delegate;
- (void)add_session_data:(id)add_session_data service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)adopt_files:(id)adopt_files service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)cancel_session:(id)cancel_session service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)commit_session:(id)commit_session service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)compression_progress:(id)compression_progress service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)device_supports_diagnostic_extensions:(id)device_supports_diagnostic_extensions service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)did_adopt_files:(id)did_adopt_files service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)did_cancel_session:(id)did_cancel_session service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)did_commit_session:(id)did_commit_session service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)did_get_session_state:(id)did_get_session_state service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)did_get_session_status:(id)did_get_session_status service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)did_load_extension_text_data:(id)did_load_extension_text_data service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)did_present_notification_on_passthrough_daemon:(id)did_present_notification_on_passthrough_daemon service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)did_remove_notification_on_passthrough_daemon:(id)did_remove_notification_on_passthrough_daemon service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)did_start_session:(id)did_start_session service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)did_sync_session_status:(id)did_sync_session_status service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)finished_diagnostic_with_identifier:(id)finished_diagnostic_with_identifier service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)get_session_state:(id)get_session_state service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)get_session_status:(id)get_session_status service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)load_extension_text_data:(id)load_extension_text_data service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)local_device_query_callback:(id)local_device_query_callback service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)logMalformedMessage;
- (void)present_notification_on_passthrough_daemon:(id)present_notification_on_passthrough_daemon service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)remote_device_query_request:(id)remote_device_query_request service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)remote_list_DE:(id)e service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)remove_notification_on_passthrough_daemon:(id)remove_notification_on_passthrough_daemon service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)schedule_notification:(id)schedule_notification service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account identifier:(id)identifier fromID:(id)d hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account identifier:(id)identifier sentBytes:(int64_t)bytes totalBytes:(int64_t)totalBytes;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d;
- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withContext:(id)context;
- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withOptions:(id)options;
- (void)service:(id)service account:(id)account receivedGroupSessionParticipantUpdate:(id)update;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block;
- (void)service:(id)service nearbyDevicesChanged:(id)changed;
- (void)serviceAllowedTrafficClassifiersDidReset:(id)reset;
- (void)serviceSpaceDidBecomeAvailable:(id)available;
- (void)session_ping:(id)session_ping service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)session_pong:(id)session_pong service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)start_diagnostic_with_identifier:(id)start_diagnostic_with_identifier service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)start_session:(id)start_session service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)sync_session_status:(id)sync_session_status service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)terminate_diagnostic_with_identifier:(id)terminate_diagnostic_with_identifier service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)unschedule_notification:(id)unschedule_notification service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)upload_finished:(id)upload_finished service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)upload_progress:(id)upload_progress service:(id)service account:(id)account fromID:(id)d context:(id)context;
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

- (DEDIDSInbound)initWithConnection:(id)connection controller:(id)controller
{
  connectionCopy = connection;
  controllerCopy = controller;
  v8 = objc_alloc_init(DEDIDSInbound);

  if (v8)
  {
    [(DEDIDSInbound *)v8 setConnection:connectionCopy];
    [(DEDIDSInbound *)v8 setDelegate:controllerCopy];
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

- (void)local_device_query_callback:(id)local_device_query_callback service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v28 = *MEMORY[0x277D85DE8];
  local_device_query_callbackCopy = local_device_query_callback;
  dCopy = d;
  contextCopy = context;
  if (isKnownDevice(service, dCopy))
  {
    v14 = Log_2();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [DEDIDSInbound local_device_query_callback:service:account:fromID:context:];
    }

    v15 = [DEDIDSConnection unpackProtobuf:local_device_query_callbackCopy];
    if (v15)
    {
      v16 = [DEDDevice deviceWithDictionary:v15];
      [v16 setTransport:4];
      [v16 setRemoteTransport:4];
      [v16 setAddress:dCopy];
      v17 = Log_2();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [v16 identifier];
        serviceIdentifier = [contextCopy serviceIdentifier];
        v24 = 138543618;
        v25 = identifier;
        v26 = 2114;
        v27 = serviceIdentifier;
        _os_log_impl(&dword_248AD7000, v17, OS_LOG_TYPE_DEFAULT, "local_device_query_callback: IDS device ready [%{public}@] on service [%{public}@]", &v24, 0x16u);
      }

      connection = [(DEDIDSInbound *)self connection];

      if (!connection)
      {
        v21 = Log_2();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [DEDIDSInbound local_device_query_callback:service:account:fromID:context:];
        }
      }

      connection2 = [(DEDIDSInbound *)self connection];
      [connection2 incomingDeviceReceived:v16];
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

- (void)start_session:(id)start_session service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  start_sessionCopy = start_session;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "start_session", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:start_sessionCopy];
    v14 = [v13 objectForKeyedSubscript:@"config"];
    v15 = [v13 objectForKeyedSubscript:@"callingDevice"];
    v16 = [v13 objectForKeyedSubscript:@"targetDevice"];
    v17 = [v13 objectForKeyedSubscript:@"sessionID"];
    [v15 setTransport:4];
    [v15 setAddress:dCopy];
    delegate = [(DEDIDSInbound *)self delegate];
    [delegate idsInbound_startBugSessionWithIdentifier:v17 configuration:v14 caller:v15 target:v16];
  }
}

- (void)did_start_session:(id)did_start_session service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  did_start_sessionCopy = did_start_session;
  if (isKnownDevice(service, d))
  {
    v11 = Log_2();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "did_start_session", v14, 2u);
    }

    v12 = [DEDIDSConnection unpackProtobuf:did_start_sessionCopy];
    delegate = [(DEDIDSInbound *)self delegate];
    [delegate idsInbound_didStartBugSessionWithInfo:v12];
  }
}

- (void)session_ping:(id)session_ping service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  session_pingCopy = session_ping;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "session_ping", v18, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:session_pingCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];
      v17 = [delegate idsInbound_sessionForIdentifier:connection];
      [v17 pingWithCallback:0];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)session_pong:(id)session_pong service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  session_pongCopy = session_pong;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "session_pong", v18, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:session_pongCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];
      v17 = [delegate idsInbound_sessionForIdentifier:connection];
      [v17 pong];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)remote_list_DE:(id)e service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  eCopy = e;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "remote_list_DE", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:eCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (!delegate)
      {
LABEL_9:

        goto LABEL_10;
      }

      delegate2 = [(DEDIDSInbound *)self delegate];
      v18 = [delegate2 idsInbound_sessionForIdentifier:connection];
      [v18 listDiagnosticExtensionsWithCompletion:0];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate2 = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate2 forIDSDeviceID:dCopy isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)device_supports_diagnostic_extensions:(id)device_supports_diagnostic_extensions service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v34 = *MEMORY[0x277D85DE8];
  device_supports_diagnostic_extensionsCopy = device_supports_diagnostic_extensions;
  if (isKnownDevice(service, d))
  {
    v11 = Log_2();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "device_supports_diagnostic_extensions", buf, 2u);
    }

    v12 = [DEDIDSConnection unpackProtobuf:device_supports_diagnostic_extensionsCopy];
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
      delegate = [(DEDIDSInbound *)self delegate];

      if (delegate)
      {
        delegate2 = [(DEDIDSInbound *)self delegate];
        v25 = [delegate2 idsInbound_sessionForIdentifier:v27];
        [v25 supportsDiagnostics:v22];
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)start_diagnostic_with_identifier:(id)start_diagnostic_with_identifier service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  start_diagnostic_with_identifierCopy = start_diagnostic_with_identifier;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "start_diagnostic_with_identifier", buf, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:start_diagnostic_with_identifierCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      data = [v14 objectForKeyedSubscript:@"triggerDE"];
      v17 = [v14 objectForKeyedSubscript:@"triggerDEParams"];
      v18 = [v14 objectForKeyedSubscript:@"triggerDERunDate"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (delegate)
      {
        v26 = v17;
        v20 = [[DEDExtensionIdentifier alloc] initWithString:data];
        delegate2 = [(DEDIDSInbound *)self delegate];
        v22 = [delegate2 idsInbound_sessionForIdentifier:connection];
        extensionIdentifier = [(DEDExtensionIdentifier *)v20 extensionIdentifier];
        if (v18)
        {
          v24 = [v22 startDiagnosticExtensionWithIdentifier:extensionIdentifier parameters:v26 deferRunUntil:v18 completion:0];
        }

        else
        {
          v25 = [v22 startDiagnosticExtensionWithIdentifier:extensionIdentifier parameters:v26 completion:0];
        }

        v17 = v26;
      }
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)finished_diagnostic_with_identifier:(id)finished_diagnostic_with_identifier service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  finished_diagnostic_with_identifierCopy = finished_diagnostic_with_identifier;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "finished_diagnostic_with_identifier", v22, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:finished_diagnostic_with_identifierCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      data = [v14 objectForKeyedSubscript:@"triggerDE"];
      v17 = [v14 objectForKeyedSubscript:@"finishedDEDGroups"];
      v18 = [DEDAttachmentGroup groupWithDictionary:v17];

      delegate = [(DEDIDSInbound *)self delegate];

      if (delegate)
      {
        delegate2 = [(DEDIDSInbound *)self delegate];
        v21 = [delegate2 idsInbound_sessionForIdentifier:connection];
        [v21 finishedDiagnosticWithIdentifier:data result:v18];
      }
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)remote_device_query_request:(id)remote_device_query_request service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v10 = Log_2();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = dCopy;
      _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "remote_device_query_request from %@", buf, 0xCu);
    }

    v11 = +[DEDDevice currentDeviceWithDaemonInfo];
    v12 = MEMORY[0x277CCAAB0];
    serialize = [v11 serialize];
    v18 = 0;
    v14 = [v12 archivedDataWithRootObject:serialize requiringSecureCoding:1 error:&v18];
    v15 = v18;

    if (v15)
    {
      connection = Log_2();
      if (os_log_type_enabled(connection, OS_LOG_TYPE_ERROR))
      {
        [DEDIDSInbound remote_device_query_request:service:account:fromID:context:];
      }
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      [connection sendMessage:1 withData:v14 forIDSDeviceID:dCopy isResponse:1];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)terminate_diagnostic_with_identifier:(id)terminate_diagnostic_with_identifier service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  terminate_diagnostic_with_identifierCopy = terminate_diagnostic_with_identifier;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "terminate_diagnostic_with_identifier", v21, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:terminate_diagnostic_with_identifierCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      data = [v14 objectForKeyedSubscript:@"triggerDE"];
      v17 = [v14 objectForKeyedSubscript:@"triggerDEParams"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (delegate)
      {
        delegate2 = [(DEDIDSInbound *)self delegate];
        v20 = [delegate2 idsInbound_sessionForIdentifier:connection];
        [v20 terminateExtension:data withInfo:v17];
      }

      else
      {
        delegate2 = Log_2();
        if (os_log_type_enabled(delegate2, OS_LOG_TYPE_ERROR))
        {
          [DEDIDSInbound terminate_diagnostic_with_identifier:service:account:fromID:context:];
        }
      }
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)get_session_state:(id)get_session_state service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  get_session_stateCopy = get_session_state;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "get_session_state", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:get_session_stateCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (!delegate)
      {
LABEL_9:

        goto LABEL_10;
      }

      delegate2 = [(DEDIDSInbound *)self delegate];
      v18 = [delegate2 idsInbound_sessionForIdentifier:connection];
      [v18 getStateWithCompletion:0];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate2 = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate2 forIDSDeviceID:dCopy isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)did_get_session_state:(id)did_get_session_state service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  did_get_session_stateCopy = did_get_session_state;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "did_get_session_state", v22, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:did_get_session_stateCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [v14 objectForKeyedSubscript:@"sessionState"];
      integerValue = [v16 integerValue];

      data = [v14 objectForKeyedSubscript:@"sessionStateInfo"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (delegate)
      {
        delegate2 = [(DEDIDSInbound *)self delegate];
        v21 = [delegate2 idsInbound_sessionForIdentifier:connection];
        [v21 didGetState:integerValue info:data];
      }
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)add_session_data:(id)add_session_data service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  add_session_dataCopy = add_session_data;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "add_session_data", v21, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:add_session_dataCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      data = [v14 objectForKeyedSubscript:@"sessionData"];
      v17 = [v14 objectForKeyedSubscript:@"sessionDataFilename"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (delegate)
      {
        delegate2 = [(DEDIDSInbound *)self delegate];
        v20 = [delegate2 idsInbound_sessionForIdentifier:connection];
        [v20 addData:data withFilename:v17];
      }
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)get_session_status:(id)get_session_status service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  get_session_statusCopy = get_session_status;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "get_session_status", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:get_session_statusCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (!delegate)
      {
LABEL_9:

        goto LABEL_10;
      }

      delegate2 = [(DEDIDSInbound *)self delegate];
      v18 = [delegate2 idsInbound_sessionForIdentifier:connection];
      [v18 getSessionStatusWithCompletion:0];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate2 = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate2 forIDSDeviceID:dCopy isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)sync_session_status:(id)sync_session_status service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  sync_session_statusCopy = sync_session_status;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "sync_session_status", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:sync_session_statusCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (!delegate)
      {
LABEL_9:

        goto LABEL_10;
      }

      delegate2 = [(DEDIDSInbound *)self delegate];
      v18 = [delegate2 idsInbound_sessionForIdentifier:connection];
      [v18 synchronizeSessionStatusWithCompletion:0];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate2 = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate2 forIDSDeviceID:dCopy isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)did_get_session_status:(id)did_get_session_status service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  did_get_session_statusCopy = did_get_session_status;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "did_get_session_status", v23, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:did_get_session_statusCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [v14 objectForKeyedSubscript:@"finishedDEDGroups"];
      data = [v16 ded_mapWithBlock:&__block_literal_global_67];

      v18 = [v14 objectForKeyedSubscript:@"runningDEs"];
      v19 = [v18 ded_mapWithBlock:&__block_literal_global_72];

      delegate = [(DEDIDSInbound *)self delegate];

      if (delegate)
      {
        delegate2 = [(DEDIDSInbound *)self delegate];
        v22 = [delegate2 idsInbound_sessionForIdentifier:connection];
        [v22 hasCollected:data isCollecting:v19];
      }
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)did_sync_session_status:(id)did_sync_session_status service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  did_sync_session_statusCopy = did_sync_session_status;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "did_sync_session_status", v25, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:did_sync_session_statusCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      v16 = [v14 objectForKeyedSubscript:@"finishedDEDGroups"];
      data = [v16 ded_mapWithBlock:&__block_literal_global_74];

      v18 = [v14 objectForKeyedSubscript:@"runningDEs"];
      v19 = [v18 ded_mapWithBlock:&__block_literal_global_76];

      v20 = [v14 objectForKeyedSubscript:@"extensionIdentifiers"];
      v21 = [v20 ded_mapWithBlock:&__block_literal_global_81];

      delegate = [(DEDIDSInbound *)self delegate];

      if (delegate)
      {
        delegate2 = [(DEDIDSInbound *)self delegate];
        v24 = [delegate2 idsInbound_sessionForIdentifier:connection];
        [v24 hasCollected:data isCollecting:v19 identifiers:v21];
      }
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

DEDExtensionIdentifier *__72__DEDIDSInbound_did_sync_session_status_service_account_fromID_context___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[DEDExtensionIdentifier alloc] initWithString:v2];

  return v3;
}

- (void)adopt_files:(id)adopt_files service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  adopt_filesCopy = adopt_files;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "adopt_files", v20, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:adopt_filesCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      data = [v14 objectForKeyedSubscript:@"filesForAdopt"];
      v17 = Log_2();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [DEDIDSInbound adopt_files:service:account:fromID:context:];
      }

      delegate = [(DEDIDSInbound *)self delegate];
      v19 = [delegate idsInbound_sessionForIdentifier:connection];
      [v19 adoptFiles:data withCompletion:0];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)did_adopt_files:(id)did_adopt_files service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  did_adopt_filesCopy = did_adopt_files;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "did_adopt_files", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:did_adopt_filesCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      data = [v14 objectForKeyedSubscript:@"error"];
      delegate = [(DEDIDSInbound *)self delegate];
      v18 = [delegate idsInbound_sessionForIdentifier:connection];
      [v18 didAdoptFilesWithError:data];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)compression_progress:(id)compression_progress service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  compression_progressCopy = compression_progress;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = [DEDIDSConnection unpackProtobuf:compression_progressCopy];
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
      unsignedLongLongValue = [v16 unsignedLongLongValue];

      v18 = [v13 objectForKeyedSubscript:@"totalBytes"];
      unsignedLongLongValue2 = [v18 unsignedLongLongValue];

      delegate = [(DEDIDSInbound *)self delegate];
      v21 = [delegate idsInbound_sessionForIdentifier:v14];
      [v21 compressionProgress:unsignedLongLongValue total:unsignedLongLongValue2];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)upload_progress:(id)upload_progress service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  upload_progressCopy = upload_progress;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = [DEDIDSConnection unpackProtobuf:upload_progressCopy];
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
      longLongValue = [v16 longLongValue];

      v18 = [v13 objectForKeyedSubscript:@"totalBytes"];
      longLongValue2 = [v18 longLongValue];

      delegate = [(DEDIDSInbound *)self delegate];
      v21 = [delegate idsInbound_sessionForIdentifier:v14];
      [v21 uploadProgress:longLongValue total:longLongValue2];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)upload_finished:(id)upload_finished service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  upload_finishedCopy = upload_finished;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = [DEDIDSConnection unpackProtobuf:upload_finishedCopy];
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
      delegate = [(DEDIDSInbound *)self delegate];
      v18 = [delegate idsInbound_sessionForIdentifier:v14];
      [v18 didFinishUploadingWithError:v16];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)commit_session:(id)commit_session service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  commit_sessionCopy = commit_session;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "commit_session", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:commit_sessionCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (!delegate)
      {
LABEL_9:

        goto LABEL_10;
      }

      delegate2 = [(DEDIDSInbound *)self delegate];
      v18 = [delegate2 idsInbound_sessionForIdentifier:connection];
      [v18 commit];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate2 = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate2 forIDSDeviceID:dCopy isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)did_commit_session:(id)did_commit_session service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  did_commit_sessionCopy = did_commit_session;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "did_commit_session", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:did_commit_sessionCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (!delegate)
      {
LABEL_9:

        goto LABEL_10;
      }

      delegate2 = [(DEDIDSInbound *)self delegate];
      v18 = [delegate2 idsInbound_sessionForIdentifier:connection];
      [v18 didCommit];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate2 = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate2 forIDSDeviceID:dCopy isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)cancel_session:(id)cancel_session service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  cancel_sessionCopy = cancel_session;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "cancel_session", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:cancel_sessionCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (!delegate)
      {
LABEL_9:

        goto LABEL_10;
      }

      delegate2 = [(DEDIDSInbound *)self delegate];
      v18 = [delegate2 idsInbound_sessionForIdentifier:connection];
      [v18 cancel];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate2 = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate2 forIDSDeviceID:dCopy isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)did_cancel_session:(id)did_cancel_session service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  did_cancel_sessionCopy = did_cancel_session;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "did_cancel_session", v18, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:did_cancel_sessionCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (!delegate)
      {
LABEL_9:

        goto LABEL_10;
      }

      delegate2 = [(DEDIDSInbound *)self delegate];
      [delegate2 idsInbound_didAbortSessionWithID:connection];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate2 = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate2 forIDSDeviceID:dCopy isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)schedule_notification:(id)schedule_notification service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  schedule_notificationCopy = schedule_notification;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "schedule_notification", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:schedule_notificationCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (!delegate)
      {
LABEL_9:

        goto LABEL_10;
      }

      delegate2 = [(DEDIDSInbound *)self delegate];
      v18 = [delegate2 idsInbound_sessionForIdentifier:connection];
      [v18 scheduleNotification];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate2 = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate2 forIDSDeviceID:dCopy isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)unschedule_notification:(id)unschedule_notification service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  unschedule_notificationCopy = unschedule_notification;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "unschedule_notification", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:unschedule_notificationCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (!delegate)
      {
LABEL_9:

        goto LABEL_10;
      }

      delegate2 = [(DEDIDSInbound *)self delegate];
      v18 = [delegate2 idsInbound_sessionForIdentifier:connection];
      [v18 clearNotification];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate2 = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate2 forIDSDeviceID:dCopy isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)present_notification_on_passthrough_daemon:(id)present_notification_on_passthrough_daemon service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  present_notification_on_passthrough_daemonCopy = present_notification_on_passthrough_daemon;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "present_notification_on_passthrough_daemon", v20, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:present_notification_on_passthrough_daemonCopy];
    v14 = v13;
    if (v13)
    {
      connection2 = [v13 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];
      v17 = [delegate idsInbound_sessionForIdentifier:connection2];
      [v17 idsInbound_presentNotificationOnFilingDevice];

      connection = [(DEDIDSInbound *)self connection];
      v19 = [DEDIDSConnection packPayload:v14];
      [connection sendMessage:28 withData:v19 forIDSDeviceID:dCopy isResponse:1];
    }

    else
    {
      connection2 = [(DEDIDSInbound *)self connection];
      connection = [MEMORY[0x277CBEA90] data];
      [connection2 sendMessage:0 withData:connection forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)did_present_notification_on_passthrough_daemon:(id)did_present_notification_on_passthrough_daemon service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  did_present_notification_on_passthrough_daemonCopy = did_present_notification_on_passthrough_daemon;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "did_present_notification_on_passthrough_daemon", v18, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:did_present_notification_on_passthrough_daemonCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];
      v17 = [delegate idsInbound_sessionForIdentifier:connection];
      [v17 idsInbound_didPresentNotificationOnFilingDevice];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)remove_notification_on_passthrough_daemon:(id)remove_notification_on_passthrough_daemon service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  remove_notification_on_passthrough_daemonCopy = remove_notification_on_passthrough_daemon;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "remove_notification_on_passthrough_daemon", v21, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:remove_notification_on_passthrough_daemonCopy];
    v14 = v13;
    if (v13)
    {
      connection2 = [v13 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (delegate)
      {
        delegate2 = [(DEDIDSInbound *)self delegate];
        v18 = [delegate2 idsInbound_sessionForIdentifier:connection2];
        [v18 idsInbound_clearNotificationOnFilingDevice];
      }

      connection = [(DEDIDSInbound *)self connection];
      v20 = [DEDIDSConnection packPayload:v14];
      [connection sendMessage:29 withData:v20 forIDSDeviceID:dCopy isResponse:1];
    }

    else
    {
      connection2 = [(DEDIDSInbound *)self connection];
      connection = [MEMORY[0x277CBEA90] data];
      [connection2 sendMessage:0 withData:connection forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)did_remove_notification_on_passthrough_daemon:(id)did_remove_notification_on_passthrough_daemon service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  did_remove_notification_on_passthrough_daemonCopy = did_remove_notification_on_passthrough_daemon;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "did_remove_notification_on_passthrough_daemon", v19, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:did_remove_notification_on_passthrough_daemonCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (!delegate)
      {
LABEL_9:

        goto LABEL_10;
      }

      delegate2 = [(DEDIDSInbound *)self delegate];
      v18 = [delegate2 idsInbound_sessionForIdentifier:connection];
      [v18 idsInbound_didClearNotificationOnFilingDevice];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate2 = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate2 forIDSDeviceID:dCopy isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)load_extension_text_data:(id)load_extension_text_data service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  load_extension_text_dataCopy = load_extension_text_data;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "load_extension_text_data", v22, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:load_extension_text_dataCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      data = [v14 objectForKeyedSubscript:@"localization"];
      v17 = [v14 objectForKeyedSubscript:@"extensions"];
      v18 = [v17 ded_flatMapWithBlock:&__block_literal_global_105];
      delegate = [(DEDIDSInbound *)self delegate];

      if (delegate)
      {
        delegate2 = [(DEDIDSInbound *)self delegate];
        v21 = [delegate2 idsInbound_sessionForIdentifier:connection];
        [v21 loadTextDataForExtensions:v18 localization:data completion:0];
      }
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)did_load_extension_text_data:(id)did_load_extension_text_data service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  did_load_extension_text_dataCopy = did_load_extension_text_data;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = Log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "did_load_extension_text_data", v22, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:did_load_extension_text_dataCopy];
    v14 = v13;
    if (v13)
    {
      connection = [v13 objectForKeyedSubscript:@"sessionID"];
      data = [v14 objectForKeyedSubscript:@"localization"];
      v17 = [v14 objectForKeyedSubscript:@"extensions"];
      v18 = [v17 ded_flatMapWithBlock:&__block_literal_global_107];
      delegate = [(DEDIDSInbound *)self delegate];

      if (delegate)
      {
        delegate2 = [(DEDIDSInbound *)self delegate];
        v21 = [delegate2 idsInbound_sessionForIdentifier:connection];
        [v21 didLoadTextDataForExtensions:v18 localization:data];
      }
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  dCopy = d;
  v8 = IDSDelLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:incomingMessage:fromID:context:];
  }
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  dCopy = d;
  v8 = IDSDelLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:incomingData:fromID:context:];
  }
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  protobufCopy = protobuf;
  dCopy = d;
  v10 = IDSDelLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:protobufCopy account:dCopy incomingUnhandledProtobuf:v10 fromID:? context:?];
  }
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l fromID:(id)d context:(id)context
{
  lCopy = l;
  dCopy = d;
  v10 = IDSDelLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:incomingResourceAtURL:fromID:context:];
  }
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  lCopy = l;
  metadataCopy = metadata;
  dCopy = d;
  v13 = IDSDelLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412802;
    v16 = lCopy;
    v17 = 2112;
    v18 = metadataCopy;
    v19 = 2112;
    v20 = dCopy;
    _os_log_debug_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEBUG, "incoming resource [%@] metadata [%@] from [%@]", &v15, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  changedCopy = changed;
  v5 = IDSDelLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:activeAccountsChanged:];
  }
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v13 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v6 = IDSDelLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_248AD7000, v6, OS_LOG_TYPE_DEFAULT, "Devices changed", &v11, 2u);
  }

  delegate = [(DEDIDSInbound *)self delegate];

  if (delegate)
  {
    v8 = [changedCopy ded_mapWithBlock:&__block_literal_global_110];
    delegate2 = [(DEDIDSInbound *)self delegate];
    [delegate2 idsInbound_devicesChanged:v8];
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

- (void)service:(id)service nearbyDevicesChanged:(id)changed
{
  changedCopy = changed;
  v5 = IDSDelLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:nearbyDevicesChanged:];
  }
}

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  changedCopy = changed;
  v5 = IDSDelLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:connectedDevicesChanged:];
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v23 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  identifierCopy = identifier;
  errorCopy = error;
  v13 = DEDIDSConnectionLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    serviceDomain = [serviceCopy serviceDomain];
    v17 = 138543874;
    v18 = identifierCopy;
    v19 = 2114;
    v20 = serviceDomain;
    v21 = 1024;
    v22 = successCopy;
    _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "Did send IDS command with guid: [%{public}@] on service [%{public}@], success? [%i]", &v17, 0x1Cu);
  }

  if (errorCopy)
  {
    v15 = IDSDelLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [DEDIDSInbound service:account:identifier:didSendWithSuccess:error:];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  v24 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v14 = DEDIDSConnectionLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [accountCopy serviceName];
    v18 = 138543874;
    v19 = identifierCopy;
    v20 = 2114;
    v21 = serviceName;
    v22 = 1024;
    v23 = successCopy;
    _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_DEFAULT, "Did send message with guid [%{public}@] on service [%{public}@], success? [%i]", &v18, 0x1Cu);
  }

  if (errorCopy)
  {
    v16 = IDSDelLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [DEDIDSInbound service:account:identifier:didSendWithSuccess:error:];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier sentBytes:(int64_t)bytes totalBytes:(int64_t)totalBytes
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v10 = IDSDelLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134218498;
    bytesCopy = bytes;
    v14 = 2048;
    totalBytesCopy = totalBytes;
    v16 = 2112;
    v17 = identifierCopy;
    _os_log_debug_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEBUG, "sent bytes [%li] total [%li] identifier [%@]", &v12, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  identifierCopy = identifier;
  v7 = IDSDelLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:identifier:hasBeenDeliveredWithContext:];
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier fromID:(id)d hasBeenDeliveredWithContext:(id)context
{
  identifierCopy = identifier;
  dCopy = d;
  v10 = IDSDelLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:identifier:fromID:hasBeenDeliveredWithContext:];
  }
}

- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d
{
  dCopy = d;
  v7 = IDSDelLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:inviteReceivedForSession:fromID:];
  }
}

- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withOptions:(id)options
{
  dCopy = d;
  optionsCopy = options;
  v10 = IDSDelLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:inviteReceivedForSession:fromID:withOptions:];
  }
}

- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withContext:(id)context
{
  dCopy = d;
  v8 = IDSDelLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:inviteReceivedForSession:fromID:withContext:];
  }
}

- (void)service:(id)service account:(id)account receivedGroupSessionParticipantUpdate:(id)update
{
  v5 = IDSDelLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:receivedGroupSessionParticipantUpdate:];
  }
}

- (void)serviceSpaceDidBecomeAvailable:(id)available
{
  availableCopy = available;
  v4 = IDSDelLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound serviceSpaceDidBecomeAvailable:];
  }
}

- (void)serviceAllowedTrafficClassifiersDidReset:(id)reset
{
  resetCopy = reset;
  v4 = IDSDelLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound serviceAllowedTrafficClassifiersDidReset:];
  }
}

- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block
{
  deviceCopy = device;
  blockCopy = block;
  v8 = IDSDelLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:didSwitchActivePairedDevice:acknowledgementBlock:];
  }

  blockCopy[2](blockCopy);
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