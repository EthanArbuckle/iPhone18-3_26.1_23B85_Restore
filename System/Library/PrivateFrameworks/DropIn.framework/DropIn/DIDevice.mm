@interface DIDevice
+ (id)stringForDeviceState:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (DIDevice)init;
- (DIDevice)initWithCoder:(id)a3;
- (DIDeviceDelegate)delegate;
- (DIXPCConnectionManager)connectionManager;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)notifyDeviceDidChange;
- (void)notifyDidUpdateState;
- (void)refreshStateWithCompletionHandler:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setStateExpiration:(id)a3;
- (void)updateState:(int64_t)a3 reason:(id)a4 completionHandler:(id)a5;
- (void)updateWithDevice:(id)a3 updateState:(BOOL)a4;
@end

@implementation DIDevice

- (DIDevice)init
{
  v13.receiver = self;
  v13.super_class = DIDevice;
  v2 = [(DIDevice *)&v13 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = &stru_285D02BA8;

    v3->_state = 0;
    v5 = [MEMORY[0x277CBEAA8] distantPast];
    stateExpiration = v3->_stateExpiration;
    v3->_stateExpiration = v5;

    stateReason = v3->_stateReason;
    v3->_stateReason = @"unknown";

    v3->_isCurrentDevice = 0;
    v8 = objc_opt_new();
    lock = v3->_lock;
    v3->_lock = v8;

    v10 = [[DIDeviceStateUpdateThrottler alloc] initWithThrottleTimeInterval:10.0];
    stateUpdateThrottler = v3->_stateUpdateThrottler;
    v3->_stateUpdateThrottler = v10;
  }

  return v3;
}

- (void)setDelegate:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  v5 = DILogHandleDevice();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = &stru_285D02BA8;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Delegate set to %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DIDevice *)self homeKitIdentifier];
      v7 = [(DIDevice *)v5 homeKitIdentifier];
      v8 = [v6 isEqual:v7];
      if (v8)
      {
        goto LABEL_4;
      }

      v12 = [(DIDevice *)self homeKitIdentifier];
      if (v12)
      {
        v11 = 0;
LABEL_18:

        goto LABEL_19;
      }

      v14 = [(DIDevice *)v5 homeKitIdentifier];
      if (!v14)
      {
LABEL_4:
        v9 = [(DIDevice *)self homeKitHomeIdentifier];
        v10 = [(DIDevice *)v5 homeKitHomeIdentifier];
        if ([v9 isEqual:v10])
        {

          v11 = 1;
          if (v8)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v13 = [(DIDevice *)self homeKitHomeIdentifier];
          if (v13)
          {

            v11 = 0;
            if (v8)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v15 = [(DIDevice *)v5 homeKitHomeIdentifier];
            v11 = v15 == 0;

            if (v8)
            {
LABEL_19:

              goto LABEL_20;
            }
          }
        }
      }

      else
      {

        v11 = 0;
      }

      v12 = 0;
      goto LABEL_18;
    }

    v11 = 0;
  }

LABEL_20:

  return v11;
}

- (void)setStateExpiration:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_stateExpiration, a3);
  [(DIDevice *)self setTimer:0];
  [v5 timeIntervalSince1970];
  v7 = v6;
  v8 = [MEMORY[0x277CBEAA8] now];
  [v8 timeIntervalSince1970];
  v10 = v9;

  if (v7 > v10)
  {
    [v5 timeIntervalSinceNow];
    v12 = v11;
    v13 = [(DIDevice *)self homeKitIdentifier];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = objc_opt_new();
    }

    v16 = v15;

    objc_initWeak(&location, self);
    v17 = [DIOneshotTimer alloc];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __31__DIDevice_setStateExpiration___block_invoke;
    v19[3] = &unk_278FB8FA0;
    objc_copyWeak(&v20, &location);
    v19[4] = self;
    v18 = [(DIOneshotTimer *)v17 initWithInterval:0 queue:v16 identifier:@"DeviceExpiration" label:v19 handler:v12];
    [(DIDevice *)self setTimer:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

uint64_t __31__DIDevice_setStateExpiration___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];

  v2 = DILogHandleDevice();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = &stru_285D02BA8;
    _os_log_impl(&dword_249DA7000, v2, OS_LOG_TYPE_DEFAULT, "%@Drop In availability expired: updating state to unavailable.", buf, 0xCu);
  }

  v3 = [*(a1 + 32) lock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__DIDevice_setStateExpiration___block_invoke_39;
  v6[3] = &unk_278FB8F78;
  v6[4] = *(a1 + 32);
  [v3 di_synchronize:v6];

  [*(a1 + 32) notifyDeviceDidChange];
  result = [*(a1 + 32) notifyDidUpdateState];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __31__DIDevice_setStateExpiration___block_invoke_39(uint64_t a1)
{
  [*(a1 + 32) setStateReason:@"Drop In Availability Expired"];
  v2 = *(a1 + 32);

  return [v2 setState:1];
}

- (unint64_t)hash
{
  v2 = [(DIDevice *)self homeKitIdentifier];
  v3 = [v2 UUIDString];
  v4 = [v3 hash];

  return v4;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v3 = [(DIDevice *)self name];
  v4 = [(DIDevice *)self homeKitHomeIdentifier];
  v5 = [(DIDevice *)self homeKitIdentifier];
  v6 = [DIDevice stringForDeviceState:[(DIDevice *)self state]];
  v7 = [(DIDevice *)self stateReason];
  v8 = [(DIDevice *)self stateExpiration];
  v9 = [(DIDevice *)self isCurrentDevice];
  v10 = [(DIDevice *)self connectionManager];
  v11 = [(DIDevice *)self delegate];
  v12 = [v15 stringWithFormat:@"<%@: %p> Nm = %@, HmID = %@, AccID = %@, St = %@, Rsn = %@, Exp: %@, IsCurrDev = %d, ConnMgr = %p, Delegate = %@", v14, self, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(DIDevice *)self lock];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __25__DIDevice_copyWithZone___block_invoke;
  v9[3] = &unk_278FB8E48;
  v6 = v4;
  v10 = v6;
  v11 = self;
  [v5 di_synchronize:v9];

  v7 = v6;
  return v7;
}

uint64_t __25__DIDevice_copyWithZone___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) delegate];
  [*(a1 + 32) setDelegate:v2];

  v3 = [*(a1 + 40) connectionManager];
  [*(a1 + 32) setConnectionManager:v3];

  v4 = [*(a1 + 40) name];
  [*(a1 + 32) setName:v4];

  v5 = [*(a1 + 40) homeKitIdentifier];
  [*(a1 + 32) setHomeKitIdentifier:v5];

  v6 = [*(a1 + 40) homeKitHomeIdentifier];
  [*(a1 + 32) setHomeKitHomeIdentifier:v6];

  v7 = [*(a1 + 40) idsIdentifier];
  [*(a1 + 32) setIdsIdentifier:v7];

  [*(a1 + 32) setIsCurrentDevice:{objc_msgSend(*(a1 + 40), "isCurrentDevice")}];
  [*(a1 + 32) setState:{objc_msgSend(*(a1 + 40), "state")}];
  v8 = [*(a1 + 40) stateReason];
  [*(a1 + 32) setStateReason:v8];

  v9 = [*(a1 + 40) stateExpiration];
  v10 = *(a1 + 32);
  v11 = *(v10 + 72);
  *(v10 + 72) = v9;

  return MEMORY[0x2821F96F8]();
}

+ (id)stringForDeviceState:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    v5 = @"Drop In State Unknown";
  }

  else
  {
    v5 = off_278FB9038[a3 - 1];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"(%lu) %@", a3, v5, v3, v4];
}

- (void)updateState:(int64_t)a3 reason:(id)a4 completionHandler:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = DILogHandleDevice();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = _Block_copy(v9);
    *buf = 138413058;
    v28 = &stru_285D02BA8;
    v29 = 2048;
    v30 = a3;
    v31 = 2112;
    v32 = v11;
    v33 = 2112;
    v34 = self;
    _os_log_impl(&dword_249DA7000, v10, OS_LOG_TYPE_DEBUG, "%@Requesting state update to %ld. Handler = %@, Device = %@", buf, 0x2Au);
  }

  if ([(DIDevice *)self isCurrentDevice])
  {
    v12 = [(DIDevice *)self stateUpdateThrottler];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __49__DIDevice_updateState_reason_completionHandler___block_invoke_2;
    v22[3] = &unk_278FB8FF0;
    v22[4] = self;
    v23 = v9;
    v13 = v9;
    [v12 handleState:a3 reason:v8 handler:v22];

    v14 = v23;
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.dropin" code:2 userInfo:0];
    v16 = DILogHandleDevice();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = &stru_285D02BA8;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&dword_249DA7000, v16, OS_LOG_TYPE_ERROR, "%@Attempting to update state for non-current device %@", buf, 0x16u);
    }

    v17 = [(DIDevice *)self connectionManager];
    v18 = [v17 manager];
    v19 = [v18 clientQueue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __49__DIDevice_updateState_reason_completionHandler___block_invoke;
    v24[3] = &unk_278FB8CF0;
    v25 = v15;
    v26 = v9;
    v14 = v15;
    v20 = v9;
    [DIUtilities onQueue:v19 block:v24];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __49__DIDevice_updateState_reason_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = DILogHandleDevice();
  v9 = v8;
  if (a4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = _Block_copy(*(a1 + 40));
      *buf = 138412546;
      v30 = &stru_285D02BA8;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_249DA7000, v9, OS_LOG_TYPE_DEBUG, "%@Throttled State Update Request. Handler = %@", buf, 0x16u);
    }

    v11 = [*(a1 + 32) connectionManager];
    v12 = [v11 manager];
    v13 = [v12 clientQueue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __49__DIDevice_updateState_reason_completionHandler___block_invoke_63;
    v27[3] = &unk_278FB8FC8;
    v28 = *(a1 + 40);
    [DIUtilities onQueue:v13 block:v27];

    v14 = v28;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = _Block_copy(*(a1 + 40));
      *buf = 138412546;
      v30 = &stru_285D02BA8;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_249DA7000, v9, OS_LOG_TYPE_DEFAULT, "%@Allowing State Update Request. Handler = %@", buf, 0x16u);
    }

    v16 = [*(a1 + 32) connectionManager];
    v17 = [v16 manager];
    v18 = [v17 connection];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __49__DIDevice_updateState_reason_completionHandler___block_invoke_64;
    v25[3] = &unk_278FB8D18;
    v19 = *(a1 + 40);
    v25[4] = *(a1 + 32);
    v26 = v19;
    v20 = [v18 remoteObjectProxyWithErrorHandler:v25];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __49__DIDevice_updateState_reason_completionHandler___block_invoke_2_67;
    v23[3] = &unk_278FB8D18;
    v21 = *(a1 + 40);
    v23[4] = *(a1 + 32);
    v24 = v21;
    [v20 updateState:a2 reason:v7 completionHandler:v23];

    v14 = v26;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __49__DIDevice_updateState_reason_completionHandler___block_invoke_64(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DILogHandleDevice();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v15 = &stru_285D02BA8;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_249DA7000, v4, OS_LOG_TYPE_ERROR, "%@Failed to update state %@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) connectionManager];
  v6 = [v5 manager];
  v7 = [v6 clientQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__DIDevice_updateState_reason_completionHandler___block_invoke_65;
  v11[3] = &unk_278FB8CF0;
  v8 = *(a1 + 40);
  v12 = v3;
  v13 = v8;
  v9 = v3;
  [DIUtilities onQueue:v7 block:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __49__DIDevice_updateState_reason_completionHandler___block_invoke_2_67(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = DILogHandleDevice();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = &stru_285D02BA8;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_249DA7000, v4, OS_LOG_TYPE_ERROR, "%@Failed to update state %@", buf, 0x16u);
    }
  }

  v5 = [*(a1 + 32) connectionManager];
  v6 = [v5 manager];
  v7 = [v6 clientQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__DIDevice_updateState_reason_completionHandler___block_invoke_68;
  v11[3] = &unk_278FB8CF0;
  v8 = *(a1 + 40);
  v12 = v3;
  v13 = v8;
  v9 = v3;
  [DIUtilities onQueue:v7 block:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)notifyDeviceDidChange
{
  v3 = [(DIDevice *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(DIDevice *)self connectionManager];
    v6 = [v5 manager];
    v7 = [v6 clientQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __33__DIDevice_notifyDeviceDidChange__block_invoke;
    v8[3] = &unk_278FB8F78;
    v8[4] = self;
    [DIUtilities onQueue:v7 block:v8];
  }
}

void __33__DIDevice_notifyDeviceDidChange__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  [v2 deviceDidChange:*(a1 + 32)];

  v3 = DILogHandleDevice();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 138412546;
    v7 = &stru_285D02BA8;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_249DA7000, v3, OS_LOG_TYPE_DEFAULT, "%@Call delegate device did change %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)notifyDidUpdateState
{
  v3 = [(DIDevice *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(DIDevice *)self connectionManager];
    v6 = [v5 manager];
    v7 = [v6 clientQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__DIDevice_notifyDidUpdateState__block_invoke;
    v8[3] = &unk_278FB8F78;
    v8[4] = self;
    [DIUtilities onQueue:v7 block:v8];
  }
}

void __32__DIDevice_notifyDidUpdateState__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  [v2 device:*(a1 + 32) didUpdateState:{objc_msgSend(*(a1 + 32), "state")}];

  v3 = DILogHandleDevice();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) state];
    v6 = 138412546;
    v7 = &stru_285D02BA8;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_249DA7000, v3, OS_LOG_TYPE_DEFAULT, "%@Call delegate did update state %ld", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateWithDevice:(id)a3 updateState:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = DILogHandleDevice();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = &stru_285D02BA8;
    *&buf[12] = 2112;
    *&buf[14] = self;
    *&buf[22] = 2112;
    v21 = v6;
    _os_log_impl(&dword_249DA7000, v7, OS_LOG_TYPE_DEFAULT, "%@Update device:\n%@\n\nWith other device:\n%@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v21 = 0;
  v8 = [(DIDevice *)self lock];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __41__DIDevice_updateWithDevice_updateState___block_invoke;
  v15 = &unk_278FB9018;
  v16 = self;
  v9 = v6;
  v19 = v4;
  v17 = v9;
  v18 = buf;
  [v8 di_synchronize:&v12];

  [(DIDevice *)self notifyDeviceDidChange:v12];
  if (v4)
  {
    v10 = *(*&buf[8] + 24);
    if (v10 != [(DIDevice *)self state])
    {
      [(DIDevice *)self notifyDidUpdateState];
    }
  }

  _Block_object_dispose(buf, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __41__DIDevice_updateWithDevice_updateState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) name];
  [*(a1 + 32) setName:v2];

  v3 = [*(a1 + 40) homeKitIdentifier];
  [*(a1 + 32) setHomeKitIdentifier:v3];

  v4 = [*(a1 + 40) homeKitHomeIdentifier];
  [*(a1 + 32) setHomeKitHomeIdentifier:v4];

  v5 = [*(a1 + 40) idsIdentifier];
  [*(a1 + 32) setIdsIdentifier:v5];

  [*(a1 + 32) setIsCurrentDevice:{objc_msgSend(*(a1 + 40), "isCurrentDevice")}];
  if (*(a1 + 56) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) state];
    [*(a1 + 32) setState:{objc_msgSend(*(a1 + 40), "state")}];
    v6 = [*(a1 + 40) stateReason];
    [*(a1 + 32) setStateReason:v6];

    v7 = [*(a1 + 40) stateExpiration];
    [*(a1 + 32) setStateExpiration:v7];
  }
}

- (void)refreshStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(DIDevice *)self connectionManager];
  v6 = [v5 manager];
  v7 = [v6 connection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__DIDevice_refreshStateWithCompletionHandler___block_invoke;
  v13[3] = &unk_278FB8D18;
  v13[4] = self;
  v8 = v4;
  v14 = v8;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__DIDevice_refreshStateWithCompletionHandler___block_invoke_2;
  v11[3] = &unk_278FB8D18;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 requestStateForDevice:self completionHandler:v11];
}

void __46__DIDevice_refreshStateWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DILogHandleDevice();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138412802;
    v16 = &stru_285D02BA8;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_249DA7000, v4, OS_LOG_TYPE_ERROR, "%@Failed to request state for device %@, error = %@", buf, 0x20u);
  }

  v6 = [*(a1 + 32) connectionManager];
  v7 = [v6 manager];
  v8 = [v7 clientQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__DIDevice_refreshStateWithCompletionHandler___block_invoke_74;
  v12[3] = &unk_278FB8CF0;
  v9 = *(a1 + 40);
  v13 = v3;
  v14 = v9;
  v10 = v3;
  [DIUtilities onQueue:v8 block:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __46__DIDevice_refreshStateWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DILogHandleDevice();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 138412802;
      v22 = &stru_285D02BA8;
      v23 = 2112;
      v24 = v3;
      v25 = 2112;
      v26 = v6;
      v7 = "%@Failed to refresh state for device. Error = %@, Device = %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 32;
LABEL_6:
      _os_log_impl(&dword_249DA7000, v8, v9, v7, buf, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 138412546;
    v22 = &stru_285D02BA8;
    v23 = 2112;
    v24 = v11;
    v7 = "%@Refreshed state for device %@";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 22;
    goto LABEL_6;
  }

  v12 = [*(a1 + 32) connectionManager];
  v13 = [v12 manager];
  v14 = [v13 clientQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __46__DIDevice_refreshStateWithCompletionHandler___block_invoke_75;
  v18[3] = &unk_278FB8CF0;
  v15 = *(a1 + 40);
  v19 = v3;
  v20 = v15;
  v16 = v3;
  [DIUtilities onQueue:v14 block:v18];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DIDevice *)self lock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__DIDevice_encodeWithCoder___block_invoke;
  v7[3] = &unk_278FB8E48;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 di_synchronize:v7];
}

void __28__DIDevice_encodeWithCoder___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) name];
  [v2 encodeObject:v3 forKey:@"Name"];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) homeKitIdentifier];
  [v4 encodeObject:v5 forKey:@"HomeKitIdentifier"];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) homeKitHomeIdentifier];
  [v6 encodeObject:v7 forKey:@"HomeKitHomeIdentifier"];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) idsIdentifier];
  [v8 encodeObject:v9 forKey:@"IDSIdentifier"];

  [*(a1 + 32) encodeBool:objc_msgSend(*(a1 + 40) forKey:{"isCurrentDevice"), @"IsCurrentDevice"}];
  [*(a1 + 32) encodeInteger:objc_msgSend(*(a1 + 40) forKey:{"state"), @"State"}];
  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) stateReason];
  [v10 encodeObject:v11 forKey:@"StateReason"];

  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) stateExpiration];
  [v12 encodeObject:v13 forKey:@"StateExpiration"];
}

- (DIDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DIDevice *)self init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
  if (v6)
  {
    objc_storeStrong(&v5->_name, v6);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StateExpiration"];
    if (v7)
    {
      v8 = v7;
      objc_storeStrong(&v5->_stateExpiration, v7);
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StateReason"];
      if (v9)
      {
        stateReason = v5->_stateReason;
        v5->_stateReason = v9;
        v11 = v9;

        v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HomeKitIdentifier"];
        homeKitIdentifier = v5->_homeKitIdentifier;
        v5->_homeKitIdentifier = v12;

        v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HomeKitHomeIdentifier"];
        homeKitHomeIdentifier = v5->_homeKitHomeIdentifier;
        v5->_homeKitHomeIdentifier = v14;

        v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSIdentifier"];
        idsIdentifier = v5->_idsIdentifier;
        v5->_idsIdentifier = v16;

        v5->_isCurrentDevice = [v4 decodeBoolForKey:@"IsCurrentDevice"];
        v5->_state = [v4 decodeIntegerForKey:@"State"];

LABEL_6:
        v6 = v5;
        goto LABEL_9;
      }
    }

    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (DIDeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DIXPCConnectionManager)connectionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionManager);

  return WeakRetained;
}

@end