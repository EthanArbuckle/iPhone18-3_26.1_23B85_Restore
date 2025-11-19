@interface DRSClientConnectionState
- (DRSClientConnectionState)initWithConnection:(id)a3 service:(id)a4;
- (NSString)stateDescription;
- (void)dealloc;
@end

@implementation DRSClientConnectionState

- (DRSClientConnectionState)initWithConnection:(id)a3 service:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = DRSClientConnectionState;
  v8 = [(DRSClientConnectionState *)&v30 init];
  if (v8)
  {
    pid = xpc_connection_get_pid(v6);
    v8->_pid = pid;
    v10 = DRSPidToProcessName(pid);
    procName = v8->_procName;
    v8->_procName = v10;

    v12 = xpc_connection_copy_entitlement_value();
    v13 = v12;
    if (v12)
    {
      LOBYTE(v12) = MEMORY[0x23838A140](v12) == MEMORY[0x277D86448] && xpc_BOOL_get_value(v13);
    }

    v8->_hasAdminEntitlement = v12;
    v14 = DPLogHandle_ServiceLifecycle();
    if (os_signpost_enabled(v14))
    {
      v15 = [(DRSClientConnectionState *)v8 stateDescription];
      v16 = [(DRSClientConnectionState *)v8 hasAdminEntitlement];
      v17 = @"does not have";
      if (v16)
      {
        v17 = @"has";
      }

      *buf = 138543618;
      v32 = v15;
      v33 = 2114;
      v34 = v17;
      _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConnectionAdminEntitlementSetting", "%{public}@ connection %{public}@ the admin entitlement", buf, 0x16u);
    }

    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __55__DRSClientConnectionState_initWithConnection_service___block_invoke;
    v27 = &unk_27899EF48;
    v28 = v8;
    v18 = v7;
    v29 = v18;
    xpc_connection_set_event_handler(v6, &v24);
    v19 = [v18 messageQueue];
    xpc_connection_set_target_queue(v6, v19);

    xpc_connection_activate(v6);
  }

  v20 = DPLogHandle_ServiceLifecycle();
  if (os_signpost_enabled(v20))
  {
    v21 = [(DRSClientConnectionState *)v8 stateDescription];
    *buf = 138543362;
    v32 = v21;
    _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NewClientConnection", "Received client connection from %{public}@", buf, 0xCu);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

void __55__DRSClientConnectionState_initWithConnection_service___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x277D863F8])
  {
    v7 = DPLogHandle_ServiceLifecycle();
    if (os_signpost_enabled(v7))
    {
      v8 = [*(a1 + 32) stateDescription];
      v12 = 138543362;
      v13 = v8;
      v9 = "ConnectionInvalidation";
      v10 = "%{public}@ connection invalidated";
LABEL_12:
      _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v9, v10, &v12, 0xCu);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    v7 = DPLogHandle_ServiceLifecycle();
    if (os_signpost_enabled(v7))
    {
      v8 = [*(a1 + 32) stateDescription];
      v12 = 138543362;
      v13 = v8;
      v9 = "ConnectionInterrupted";
      v10 = "%{public}@ connection interrupted";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (MEMORY[0x23838A140](v3) == MEMORY[0x277D86468])
  {
    [*(a1 + 40) handleRequest:v4 state:*(a1 + 32)];
  }

  else
  {
    v5 = MEMORY[0x238389FD0](v4);
    v6 = DPLogHandle_ServiceLifecycle();
    if (os_signpost_enabled(v6))
    {
      v12 = 136446210;
      v13 = v5;
      _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidMessageType", "Invalid message type unexpected: %{public}s", &v12, 0xCu);
    }

    if (v5)
    {
      free(v5);
    }
  }

LABEL_14:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = DPLogHandle_ServiceLifecycle();
  if (os_signpost_enabled(v3))
  {
    v4 = [(DRSClientConnectionState *)self stateDescription];
    *buf = 138543362;
    v8 = v4;
    _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConnectionStateDealloc", "Disconnecting from %{public}@", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = DRSClientConnectionState;
  [(DRSClientConnectionState *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (NSString)stateDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  procName = self->_procName;
  v5 = "";
  if (self->_hasAdminEntitlement)
  {
    v5 = "(admin)";
  }

  v6 = [v3 initWithFormat:@"DRSClient [%d:%@] %s", self->_pid, self->_procName, v5];

  return v6;
}

@end