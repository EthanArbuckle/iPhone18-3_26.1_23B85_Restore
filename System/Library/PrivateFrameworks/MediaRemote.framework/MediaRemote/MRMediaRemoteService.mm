@interface MRMediaRemoteService
- (BOOL)deviceSupportsUISessions;
- (CGSize)imageDimensionsForArtworkData:(id)a3;
- (id)UIServerEndpoint;
- (id)UIServiceRelayEndpoint;
- (id)applicationUserIdentity;
- (id)createTokenWithInvitationData:(id)a3 equivalentMediaIdentifier:(id)a4 version:(id)a5;
- (id)getActiveSystemEndpointUIDForType:(int64_t)a3;
- (id)groupSessionServerEndpoint;
- (void)beginMusicHandoffSessionWithSource:(id)a3 destination:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)closeApplicationConnection:(id)a3 error:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)createApplicationConnection:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)fetchParticipantsWithRequest:(id)a3 playerPath:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)getDeviceInfoForPlayerPath:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)joinGroupSessionWithToken:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)leaveGroupSessionWithIdentifier:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)mediaSuggestionDeviceUIDWithQueue:(id)a3 completion:(id)a4;
- (void)presentProximityCardWithDeviceName:(id)a3 modelIdentifier:(id)a4 color:(id)a5 url:(id)a6 queue:(id)a7 completion:(id)a8;
- (void)requestGroupSessionWithCompletion:(id)a3;
- (void)resolvePlayerPath:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)sendApplicationConnectionMessage:(id)a3 forConnection:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)sendEvent:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)sendMusicHandoffEvent:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)setUIServiceRelayEndpoint:(id)a3;
- (void)startSystemGroupSession;
- (void)stopSystemGroupSession;
- (void)suspendDisconnectionPauseForConfiguration:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)userIdentityForDSID:(id)a3 queue:(id)a4 completion:(id)a5;
@end

@implementation MRMediaRemoteService

- (void)getDeviceInfoForPlayerPath:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = MRCreateXPCMessage(0x20000000000002CuLL);
  MRAddPlayerPathToXPCMessage(v11, v10);

  v12 = [(MRMediaRemoteService *)self connection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__MRMediaRemoteService_getDeviceInfoForPlayerPath_queue_completion___block_invoke;
  v15[3] = &unk_1E769C4A8;
  v16 = v11;
  v17 = v8;
  v13 = v8;
  v14 = v11;
  xpc_connection_send_message_with_reply(v12, v14, v9, v15);
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

- (id)getActiveSystemEndpointUIDForType:(int64_t)a3
{
  v5 = MRCreateXPCMessage(0x300000000000010uLL);
  xpc_dictionary_set_int64(v5, "MRXPC_ROUTE_OPTIONS_KEY", a3);
  v6 = [(MRMediaRemoteService *)self mrXPCConnection];
  v11 = 0;
  v7 = [v6 sendSyncMessage:v5 error:&v11];
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
  v4 = [(MRMediaRemoteService *)self mrXPCConnection];
  v10 = 0;
  v5 = [v4 sendSyncMessage:v3 error:&v10];
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
  v4 = [(MRMediaRemoteService *)self mrXPCConnection];
  v10 = 0;
  v5 = [v4 sendSyncMessage:v3 error:&v10];
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

- (void)setUIServiceRelayEndpoint:(id)a3
{
  v4 = a3;
  [(MRMediaRemoteService *)self setUiServiceEndpoint:v4];
  xdict = MRCreateXPCMessage(0xB00000000000003uLL);
  v5 = [v4 _endpoint];

  xpc_dictionary_set_value(xdict, "MRXPC_MEDIA_CONTROLS_XPC_ENDPOINT_KEY", v5);
  v6 = [(MRMediaRemoteService *)self connection];
  xpc_connection_send_message(v6, xdict);
}

- (BOOL)deviceSupportsUISessions
{
  v3 = MRCreateXPCMessage(0xB00000000000004uLL);
  v4 = [(MRMediaRemoteService *)self mrXPCConnection];
  v9 = 0;
  v5 = [v4 sendSyncMessage:v3 error:&v9];
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

- (void)createApplicationConnection:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = MRCreateXPCMessage(0x40000000000000FuLL);
  v12 = [MRCreateApplicationConnectionMessage alloc];
  v13 = [v10 context];

  v14 = [(MRCreateApplicationConnectionMessage *)v12 initWithConnectionContext:v13 requestInfo:0];
  MRAddProtobufToXPCMessage(v11, v14);
  v15 = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __69__MRMediaRemoteService_createApplicationConnection_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v18 = v8;
  v16 = v8;
  xpc_connection_send_message_with_reply(v15, v11, v9, handler);
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

- (void)sendApplicationConnectionMessage:(id)a3 forConnection:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = MRCreateXPCMessage(0x400000000000010uLL);
  v15 = [MRApplicationConnectionProtocolMessage alloc];
  v16 = [v12 context];

  v17 = [(MRApplicationConnectionProtocolMessage *)v15 initWithMessage:v13 connectionContext:v16];
  MRAddProtobufToXPCMessage(v14, v17);
  v18 = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __88__MRMediaRemoteService_sendApplicationConnectionMessage_forConnection_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v21 = v10;
  v19 = v10;
  xpc_connection_send_message_with_reply(v18, v14, v11, handler);
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

- (void)closeApplicationConnection:(id)a3 error:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = MRCreateXPCMessage(0x400000000000011uLL);
  v15 = [MRInvalidateApplicationConnectionMessage alloc];
  v16 = [v13 context];

  v17 = [(MRInvalidateApplicationConnectionMessage *)v15 initWithConnectionContext:v16 error:v12];
  MRAddProtobufToXPCMessage(v14, v17);
  v18 = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __74__MRMediaRemoteService_closeApplicationConnection_error_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v21 = v10;
  v19 = v10;
  xpc_connection_send_message_with_reply(v18, v14, v11, handler);
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

- (void)beginMusicHandoffSessionWithSource:(id)a3 destination:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = MRCreateXPCMessage(0x20000000000003EuLL);
  v15 = [[MRMusicHandoffSession alloc] initWithIdentifier:&stru_1F1513E38 sourcePlayerPath:v13 destinationPlayerPath:v12];

  v16 = [(MRMusicHandoffSession *)v15 protobufData];
  MRAddDataToXPCMessage(v14, v16, "MRXPC_MUSIC_HANDOFF_SESSION_KEY");

  v17 = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __88__MRMediaRemoteService_beginMusicHandoffSessionWithSource_destination_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v20 = v10;
  v18 = v10;
  xpc_connection_send_message_with_reply(v17, v14, v11, handler);
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

- (void)sendMusicHandoffEvent:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = MRCreateXPCMessage(0x20000000000003FuLL);
  v12 = [v10 protobufData];

  MRAddDataToXPCMessage(v11, v12, "MRXPC_MUSIC_HANDOFF_EVENT_KEY");
  v13 = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __63__MRMediaRemoteService_sendMusicHandoffEvent_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v16 = v8;
  v14 = v8;
  xpc_connection_send_message_with_reply(v13, v11, v9, handler);
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

- (void)mediaSuggestionDeviceUIDWithQueue:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = MRCreateXPCMessage(0x200000000000040uLL);
  v9 = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __69__MRMediaRemoteService_mediaSuggestionDeviceUIDWithQueue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v12 = v6;
  v10 = v6;
  xpc_connection_send_message_with_reply(v9, v8, v7, handler);
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
  v4 = [(MRMediaRemoteService *)self mrXPCConnection];
  v10 = 0;
  v5 = [v4 sendSyncMessage:v3 error:&v10];
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

- (void)joinGroupSessionWithToken:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = MRCreateXPCMessage(0xC00000000000002uLL);
  v12 = [v10 data];

  MRAddDataToXPCMessage(v11, v12, "MRXPC_GROUP_SESSION_TOKEN_KEY");
  v13 = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __67__MRMediaRemoteService_joinGroupSessionWithToken_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v16 = v8;
  v14 = v8;
  xpc_connection_send_message_with_reply(v13, v11, v9, handler);
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

- (void)leaveGroupSessionWithIdentifier:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = MRCreateXPCMessage(0xC00000000000003uLL);
  MRAddStringToXPCMessage(v11, v10, "MRXPC_GROUP_SESSION_IDENTIFIER_KEY");

  v12 = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __73__MRMediaRemoteService_leaveGroupSessionWithIdentifier_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v15 = v8;
  v13 = v8;
  xpc_connection_send_message_with_reply(v12, v11, v9, handler);
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

- (void)userIdentityForDSID:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = MRCreateXPCMessage(0xC00000000000007uLL);
  MRAddStringToXPCMessage(v11, v10, "MRXPC_DSID_KEY");

  v12 = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __61__MRMediaRemoteService_userIdentityForDSID_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v15 = v8;
  v13 = v8;
  xpc_connection_send_message_with_reply(v12, v11, v9, handler);
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

- (void)presentProximityCardWithDeviceName:(id)a3 modelIdentifier:(id)a4 color:(id)a5 url:(id)a6 queue:(id)a7 completion:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = MRCreateXPCMessage(0xC00000000000008uLL);
  MRAddStringToXPCMessage(v20, v19, "deviceName");

  MRAddStringToXPCMessage(v20, v18, "modelIdentifier");
  MRAddStringToXPCMessage(v20, v17, "color");

  MRAddStringToXPCMessage(v20, v16, "url");
  v21 = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __102__MRMediaRemoteService_presentProximityCardWithDeviceName_modelIdentifier_color_url_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v24 = v14;
  v22 = v14;
  xpc_connection_send_message_with_reply(v21, v20, v15, handler);
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

- (void)requestGroupSessionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MRCreateXPCMessage(0xC00000000000009uLL);
  v6 = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __58__MRMediaRemoteService_requestGroupSessionWithCompletion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v9 = v4;
  v7 = v4;
  xpc_connection_send_message_with_reply(v6, v5, MEMORY[0x1E69E96A0], handler);
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
  v4 = [(MRMediaRemoteService *)self mrXPCConnection];
  v11 = 0;
  v5 = [v4 sendSyncMessage:v3 error:&v11];
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

- (void)fetchParticipantsWithRequest:(id)a3 playerPath:(id)a4 queue:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = MRCreateXPCMessage(0x20000000000003DuLL);
  MRAddPlayerPathToXPCMessage(v12, v11);

  v13 = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __81__MRMediaRemoteService_fetchParticipantsWithRequest_playerPath_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v16 = v9;
  v14 = v9;
  xpc_connection_send_message_with_reply(v13, v12, v10, handler);
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

- (id)createTokenWithInvitationData:(id)a3 equivalentMediaIdentifier:(id)a4 version:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = MRCreateXPCMessage(0xC00000000000006uLL);
  v12 = [v10 bytes];
  v13 = [v10 length];

  xpc_dictionary_set_data(v11, "MRXPC_GROUP_SESSION_INVITATION_DATA_KEY", v12, v13);
  if (v8)
  {
    xpc_dictionary_set_string(v11, "MRXPC_GROUP_SESSION_EQUIVALENT_MEDIA_ID_KEY", [v8 cStringUsingEncoding:4]);
  }

  if (v9)
  {
    xpc_dictionary_set_int64(v11, "MRXPC_GROUP_SESSION_VERSION_KEY", [v9 intValue]);
  }

  v14 = [(MRMediaRemoteService *)self mrXPCConnection];
  v20 = 0;
  v15 = [v14 sendSyncMessage:v11 error:&v20];
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

- (void)sendEvent:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = MRCreateXPCMessage(0xC00000000000004uLL);
  MRAddPropertyListToXPCMessage(v11, v10, "MRXPC_GROUP_SESSION_EVENT_KEY");

  v12 = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __51__MRMediaRemoteService_sendEvent_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v15 = v8;
  v13 = v8;
  xpc_connection_send_message_with_reply(v12, v11, v9, handler);
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

- (CGSize)imageDimensionsForArtworkData:(id)a3
{
  v4 = a3;
  v5 = MRCreateXPCMessage(0x20000000000003CuLL);
  MRAddDataToXPCMessage(v5, v4, "MRXPC_ARTWORK_DATA_KEY");

  v6 = [(MRMediaRemoteService *)self mrXPCConnection];
  v13 = 0;
  v7 = [v6 sendSyncMessage:v5 error:&v13];
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

- (void)resolvePlayerPath:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = MRCreateXPCMessage(0x200000000000018uLL);
  MRAddPlayerPathToXPCMessage(v11, v10);

  v12 = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __59__MRMediaRemoteService_resolvePlayerPath_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v15 = v8;
  v13 = v8;
  xpc_connection_send_message_with_reply(v12, v11, v9, handler);
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

- (void)suspendDisconnectionPauseForConfiguration:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 XPCMessage];
  v11 = [(MRMediaRemoteService *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __83__MRMediaRemoteService_suspendDisconnectionPauseForConfiguration_queue_completion___block_invoke;
  handler[3] = &unk_1E769C4D0;
  v14 = v8;
  v12 = v8;
  xpc_connection_send_message_with_reply(v11, v10, v9, handler);
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
  v3 = [(MRMediaRemoteService *)self connection];
  xpc_connection_send_message(v3, message);
}

- (void)stopSystemGroupSession
{
  message = MRCreateXPCMessage(0x60000000000000CuLL);
  v3 = [(MRMediaRemoteService *)self connection];
  xpc_connection_send_message(v3, message);
}

@end