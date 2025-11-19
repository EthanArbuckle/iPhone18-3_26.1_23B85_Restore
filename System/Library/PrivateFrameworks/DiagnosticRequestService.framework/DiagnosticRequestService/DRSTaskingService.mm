@interface DRSTaskingService
+ (BOOL)serviceIsEnabled;
+ (id)sharedInstance;
- (BOOL)activateService;
- (DRSTaskingService)init;
- (void)_applyCloudChannelConfig:(id)a3 dueToMessage:(id)a4 state:(id)a5 messageType:(unint64_t)a6;
- (void)_checkForDefaultSubscriptionUpdate;
- (void)_configureInvalidationXPCActivity;
- (void)_handleBroadcastRequestMessaage:(id)a3 state:(id)a4;
- (void)_handleClearTaskingStateMessage:(id)a3 state:(id)a4;
- (void)_handleCloudChannelConfigGet:(id)a3 state:(id)a4;
- (void)_handleCloudChannelConfigReset:(id)a3 state:(id)a4;
- (void)_handleCloudChannelConfigSet:(id)a3 state:(id)a4;
- (void)_handleConfigCompletionMessage:(id)a3 state:(id)a4;
- (void)_handleConfigStateMessage:(id)a3 state:(id)a4;
- (void)_handleInvalidMessage:(id)a3 state:(id)a4;
- (void)_handleJSONTaskingSystemMessage:(id)a3 state:(id)a4 transaction:(id)a5;
- (void)_sendClearStateReplyForMessage:(id)a3 rejectionReason:(const char *)a4;
- (void)_sendConfigStateReplyForMessage:(id)a3 rejectionReason:(const char *)a4 state:(unsigned __int8)a5 completionType:(unint64_t)a6;
- (void)_sendReplyForMessage:(id)a3 replyType:(unint64_t)a4 rejectionReason:(const char *)a5;
- (void)_waitForDeviceUnlockAndInitializeServiceState;
- (void)deactivateService;
- (void)dealloc;
- (void)handleRequest:(id)a3 state:(id)a4;
@end

@implementation DRSTaskingService

+ (BOOL)serviceIsEnabled
{
  if (serviceIsEnabled_onceToken != -1)
  {
    +[DRSTaskingService serviceIsEnabled];
  }

  return serviceIsEnabled_isEnabled;
}

void __37__DRSTaskingService_serviceIsEnabled__block_invoke()
{
  v0 = +[DRSSystemProfile sharedInstance];
  v1 = [v0 isTaskingEnabled];

  if (v1)
  {
    serviceIsEnabled_isEnabled = 0;
    v2 = DPLogHandle_ServiceTasking();
    if (os_signpost_enabled(v2))
    {
      *v3 = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingServiceDisabled", "Tasking Service is disabled due to being Carrier", v3, 2u);
    }
  }

  else
  {
    serviceIsEnabled_isEnabled = 1;
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[DRSTaskingService sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __35__DRSTaskingService_sharedInstance__block_invoke()
{
  DRSRegisterForDeviceUnlockNotification();
  v0 = objc_alloc_init(DRSTaskingService);
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;
}

- (void)dealloc
{
  [(DRSTaskingService *)self deactivateService];
  v3.receiver = self;
  v3.super_class = DRSTaskingService;
  [(DRSTaskingService *)&v3 dealloc];
}

- (void)deactivateService
{
  if ([(DRSTaskingService *)self state]== 2)
  {
    v3 = DPLogHandle_ServiceLifecycle();
    if (os_signpost_enabled(v3))
    {
      v9 = 0;
      v4 = "RedundantTaskingServiceDeactivation";
      v5 = "Tried to deactivate already deactivated service";
      v6 = &v9;
LABEL_6:
      _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v4, v5, v6, 2u);
    }
  }

  else
  {
    self->_state = 2;
    v7 = [(DRSTaskingService *)self serviceConnection];
    xpc_connection_cancel(v7);

    v3 = DPLogHandle_ServiceLifecycle();
    if (os_signpost_enabled(v3))
    {
      v8 = 0;
      v4 = "TaskingServiceDeactivated";
      v5 = &unk_232980861;
      v6 = &v8;
      goto LABEL_6;
    }
  }
}

- (void)_configureInvalidationXPCActivity
{
  v3 = DPLogHandle_ServiceTasking();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfiguringTaskingInvalidationXPCActivity", &unk_232980861, buf, 2u);
  }

  v4 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __54__DRSTaskingService__configureInvalidationXPCActivity__block_invoke;
  handler[3] = &unk_27899EF70;
  handler[4] = self;
  xpc_activity_register("com.apple.diagnosticpipeline.tasking_invalidation_activity", v4, handler);
}

void __54__DRSTaskingService__configureInvalidationXPCActivity__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_transaction_create();
  state = xpc_activity_get_state(v3);
  v6 = DPLogHandle_ServiceTasking();
  v7 = os_signpost_enabled(v6);
  if (state == 2)
  {
    if (v7)
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "TaskingInvalidationActivity", &unk_232980861, buf, 2u);
    }

    if (!DRSDeviceIsUnlocked())
    {
      v15 = DPLogHandle_ServiceTasking();
      if (os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "TaskingInvalidationActivityBailing to avoid waiting for device unlock", &unk_232980861, buf, 2u);
      }

      v13 = v3;
      v14 = 5;
      goto LABEL_19;
    }

    [*(a1 + 32) _waitForDeviceUnlockAndInitializeServiceState];
    if (xpc_activity_should_defer(v3))
    {
      v12 = DPLogHandle_ServiceTasking();
      if (os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "TaskingInvalidationActivityImmediate deferral", &unk_232980861, buf, 2u);
      }

      v13 = v3;
      v14 = 3;
LABEL_19:
      xpc_activity_set_state(v13, v14);
      goto LABEL_20;
    }

    v17 = [*(a1 + 32) taskingManager];
    v24 = 0;
    v18 = [v17 checkConfigsForInvalidation:&v24];
    v6 = v24;

    v19 = DPLogHandle_ServiceTasking();
    v20 = os_signpost_enabled(v19);
    if (v18)
    {
      if (v20)
      {
        *buf = 0;
        v21 = "Success!";
        v22 = v19;
        v23 = 2;
LABEL_26:
        _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "TaskingInvalidationActivity", v21, buf, v23);
      }
    }

    else if (v20)
    {
      *buf = 138543362;
      v26 = v6;
      v21 = "Invalidation check failed due to error: %{public}@";
      v22 = v19;
      v23 = 12;
      goto LABEL_26;
    }

    xpc_activity_set_state(v3, 5);
    goto LABEL_15;
  }

  if (state)
  {
    if (v7)
    {
      *buf = 134217984;
      v26 = state;
      v8 = "TaskingInvalidationXPCActivityUnknownState";
      v9 = "Unknown XPC activity state %ld";
      v10 = v6;
      v11 = 12;
      goto LABEL_14;
    }
  }

  else if (v7)
  {
    *buf = 0;
    v8 = "TaskingInvalidationXPCActivityCheckIn";
    v9 = &unk_232980861;
    v10 = v6;
    v11 = 2;
LABEL_14:
    _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v8, v9, buf, v11);
  }

LABEL_15:

LABEL_20:
  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)activateService
{
  [(DRSTaskingService *)self _configureXPCActivities];
  v3 = [(DRSTaskingService *)self messageQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__DRSTaskingService_activateService__block_invoke;
  block[3] = &unk_27899EF98;
  block[4] = self;
  dispatch_sync(v3, block);

  return 1;
}

void __36__DRSTaskingService_activateService__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state])
  {
    v2 = DPLogHandle_ServiceTaskingError();
    if (os_signpost_enabled(v2))
    {
      v3 = DRSStringForServiceState([*(a1 + 32) state]);
      v6 = 138543362;
      v7 = v3;
      _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RedundantServiceActivation", "Tried to activate while in state: %{public}@", &v6, 0xCu);
    }
  }

  else
  {
    v4 = DPLogHandle_ServiceTasking();
    if (os_signpost_enabled(v4))
    {
      LOWORD(v6) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingServiceActivation", &unk_232980861, &v6, 2u);
    }

    v2 = [*(a1 + 32) serviceConnection];
    xpc_connection_activate(v2);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_sendReplyForMessage:(id)a3 replyType:(unint64_t)a4 rejectionReason:(const char *)a5
{
  xdict = a3;
  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_uint64(reply, "TaskingServiceReplyType", a4);
  if (a5)
  {
    xpc_dictionary_set_string(reply, "TaskingAdminRequest_RejectionReason", a5);
  }

  v8 = xpc_dictionary_get_remote_connection(xdict);
  xpc_connection_send_message(v8, reply);
}

- (void)_handleJSONTaskingSystemMessage:(id)a3 state:(id)a4 transaction:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 hasAdminEntitlement])
  {
    length = 0;
    data = xpc_dictionary_get_data(v8, "JSONData", &length);
    v12 = xpc_dictionary_get_BOOL(v8, "emitCATelemetry");
    if (data)
    {
      v13 = length == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v17 = v12;
      v18 = objc_alloc(MEMORY[0x277CBEA90]);
      v19 = [v18 initWithBytes:data length:length];
      v20 = [(DRSTaskingService *)self taskingManager];
      v21 = [v20 processTaskingSystemMessageJSONData:v19 transaction:v10 shouldEmitCATelemetry:v17];

      if (v21)
      {
        [(DRSTaskingService *)self _sendReplyForMessage:v8 replyType:1 rejectionReason:0];
        v14 = DPLogHandle_ServiceTaskingXPC();
        if (os_signpost_enabled(v14))
        {
          v22 = [v9 stateDescription];
          *buf = 138543362;
          v28 = v22;
          v23 = "TaskingSystemMessage_AcceptedJSON";
          v24 = "Accepted tasking system JSON message from %{public}@";
LABEL_17:
          _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v23, v24, buf, 0xCu);
        }
      }

      else
      {
        [(DRSTaskingService *)self _sendReplyForMessage:v8 replyType:1 rejectionReason:"Invalid JSON in message"];
        v14 = DPLogHandle_ServiceTaskingXPCError();
        if (os_signpost_enabled(v14))
        {
          v22 = [v9 stateDescription];
          *buf = 138543362;
          v28 = v22;
          v23 = "TaskingSystemMessage_BadJSON";
          v24 = "Rejecting tasking system message from %{public}@ due to incorrect JSON format";
          goto LABEL_17;
        }
      }

LABEL_18:

      goto LABEL_19;
    }

    [(DRSTaskingService *)self _sendReplyForMessage:v8 replyType:1 rejectionReason:"Invalid data buffer in message"];
    v19 = DPLogHandle_ServiceTaskingXPCError();
    if (os_signpost_enabled(v19))
    {
      v14 = [v9 stateDescription];
      *buf = 138543362;
      v28 = v14;
      v15 = "TaskingSystemMessage_BadData";
      v16 = "Rejecting tasking system message from %{public}@ due to bad or missing JSON data field";
LABEL_11:
      _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v15, v16, buf, 0xCu);
      goto LABEL_18;
    }
  }

  else
  {
    [(DRSTaskingService *)self _sendReplyForMessage:v8 replyType:1 rejectionReason:"Missing required entitlement"];
    v19 = DPLogHandle_ServiceTaskingXPCError();
    if (os_signpost_enabled(v19))
    {
      v14 = [v9 stateDescription];
      *buf = 138543362;
      v28 = v14;
      v15 = "TaskingSystemMessage_Rejected";
      v16 = "Rejecting tasking system message from %{public}@ due to missing entitlement";
      goto LABEL_11;
    }
  }

LABEL_19:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_sendConfigStateReplyForMessage:(id)a3 rejectionReason:(const char *)a4 state:(unsigned __int8)a5 completionType:(unint64_t)a6
{
  v7 = a5;
  v21 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = DPLogHandle_ServiceTaskingXPCError();
  if (os_signpost_enabled(v10))
  {
    v11 = DRConfigStringForState();
    v12 = v11;
    v13 = "Accepted";
    if (a4)
    {
      v13 = a4;
    }

    v17 = 138543618;
    v18 = v11;
    v19 = 2082;
    v20 = v13;
    _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigStateReply", "Replying with %{public}@ %{public}s", &v17, 0x16u);
  }

  reply = xpc_dictionary_create_reply(v9);
  xpc_dictionary_set_uint64(reply, "TaskingServiceReplyType", 2uLL);
  if (a4)
  {
    xpc_dictionary_set_string(reply, "TaskingAdminRequest_RejectionReason", a4);
  }

  else
  {
    xpc_dictionary_set_uint64(reply, "configState", v7);
    xpc_dictionary_set_uint64(reply, "completionType", a6);
  }

  v15 = xpc_dictionary_get_remote_connection(v9);
  xpc_connection_send_message(v15, reply);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleConfigStateMessage:(id)a3 state:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  string = xpc_dictionary_get_string(v6, "teamID");
  if (string)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    if ([v7 hasAdminEntitlement] & 1) != 0 || (xpc_dictionary_get_remote_connection(v6), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v7, "hasTeamIDEntitlement:connection:", v9, v10), v10, (v11))
    {
      v12 = xpc_dictionary_get_string(v6, "configUUID");
      if (v12)
      {
        v13 = v12;
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
        v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v14];
        if (v15)
        {
          v16 = [(DRSTaskingService *)self taskingManager];
          v40 = 0;
          v17 = [v16 metadataForConfigUUID:v15 teamID:v9 errorOut:&v40];
          v18 = v40;

          if (v18)
          {
            v39 = v17;
            v19 = DPLogHandle_ServiceTaskingXPCError();
            if (os_signpost_enabled(v19))
            {
              v20 = [v18 localizedDescription];
              *buf = 138543362;
              v42 = v20;
              _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GetConfigStateError", "Lookup error %{public}@", buf, 0xCu);
            }

            v21 = MEMORY[0x277CCACA8];
            v22 = [v18 localizedDescription];
            v23 = [v21 stringWithFormat:@"DB lookup error: %@", v22];

            -[DRSTaskingService _sendConfigStateReplyForMessage:rejectionReason:state:completionType:](self, "_sendConfigStateReplyForMessage:rejectionReason:state:completionType:", v6, [v23 UTF8String], 0, 0);
            v17 = v39;
          }

          else
          {
            v29 = DPLogHandle_ServiceTaskingXPC();
            v30 = os_signpost_enabled(v29);
            if (v17)
            {
              if (v30)
              {
                [v17 state];
                DRConfigStringForState();
                v32 = v31 = v17;
                *buf = 138543874;
                v42 = v32;
                v43 = 2114;
                v44 = v9;
                v45 = 2114;
                v46 = v15;
                _os_signpost_emit_with_name_impl(&dword_232906000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GetConfigStateMessageSuccess", "Got state '%{public}@' for team ID %{public}@, config UUID %{public}@", buf, 0x20u);

                v17 = v31;
              }

              v33 = [v17 state];
              v34 = [v17 completionType];
              v35 = self;
              v36 = v6;
              v37 = v33;
            }

            else
            {
              if (v30)
              {
                *buf = 138543618;
                v42 = v9;
                v43 = 2114;
                v44 = v15;
                _os_signpost_emit_with_name_impl(&dword_232906000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GetConfigStateMessageSuccess", "Unknown state for team ID %{public}@, config UUID %{public}@", buf, 0x16u);
              }

              v35 = self;
              v36 = v6;
              v37 = 0;
              v34 = 0;
            }

            [(DRSTaskingService *)v35 _sendConfigStateReplyForMessage:v36 rejectionReason:0 state:v37 completionType:v34];
          }
        }

        else
        {
          v28 = DPLogHandle_ServiceTaskingXPCError();
          if (os_signpost_enabled(v28))
          {
            *buf = 136446210;
            v42 = v13;
            _os_signpost_emit_with_name_impl(&dword_232906000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GetConfigStateError", "Invalid UUID string %{public}s", buf, 0xCu);
          }

          [(DRSTaskingService *)self _sendConfigStateReplyForMessage:v6 rejectionReason:"Invalid config UUID string" state:0 completionType:0];
        }

        goto LABEL_33;
      }

      v25 = DPLogHandle_ServiceTaskingXPCError();
      if (os_signpost_enabled(v25))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GetConfigStateError", "Missing UUID field", buf, 2u);
      }

      v26 = "No Config UUID";
    }

    else
    {
      v27 = DPLogHandle_ServiceTaskingXPCError();
      if (os_signpost_enabled(v27))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GetConfigStateError", "Not properly entitled", buf, 2u);
      }

      v26 = "Not properly entitled";
    }

    [(DRSTaskingService *)self _sendConfigStateReplyForMessage:v6 rejectionReason:v26 state:0 completionType:0];
LABEL_33:

    goto LABEL_34;
  }

  v24 = DPLogHandle_ServiceTaskingXPCError();
  if (os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GetConfigStateError", "Missing teamID field", buf, 2u);
  }

  [(DRSTaskingService *)self _sendConfigStateReplyForMessage:v6 rejectionReason:"No teamID" state:0 completionType:0];
LABEL_34:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_sendClearStateReplyForMessage:(id)a3 rejectionReason:(const char *)a4
{
  xdict = a3;
  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_uint64(reply, "TaskingServiceReplyType", 3uLL);
  if (a4)
  {
    xpc_dictionary_set_string(reply, "TaskingAdminRequest_RejectionReason", a4);
  }

  v6 = xpc_dictionary_get_remote_connection(xdict);
  xpc_connection_send_message(v6, reply);
}

- (void)_handleClearTaskingStateMessage:(id)a3 state:(id)a4
{
  v6 = a3;
  if (([a4 hasAdminEntitlement] & 1) == 0)
  {
    v11 = "Missing required entitlement";
LABEL_6:
    v9 = self;
    v10 = v6;
    goto LABEL_7;
  }

  v7 = [(DRSTaskingService *)self taskingManager];
  v12 = 0;
  v8 = [v7 clearTaskingHistoryWithErrorOut:&v12];

  if ((v8 & 1) == 0)
  {
    v11 = "Clear failed";
    goto LABEL_6;
  }

  v9 = self;
  v10 = v6;
  v11 = 0;
LABEL_7:
  [(DRSTaskingService *)v9 _sendClearStateReplyForMessage:v10 rejectionReason:v11];
}

- (void)_handleConfigCompletionMessage:(id)a3 state:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  string = xpc_dictionary_get_string(v6, "teamID");
  if (string)
  {
    v9 = string;
    v10 = xpc_dictionary_get_remote_connection(v6);
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
    if ([v7 hasAdminEntitlement] & 1) != 0 || (objc_msgSend(v7, "hasTeamIDEntitlement:connection:", v11, v10))
    {
      v12 = xpc_dictionary_get_string(v6, "configUUID");
      if (v12)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
        v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v13];

        if (v14)
        {
          v15 = xpc_dictionary_get_BOOL(v6, "isRejected");
          v16 = [(DRSTaskingService *)self taskingManager];
          v17 = v16;
          if (v15)
          {
            [v16 clientRejectsConfigUUID:v14 teamID:v11];
          }

          else
          {
            [v16 clientCompletedConfigUUID:v14 teamID:v11];
          }

          [(DRSTaskingService *)self _sendReplyForMessage:v6 replyType:4 rejectionReason:0];
          goto LABEL_17;
        }
      }

      [(DRSTaskingService *)self _sendReplyForMessage:v6 replyType:4 rejectionReason:"Invalid UUID"];
      v14 = DPLogHandle_ServiceTaskingXPCError();
      if (os_signpost_enabled(v14))
      {
        v18 = [v7 stateDescription];
        v21 = 138543362;
        v22 = v18;
        v19 = "Invalid UUID from client %{public}@";
LABEL_14:
        _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigCompletionMessageMissingEntitlement", v19, &v21, 0xCu);
      }
    }

    else
    {
      [(DRSTaskingService *)self _sendReplyForMessage:v6 replyType:4 rejectionReason:"Not entitled"];
      v14 = DPLogHandle_ServiceTaskingXPCError();
      if (os_signpost_enabled(v14))
      {
        v18 = [v7 stateDescription];
        v21 = 138543362;
        v22 = v18;
        v19 = "Insufficient entitlements for client %{public}@";
        goto LABEL_14;
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  [(DRSTaskingService *)self _sendReplyForMessage:v6 replyType:4 rejectionReason:"No teamID provided"];
  v10 = DPLogHandle_ServiceTaskingXPCError();
  if (os_signpost_enabled(v10))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigCompletionMessageMissingTeamID", "No team ID provided in message", &v21, 2u);
  }

LABEL_18:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleBroadcastRequestMessaage:(id)a3 state:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  string = xpc_dictionary_get_string(v6, "teamID");
  if (string)
  {
    v9 = string;
    v10 = xpc_dictionary_get_remote_connection(v6);
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
    if ([v7 hasAdminEntitlement] & 1) != 0 || (objc_msgSend(v7, "hasTeamIDEntitlement:connection:", v11, v10))
    {
      v12 = [(DRSTaskingService *)self eventPublisher];
      [v12 publishCurrentConfigForTeamID:v11];

      [(DRSTaskingService *)self _sendReplyForMessage:v6 replyType:5 rejectionReason:0];
      v13 = DPLogHandle_ServiceTaskingXPC();
      if (os_signpost_enabled(v13))
      {
        LOWORD(v16) = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BroadcastRequestMessageSuccess", &unk_232980861, &v16, 2u);
      }
    }

    else
    {
      [(DRSTaskingService *)self _sendReplyForMessage:v6 replyType:5 rejectionReason:"Not entitled"];
      v13 = DPLogHandle_ServiceTaskingXPCError();
      if (os_signpost_enabled(v13))
      {
        v14 = [v7 stateDescription];
        v16 = 138543362;
        v17 = v14;
        _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BroadcastRequestMessageMissingEntitlement", "Insufficient entitlements for client %{public}@", &v16, 0xCu);
      }
    }
  }

  else
  {
    [(DRSTaskingService *)self _sendReplyForMessage:v6 replyType:5 rejectionReason:"No teamID provided"];
    v10 = DPLogHandle_ServiceTaskingXPCError();
    if (os_signpost_enabled(v10))
    {
      LOWORD(v16) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BroadcastRequestMessageMissingTeamID", "No team ID provided in message", &v16, 2u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleCloudChannelConfigGet:(id)a3 state:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 hasAdminEntitlement])
  {
    v8 = [(DRSTaskingService *)self taskingManager];
    v9 = [v8 persistedCloudChannelConfig];

    if (v9)
    {
      v10 = [v9 debugDescription];
    }

    else
    {
      v10 = @"Not subscribed";
    }

    reply = xpc_dictionary_create_reply(v6);
    xpc_dictionary_set_uint64(reply, "TaskingServiceReplyType", 6uLL);
    xpc_dictionary_set_string(reply, "description", [(__CFString *)v10 UTF8String]);
    if (v9)
    {
      xpc_dictionary_set_uint64(reply, "platform", [v9 platform]);
      xpc_dictionary_set_uint64(reply, "type", [v9 type]);
      xpc_dictionary_set_uint64(reply, "environment", [v9 environment]);
      xpc_dictionary_set_BOOL(reply, "overridesDeviceDefault", [v9 overridesDeviceDefault]);
      xpc_dictionary_set_BOOL(reply, "hasConfig", 1);
      v12 = [(DRSTaskingService *)self taskingManager];
      xpc_dictionary_set_BOOL(reply, "dropsMessages", [v12 isTaskingEnabled] != 1);

      v13 = [v9 populationSliceNumber];

      if (v13)
      {
        v14 = [v9 populationSliceNumber];
        xpc_dictionary_set_uint64(reply, "populationSliceNumber", [v14 unsignedLongLongValue]);
      }
    }

    v15 = xpc_dictionary_get_remote_connection(v6);
    xpc_connection_send_message(v15, reply);

    goto LABEL_11;
  }

  [(DRSTaskingService *)self _sendReplyForMessage:v6 replyType:6 rejectionReason:"Not entitled"];
  v9 = DPLogHandle_ServiceTaskingXPCError();
  if (os_signpost_enabled(v9))
  {
    v10 = [v7 stateDescription];
    v17 = 138543362;
    v18 = v10;
    _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CloudChannelConfigGetMissingEntitlement", "Insufficient entitlements for client %{public}@", &v17, 0xCu);
LABEL_11:
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_applyCloudChannelConfig:(id)a3 dueToMessage:(id)a4 state:(id)a5 messageType:(unint64_t)a6
{
  v93 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(DRSTaskingService *)self taskingManager];
  v14 = [v13 taskingMessageChannel];
  v15 = v14;
  v85 = v10;
  if (v10)
  {
    v16 = [v14 config];
    if (v16)
    {
      v17 = v16;
      [(DRSTaskingService *)self taskingManager];
      v18 = v83 = v11;
      [v18 taskingMessageChannel];
      v19 = v12;
      v20 = self;
      v22 = v21 = a6;
      v23 = [v22 config];
      v24 = [v23 isEqual:v85];

      a6 = v21;
      self = v20;
      v12 = v19;

      v11 = v83;
      if (v24)
      {
        v25 = DPLogHandle_ServiceTaskingXPC();
        v26 = v85;
        if (os_signpost_enabled(v25))
        {
          v27 = [v12 stateDescription];
          v28 = [v85 debugDescription];
          *buf = 138543618;
          v90 = v27;
          v91 = 2114;
          v92 = v28;
          _os_signpost_emit_with_name_impl(&dword_232906000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AlreadySubscribed", "Client %{public}@ requested subscription to %{public}@, but we are already subscribed to that channel", buf, 0x16u);
        }

        [(DRSTaskingService *)self _sendReplyForMessage:v83 replyType:a6 rejectionReason:0];
        goto LABEL_48;
      }
    }

    else
    {
    }

    goto LABEL_12;
  }

  if (v15)
  {
LABEL_12:
    v84 = v12;
    v31 = [(DRSTaskingService *)self taskingManager];
    v88 = 0;
    v32 = [v31 unsubscribeFromSubscribedChannelWithErrorOut:&v88];
    v33 = v88;

    if (v32)
    {

      v34 = [(DRSTaskingService *)self taskingManager];
      v87 = 0;
      v26 = v85;
      v35 = [v34 updatePersistedChannelConfig:v85 errorOut:&v87];
      v36 = v87;

      if (v35)
      {

        v37 = [(DRSTaskingService *)self taskingManager];
        v86 = 0;
        v38 = [v37 subscribeToChannelWithConfig:v85 errorOut:&v86];
        v39 = v86;

        if (v38)
        {
          v40 = DPLogHandle_ServiceTaskingXPC();
          if (os_signpost_enabled(v40))
          {
            v41 = [(DRSTaskingService *)self taskingManager];
            v42 = [v41 taskingMessageChannel];
            v43 = [v42 debugDescription];
            *buf = 138543362;
            v90 = v43;
            _os_signpost_emit_with_name_impl(&dword_232906000, v40, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CloudChannelSubscriptionUpdateSucceeded", "Subscribe to cloud channel: %{public}@", buf, 0xCu);
          }

          [(DRSTaskingService *)self _sendReplyForMessage:v11 replyType:a6 rejectionReason:0];
        }

        else
        {
          v71 = MEMORY[0x277CCACA8];
          v72 = [(__CFString *)v39 localizedDescription];
          v73 = v72;
          if (v72)
          {
            v74 = v72;
          }

          else
          {
            v74 = @"Unknown";
          }

          v75 = [v71 stringWithFormat:@"Subscription failed due to error %@", v74];

          -[DRSTaskingService _sendReplyForMessage:replyType:rejectionReason:](self, "_sendReplyForMessage:replyType:rejectionReason:", v11, a6, [v75 UTF8String]);
          v76 = DPLogHandle_ServiceTaskingXPCError();
          if (os_signpost_enabled(v76))
          {
            v77 = [v85 debugDescription];
            v78 = v77;
            v79 = @"(Default)";
            if (v77)
            {
              v79 = v77;
            }

            if (v39)
            {
              v80 = v39;
            }

            else
            {
              v80 = @"Unknown";
            }

            *buf = 138543618;
            v90 = v79;
            v91 = 2114;
            v92 = v80;
            _os_signpost_emit_with_name_impl(&dword_232906000, v76, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CloudChannelSubscriptionFailed", "Failed to subscribe to cloud channel configuration: %{public}@ due to error %{public}@", buf, 0x16u);
          }
        }

        v12 = v84;
      }

      else
      {
        v61 = MEMORY[0x277CCACA8];
        v62 = [(__CFString *)v36 localizedDescription];
        v63 = v62;
        if (v62)
        {
          v64 = v62;
        }

        else
        {
          v64 = @"Unknown";
        }

        v65 = [v61 stringWithFormat:@"Failed to update persisted cloud channel config due to error %@", v64];

        -[DRSTaskingService _sendReplyForMessage:replyType:rejectionReason:](self, "_sendReplyForMessage:replyType:rejectionReason:", v11, a6, [v65 UTF8String]);
        v66 = DPLogHandle_ServiceTaskingXPCError();
        if (os_signpost_enabled(v66))
        {
          v67 = [v85 debugDescription];
          v68 = v67;
          v69 = @"(None)";
          if (v67)
          {
            v69 = v67;
          }

          if (v36)
          {
            v70 = v36;
          }

          else
          {
            v70 = @"Unknown";
          }

          *buf = 138543618;
          v90 = v69;
          v91 = 2114;
          v92 = v70;
          _os_signpost_emit_with_name_impl(&dword_232906000, v66, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PersistCloudChannelConfigurationFailed", "Failed to persist cloud channel configuration: %{public}@ due to error %{public}@", buf, 0x16u);
        }

        v12 = v84;
      }
    }

    else
    {
      v44 = MEMORY[0x277CCACA8];
      v45 = [(DRSTaskingService *)self taskingManager];
      v46 = [v45 taskingMessageChannel];
      [v46 config];
      v48 = v47 = v11;
      [v48 debugDescription];
      v49 = v82 = a6;
      v50 = [(__CFString *)v33 localizedDescription];
      v51 = v50;
      v52 = @"Unknown";
      if (v50)
      {
        v52 = v50;
      }

      v53 = [v44 stringWithFormat:@"Failed to unsubscribe from cloud channel %@ due to error %@", v49, v52];

      v11 = v47;
      -[DRSTaskingService _sendReplyForMessage:replyType:rejectionReason:](self, "_sendReplyForMessage:replyType:rejectionReason:", v47, v82, [v53 UTF8String]);
      v54 = DPLogHandle_ServiceTaskingXPCError();
      if (os_signpost_enabled(v54))
      {
        v55 = [(DRSTaskingService *)self taskingManager];
        v56 = [v55 taskingMessageChannel];
        v57 = [v56 config];
        v58 = [v57 debugDescription];
        v59 = v58;
        v60 = @"Unknown";
        if (v33)
        {
          v60 = v33;
        }

        *buf = 138543618;
        v90 = v58;
        v91 = 2114;
        v92 = v60;
        _os_signpost_emit_with_name_impl(&dword_232906000, v54, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnsubscribeFailed", "Failed to unsubscribe from configuration: %{public}@ due to error %{public}@", buf, 0x16u);
      }

      v12 = v84;
      v26 = v85;
    }

    goto LABEL_48;
  }

  v29 = DPLogHandle_ServiceTaskingXPC();
  if (os_signpost_enabled(v29))
  {
    v30 = [v12 stateDescription];
    *buf = 138543362;
    v90 = v30;
    _os_signpost_emit_with_name_impl(&dword_232906000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AlreadyNotSubscribed", "Client %{public}@ requested unsubscription, but we are already not subscribed to any channel", buf, 0xCu);
  }

  [(DRSTaskingService *)self _sendReplyForMessage:v11 replyType:a6 rejectionReason:0];
  v26 = 0;
LABEL_48:

  v81 = *MEMORY[0x277D85DE8];
}

- (void)_handleCloudChannelConfigSet:(id)a3 state:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 hasAdminEntitlement])
  {
    if (xpc_dictionary_get_BOOL(v6, "noSubscription"))
    {
      p_super = [[DRSCloudChannelConfig alloc] initNoSubscriptionConfig:1];
LABEL_15:
      [(DRSTaskingService *)self _applyCloudChannelConfig:p_super dueToMessage:v6 state:v7 messageType:7];
      goto LABEL_16;
    }

    uint64 = xpc_dictionary_get_uint64(v6, "platform");
    v11 = xpc_dictionary_get_uint64(v6, "type");
    v12 = xpc_dictionary_get_uint64(v6, "environment");
    v13 = xpc_dictionary_get_value(v6, "populationSliceNumber");

    if (v13)
    {
      p_super = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{xpc_dictionary_get_uint64(v6, "populationSliceNumber")}];
    }

    else
    {
      v14 = [DRSCloudChannelConfig sliceCountForPlatform:uint64 channelType:v11];
      v15 = v14;
      if (v14)
      {
        p_super = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{+[DRSCloudChannelConfig populationSliceForDevice:](DRSCloudChannelConfig, "populationSliceForDevice:", objc_msgSend(v14, "unsignedShortValue"))}];
      }

      else
      {
        p_super = 0;
      }
    }

    v16 = [[DRSCloudChannelConfig alloc] initWithValidPlatform:uint64 channelType:v11 environment:v12 populationSliceNumber:p_super overridesDeviceDefault:1];
    if (v16)
    {
      v17 = v16;

      p_super = &v17->super;
      goto LABEL_15;
    }

    [(DRSTaskingService *)self _sendReplyForMessage:v6 replyType:7 rejectionReason:"Invalid or unsupported channel configuration"];
    v9 = DPLogHandle_ServiceTaskingXPCError();
    if (os_signpost_enabled(v9))
    {
      v19 = DRSSystemProfilePlatformStringForPlatform(uint64);
      v20 = [DRSCloudChannelConfig stringForEnvironment:v12];
      v21 = [DRSCloudChannelConfig stringForChannelType:v11];
      v22 = v21;
      v24 = 138544130;
      v23 = @"None";
      v25 = v19;
      if (p_super)
      {
        v23 = p_super;
      }

      v26 = 2114;
      v27 = v20;
      v28 = 2114;
      v29 = v21;
      v30 = 2114;
      v31 = v23;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SetCloudChannelConfigurationInvalid", "Invalid cloud channel configuration: %{public}@ %{public}@ %{public}@ %{public}@", &v24, 0x2Au);
    }

    goto LABEL_6;
  }

  [(DRSTaskingService *)self _sendReplyForMessage:v6 replyType:7 rejectionReason:"Not entitled"];
  p_super = DPLogHandle_ServiceTaskingXPCError();
  if (os_signpost_enabled(p_super))
  {
    v9 = [v7 stateDescription];
    v24 = 138543362;
    v25 = v9;
    _os_signpost_emit_with_name_impl(&dword_232906000, p_super, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CloudChannelConfigSetMissingEntitlement", "Insufficient entitlements for client %{public}@", &v24, 0xCu);
LABEL_6:
  }

LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleCloudChannelConfigReset:(id)a3 state:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 hasAdminEntitlement])
  {
    v8 = +[DRSCloudChannelConfig staticSnapshotDeviceDefaultCloudChannelConfig];
    [(DRSTaskingService *)self _applyCloudChannelConfig:v8 dueToMessage:v6 state:v7 messageType:8];
  }

  else
  {
    [(DRSTaskingService *)self _sendReplyForMessage:v6 replyType:8 rejectionReason:"Not entitled"];
    v9 = DPLogHandle_ServiceTaskingXPCError();
    if (os_signpost_enabled(v9))
    {
      v10 = [v7 stateDescription];
      v12 = 138543362;
      v13 = v10;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CloudChannelConfigResetMissingEntitlement", "Insufficient entitlements for client %{public}@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleInvalidMessage:(id)a3 state:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = DPLogHandle_ServiceTaskingXPCError();
  if (os_signpost_enabled(v7))
  {
    v8 = [v5 stateDescription];
    v12 = 138543362;
    v13 = v8;
    _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidRequest", "Received invalid message from client %{public}@", &v12, 0xCu);
  }

  reply = xpc_dictionary_create_reply(v6);
  xpc_dictionary_set_uint64(reply, "TaskingServiceReplyType", 0);
  xpc_dictionary_set_string(reply, "TaskingAdminRequest_RejectionReason", "Unknown, missing, or invalid client message type");
  v10 = xpc_dictionary_get_remote_connection(v6);

  xpc_connection_send_message(v10, reply);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleRequest:(id)a3 state:(id)a4
{
  xdict = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = os_transaction_create();
  uint64 = xpc_dictionary_get_uint64(xdict, "TaskingClientMessageType");
  if (uint64 <= 3)
  {
    if (uint64 > 1)
    {
      if (uint64 == 2)
      {
        [(DRSTaskingService *)self _handleConfigStateMessage:xdict state:v6];
      }

      else
      {
        [(DRSTaskingService *)self _handleClearTaskingStateMessage:xdict state:v6];
      }
    }

    else if (uint64)
    {
      if (uint64 == 1)
      {
        [(DRSTaskingService *)self _handleJSONTaskingSystemMessage:xdict state:v6 transaction:v8];
      }
    }

    else
    {
      [(DRSTaskingService *)self _handleInvalidMessage:xdict state:v6];
    }
  }

  else if (uint64 <= 5)
  {
    if (uint64 == 4)
    {
      [(DRSTaskingService *)self _handleConfigCompletionMessage:xdict state:v6];
    }

    else
    {
      [(DRSTaskingService *)self _handleBroadcastRequestMessaage:xdict state:v6];
    }
  }

  else
  {
    switch(uint64)
    {
      case 6:
        [(DRSTaskingService *)self _handleCloudChannelConfigGet:xdict state:v6];
        break;
      case 7:
        [(DRSTaskingService *)self _handleCloudChannelConfigSet:xdict state:v6];
        break;
      case 8:
        [(DRSTaskingService *)self _handleCloudChannelConfigReset:xdict state:v6];
        break;
    }
  }

  objc_autoreleasePoolPop(v7);
}

- (void)_checkForDefaultSubscriptionUpdate
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_232906000, v0, v1, "ERROR: Failed to subscribe to channel due to error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_waitForDeviceUnlockAndInitializeServiceState
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__DRSTaskingService__waitForDeviceUnlockAndInitializeServiceState__block_invoke;
  block[3] = &unk_27899EF98;
  block[4] = self;
  if (_waitForDeviceUnlockAndInitializeServiceState_onceToken != -1)
  {
    dispatch_once(&_waitForDeviceUnlockAndInitializeServiceState_onceToken, block);
  }
}

void __66__DRSTaskingService__waitForDeviceUnlockAndInitializeServiceState__block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  DRSWaitForDeviceUnlock();
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() databaseDirectory];
  v4 = DPLogHandle_ServiceTasking();
  v5 = DPLogHandle_ServiceTaskingError();
  DRSConfirmDirectoryIsInitialized(v3, v4, v5);

  v6 = +[DRSSystemProfile sharedInstance];
  LODWORD(v4) = [v6 isInternal];

  if (v4)
  {
    v7 = +[DRSTaskingCloudKitHelper prodContainerHelper];
  }

  else
  {
    v7 = 0;
  }

  v8 = [DRSTaskingDecisionMaker alloc];
  v9 = *(a1 + 32);
  v10 = [objc_opt_class() databaseDirectory];
  v48 = 0;
  LODWORD(v43) = 16842753;
  v11 = [DRSTaskingDecisionMaker initWithTimezone:v8 limitingParameters:"initWithTimezone:limitingParameters:dbWorkingDirectoryPath:cloudKitHelper:enforceDate:enforceBuild:enforceSampling:enforceTeamHysteresis:enforceGlobalHysteresisAndCap:allowRefereshLimitingParameters:errorOut:" dbWorkingDirectoryPath:0 cloudKitHelper:0 enforceDate:v10 enforceBuild:v7 enforceSampling:1 enforceTeamHysteresis:1 enforceGlobalHysteresisAndCap:v43 allowRefereshLimitingParameters:&v48 errorOut:?];
  v12 = v48;

  if (!v11)
  {
    v36 = DPLogHandle_ServiceTaskingError();
    if (os_signpost_enabled(v36))
    {
      v37 = [v12 localizedDescription];
      v38 = v37;
      v39 = @"Unknown";
      if (v37)
      {
        v39 = v37;
      }

      *buf = 138543362;
      v50 = v39;
      _os_signpost_emit_with_name_impl(&dword_232906000, v36, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingDecisionMakerCreationFailure", "FATAL ERROR: Failed to create tasking decision maker due to error: %{public}@", buf, 0xCu);
    }

    v40 = DPLogHandle_ServiceTaskingError();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      __66__DRSTaskingService__waitForDeviceUnlockAndInitializeServiceState__block_invoke_cold_3(v12, v40);
    }

    exit(1);
  }

  objc_initWeak(&location, *(a1 + 32));
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__DRSTaskingService__waitForDeviceUnlockAndInitializeServiceState__block_invoke_107;
  aBlock[3] = &unk_27899EFC0;
  objc_copyWeak(&v46, &location);
  v13 = _Block_copy(aBlock);
  v14 = [[DRSTaskingManager alloc] initWithDecisionMaker:v11 cloudKitHelper:v7 configStateChangeBlock:v13];
  v15 = *(a1 + 32);
  v16 = *(v15 + 32);
  *(v15 + 32) = v14;

  v17 = [DRSTaskingEventPublisher alloc];
  v18 = [(DRSTaskingDecisionMaker *)v11 configStore];
  v19 = [(DRSTaskingEventPublisher *)v17 initWithConfigStore:v18];
  v20 = *(a1 + 32);
  v21 = *(v20 + 48);
  *(v20 + 48) = v19;

  v22 = [*(a1 + 32) eventPublisher];
  LODWORD(v18) = v22 == 0;

  if (v18)
  {
    v41 = DPLogHandle_ServiceTaskingError();
    if (os_signpost_enabled(v41))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v41, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EventPublisherInitFailure", "FATAL ERROR: Failed to create event publisher", buf, 2u);
    }

    v42 = DPLogHandle_ServiceTaskingError();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      __66__DRSTaskingService__waitForDeviceUnlockAndInitializeServiceState__block_invoke_cold_2(v42);
    }

    exit(1);
  }

  v23 = [*(a1 + 32) taskingManager];
  v24 = [v23 persistedCloudChannelConfig];

  v25 = DPLogHandle_ServiceTasking();
  if (os_signpost_enabled(v25))
  {
    v26 = [v24 debugDescription];
    v27 = v26;
    v28 = @"MISSING";
    if (v26)
    {
      v28 = v26;
    }

    *buf = 138543362;
    v50 = v28;
    _os_signpost_emit_with_name_impl(&dword_232906000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PersistedCloudChannelConfig", "Existing persisted cloud channel config %{public}@", buf, 0xCu);
  }

  v29 = [*(a1 + 32) taskingManager];
  v44 = 0;
  v30 = [v29 subscribeToChannelWithConfig:v24 errorOut:&v44];
  v31 = v44;

  if (v30)
  {

    [*(a1 + 32) _checkForDefaultSubscriptionUpdate];
  }

  else
  {
    v32 = DPLogHandle_ServiceTaskingError();
    if (os_signpost_enabled(v32))
    {
      v33 = @"Unknown";
      if (v31)
      {
        v33 = v31;
      }

      *buf = 138543362;
      v50 = v33;
      _os_signpost_emit_with_name_impl(&dword_232906000, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CloudChannelSubscriptionError", "ERROR: Failed to subscribe to channel due to error %{public}@", buf, 0xCu);
    }

    v34 = DPLogHandle_ServiceTaskingError();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      [DRSTaskingService _checkForDefaultSubscriptionUpdate];
    }
  }

  objc_destroyWeak(&v46);
  objc_destroyWeak(&location);

  v35 = *MEMORY[0x277D85DE8];
}

void __66__DRSTaskingService__waitForDeviceUnlockAndInitializeServiceState__block_invoke_107(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, unint64_t a6, int a7)
{
  v34 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v17 = DPLogHandle_ServiceTasking();
  if (os_signpost_enabled(v17))
  {
    v18 = DRConfigStringForState();
    v19 = DRSTaskingStringForTaskingStateChangeReason(a6);
    v20 = v19;
    v24 = 138544386;
    v21 = &stru_2847F1D58;
    v25 = v13;
    if (a7)
    {
      v21 = @" (Notified clients)";
    }

    v26 = 2114;
    v27 = v14;
    v28 = 2114;
    v29 = v18;
    v30 = 2114;
    v31 = v19;
    v32 = 2112;
    v33 = v21;
    _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigStateChange", "%{public}@: Config %{public}@ moved to %{public}@ for reason %{public}@%@", &v24, 0x34u);
  }

  if (a7)
  {
    v22 = [WeakRetained eventPublisher];
    [v22 publishConfigUpdateForTeamID:v13 state:a5 config:v15];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (DRSTaskingService)init
{
  v22.receiver = self;
  v22.super_class = DRSTaskingService;
  v2 = [(DRSTaskingService *)&v22 init];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = dispatch_queue_create("com.apple.diagnosticpipeline tasking service message queue", 0);
  messageQueue = v2->_messageQueue;
  v2->_messageQueue = v3;

  v5 = [(DRSTaskingService *)v2 messageQueue];
  mach_service = xpc_connection_create_mach_service("com.apple.diagnosticpipeline.tasking.service", v5, 1uLL);
  serviceConnection = v2->_serviceConnection;
  v2->_serviceConnection = mach_service;

  v8 = dispatch_semaphore_create(0);
  serviceDeactivatedSem = v2->_serviceDeactivatedSem;
  v2->_serviceDeactivatedSem = v8;

  v10 = [(DRSTaskingService *)v2 serviceConnection];

  if (v10)
  {
    v11 = dispatch_queue_create("DRSTaskingService Initializing Queue", 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __25__DRSTaskingService_init__block_invoke;
    block[3] = &unk_27899EF98;
    v12 = v2;
    v21 = v12;
    dispatch_async(v11, block);
    objc_initWeak(&location, v12);
    v13 = [(DRSTaskingService *)v12 serviceConnection];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __25__DRSTaskingService_init__block_invoke_2;
    handler[3] = &unk_27899EFE8;
    objc_copyWeak(&v18, &location);
    xpc_connection_set_event_handler(v13, handler);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);

LABEL_4:
    v14 = v2;
    goto LABEL_8;
  }

  v15 = DPLogHandle_ServiceTaskingError();
  if (os_signpost_enabled(v15))
  {
    LOWORD(location) = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedTaskingServiceLaunch", "Could not create connection for mach service", &location, 2u);
  }

  v14 = 0;
LABEL_8:

  return v14;
}

void __25__DRSTaskingService_init__block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (MEMORY[0x23838A140](v3) == MEMORY[0x277D86450])
  {
    v7 = [[DRSTaskingClientConnectionState alloc] initWithConnection:v3 service:WeakRetained];
    v8 = DPLogHandle_ServiceTasking();
    if (os_signpost_enabled(v8))
    {
      v9 = [(DRSTaskingClientConnectionState *)v7 stateDescription];
      v13 = 138543362;
      v14 = v9;
      _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NewTaskingClientConnection", "New connection from client %{public}@", &v13, 0xCu);
    }

    [WeakRetained _waitForDeviceUnlockAndInitializeServiceState];
    goto LABEL_17;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    v10 = DPLogHandle_ServiceTasking();
    if (os_signpost_enabled(v10))
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingServiceConnectionInvalidated", &unk_232980861, &v13, 2u);
    }

    v7 = objc_loadWeakRetained((a1 + 32));
    v7->_hasAdminEntitlement = 2;
    v11 = [(DRSTaskingClientConnectionState *)v7 serviceDeactivatedSem];
    dispatch_semaphore_signal(v11);

    goto LABEL_17;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    v7 = DPLogHandle_ServiceTasking();
    if (os_signpost_enabled(&v7->super))
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, &v7->super, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingServiceConnectionInterrupted", &unk_232980861, &v13, 2u);
    }

LABEL_17:

    goto LABEL_18;
  }

  if (MEMORY[0x23838A140](v3) != MEMORY[0x277D86468])
  {
    v5 = MEMORY[0x238389FD0](v3);
    v6 = DPLogHandle_ServiceLifecycle();
    if (os_signpost_enabled(v6))
    {
      v13 = 136446210;
      v14 = v5;
      _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidMessageType", "Invalid message type unexpected: %{public}s", &v13, 0xCu);
    }

    if (v5)
    {
      free(v5);
    }
  }

LABEL_18:

  v12 = *MEMORY[0x277D85DE8];
}

void __66__DRSTaskingService__waitForDeviceUnlockAndInitializeServiceState__block_invoke_cold_3(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_232906000, a2, OS_LOG_TYPE_FAULT, "FATAL ERROR: Could not instantiate the tasking decision maker for the service due to error %{public}@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end