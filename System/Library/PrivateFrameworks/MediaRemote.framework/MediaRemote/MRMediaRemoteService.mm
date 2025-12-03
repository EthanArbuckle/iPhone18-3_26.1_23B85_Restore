@interface MRMediaRemoteService
- (BOOL)deviceSupportsUISessions;
- (CGSize)imageDimensionsForArtworkData:(id)data;
- (id)UIServerEndpoint;
- (id)UIServiceRelayEndpoint;
- (id)applicationUserIdentity;
- (id)createTokenWithInvitationData:(id)data equivalentMediaIdentifier:(id)identifier version:(id)version;
- (id)getActiveSystemEndpointUIDForType:(int64_t)type;
- (id)groupSessionServerEndpoint;
- (void)beginMusicHandoffSessionWithSource:(id)source destination:(id)destination queue:(id)queue completion:(id)completion;
- (void)closeApplicationConnection:(id)connection error:(id)error queue:(id)queue completion:(id)completion;
- (void)createApplicationConnection:(id)connection queue:(id)queue completion:(id)completion;
- (void)fetchParticipantsWithRequest:(id)request playerPath:(id)path queue:(id)queue completion:(id)completion;
- (void)getDeviceInfoForPlayerPath:(id)path queue:(id)queue completion:(id)completion;
- (void)joinGroupSessionWithToken:(id)token queue:(id)queue completion:(id)completion;
- (void)leaveGroupSessionWithIdentifier:(id)identifier queue:(id)queue completion:(id)completion;
- (void)mediaSuggestionDeviceUIDWithQueue:(id)queue completion:(id)completion;
- (void)presentProximityCardWithDeviceName:(id)name modelIdentifier:(id)identifier color:(id)color url:(id)url queue:(id)queue completion:(id)completion;
- (void)requestGroupSessionWithCompletion:(id)completion;
- (void)resolvePlayerPath:(id)path queue:(id)queue completion:(id)completion;
- (void)sendApplicationConnectionMessage:(id)message forConnection:(id)connection queue:(id)queue completion:(id)completion;
- (void)sendEvent:(id)event queue:(id)queue completion:(id)completion;
- (void)sendMusicHandoffEvent:(id)event queue:(id)queue completion:(id)completion;
- (void)setUIServiceRelayEndpoint:(id)endpoint;
- (void)startSystemGroupSession;
- (void)stopSystemGroupSession;
- (void)suspendDisconnectionPauseForConfiguration:(id)configuration queue:(id)queue completion:(id)completion;
- (void)userIdentityForDSID:(id)d queue:(id)queue completion:(id)completion;
@end

@implementation MRMediaRemoteService

- (void)getDeviceInfoForPlayerPath:(id)path queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  pathCopy = path;
  v11 = MRCreateXPCMessage(0x20000000000002CuLL);
  MRAddPlayerPathToXPCMessage(v11, pathCopy);

  connection = [(MRMediaRemoteService *)self connection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__MRMediaRemoteService_getDeviceInfoForPlayerPath_queue_completion___block_invoke;
  v15[3] = &unk_1E769C4A8;
  v16 = v11;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = v11;
  xpc_connection_send_message_with_reply(connection, v14, queueCopy, v15);
}

void __68__MRMediaRemoteService_getDeviceInfoForPlayerPath_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
    v6 = 0;
  }

  else
  {
    v6 = MRCreateDeviceInfoFromXPCMessage(v3);
    Error = MRCreateClientErrorFromXPCMessage(*(a1 + 32));
    if ([Error code] == 3)
    {
      if (MSVDeviceOSIsInternalInstall())
      {
        v8 = _MRLogForCategory(0);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          __68__MRMediaRemoteService_getDeviceInfoForPlayerPath_queue_completion___block_invoke_cold_1();
        }
      }

      Error = 0;
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v6, Error);
  }
}

- (id)getActiveSystemEndpointUIDForType:(int64_t)type
{
  v5 = MRCreateXPCMessage(0x300000000000010uLL);
  xpc_dictionary_set_int64(v5, "MRXPC_ROUTE_OPTIONS_KEY", type);
  mrXPCConnection = [(MRMediaRemoteService *)self mrXPCConnection];
  v11 = 0;
  v7 = [mrXPCConnection sendSyncMessage:v5 error:&v11];
  v8 = v11;

  if (v8)
  {
    _MRServiceLogReplyError();
    v9 = 0;
  }

  else
  {
    v9 = MRCreateStringFromXPCMessage(v7, "MRXPC_ROUTE_UID_KEY");
  }

  return v9;
}

- (id)UIServerEndpoint
{
  v3 = MRCreateXPCMessage(0xB00000000000001uLL);
  mrXPCConnection = [(MRMediaRemoteService *)self mrXPCConnection];
  v10 = 0;
  v5 = [mrXPCConnection sendSyncMessage:v3 error:&v10];
  v6 = v10;

  if (v6)
  {
    _MRServiceLogReplyError();
    v7 = 0;
  }

  else
  {
    v8 = xpc_dictionary_get_value(v5, "MRXPC_MEDIA_CONTROLS_XPC_ENDPOINT_KEY");
    if (v8)
    {
      v7 = objc_alloc_init(MEMORY[0x1E696B0E0]);
      [v7 _setEndpoint:v8];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)UIServiceRelayEndpoint
{
  v3 = MRCreateXPCMessage(0xB00000000000002uLL);
  mrXPCConnection = [(MRMediaRemoteService *)self mrXPCConnection];
  v10 = 0;
  v5 = [mrXPCConnection sendSyncMessage:v3 error:&v10];
  v6 = v10;

  if (v6)
  {
    _MRServiceLogReplyError();
    v7 = 0;
  }

  else
  {
    v8 = xpc_dictionary_get_value(v5, "MRXPC_MEDIA_CONTROLS_XPC_ENDPOINT_KEY");
    if (v8)
    {
      v7 = objc_alloc_init(MEMORY[0x1E696B0E0]);
      [v7 _setEndpoint:v8];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)setUIServiceRelayEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  [(MRMediaRemoteService *)self setUiServiceEndpoint:endpointCopy];
  xdict = MRCreateXPCMessage(0xB00000000000003uLL);
  _endpoint = [endpointCopy _endpoint];

  xpc_dictionary_set_value(xdict, "MRXPC_MEDIA_CONTROLS_XPC_ENDPOINT_KEY", _endpoint);
  connection = [(MRMediaRemoteService *)self connection];
  xpc_connection_send_message(connection, xdict);
}

- (BOOL)deviceSupportsUISessions
{
  v3 = MRCreateXPCMessage(0xB00000000000004uLL);
  mrXPCConnection = [(MRMediaRemoteService *)self mrXPCConnection];
  v9 = 0;
  v5 = [mrXPCConnection sendSyncMessage:v3 error:&v9];
  v6 = v9;

  if (v6)
  {
    _MRServiceLogReplyError();
    v7 = 0;
  }

  else
  {
    v7 = xpc_dictionary_get_BOOL(v5, "MRXPC_BOOL_RESULT_KEY");
  }

  return v7;
}

- (void)createApplicationConnection:(id)connection queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  connectionCopy = connection;
  v11 = MRCreateXPCMessage(0x40000000000000FuLL);
  v12 = [MRCreateApplicationConnectionMessage alloc];
  context = [connectionCopy context];

  v14 = [(MRCreateApplicationConnectionMessage *)v12 initWithConnectionContext:context requestInfo:0];
  MRAddProtobufToXPCMessage(v11, v14);
  connection = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __69__MRMediaRemoteService_createApplicationConnection_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v18 = completionCopy;
  v16 = completionCopy;
  xpc_connection_send_message_with_reply(connection, v11, queueCopy, handler);
}

void __69__MRMediaRemoteService_createApplicationConnection_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v8 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
  }

  else
  {
    Error = MRCreateClientErrorFromXPCMessage(v3);
  }

  v6 = Error;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

- (void)sendApplicationConnectionMessage:(id)message forConnection:(id)connection queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  connectionCopy = connection;
  messageCopy = message;
  v14 = MRCreateXPCMessage(0x400000000000010uLL);
  v15 = [MRApplicationConnectionProtocolMessage alloc];
  context = [connectionCopy context];

  v17 = [(MRApplicationConnectionProtocolMessage *)v15 initWithMessage:messageCopy connectionContext:context];
  MRAddProtobufToXPCMessage(v14, v17);
  connection = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __88__MRMediaRemoteService_sendApplicationConnectionMessage_forConnection_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v21 = completionCopy;
  v19 = completionCopy;
  xpc_connection_send_message_with_reply(connection, v14, queueCopy, handler);
}

void __88__MRMediaRemoteService_sendApplicationConnectionMessage_forConnection_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v8 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
  }

  else
  {
    Error = MRCreateClientErrorFromXPCMessage(v3);
  }

  v6 = Error;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

- (void)closeApplicationConnection:(id)connection error:(id)error queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  errorCopy = error;
  connectionCopy = connection;
  v14 = MRCreateXPCMessage(0x400000000000011uLL);
  v15 = [MRInvalidateApplicationConnectionMessage alloc];
  context = [connectionCopy context];

  v17 = [(MRInvalidateApplicationConnectionMessage *)v15 initWithConnectionContext:context error:errorCopy];
  MRAddProtobufToXPCMessage(v14, v17);
  connection = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __74__MRMediaRemoteService_closeApplicationConnection_error_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v21 = completionCopy;
  v19 = completionCopy;
  xpc_connection_send_message_with_reply(connection, v14, queueCopy, handler);
}

void __74__MRMediaRemoteService_closeApplicationConnection_error_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v8 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
  }

  else
  {
    Error = MRCreateClientErrorFromXPCMessage(v3);
  }

  v6 = Error;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

- (void)beginMusicHandoffSessionWithSource:(id)source destination:(id)destination queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  destinationCopy = destination;
  sourceCopy = source;
  v14 = MRCreateXPCMessage(0x20000000000003EuLL);
  v15 = [[MRMusicHandoffSession alloc] initWithIdentifier:&stru_1F1513E38 sourcePlayerPath:sourceCopy destinationPlayerPath:destinationCopy];

  protobufData = [(MRMusicHandoffSession *)v15 protobufData];
  MRAddDataToXPCMessage(v14, protobufData, "MRXPC_MUSIC_HANDOFF_SESSION_KEY");

  connection = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __88__MRMediaRemoteService_beginMusicHandoffSessionWithSource_destination_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v20 = completionCopy;
  v18 = completionCopy;
  xpc_connection_send_message_with_reply(connection, v14, queueCopy, handler);
}

void __88__MRMediaRemoteService_beginMusicHandoffSessionWithSource_destination_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v8 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
  }

  else
  {
    Error = MRCreateClientErrorFromXPCMessage(v3);
  }

  v6 = Error;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

- (void)sendMusicHandoffEvent:(id)event queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  eventCopy = event;
  v11 = MRCreateXPCMessage(0x20000000000003FuLL);
  protobufData = [eventCopy protobufData];

  MRAddDataToXPCMessage(v11, protobufData, "MRXPC_MUSIC_HANDOFF_EVENT_KEY");
  connection = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __63__MRMediaRemoteService_sendMusicHandoffEvent_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v16 = completionCopy;
  v14 = completionCopy;
  xpc_connection_send_message_with_reply(connection, v11, queueCopy, handler);
}

void __63__MRMediaRemoteService_sendMusicHandoffEvent_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v8 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
  }

  else
  {
    Error = MRCreateClientErrorFromXPCMessage(v3);
  }

  v6 = Error;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

- (void)mediaSuggestionDeviceUIDWithQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  v8 = MRCreateXPCMessage(0x200000000000040uLL);
  connection = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __69__MRMediaRemoteService_mediaSuggestionDeviceUIDWithQueue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v12 = completionCopy;
  v10 = completionCopy;
  xpc_connection_send_message_with_reply(connection, v8, queueCopy, handler);
}

void __69__MRMediaRemoteService_mediaSuggestionDeviceUIDWithQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v8 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
    v5 = 0;
  }

  else
  {
    v5 = MRCreateStringFromXPCMessage(v3, "MRXPC_ROUTE_UID_KEY");
    Error = MRCreateClientErrorFromXPCMessage(v8);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, Error);
  }
}

- (id)groupSessionServerEndpoint
{
  v3 = MRCreateXPCMessage(0xC00000000000001uLL);
  mrXPCConnection = [(MRMediaRemoteService *)self mrXPCConnection];
  v10 = 0;
  v5 = [mrXPCConnection sendSyncMessage:v3 error:&v10];
  v6 = v10;

  if (v6)
  {
    _MRServiceLogReplyError();
    v7 = 0;
  }

  else
  {
    v8 = xpc_dictionary_get_value(v5, "MRXPC_MEDIA_CONTROLS_XPC_ENDPOINT_KEY");
    if (v8)
    {
      v7 = objc_alloc_init(MEMORY[0x1E696B0E0]);
      [v7 _setEndpoint:v8];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)joinGroupSessionWithToken:(id)token queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  tokenCopy = token;
  v11 = MRCreateXPCMessage(0xC00000000000002uLL);
  data = [tokenCopy data];

  MRAddDataToXPCMessage(v11, data, "MRXPC_GROUP_SESSION_TOKEN_KEY");
  connection = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __67__MRMediaRemoteService_joinGroupSessionWithToken_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v16 = completionCopy;
  v14 = completionCopy;
  xpc_connection_send_message_with_reply(connection, v11, queueCopy, handler);
}

void __67__MRMediaRemoteService_joinGroupSessionWithToken_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v8 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
    v6 = 0;
  }

  else
  {
    Error = MRCreateClientErrorFromXPCMessage(v3);
    v6 = MRCreateStringFromXPCMessage(v8, "MRXPC_GROUP_SESSION_IDENTIFIER_KEY");
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6, Error);
  }
}

- (void)leaveGroupSessionWithIdentifier:(id)identifier queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  identifierCopy = identifier;
  v11 = MRCreateXPCMessage(0xC00000000000003uLL);
  MRAddStringToXPCMessage(v11, identifierCopy, "MRXPC_GROUP_SESSION_IDENTIFIER_KEY");

  connection = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __73__MRMediaRemoteService_leaveGroupSessionWithIdentifier_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v15 = completionCopy;
  v13 = completionCopy;
  xpc_connection_send_message_with_reply(connection, v11, queueCopy, handler);
}

void __73__MRMediaRemoteService_leaveGroupSessionWithIdentifier_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v8 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
  }

  else
  {
    Error = MRCreateClientErrorFromXPCMessage(v3);
  }

  v6 = Error;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

- (void)userIdentityForDSID:(id)d queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  dCopy = d;
  v11 = MRCreateXPCMessage(0xC00000000000007uLL);
  MRAddStringToXPCMessage(v11, dCopy, "MRXPC_DSID_KEY");

  connection = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __61__MRMediaRemoteService_userIdentityForDSID_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v15 = completionCopy;
  v13 = completionCopy;
  xpc_connection_send_message_with_reply(connection, v11, queueCopy, handler);
}

void __61__MRMediaRemoteService_userIdentityForDSID_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v10 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
LABEL_8:
    v6 = Error;
    v7 = 0;
    goto LABEL_9;
  }

  Error = MRCreateClientErrorFromXPCMessage(v3);
  if (Error)
  {
    goto LABEL_8;
  }

  v9 = MRCreateDataFromXPCMessage(v10, "MRXPC_USER_IDENTITY_KEY");
  if (v9)
  {
    v7 = [[MRUserIdentity alloc] initWithProtobufData:v9];
    v6 = 0;
  }

  else
  {
    v6 = MRMediaRemoteCreateError(1);
    v7 = 0;
  }

LABEL_9:
  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v7, v6);
  }
}

- (void)presentProximityCardWithDeviceName:(id)name modelIdentifier:(id)identifier color:(id)color url:(id)url queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  urlCopy = url;
  colorCopy = color;
  identifierCopy = identifier;
  nameCopy = name;
  v20 = MRCreateXPCMessage(0xC00000000000008uLL);
  MRAddStringToXPCMessage(v20, nameCopy, "deviceName");

  MRAddStringToXPCMessage(v20, identifierCopy, "modelIdentifier");
  MRAddStringToXPCMessage(v20, colorCopy, "color");

  MRAddStringToXPCMessage(v20, urlCopy, "url");
  connection = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __102__MRMediaRemoteService_presentProximityCardWithDeviceName_modelIdentifier_color_url_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v24 = completionCopy;
  v22 = completionCopy;
  xpc_connection_send_message_with_reply(connection, v20, queueCopy, handler);
}

void __102__MRMediaRemoteService_presentProximityCardWithDeviceName_modelIdentifier_color_url_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v7 = v3;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = MRCreateClientErrorFromXPCMessage(v3);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

- (void)requestGroupSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MRCreateXPCMessage(0xC00000000000009uLL);
  connection = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __58__MRMediaRemoteService_requestGroupSessionWithCompletion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v9 = completionCopy;
  v7 = completionCopy;
  xpc_connection_send_message_with_reply(connection, v5, MEMORY[0x1E69E96A0], handler);
}

void __58__MRMediaRemoteService_requestGroupSessionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v8 = v3;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = MRCreateStringFromXPCMessage(v3, "MRXPC_GROUP_SESSION_IDENTIFIER_KEY");
    v6 = MRCreateClientErrorFromXPCMessage(v8);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

- (id)applicationUserIdentity
{
  v3 = MRCreateXPCMessage(0xC00000000000005uLL);
  mrXPCConnection = [(MRMediaRemoteService *)self mrXPCConnection];
  v11 = 0;
  v5 = [mrXPCConnection sendSyncMessage:v3 error:&v11];
  v6 = v11;

  if (v6)
  {
    _MRServiceLogReplyError();
LABEL_3:
    v7 = 0;
    goto LABEL_6;
  }

  v8 = MRCreateDataFromXPCMessage(v5, "MRXPC_USER_IDENTITY_KEY");
  if (!v8)
  {
    goto LABEL_3;
  }

  v9 = v8;
  v7 = [[MRUserIdentity alloc] initWithProtobufData:v8];

LABEL_6:

  return v7;
}

- (void)fetchParticipantsWithRequest:(id)request playerPath:(id)path queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  pathCopy = path;
  v12 = MRCreateXPCMessage(0x20000000000003DuLL);
  MRAddPlayerPathToXPCMessage(v12, pathCopy);

  connection = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __81__MRMediaRemoteService_fetchParticipantsWithRequest_playerPath_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v16 = completionCopy;
  v14 = completionCopy;
  xpc_connection_send_message_with_reply(connection, v12, queueCopy, handler);
}

void __81__MRMediaRemoteService_fetchParticipantsWithRequest_playerPath_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v11 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
LABEL_8:
    v6 = Error;
    v7 = 0;
    goto LABEL_9;
  }

  Error = MRCreateClientErrorFromXPCMessage(v3);
  if (Error)
  {
    goto LABEL_8;
  }

  v9 = MRCreateDataFromXPCMessage(v11, "MRXPC_PLAYBACKQUEUE_PARTICIPANTS");
  if (v9)
  {
    v10 = [MEMORY[0x1E696AE40] propertyListWithData:v9 options:0 format:0 error:0];
    v7 = [v10 msv_compactMap:&__block_literal_global_22];

    v6 = 0;
  }

  else
  {
    v6 = MRMediaRemoteCreateError(1);
    v7 = 0;
  }

LABEL_9:
  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v7, v6);
  }
}

MRPlaybackQueueParticipant *__81__MRMediaRemoteService_fetchParticipantsWithRequest_playerPath_queue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRPlaybackQueueParticipant alloc] initWithProtobufData:v2];

  return v3;
}

- (id)createTokenWithInvitationData:(id)data equivalentMediaIdentifier:(id)identifier version:(id)version
{
  identifierCopy = identifier;
  versionCopy = version;
  dataCopy = data;
  v11 = MRCreateXPCMessage(0xC00000000000006uLL);
  bytes = [dataCopy bytes];
  v13 = [dataCopy length];

  xpc_dictionary_set_data(v11, "MRXPC_GROUP_SESSION_INVITATION_DATA_KEY", bytes, v13);
  if (identifierCopy)
  {
    xpc_dictionary_set_string(v11, "MRXPC_GROUP_SESSION_EQUIVALENT_MEDIA_ID_KEY", [identifierCopy cStringUsingEncoding:4]);
  }

  if (versionCopy)
  {
    xpc_dictionary_set_int64(v11, "MRXPC_GROUP_SESSION_VERSION_KEY", [versionCopy intValue]);
  }

  mrXPCConnection = [(MRMediaRemoteService *)self mrXPCConnection];
  v20 = 0;
  v15 = [mrXPCConnection sendSyncMessage:v11 error:&v20];
  v16 = v20;

  if (v16)
  {
    _MRServiceLogReplyError();
    v17 = 0;
  }

  else
  {
    v18 = MRCreateDataFromXPCMessage(v15, "MRXPC_GROUP_SESSION_TOKEN_KEY");
    v17 = [[MRGroupSessionToken alloc] initWithData:v18];
  }

  return v17;
}

- (void)sendEvent:(id)event queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  eventCopy = event;
  v11 = MRCreateXPCMessage(0xC00000000000004uLL);
  MRAddPropertyListToXPCMessage(v11, eventCopy, "MRXPC_GROUP_SESSION_EVENT_KEY");

  connection = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __51__MRMediaRemoteService_sendEvent_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v15 = completionCopy;
  v13 = completionCopy;
  xpc_connection_send_message_with_reply(connection, v11, queueCopy, handler);
}

void __51__MRMediaRemoteService_sendEvent_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v8 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
  }

  else
  {
    Error = MRCreateClientErrorFromXPCMessage(v3);
  }

  v6 = Error;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

- (CGSize)imageDimensionsForArtworkData:(id)data
{
  dataCopy = data;
  v5 = MRCreateXPCMessage(0x20000000000003CuLL);
  MRAddDataToXPCMessage(v5, dataCopy, "MRXPC_ARTWORK_DATA_KEY");

  mrXPCConnection = [(MRMediaRemoteService *)self mrXPCConnection];
  v13 = 0;
  v7 = [mrXPCConnection sendSyncMessage:v5 error:&v13];
  v8 = v13;

  if (v8)
  {
    _MRServiceLogReplyError();
    v9 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v9 = xpc_dictionary_get_double(v7, "MRXPC_ARTWORK_DIMENSION_WIDTH_KEY");
    v10 = xpc_dictionary_get_double(v7, "MRXPC_ARTWORK_DIMENSION_HEIGHT_KEY");
  }

  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)resolvePlayerPath:(id)path queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  pathCopy = path;
  v11 = MRCreateXPCMessage(0x200000000000018uLL);
  MRAddPlayerPathToXPCMessage(v11, pathCopy);

  connection = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __59__MRMediaRemoteService_resolvePlayerPath_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v15 = completionCopy;
  v13 = completionCopy;
  xpc_connection_send_message_with_reply(connection, v11, queueCopy, handler);
}

void __59__MRMediaRemoteService_resolvePlayerPath_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v8 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
    v5 = 0;
  }

  else
  {
    v5 = MRCreatePlayerPathFromXPCMessage(v3);
    Error = MRCreateClientErrorFromXPCMessage(v8);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, Error);
  }

  kdebug_trace();
}

- (void)suspendDisconnectionPauseForConfiguration:(id)configuration queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  xPCMessage = [configuration XPCMessage];
  connection = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __83__MRMediaRemoteService_suspendDisconnectionPauseForConfiguration_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v14 = completionCopy;
  v12 = completionCopy;
  xpc_connection_send_message_with_reply(connection, xPCMessage, queueCopy, handler);
}

void __83__MRMediaRemoteService_suspendDisconnectionPauseForConfiguration_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v8 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
  }

  else
  {
    Error = MRCreateClientErrorFromXPCMessage(v3);
  }

  v6 = Error;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

- (void)startSystemGroupSession
{
  message = MRCreateXPCMessage(0x60000000000000BuLL);
  connection = [(MRMediaRemoteService *)self connection];
  xpc_connection_send_message(connection, message);
}

- (void)stopSystemGroupSession
{
  message = MRCreateXPCMessage(0x60000000000000CuLL);
  connection = [(MRMediaRemoteService *)self connection];
  xpc_connection_send_message(connection, message);
}

@end