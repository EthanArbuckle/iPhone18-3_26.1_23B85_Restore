@interface DMCWiFiUtilities
- (BOOL)haveNetwork;
- (DMCWiFiUtilities)init;
- (id)_noRecoveryNetworkError;
- (id)_timeoutError;
- (void)cancelTimeoutBlock;
- (void)cleanup;
- (void)dealloc;
- (void)enableAutoJoinIfNeededWithTimeout:(double)timeout completionHandler:(id)handler;
@end

@implementation DMCWiFiUtilities

- (DMCWiFiUtilities)init
{
  v10.receiver = self;
  v10.super_class = DMCWiFiUtilities;
  v2 = [(DMCWiFiUtilities *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69995C8]);
    interface = v2->_interface;
    v2->_interface = v3;

    v5 = objc_alloc_init(MEMORY[0x1E69995C0]);
    config = v2->_config;
    v2->_config = v5;

    [(CWFAutoJoinParameters *)v2->_config setTrigger:65];
    [(CWFAutoJoinParameters *)v2->_config setMode:1];
    [(CWFInterface *)v2->_interface activate];
    v7 = dispatch_queue_create("WiFi Connection Queue", 0);
    timeoutQueue = v2->_timeoutQueue;
    v2->_timeoutQueue = v7;
  }

  return v2;
}

- (void)dealloc
{
  [(DMCWiFiUtilities *)self cleanup];
  [(DMCWiFiUtilities *)self cancelTimeoutBlock];
  v3.receiver = self;
  v3.super_class = DMCWiFiUtilities;
  [(DMCWiFiUtilities *)&v3 dealloc];
}

- (void)enableAutoJoinIfNeededWithTimeout:(double)timeout completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__DMCWiFiUtilities_enableAutoJoinIfNeededWithTimeout_completionHandler___block_invoke;
  block[3] = &unk_1E7ADC950;
  block[4] = self;
  v7 = handlerCopy;
  v32 = v7;
  v8 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
  timeoutBlock = self->_timeoutBlock;
  self->_timeoutBlock = v8;

  if (([(CWFInterface *)self->_interface powerOn]& 1) != 0)
  {
    v10 = 0;
    goto LABEL_4;
  }

  interface = self->_interface;
  v30 = 0;
  v12 = [(CWFInterface *)interface setPower:1 error:&v30];
  v10 = v30;
  if (v12)
  {
LABEL_4:
    v13 = [(CWFInterface *)self->_interface knownNetworkProfilesWithProperties:0];
    v14 = [v13 count] == 0;

    if (v14)
    {
      v21 = *DMCLogObjects();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B1630000, v21, OS_LOG_TYPE_ERROR, "There is no network in class C and class D, stop WiFi auto join process", buf, 2u);
      }

      [(DMCWiFiUtilities *)self cancelTimeoutBlock];
      _noRecoveryNetworkError = [(DMCWiFiUtilities *)self _noRecoveryNetworkError];
      (*(v7 + 2))(v7, 0, _noRecoveryNetworkError);
    }

    else
    {
      v15 = dispatch_time(0, (timeout * 1000000000.0));
      dispatch_after(v15, self->_timeoutQueue, self->_timeoutBlock);
      [(CWFInterface *)self->_interface performAutoJoinWithParameters:self->_config reply:&__block_literal_global_19];
      objc_initWeak(&location, self);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __72__DMCWiFiUtilities_enableAutoJoinIfNeededWithTimeout_completionHandler___block_invoke_7;
      v26[3] = &unk_1E7ADD2B8;
      objc_copyWeak(&v28, &location);
      v16 = v7;
      v27 = v16;
      [(CWFInterface *)self->_interface setEventHandler:v26];
      v17 = self->_interface;
      v25 = v10;
      v18 = [(CWFInterface *)v17 startMonitoringEventType:12 error:&v25];
      v19 = v25;

      if ((v18 & 1) == 0)
      {
        v20 = *DMCLogObjects();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v34 = v19;
          _os_log_impl(&dword_1B1630000, v20, OS_LOG_TYPE_ERROR, "Error monitoring CWFEvent: %{public}@", buf, 0xCu);
        }

        [(DMCWiFiUtilities *)self cancelTimeoutBlock];
        (*(v16 + 2))(v16, 0, v19);
      }

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
      v10 = v19;
    }

    goto LABEL_16;
  }

  v23 = *DMCLogObjects();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v34 = v10;
    _os_log_impl(&dword_1B1630000, v23, OS_LOG_TYPE_ERROR, "Error turning WiFi power on: %{public}@", buf, 0xCu);
  }

  [(DMCWiFiUtilities *)self cancelTimeoutBlock];
  (*(v7 + 2))(v7, 0, v10);
LABEL_16:

  v24 = *MEMORY[0x1E69E9840];
}

void __72__DMCWiFiUtilities_enableAutoJoinIfNeededWithTimeout_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  [*(*(a1 + 32) + 8) stopMonitoringEventType:12];
  v4 = [*(a1 + 32) haveNetwork];
  v5 = *(a1 + 40);
  if (v4)
  {
    v6 = *(v5 + 16);
    v7 = *(a1 + 40);

    v6(v7, 1, 0);
  }

  else
  {
    v8 = [*(a1 + 32) _timeoutError];
    (*(v5 + 16))(v5, 0, v8);
  }
}

void __72__DMCWiFiUtilities_enableAutoJoinIfNeededWithTimeout_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&dword_1B1630000, v3, OS_LOG_TYPE_ERROR, "Error performing auto join with parameters: %{public}@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __72__DMCWiFiUtilities_enableAutoJoinIfNeededWithTimeout_completionHandler___block_invoke_7(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3 && WeakRetained && [v3 type] == 12)
  {
    v6 = [v3 info];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69995B0]];

    v8 = *DMCLogObjects();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v7 debugDescription];
      v11 = [v10 copy];
      v24 = 138412290;
      v25 = v11;
      _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_DEFAULT, "autojoin state : %@", &v24, 0xCu);
    }

    if (v7)
    {
      v12 = [v7 joinAttempts];
      v13 = v12;
      if (v12 && [v12 count])
      {
        v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v13, "count") - 1}];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 IPv4AssignedAt];
          if (v16)
          {
            v17 = v16;
            v18 = [v7 result];

            if (v18)
            {
LABEL_19:
              v23 = *DMCLogObjects();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v24) = 0;
                _os_log_impl(&dword_1B1630000, v23, OS_LOG_TYPE_DEFAULT, "WiFi auto join succeeded", &v24, 2u);
              }

              [v5 cancelTimeoutBlock];
              [v5[1] stopMonitoringEventType:12];
              (*(*(a1 + 32) + 16))();
            }
          }

          else
          {
            v20 = [v15 IPv6AssignedAt];
            if (v20)
            {
              v21 = v20;
              v22 = [v7 result];

              if (v22)
              {
                goto LABEL_19;
              }
            }
          }
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
      v13 = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)haveNetwork
{
  iPv4Addresses = [(CWFInterface *)self->_interface IPv4Addresses];
  iPv4RouterAddress = [(CWFInterface *)self->_interface IPv4RouterAddress];
  v5 = [iPv4Addresses count];
  iPv6Addresses = [(CWFInterface *)self->_interface IPv6Addresses];
  iPv6RouterAddress = [(CWFInterface *)self->_interface IPv6RouterAddress];
  v8 = [iPv6Addresses count];
  if (v5)
  {
    v9 = iPv4RouterAddress == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 && (v8 ? (v10 = iPv6RouterAddress == 0) : (v10 = 1), v10))
  {
    v11 = 0;
  }

  else
  {
    networkName = [(CWFInterface *)self->_interface networkName];
    v11 = networkName != 0;
  }

  return v11;
}

- (void)cleanup
{
  [(CWFInterface *)self->_interface stopMonitoringEventType:12];
  interface = self->_interface;

  [(CWFInterface *)interface invalidate];
}

- (void)cancelTimeoutBlock
{
  timeoutBlock = self->_timeoutBlock;
  if (timeoutBlock)
  {
    dispatch_block_cancel(timeoutBlock);
    v4 = self->_timeoutBlock;
    self->_timeoutBlock = 0;
  }
}

- (id)_timeoutError
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = DMCErrorArray(@"WiFi Auto Join timed out", a2, v2, v3, v4, v5, v6, v7, 0);
  v10 = [v8 DMCErrorWithDomain:@"MDMErrorDomain" code:12128 descriptionArray:v9 errorType:@"DMCFatalError"];

  return v10;
}

- (id)_noRecoveryNetworkError
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = DMCErrorArray(@"No recovery network has found", a2, v2, v3, v4, v5, v6, v7, 0);
  v10 = [v8 DMCErrorWithDomain:@"MDMErrorDomain" code:12133 descriptionArray:v9 errorType:@"DMCFatalError"];

  return v10;
}

@end