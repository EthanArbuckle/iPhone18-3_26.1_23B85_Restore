@interface DRSTaskingClientConnectionState
- (BOOL)hasTeamIDEntitlement:(id)a3 connection:(id)a4;
- (DRSTaskingClientConnectionState)initWithConnection:(id)a3 service:(id)a4;
- (NSString)stateDescription;
- (void)dealloc;
@end

@implementation DRSTaskingClientConnectionState

- (DRSTaskingClientConnectionState)initWithConnection:(id)a3 service:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = DRSTaskingClientConnectionState;
  v8 = [(DRSTaskingClientConnectionState *)&v32 init];
  if (v8)
  {
    pid = xpc_connection_get_pid(v6);
    v8->_pid = pid;
    v10 = DRSPidToProcessName(pid);
    procName = v8->_procName;
    v8->_procName = v10;

    v12 = [MEMORY[0x277CBEB38] dictionary];
    cachedEntitlements = v8->_cachedEntitlements;
    v8->_cachedEntitlements = v12;

    v14 = xpc_connection_copy_entitlement_value();
    v15 = v14;
    if (v14)
    {
      LOBYTE(v14) = MEMORY[0x23838A140](v14) == MEMORY[0x277D86448] && xpc_BOOL_get_value(v15);
    }

    v8->_hasAdminEntitlement = v14;
    v16 = DPLogHandle_ServiceTasking();
    if (os_signpost_enabled(v16))
    {
      v17 = [(DRSTaskingClientConnectionState *)v8 stateDescription];
      v18 = [(DRSTaskingClientConnectionState *)v8 hasAdminEntitlement];
      v19 = @"does not have";
      if (v18)
      {
        v19 = @"has";
      }

      *buf = 138543618;
      v34 = v17;
      v35 = 2114;
      v36 = v19;
      _os_signpost_emit_with_name_impl(&dword_232906000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AdminEntitlementSetting", "%{public}@ connection %{public}@ the admin entitlement", buf, 0x16u);
    }

    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __62__DRSTaskingClientConnectionState_initWithConnection_service___block_invoke;
    v29 = &unk_27899EF48;
    v30 = v8;
    v20 = v7;
    v31 = v20;
    xpc_connection_set_event_handler(v6, &v26);
    v21 = [v20 messageQueue];
    xpc_connection_set_target_queue(v6, v21);

    xpc_connection_activate(v6);
  }

  v22 = DPLogHandle_ServiceTasking();
  if (os_signpost_enabled(v22))
  {
    v23 = [(DRSTaskingClientConnectionState *)v8 stateDescription];
    *buf = 138543362;
    v34 = v23;
    _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NewClientConnection", "Received client connection from %{public}@", buf, 0xCu);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v8;
}

void __62__DRSTaskingClientConnectionState_initWithConnection_service___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x277D863F8])
  {
    v8 = DPLogHandle_ServiceTasking();
    if (!os_signpost_enabled(v8))
    {
      goto LABEL_19;
    }

    v9 = [*(a1 + 32) stateDescription];
    v13 = 138543362;
    v14 = v9;
    v10 = "ConnectionInvalidation";
    v11 = "%{public}@ connection invalidated";
LABEL_18:
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v10, v11, &v13, 0xCu);

    goto LABEL_19;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    v8 = DPLogHandle_ServiceTasking();
    if (!os_signpost_enabled(v8))
    {
      goto LABEL_19;
    }

    v9 = [*(a1 + 32) stateDescription];
    v13 = 138543362;
    v14 = v9;
    v10 = "ConnectionInterrupted";
    v11 = "%{public}@ connection interrupted";
    goto LABEL_18;
  }

  if (v3 == MEMORY[0x277D86420])
  {
    v8 = DPLogHandle_ServiceTasking();
    if (!os_signpost_enabled(v8))
    {
      goto LABEL_19;
    }

    v9 = [*(a1 + 32) stateDescription];
    v13 = 138543362;
    v14 = v9;
    v10 = "TerminationImminent";
    v11 = "%{public}@ termination imminent";
    goto LABEL_18;
  }

  if (v3 == MEMORY[0x277D86418])
  {
    v8 = DPLogHandle_ServiceTasking();
    if (os_signpost_enabled(v8))
    {
      v9 = [*(a1 + 32) stateDescription];
      v13 = 138543362;
      v14 = v9;
      v10 = "CodeSigningRequirementsNotMet";
      v11 = "%{public}@ connection doesn't meet code signing requirements";
      goto LABEL_18;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (MEMORY[0x23838A140](v3) == MEMORY[0x277D86468])
  {
    [*(a1 + 40) handleRequest:v4 state:*(a1 + 32)];
  }

  else
  {
    v5 = MEMORY[0x238389FD0](v4);
    v6 = DPLogHandle_ServiceTasking();
    if (os_signpost_enabled(v6))
    {
      v7 = [*(a1 + 32) stateDescription];
      v13 = 138543618;
      v14 = v7;
      v15 = 2082;
      v16 = v5;
      _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnexpectedMessageType", "%{public}@ message type unexpected: %{public}s", &v13, 0x16u);
    }

    if (v5)
    {
      free(v5);
    }
  }

LABEL_20:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = DPLogHandle_ServiceTasking();
  if (os_signpost_enabled(v3))
  {
    v4 = [(DRSTaskingClientConnectionState *)self stateDescription];
    *buf = 138543362;
    v8 = v4;
    _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConnectionStateDealloc", "Disconnecting from %{public}@", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = DRSTaskingClientConnectionState;
  [(DRSTaskingClientConnectionState *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasTeamIDEntitlement:(id)a3 connection:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(DRSTaskingClientConnectionState *)self cachedEntitlements];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    LOBYTE(v10) = [v9 BOOLValue];
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.diagnosticpipeline.tasking.%@", v6];
    [v11 UTF8String];
    v12 = xpc_connection_copy_entitlement_value();
    v13 = v12;
    v10 = v12 && MEMORY[0x23838A140](v12) == MEMORY[0x277D86448] && xpc_BOOL_get_value(v13);
    v14 = DPLogHandle_ServiceTasking();
    if (os_signpost_enabled(v14))
    {
      v15 = [(DRSTaskingClientConnectionState *)self stateDescription];
      v16 = "does not have";
      *buf = 138543874;
      v22 = v15;
      if (v10)
      {
        v16 = "has";
      }

      v23 = 2082;
      v24 = v16;
      v25 = 2112;
      v26 = v11;
      _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConnectionStateTeamIDEntitlement", "Connection for %{public}@ %{public}s entitlement '%@'", buf, 0x20u);
    }

    v17 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    v18 = [(DRSTaskingClientConnectionState *)self cachedEntitlements];
    [v18 setObject:v17 forKeyedSubscript:v6];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

- (NSString)stateDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  procName = self->_procName;
  v5 = "";
  if (self->_hasAdminEntitlement)
  {
    v5 = " (admin)";
  }

  v6 = [v3 initWithFormat:@"DRSTaskingClient [%d:%@]%s", self->_pid, self->_procName, v5];

  return v6;
}

@end