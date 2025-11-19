@interface CMContinuityCaptureCompositeDevice
- (BOOL)hasValidStreamState;
- (BOOL)postEventAction:(unint64_t)a3 args:(id)a4;
- (BOOL)setupCaptureDevices;
- (BOOL)shouldSwitchConnection;
- (BOOL)validConnectionResetEventForData:(id)a3;
- (CMContinuityCaptureCompositeDevice)initWithDevice:(id)a3 provider:(id)a4;
- (CMContinuityCaptureProvider)provider;
- (NSString)description;
- (id)controlWithName:(id)a3;
- (int64_t)currentPreferredAvailableTransport;
- (void)_device:(id)a3 updatedValueForControl:(id)a4;
- (void)_handlePlacementStepSkipped;
- (void)_observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)_postEvent:(id)a3 entity:(int64_t)a4 data:(id)a5;
- (void)_startStream:(id)a3 option:(unint64_t)a4 completion:(id)a5;
- (void)_stopStream:(int64_t)a3 option:(unint64_t)a4 completion:(id)a5;
- (void)connectionInterrupted:(id)a3 forDevice:(id)a4;
- (void)deferDevice:(BOOL)a3;
- (void)device:(id)a3 updatedValueForControl:(id)a4;
- (void)didCaptureStillImage:(id)a3 entity:(int64_t)a4;
- (void)disableAutoTransportSwitch:(BOOL)a3;
- (void)handleAVCNegotiation:(int64_t)a3 data:(id)a4;
- (void)handleBatteryState:(id)a3;
- (void)handleRemoteSystemNotificationControl:(id)a3;
- (void)logConnectionSwitch:(id)a3;
- (void)logRemoteSessionSummary:(id)a3;
- (void)notifyTransportError:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performConnectionChangeEventIfApplicable:(id)a3;
- (void)performConnectionDisconnectEventIfApplicable:(id)a3;
- (void)postEvent:(id)a3 entity:(int64_t)a4 data:(id)a5;
- (void)postEventOnAllEntities:(id)a3 data:(id)a4;
- (void)postValueChangeForControl:(id)a3;
- (void)registerStreamIntentForCaptureDevice:(id)a3 completion:(id)a4;
- (void)relayEvent:(id)a3;
- (void)relayUserDisconnect;
- (void)resetTransportDevice:(id)a3;
- (void)scheduleBatteryLevelNotification:(id)a3;
- (void)scheduleSystemPressureNotification:(id)a3;
- (void)setValueForControl:(id)a3 completion:(id)a4;
- (void)setupControls;
- (void)setupSidebandMessageNotificationHandler;
- (void)startStream:(id)a3 option:(unint64_t)a4 completion:(id)a5;
- (void)stopStream:(int64_t)a3 option:(unint64_t)a4 completion:(id)a5;
- (void)terminateCompleteForDevice:(id)a3;
- (void)unregisterStreamIntentForCaptureDevice:(id)a3;
@end

@implementation CMContinuityCaptureCompositeDevice

uint64_t __62__CMContinuityCaptureCompositeDevice_initWithDevice_provider___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addObserver:*(a1 + 40) forKeyPath:@"deviceStatus" options:3 context:0];
  [*(a1 + 32) addObserver:*(a1 + 40) forKeyPath:@"placementStepSkipped" options:3 context:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 addObserver:v3 forKeyPath:@"terminationDeferred" options:3 context:0];
}

- (void)setupSidebandMessageNotificationHandler
{
  objc_initWeak(&location, self);
  v3 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__CMContinuityCaptureCompositeDevice_setupSidebandMessageNotificationHandler__block_invoke;
  v7[3] = &unk_278D5C058;
  objc_copyWeak(&v8, &location);
  v4 = [(ContinuityCaptureDeviceClient *)self->_client device:v7[0]];
  v5 = [v4 deviceIdentifier];
  v6 = [v5 UUIDString];
  [v3 addSidebandMessageNotificationHandler:v7 forDeviceIdentifier:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __77__CMContinuityCaptureCompositeDevice_setupSidebandMessageNotificationHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__CMContinuityCaptureCompositeDevice_setupSidebandMessageNotificationHandler__block_invoke_2;
    v10[3] = &unk_278D5C030;
    objc_copyWeak(&v14, (a1 + 32));
    v11 = v6;
    v12 = v5;
    v13 = v8;
    dispatch_async(v9, v10);

    objc_destroyWeak(&v14);
  }
}

void __77__CMContinuityCaptureCompositeDevice_setupSidebandMessageNotificationHandler__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    goto LABEL_45;
  }

  v3 = [*(a1 + 32) objectForKeyedSubscript:@"ContinuityCaptureRapportClientMessageTypeKey"];
  v50 = a1;
  if ([v3 integerValue] == 7 && (objc_msgSend(*(a1 + 32), "objectForKeyedSubscript:", @"ContinuityCaptureRapportClientTransportSessionIDKey"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [*(a1 + 32) objectForKeyedSubscript:@"ContinuityCaptureRapportClientTransportSessionIDKey"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [*(v50 + 32) objectForKeyedSubscript:@"ContinuityCaptureRapportClientTransportSessionIDKey"];
      v9 = [v8 unsignedLongValue];

      v10 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_loadWeakRetained((v50 + 56));
        v12 = *(v50 + 40);
        *buf = 138412802;
        v64 = v11;
        v65 = 2114;
        v66 = v12;
        v67 = 2048;
        v68 = v9;
        v13 = "%@ Received remote termination complete for %{public}@ transportSessionID : %llx";
LABEL_15:
        _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, v13, buf, 0x20u);

        goto LABEL_16;
      }

      goto LABEL_16;
    }
  }

  else
  {
  }

  v14 = [*(v50 + 32) objectForKeyedSubscript:@"ContinuityCaptureRapportClientMessageTypeKey"];
  if ([v14 integerValue] != 3)
  {
    goto LABEL_18;
  }

  v15 = [*(v50 + 32) objectForKey:@"ContinuityCaptureRapportClientEventNameKey"];
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v15;
  v17 = [*(v50 + 32) objectForKeyedSubscript:@"ContinuityCaptureRapportClientEventNameKey"];
  if (![v17 isEqualToString:@"kCMContinuityCaptureEventUserDisconnect"] || (objc_msgSend(*(v50 + 32), "objectForKeyedSubscript:", @"ContinuityCaptureRapportClientTransportSessionIDKey"), (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {

LABEL_18:
    goto LABEL_19;
  }

  v19 = v18;
  v20 = [*(v50 + 32) objectForKeyedSubscript:@"ContinuityCaptureRapportClientTransportSessionIDKey"];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if (v21)
  {
    v22 = [*(v50 + 32) objectForKeyedSubscript:@"ContinuityCaptureRapportClientTransportSessionIDKey"];
    v9 = [v22 unsignedLongValue];

    v10 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_loadWeakRetained((v50 + 56));
      v23 = *(v50 + 40);
      *buf = 138412802;
      v64 = v11;
      v65 = 2114;
      v66 = v23;
      v67 = 2048;
      v68 = v9;
      v13 = "%@ Received user disconnect for %{public}@ transportSessionID : %llx";
      goto LABEL_15;
    }

LABEL_16:

    [WeakRetained[8] remoteSessionTerminationForIdentifier:v9];
    goto LABEL_45;
  }

LABEL_19:
  v24 = [*(v50 + 32) objectForKeyedSubscript:@"ContinuityCaptureRapportClientMessageTypeKey"];
  if ([v24 integerValue] != 9 || (objc_msgSend(*(v50 + 32), "objectForKeyedSubscript:", @"ContinuityCaptureRapportClientSystemControlsKey"), (v25 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_45;
  }

  v26 = v25;
  v27 = [*(v50 + 32) objectForKeyedSubscript:@"ContinuityCaptureRapportClientSystemControlsKey"];
  objc_opt_class();
  v28 = objc_opt_isKindOfClass();

  if (v28)
  {
    v49 = WeakRetained;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = [*(v50 + 32) objectForKeyedSubscript:@"ContinuityCaptureRapportClientSystemControlsKey"];
    v29 = [obj countByEnumeratingWithState:&v59 objects:v58 count:16];
    if (!v29)
    {
      goto LABEL_43;
    }

    v30 = v29;
    v31 = v50;
    v32 = *v60;
    while (1)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v60 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v59 + 1) + 8 * i);
        v35 = MEMORY[0x277CCAAC8];
        v36 = objc_opt_class();
        v57 = 0;
        v37 = [v35 unarchivedObjectOfClass:v36 fromData:v34 error:&v57];
        v38 = v57;
        if (v37)
        {
          v39 = CMContinuityCaptureLog(0);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = objc_loadWeakRetained((v31 + 56));
            *buf = 138412546;
            v64 = v40;
            v65 = 2114;
            v66 = v37;
            _os_log_impl(&dword_242545000, v39, OS_LOG_TYPE_DEFAULT, "%@ Received control %{public}@ update", buf, 0x16u);
          }

          v41 = [v37 name];
          if ([v41 isEqualToString:@"kCMContinuityCaptureControlBatteryLevel"])
          {
          }

          else
          {
            v42 = [v37 name];
            v43 = [v42 isEqualToString:@"kCMContinuityCaptureControlBatteryState"];

            if (!v43)
            {
              goto LABEL_41;
            }
          }

          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v44 = [*(*(v31 + 48) + 16) allValues];
          v45 = [v44 countByEnumeratingWithState:&v53 objects:v52 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v54;
            do
            {
              for (j = 0; j != v46; ++j)
              {
                if (*v54 != v47)
                {
                  objc_enumerationMutation(v44);
                }

                [*(*(&v53 + 1) + 8 * j) setValueForControl:v37 completion:0];
              }

              v46 = [v44 countByEnumeratingWithState:&v53 objects:v52 count:16];
            }

            while (v46);
          }

          v31 = v50;
        }

LABEL_41:
      }

      v30 = [obj countByEnumeratingWithState:&v59 objects:v58 count:16];
      if (!v30)
      {
LABEL_43:

        WeakRetained = v49;
        break;
      }
    }
  }

LABEL_45:
}

- (void)relayUserDisconnect
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__CMContinuityCaptureCompositeDevice_relayUserDisconnect__block_invoke;
  v4[3] = &unk_278D5C080;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __57__CMContinuityCaptureCompositeDevice_relayUserDisconnect__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 32));
      *buf = 138543618;
      v17 = v4;
      v18 = 2082;
      v19 = "[CMContinuityCaptureCompositeDevice relayUserDisconnect]_block_invoke";
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s", buf, 0x16u);
    }

    v5 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    v6 = [v5 activeSession];
    v7 = [v6 shieldSessionID];

    if (v7)
    {
      v8 = +[CMContinuityCaptureSessionStateManager sharedInstance];
      v9 = [v8 activeSession];
      v10 = [v9 shieldSessionID];

      v11 = [WeakRetained[8] device];
      [v11 relayUserDisconnectForTransport:objc_msgSend(WeakRetained reason:"currentPreferredAvailableTransport") shieldSessionID:{@"User disconnect", v10}];

      v12 = +[CMContinuityCaptureDiscoverySession sharedInstance];
      v13 = [v12 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__CMContinuityCaptureCompositeDevice_relayUserDisconnect__block_invoke_17;
      block[3] = &unk_278D5C080;
      objc_copyWeak(&v15, (a1 + 32));
      dispatch_async(v13, block);

      objc_destroyWeak(&v15);
    }

    else
    {
      v10 = @"Unknown";
    }
  }
}

void __57__CMContinuityCaptureCompositeDevice_relayUserDisconnect__block_invoke_17(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained[8] device];
    [v2 setUserDisconnected:1];

    WeakRetained = v3;
  }
}

- (void)relayEvent:(id)a3
{
  v4 = a3;
  if (os_variant_allows_internal_security_policies() & 1) != 0 || ([v4 isEqualToString:@"kCMContinuityCaptureEventStateMismatched"])
  {
    objc_initWeak(location, self);
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__CMContinuityCaptureCompositeDevice_relayEvent___block_invoke;
    v7[3] = &unk_278D5C0A8;
    objc_copyWeak(&v9, location);
    v8 = v4;
    dispatch_async(queue, v7);

    objc_destroyWeak(&v9);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *location = 138543874;
      *&location[4] = self;
      v11 = 2080;
      v12 = "[CMContinuityCaptureCompositeDevice relayEvent:]";
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ %s not allowed for %{public}@", location, 0x20u);
    }
  }
}

void __49__CMContinuityCaptureCompositeDevice_relayEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 40));
      v5 = *(a1 + 32);
      v7 = 138543874;
      v8 = v4;
      v9 = 2082;
      v10 = "[CMContinuityCaptureCompositeDevice relayEvent:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s name %@", &v7, 0x20u);
    }

    v6 = [WeakRetained[8] device];
    [v6 postEvent:*(a1 + 32) entity:0 data:0 forTransport:{objc_msgSend(WeakRetained, "currentPreferredAvailableTransport")}];
  }
}

- (void)terminateCompleteForDevice:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__CMContinuityCaptureCompositeDevice_terminateCompleteForDevice___block_invoke;
  v13[3] = &unk_278D5C0A8;
  objc_copyWeak(&v15, &location);
  v5 = v4;
  v14 = v5;
  v6 = MEMORY[0x245D12020](v13);
  client = self->_client;
  v8 = [v5 entity];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__CMContinuityCaptureCompositeDevice_terminateCompleteForDevice___block_invoke_3;
  v10[3] = &unk_278D5C0F8;
  objc_copyWeak(&v12, &location);
  v9 = v6;
  v11 = v9;
  [(ContinuityCaptureDeviceClient *)client terminateEntity:v8 option:512 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __65__CMContinuityCaptureCompositeDevice_terminateCompleteForDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained provider];
    if (v4)
    {
      v5 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_loadWeakRetained((a1 + 40));
        v7 = *(a1 + 32);
        *buf = 138543618;
        v29 = v6;
        v30 = 2114;
        v31 = v7;
        _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ terminate complete for %{public}@", buf, 0x16u);
      }

      v8 = *(v3 + 2);
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "entity")}];
      v10 = [v8 objectForKey:v9];

      if (v10)
      {
        v11 = *(v3 + 2);
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "entity")}];
        [v11 removeObjectForKey:v12];

        v13 = [v4 queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __65__CMContinuityCaptureCompositeDevice_terminateCompleteForDevice___block_invoke_18;
        block[3] = &unk_278D5C0D0;
        v27 = *(a1 + 32);
        dispatch_async(v13, block);

        if (![*(v3 + 2) count])
        {
          v14 = *(v3 + 9);
          if (v14)
          {
            dispatch_block_cancel(v14);
            v15 = *(v3 + 9);
            *(v3 + 9) = 0;
          }

          v16 = +[CMContinuityCaptureDiscoverySession sharedInstance];
          v17 = [v16 queue];
          dispatch_assert_queue_not_V2(v17);

          v18 = +[CMContinuityCaptureDiscoverySession sharedInstance];
          v19 = [v18 queue];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __65__CMContinuityCaptureCompositeDevice_terminateCompleteForDevice___block_invoke_2;
          v25[3] = &unk_278D5C0D0;
          v25[4] = v3;
          dispatch_async_and_wait(v19, v25);

          v20 = [*(v3 + 3) objectForKeyedSubscript:@"kCMContinuityCaptureControlCameraHidden"];
          [v20 removeObserver:v3 forKeyPath:@"value" context:0];
          objc_storeWeak(v3 + 11, 0);
          v21 = +[CMContinuityCaptureDiscoverySession sharedInstance];
          v22 = [*(v3 + 8) device];
          v23 = [v22 deviceIdentifier];
          v24 = [v23 UUIDString];
          [v21 removeSidebandMessageNotificationHandlerForDeviceIdentifier:v24];

          [*(v3 + 8) invalidate];
          [v4 terminateCompleteForDevice:v3];
        }
      }
    }
  }
}

void __65__CMContinuityCaptureCompositeDevice_terminateCompleteForDevice___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) device];
  [v2 removeObserver:*(a1 + 32) forKeyPath:@"deviceStatus" context:0];

  v3 = [*(*(a1 + 32) + 64) device];
  [v3 removeObserver:*(a1 + 32) forKeyPath:@"placementStepSkipped" context:0];

  v4 = [*(*(a1 + 32) + 64) device];
  [v4 removeObserver:*(a1 + 32) forKeyPath:@"terminationDeferred" context:0];
}

void __65__CMContinuityCaptureCompositeDevice_terminateCompleteForDevice___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    dispatch_async(WeakRetained[1], *(a1 + 32));
    WeakRetained = v3;
  }
}

- (void)device:(id)a3 updatedValueForControl:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [v7 copy];
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__CMContinuityCaptureCompositeDevice_device_updatedValueForControl___block_invoke;
  v12[3] = &unk_278D5C120;
  objc_copyWeak(&v15, &location);
  v13 = v6;
  v14 = v8;
  v10 = v8;
  v11 = v6;
  dispatch_async(queue, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __68__CMContinuityCaptureCompositeDevice_device_updatedValueForControl___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _device:*(a1 + 32) updatedValueForControl:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)logConnectionSwitch:(id)a3
{
  connectionSwitchLogs = self->_connectionSwitchLogs;
  v5 = a3;
  if ([(NSMutableArray *)connectionSwitchLogs count]>= 0xB)
  {
    [(NSMutableArray *)self->_connectionSwitchLogs removeObjectAtIndex:0];
  }

  v6 = self->_connectionSwitchLogs;
  v7 = MEMORY[0x277CCACA8];
  v9 = CMContinuityCaptureGetCurrentTimeString();
  v8 = [v7 stringWithFormat:@"%@ %@", v5, v9];

  [(NSMutableArray *)v6 addObject:v8];
}

- (void)resetTransportDevice:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__CMContinuityCaptureCompositeDevice_resetTransportDevice___block_invoke;
  v7[3] = &unk_278D5C008;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async_and_wait(queue, v7);
}

void __59__CMContinuityCaptureCompositeDevice_resetTransportDevice___block_invoke(int8x16_t *a1)
{
  v2 = a1[2].i64[0];
  v3 = [*(a1[2].i64[1] + 64) device];
  LOBYTE(v2) = [v2 isEqual:v3];

  if ((v2 & 1) == 0)
  {
    v4 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    v5 = [v4 queue];
    dispatch_assert_queue_not_V2(v5);

    v6 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    v7 = [v6 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__CMContinuityCaptureCompositeDevice_resetTransportDevice___block_invoke_2;
    block[3] = &unk_278D5C008;
    v14 = a1[2];
    v8 = v14.i64[0];
    v21 = vextq_s8(v14, v14, 8uLL);
    dispatch_async_and_wait(v7, block);

    objc_storeWeak((a1[2].i64[1] + 88), a1[2].i64[0]);
  }

  [*(a1[2].i64[1] + 64) resetTransportDevice:{a1[2].i64[0], *&v14}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [*(a1[2].i64[1] + 16) allValues];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v16 + 1) + 8 * v13++) resetTransportDevice:a1[2].i64[0]];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v11);
  }
}

uint64_t __59__CMContinuityCaptureCompositeDevice_resetTransportDevice___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((*(a1 + 32) + 88));
    [v3 removeObserver:*(a1 + 32) forKeyPath:@"deviceStatus" context:0];

    v4 = objc_loadWeakRetained((*(a1 + 32) + 88));
    [v4 removeObserver:*(a1 + 32) forKeyPath:@"placementStepSkipped" context:0];

    v5 = objc_loadWeakRetained((*(a1 + 32) + 88));
    [v5 removeObserver:*(a1 + 32) forKeyPath:@"terminationDeferred" context:0];
  }

  [*(a1 + 40) addObserver:*(a1 + 32) forKeyPath:@"deviceStatus" options:3 context:0];
  [*(a1 + 40) addObserver:*(a1 + 32) forKeyPath:@"placementStepSkipped" options:3 context:0];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v6 addObserver:v7 forKeyPath:@"terminationDeferred" options:3 context:0];
}

- (void)logRemoteSessionSummary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(NSMutableArray *)self->_remoteSessionLogs count]>= 6)
    {
      [(NSMutableArray *)self->_remoteSessionLogs removeObjectAtIndex:0];
    }

    v5 = [v4 dataUsingEncoding:4];
    if (v5)
    {
      v8 = 0;
      v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:1 error:&v8];
      v7 = v8;
      if (v6)
      {
        [(NSMutableArray *)self->_remoteSessionLogs addObject:v6];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v5 = 0;
  }
}

- (void)setupControls
{
  v3 = [CMContinuityCaptureControl alloc];
  v4 = *MEMORY[0x277CE59D8];
  v13 = 0;
  v14 = 0;
  v12 = 1;
  v5 = [(CMContinuityCaptureControl *)v3 initWithName:@"kCMContinuityCaptureControlSystemPressure" attributes:0 entity:4 minimumSupportedVersion:&v12 value:v4];
  [(NSMutableDictionary *)self->_cmControlByName setObject:v5 forKeyedSubscript:@"kCMContinuityCaptureControlSystemPressure"];
  v6 = [CMContinuityCaptureControl alloc];
  v13 = 0;
  v14 = 0;
  v12 = 1;
  v7 = [(CMContinuityCaptureControl *)v6 initWithName:@"kCMContinuityCaptureControlBatteryLevel" attributes:0 entity:4 minimumSupportedVersion:&v12 value:&unk_2854ECC98];
  [(NSMutableDictionary *)self->_cmControlByName setObject:v7 forKeyedSubscript:@"kCMContinuityCaptureControlBatteryLevel"];
  v8 = [CMContinuityCaptureControl alloc];
  v13 = 0;
  v14 = 0;
  v12 = 1;
  v9 = [(CMContinuityCaptureControl *)v8 initWithName:@"kCMContinuityCaptureControlBatteryState" attributes:0 entity:4 minimumSupportedVersion:&v12 value:&unk_2854EC7A0];
  [(NSMutableDictionary *)self->_cmControlByName setObject:v9 forKeyedSubscript:@"kCMContinuityCaptureControlBatteryState"];
  v10 = [CMContinuityCaptureControl alloc];
  v13 = 0;
  v14 = 0;
  v12 = 1;
  v11 = [(CMContinuityCaptureControl *)v10 initWithName:@"kCMContinuityCaptureControlDockedTrackingActive" attributes:0 entity:4 minimumSupportedVersion:&v12 value:MEMORY[0x277CBEC28]];
  [(NSMutableDictionary *)self->_cmControlByName setObject:v11 forKeyedSubscript:@"kCMContinuityCaptureControlDockedTrackingActive"];
}

- (void)postEventOnAllEntities:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(NSMutableDictionary *)self->_captureDeviceByEntityType allValues];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12) postEvent:v6 entity:objc_msgSend(*(*(&v14 + 1) + 8 * v12) data:{"entity"), v7}];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v10);
  }
}

- (BOOL)setupCaptureDevices
{
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v3 = [(ContinuityCaptureDeviceClient *)self->_client device];
  v4 = [v3 capabilities];
  v5 = [v4 devicesCapabilities];

  v6 = [v5 countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v35;
    *&v7 = 138543618;
    v28 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = [v11 entityType];
        if (v12 != 1)
        {
          if (v12 == 2)
          {
            p_super = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
            {
              v14 = [v11 entityType];
              *buf = v28;
              v30 = self;
              v31 = 1024;
              LODWORD(v32) = v14;
              _os_log_impl(&dword_242545000, p_super, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipped creating capture device for entity %d", buf, 0x12u);
            }

            goto LABEL_16;
          }

LABEL_14:
          p_super = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
          {
            v19 = [v11 entityType];
            *buf = v28;
            v30 = self;
            v31 = 1024;
            LODWORD(v32) = v19;
            _os_log_error_impl(&dword_242545000, p_super, OS_LOG_TYPE_ERROR, "%{public}@ failed to create capture device for entity %d", buf, 0x12u);
          }

          goto LABEL_16;
        }

        v15 = [[CMContinuityCaptureVideoDevice alloc] initWithCapabilities:v11 compositeDelegate:self];
        if (!v15)
        {
          goto LABEL_14;
        }

        p_super = &v15->super.super;
        v16 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v28;
          v30 = self;
          v31 = 2114;
          v32 = p_super;
          _os_log_impl(&dword_242545000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Created %{public}@", buf, 0x16u);
        }

        captureDeviceByEntityType = self->_captureDeviceByEntityType;
        v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "entityType")}];
        [(NSMutableDictionary *)captureDeviceByEntityType setObject:p_super forKeyedSubscript:v18];

LABEL_16:
      }

      v8 = [v5 countByEnumeratingWithState:&v34 objects:v33 count:16];
    }

    while (v8);
  }

  v20 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854EC7B8];
  if (v20)
  {
    v21 = v20;
    v22 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854EC788];

    if (v22)
    {
      v23 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854EC788];
      v24 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854EC7B8];
      [v24 setCompanionDevice:v23];

      v25 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854EC7B8];
      v26 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854EC788];
      [v26 setCompanionDevice:v25];
    }
  }

  return [(NSMutableDictionary *)self->_captureDeviceByEntityType count]!= 0;
}

- (void)connectionInterrupted:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 code] && (objc_msgSend(v7, "terminationDeferred") & 1) == 0)
  {
    v8 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection Interrupted, error %{public}@", buf, 0x16u);
    }

    if ([v6 code] == -1012)
    {
      [(CMContinuityCaptureCompositeDevice *)self relayEvent:@"kCMContinuityCaptureEventStateMismatched"];
    }

    else
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{mach_continuous_time(), @"CMContinuityCaptureStateMachineEventDataKeyPostTime"}];
      v12 = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      [(CMContinuityCaptureCompositeDevice *)self postEvent:@"kCMContinuityCaptureEventConnectionDisconnect" entity:0 data:v10];
    }
  }
}

- (int64_t)currentPreferredAvailableTransport
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(ContinuityCaptureDeviceClient *)self->_client device];
  v4 = [v3 wired];

  if (v4)
  {
    return 2;
  }

  v6 = [(ContinuityCaptureDeviceClient *)self->_client device];
  v7 = [v6 wifiP2pActive];

  return v7;
}

- (void)notifyTransportError:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v4 && [v4 code] != -1010 && objc_msgSend(v4, "code") != -1011 && objc_msgSend(v4, "code") == -1005)
  {
    v5 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    v25[0] = @"kContinuityCaptureNotificationKeyTitle";
    v25[1] = @"kContinuityCaptureNotificationKeyBody";
    v26[0] = @"MULTIDEVICE_NOTIFICATION_TITLE";
    v26[1] = @"MULTIDEVICE_NOTIFICATION_BODY";
    v25[2] = @"kContinuityCaptureNotificationKeyBodyArgs";
    v24[0] = &stru_2854DE150;
    v23 = [(CMContinuityCaptureCompositeDevice *)self client];
    v22 = [v23 device];
    v21 = [v22 deviceName];
    v24[1] = v21;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v26[2] = v20;
    v25[3] = @"kContinuityCaptureNotificationKeyIdentifier";
    v6 = MEMORY[0x277CCACA8];
    v19 = [(CMContinuityCaptureCompositeDevice *)self client];
    v18 = [v19 device];
    v17 = [v18 deviceIdentifier];
    v16 = [v17 UUIDString];
    v15 = [v6 stringWithFormat:@"%@%@", @"CMContinuityCaptureMultiDeviceNotification", v16];
    v26[3] = v15;
    v26[4] = MEMORY[0x277CBEC28];
    v25[4] = @"kContinuityCaptureNotificationKeyOneTime";
    v25[5] = @"kContinuityCaptureNotificationKeyDeviceModel";
    v14 = [(CMContinuityCaptureCompositeDevice *)self client];
    v7 = [v14 device];
    v8 = [v7 deviceModel];
    v26[5] = v8;
    v25[6] = @"kContinuityCaptureNotificationKeyDeviceIdentifier";
    v9 = [(CMContinuityCaptureCompositeDevice *)self client];
    v10 = [v9 device];
    v11 = [v10 deviceIdentifier];
    v12 = [v11 UUIDString];
    v26[6] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:7];
    [v5 scheduleNotification:2 data:v13];

    [(CMContinuityCaptureCompositeDevice *)self postEvent:@"kCMContinuityCaptureEventStreamDisableForMultipleStream" entity:0 data:0];
  }
}

- (void)registerStreamIntentForCaptureDevice:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v17 = self;
    v18 = 2080;
    v19 = "[CMContinuityCaptureCompositeDevice registerStreamIntentForCaptureDevice:completion:]";
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %{public}@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__CMContinuityCaptureCompositeDevice_registerStreamIntentForCaptureDevice_completion___block_invoke;
  block[3] = &unk_278D5C170;
  objc_copyWeak(&v15, &location);
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  dispatch_async(queue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __86__CMContinuityCaptureCompositeDevice_registerStreamIntentForCaptureDevice_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    v4 = [WeakRetained client];
    v5 = [v4 device];
    v6 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    v7 = [v6 isSessionInitiatedOnCommunalDevice];
    v8 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    v32 = 0;
    v9 = [v3 startSessionWithDevice:v5 forTransportType:0 validateTransport:1 initiatedOnCommunalDevice:v7 micOnly:objc_msgSend(v8 outError:{"isSessionMicOnly"), &v32}];
    v10 = v32;

    if (v9)
    {
      v11 = [WeakRetained currentPreferredAvailableTransport];
      if (v11)
      {
        v12 = v11;
        v13 = [WeakRetained[7] count];
        v14 = WeakRetained[7];
        v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1[4], "entity")}];
        [v14 addObject:v15];

        if (v13)
        {
          (*(a1[5] + 2))();
        }

        else
        {
          v23 = WeakRetained[8];
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __86__CMContinuityCaptureCompositeDevice_registerStreamIntentForCaptureDevice_completion___block_invoke_64;
          v24[3] = &unk_278D5C148;
          objc_copyWeak(v27, a1 + 6);
          v25 = a1[4];
          v27[1] = v12;
          v26 = a1[5];
          [v23 setPreferredTransport:v12 resetConnection:0 completion:v24];

          objc_destroyWeak(v27);
        }

        goto LABEL_14;
      }

      v21 = a1[5];
      v22 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-536870185 userInfo:0];
      v21[2](v21, v22);
    }

    else
    {
      v16 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_loadWeakRetained(a1 + 6);
        *buf = 138543618;
        v29 = v17;
        v30 = 2114;
        v31 = v10;
        _os_log_impl(&dword_242545000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ startSessionWithDevice returned %{public}@", buf, 0x16u);
      }

      [WeakRetained notifyTransportError:v10];
      v18 = a1[5];
      v19 = objc_alloc(MEMORY[0x277CCA9B8]);
      if (v10)
      {
        v20 = [v10 code];
      }

      else
      {
        v20 = -536870185;
      }

      v22 = [v19 initWithDomain:@"ContinuityCapture" code:v20 userInfo:0];
      v18[2](v18, v22);
    }

LABEL_14:
  }
}

void __86__CMContinuityCaptureCompositeDevice_registerStreamIntentForCaptureDevice_completion___block_invoke_64(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (a2 && [a2 code])
    {
      v5 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_loadWeakRetained((a1 + 48));
        v7 = *(a1 + 32);
        v8 = *(a1 + 56);
        *buf = 138544130;
        v18 = v6;
        v19 = 2114;
        v20 = v7;
        v21 = 1024;
        v22 = v8;
        v23 = 2114;
        v24 = a2;
        _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ registerStreamIntentForDevice setPreferredTransport %{public}@ transport %d error %{public}@", buf, 0x26u);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v9 = objc_loadWeakRetained(WeakRetained + 15);
      if (v9)
      {
        v10 = *(a1 + 56);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __86__CMContinuityCaptureCompositeDevice_registerStreamIntentForCaptureDevice_completion___block_invoke_65;
        v13[3] = &unk_278D5C148;
        objc_copyWeak(v16, (a1 + 48));
        v11 = *(a1 + 32);
        v12 = *(a1 + 56);
        v14 = v11;
        v16[1] = v12;
        v15 = *(a1 + 40);
        [v9 registerStreamIntentForDevice:WeakRetained forTransportType:v10 completion:v13];

        objc_destroyWeak(v16);
      }
    }
  }
}

void __86__CMContinuityCaptureCompositeDevice_registerStreamIntentForCaptureDevice_completion___block_invoke_65(uint64_t a1, void *a2)
{
  if (a2 && [a2 code])
  {
    v4 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      v6 = *(a1 + 32);
      v7 = *(a1 + 56);
      *buf = 138544130;
      v15 = WeakRetained;
      v16 = 2114;
      v17 = v6;
      v18 = 1024;
      v19 = v7;
      v20 = 2114;
      v21 = a2;
      _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ registerStreamIntentForDevice %{public}@ transport %d error %{public}@", buf, 0x26u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = objc_loadWeakRetained((a1 + 48));
    if (v8)
    {
      v13 = v8;
      v9 = [v8[8] device];
      v10 = [v9 magicStateMonitor];
      [v10 holdMagicStateAssertion:1];

      v11 = [v13[8] device];
      v12 = [v11 magicStateMonitor];
      [v12 releaseMagicStateAssertion:2 stateTransitionCoolDownTime:0];

      (*(*(a1 + 40) + 16))();
      v8 = v13;
    }
  }
}

- (void)unregisterStreamIntentForCaptureDevice:(id)a3
{
  v4 = a3;
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v15 = self;
    v16 = 2080;
    v17 = "[CMContinuityCaptureCompositeDevice unregisterStreamIntentForCaptureDevice:]";
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %{public}@", buf, 0x20u);
  }

  v6 = +[CMContinuityCaptureSessionStateManager sharedInstance];
  v7 = +[CMContinuityCaptureSessionStateManager sharedInstance];
  v8 = [v6 isEqual:dispatch_get_specific(v7)] ^ 1;

  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__CMContinuityCaptureCompositeDevice_unregisterStreamIntentForCaptureDevice___block_invoke;
  block[3] = &unk_278D5C198;
  block[4] = self;
  v12 = v4;
  v13 = v8;
  v10 = v4;
  dispatch_async_and_wait(queue, block);
}

void __77__CMContinuityCaptureCompositeDevice_unregisterStreamIntentForCaptureDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if ([*(*(a1 + 32) + 56) count] == 1 && (v4 = *(*(a1 + 32) + 56), objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(*(a1 + 40), "entity")), v5 = objc_claimAutoreleasedReturnValue(), LODWORD(v4) = objc_msgSend(v4, "containsObject:", v5), v5, v4))
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 120));

      v7 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 48);
        v15 = 138543874;
        v16 = v8;
        v17 = 2080;
        v18 = "[CMContinuityCaptureCompositeDevice unregisterStreamIntentForCaptureDevice:]_block_invoke";
        v19 = 1024;
        v20 = v9;
        _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ %s syncOnSessionQueue:%d", &v15, 0x1Cu);
      }

      if (v6)
      {
        [v6 unregisterStreamIntentForDevice:*(a1 + 32)];
      }

      v10 = [*(*(a1 + 32) + 64) device];
      v11 = [v10 magicStateMonitor];
      [v11 releaseMagicStateAssertion:1 stateTransitionCoolDownTime:5];
    }

    else
    {
      v6 = v3;
    }

    v12 = *(a1 + 40);
    v13 = *(*(a1 + 32) + 56);
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "entity")}];
    [v13 removeObject:v14];
  }
}

- (void)disableAutoTransportSwitch:(BOOL)a3
{
  v3 = a3;
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "Off";
    if (v3)
    {
      v6 = "On";
    }

    v7 = 138543618;
    v8 = self;
    v9 = 2080;
    v10 = v6;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ turn %s transport switch guard", &v7, 0x16u);
  }

  atomic_store(v3, &self->autoTransportSwitchDisabled);
}

- (BOOL)shouldSwitchConnection
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = atomic_load(&self->autoTransportSwitchDisabled);
  if (v3)
  {
    v4 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = self;
      _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ skip transport switch since auto switch is disabled", &v18, 0xCu);
    }

    goto LABEL_8;
  }

  v5 = [(ContinuityCaptureDeviceClient *)self->_client device];
  objc_sync_enter(v5);
  v6 = [(ContinuityCaptureDeviceClient *)self->_client device];
  v4 = [v6 activeStreams];

  objc_sync_exit(v5);
  v7 = [v4 count];
  v8 = [(ContinuityCaptureDeviceClient *)self->_client preferredTransport];
  v9 = [(CMContinuityCaptureCompositeDevice *)self currentPreferredAvailableTransport];
  if (v7)
  {
    v10 = v9;
    if (v8 == v9)
    {
      v11 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543618;
        v19 = self;
        v20 = 1024;
        LODWORD(v21) = v8;
        v12 = "%{public}@ Transport status unchanged %d";
        v13 = v11;
        v14 = 18;
LABEL_15:
        _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, v12, &v18, v14);
      }
    }

    else
    {
      v11 = CMContinuityCaptureLog(2);
      v16 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v16)
        {
          v18 = 138544130;
          v19 = self;
          v20 = 2048;
          v21 = [(CMContinuityCaptureCompositeDevice *)self currentSessionID];
          v22 = 1024;
          v23 = v8;
          v24 = 1024;
          v25 = v10;
          _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] Transport Switch from %d -> %d", &v18, 0x22u);
        }

        v15 = 1;
        goto LABEL_17;
      }

      if (v16)
      {
        v18 = 138543362;
        v19 = self;
        v12 = "%{public}@  No valid transport available for switch";
        v13 = v11;
        v14 = 12;
        goto LABEL_15;
      }
    }

    v15 = 0;
LABEL_17:

    goto LABEL_18;
  }

LABEL_8:
  v15 = 0;
LABEL_18:

  return v15;
}

- (void)deferDevice:(BOOL)a3
{
  if (a3)
  {
    v22[0] = @"CMContinuityCaptureStateMachineEventDataKeyOption";
    v22[1] = @"CMContinuityCaptureStateMachineEventDataKeyPostTime";
    v23[0] = &unk_2854EC7D0;
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_continuous_time()];
    v23[1] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    [(CMContinuityCaptureCompositeDevice *)self postEvent:@"kCMContinuityCaptureEventRemoteClientDisconnect" entity:0 data:v5];

    v19 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    v6 = [v19 activeSession];
    v7 = [v6 device];
    v8 = [v7 deviceIdentifier];
    v9 = [v8 UUIDString];
    [(CMContinuityCaptureCompositeDevice *)self client];
    v11 = v10 = self;
    v12 = [v11 device];
    v13 = [v12 deviceIdentifier];
    v14 = [v13 UUIDString];
    v15 = [v9 isEqualToString:v14];

    if (!v15)
    {
      return;
    }

    v16 = [(CMContinuityCaptureCompositeDevice *)v10 client];
    [v16 abortRemoteSession];
  }

  else
  {
    if (self->_undeferBlockForSidecarClient)
    {
      return;
    }

    v20[0] = @"CMContinuityCaptureStateMachineEventDataKeyPostTime";
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_continuous_time()];
    v21[0] = v16;
    v20[1] = @"CMContinuityCaptureStateMachineEventDataKeyForceConnectionReset";
    v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[CMContinuityCaptureCompositeDevice hasValidStreamState](self, "hasValidStreamState")}];
    v21[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    [(CMContinuityCaptureCompositeDevice *)self postEvent:@"kCMContinuityCaptureEventConnectionDisconnect" entity:0 data:v18];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__CMContinuityCaptureCompositeDevice_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v17[3] = &unk_278D5C1C0;
  objc_copyWeak(v21, &location);
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21[1] = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(queue, v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __85__CMContinuityCaptureCompositeDevice_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _observeValueForKeyPath:*(a1 + 32) ofObject:*(a1 + 40) change:*(a1 + 48) context:*(a1 + 64)];
    WeakRetained = v3;
  }
}

- (BOOL)hasValidStreamState
{
  v3 = [(CMContinuityCaptureCompositeDevice *)self client];
  v4 = [v3 device];
  if ([v4 hasStreamIntent])
  {
    v5 = [(CMContinuityCaptureCompositeDevice *)self client];
    v6 = [v5 device];
    if ([v6 userDisconnected])
    {
      v7 = 0;
    }

    else
    {
      v8 = [(CMContinuityCaptureCompositeDevice *)self client];
      v9 = [v8 device];
      v10 = [v9 capabilities];
      if (v10)
      {
        v11 = [(CMContinuityCaptureCompositeDevice *)self client];
        v12 = [v11 device];
        v13 = [v12 capabilities];
        v16 = v8;
        v14 = [v13 userDisabled];

        v7 = v14 ^ 1;
        v8 = v16;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)validConnectionResetEventForData:(id)a3
{
  v4 = a3;
  if (![(ContinuityCaptureDeviceClient *)self->_client lastActivationTime])
  {
    goto LABEL_7;
  }

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyPostTime"];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyPostTime"];
      v8 = [v7 unsignedLongLongValue];
      v9 = [(ContinuityCaptureDeviceClient *)self->_client lastActivationTime];

      if (v8 < v9)
      {
        goto LABEL_7;
      }
    }
  }

  if (![(CMContinuityCaptureCompositeDevice *)self hasValidStreamState])
  {
LABEL_7:
    v11 = 0;
  }

  else
  {
    v10 = [v4 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyPostTime"];
    v11 = v10 != 0;
  }

  return v11;
}

- (void)postEvent:(id)a3 entity:(int64_t)a4 data:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v20 = self;
    v21 = 2080;
    v22 = "[CMContinuityCaptureCompositeDevice postEvent:entity:data:]";
    v23 = 2112;
    v24 = v8;
    v25 = 2048;
    v26 = a4;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@ %ld", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CMContinuityCaptureCompositeDevice_postEvent_entity_data___block_invoke;
  block[3] = &unk_278D5C1C0;
  objc_copyWeak(v18, buf);
  v15 = v8;
  v16 = self;
  v17 = v9;
  v18[1] = a4;
  v12 = v9;
  v13 = v8;
  dispatch_async(queue, block);

  objc_destroyWeak(v18);
  objc_destroyWeak(buf);
}

void __60__CMContinuityCaptureCompositeDevice_postEvent_entity_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if ([*(a1 + 32) isEqualToString:@"kCMContinuityCaptureEventTerminate"])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__CMContinuityCaptureCompositeDevice_postEvent_entity_data___block_invoke_2;
      block[3] = &unk_278D5C080;
      objc_copyWeak(v53, (a1 + 56));
      v3 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
      v4 = *(WeakRetained + 9);
      *(WeakRetained + 9) = v3;

      v5 = dispatch_time(0, 4000000000);
      dispatch_after(v5, *(WeakRetained + 1), *(WeakRetained + 9));
      objc_destroyWeak(v53);
    }

    if ([*(a1 + 32) isEqualToString:@"kCMContinuityCaptureEventUserDisconnect"])
    {
      v6 = +[CMContinuityCaptureDiscoverySession sharedInstance];
      v7 = [v6 queue];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __60__CMContinuityCaptureCompositeDevice_postEvent_entity_data___block_invoke_3;
      v50[3] = &unk_278D5C080;
      objc_copyWeak(&v51, (a1 + 56));
      dispatch_async(v7, v50);

      v8 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v39 = 138543362;
        v40 = WeakRetained;
        _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ User Disconnect", &v39, 0xCu);
      }

      objc_destroyWeak(&v51);
      goto LABEL_28;
    }

    if ([*(a1 + 32) isEqualToString:@"kCMContinuityCaptureEventStreamDisableForWifiContention"])
    {
      v9 = [*(a1 + 40) client];
      v10 = [v9 device];
      v11 = [v10 wired];

      if (v11)
      {
        v12 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = objc_loadWeakRetained((a1 + 56));
          v39 = 138543362;
          v40 = v13;
          _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Skip kCMContinuityCaptureEventStreamDisableForWifiContention since we have active session on USB", &v39, 0xCu);
        }

        goto LABEL_28;
      }
    }

    if ([*(a1 + 32) isEqualToString:@"kCMContinuityCaptureEventConnectionChange"])
    {
      v14 = *(a1 + 48);
      if (v14)
      {
        v15 = [v14 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataForceConnectionChangeForTransport"];

        if (v15)
        {
          goto LABEL_31;
        }
      }

      if ([WeakRetained shouldSwitchConnection] && (objc_msgSend(WeakRetained, "validConnectionResetEventForData:", *(a1 + 48)) & 1) != 0)
      {
        goto LABEL_31;
      }

LABEL_28:
      v24 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
LABEL_36:

        goto LABEL_37;
      }

      v25 = objc_loadWeakRetained((a1 + 56));
      v26 = *(a1 + 32);
      v39 = 138543618;
      v40 = v25;
      v41 = 2114;
      v42 = v26;
      _os_log_impl(&dword_242545000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@  skip event %{public}@", &v39, 0x16u);
LABEL_35:

      goto LABEL_36;
    }

    if (([*(a1 + 32) isEqualToString:@"kCMContinuityCaptureEventConnectionDisconnect"] & 1) != 0 || objc_msgSend(*(a1 + 32), "isEqualToString:", @"kCMContinuityCaptureEventStreamInterrupted"))
    {
      v16 = [*(WeakRetained + 8) device];
      objc_sync_enter(v16);
      v17 = [*(WeakRetained + 8) device];
      v18 = [v17 activeStreams];

      objc_sync_exit(v16);
      v19 = ![v18 count] || (objc_msgSend(WeakRetained, "validConnectionResetEventForData:", *(a1 + 48)) & 1) == 0;
      v20 = [*(a1 + 48) objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyForceConnectionReset"];
      if (v20)
      {
        v21 = v20;
        v22 = [*(a1 + 48) objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyForceConnectionReset"];
        v23 = [v22 BOOLValue];

        if ((v23 & 1) == 0 && v19)
        {
          goto LABEL_28;
        }
      }

      else
      {

        if (v19)
        {
          goto LABEL_28;
        }
      }
    }

LABEL_31:
    if (!*(a1 + 64))
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v24 = [*(WeakRetained + 2) allKeys];
      v30 = [v24 countByEnumeratingWithState:&v46 objects:v45 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v47;
        v33 = MEMORY[0x277CBEC10];
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v47 != v32)
            {
              objc_enumerationMutation(v24);
            }

            v35 = *(*(&v46 + 1) + 8 * i);
            v36 = [WeakRetained eventQueue];
            v44[0] = *(a1 + 32);
            v44[1] = v35;
            v37 = *(a1 + 48);
            if (!v37)
            {
              v37 = v33;
            }

            v44[2] = v37;
            v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
            [v36 enqueueEventAction:3 args:v38];
          }

          v31 = [v24 countByEnumeratingWithState:&v46 objects:v45 count:16];
        }

        while (v31);
      }

      goto LABEL_36;
    }

    v24 = [WeakRetained eventQueue];
    v43[0] = *(a1 + 32);
    v27 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
    v25 = v27;
    v28 = *(a1 + 48);
    if (!v28)
    {
      v28 = MEMORY[0x277CBEC10];
    }

    v43[1] = v27;
    v43[2] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
    [v24 enqueueEventAction:3 args:v29];

    goto LABEL_35;
  }

LABEL_37:
}

void __60__CMContinuityCaptureCompositeDevice_postEvent_entity_data___block_invoke_2(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    *buf = 138543362;
    v22 = WeakRetained;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ termination timeout", buf, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v4)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = [v4[2] allKeys];
    v6 = [obj countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v5[2] objectForKeyedSubscript:v10];
          v12 = [v11 queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __60__CMContinuityCaptureCompositeDevice_postEvent_entity_data___block_invoke_73;
          block[3] = &unk_278D5C0A8;
          objc_copyWeak(&v15, (a1 + 32));
          block[4] = v10;
          dispatch_async(v12, block);

          objc_destroyWeak(&v15);
        }

        v7 = [obj countByEnumeratingWithState:&v17 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

void __60__CMContinuityCaptureCompositeDevice_postEvent_entity_data___block_invoke_73(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[2] objectForKeyedSubscript:*(a1 + 32)];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __60__CMContinuityCaptureCompositeDevice_postEvent_entity_data___block_invoke_2_74;
    v5[3] = &unk_278D5C0A8;
    objc_copyWeak(&v6, (a1 + 40));
    v5[4] = *(a1 + 32);
    [v4 terminateComplete:v5];

    objc_destroyWeak(&v6);
  }
}

void __60__CMContinuityCaptureCompositeDevice_postEvent_entity_data___block_invoke_2_74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained[2] objectForKeyedSubscript:*(a1 + 32)];
    [v4 terminateCompleteForDevice:v3];

    WeakRetained = v4;
  }
}

void __60__CMContinuityCaptureCompositeDevice_postEvent_entity_data___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained[8] device];
    [v2 setUserDisconnected:1];

    WeakRetained = v3;
  }
}

- (void)performConnectionDisconnectEventIfApplicable:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v36 = self;
    v37 = 2080;
    v38 = "[CMContinuityCaptureCompositeDevice performConnectionDisconnectEventIfApplicable:]";
    v39 = 2112;
    v40 = v4;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s data %@", buf, 0x20u);
  }

  v6 = [(CMContinuityCaptureCompositeDevice *)self currentPreferredAvailableTransport];
  v7 = [(ContinuityCaptureDeviceClient *)self->_client device];
  objc_sync_enter(v7);
  v8 = [(ContinuityCaptureDeviceClient *)self->_client device];
  v9 = [v8 activeStreams];

  objc_sync_exit(v7);
  v10 = [v9 count];
  if (!v4)
  {
    goto LABEL_16;
  }

  v11 = [v4 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyForceConnectionReset"];
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = [v4 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyForceConnectionReset"];
  v13 = [v12 BOOLValue];
  v14 = v6 ? v13 : 0;

  if (v14 == 1)
  {
    v15 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v36 = self;
      v37 = 2080;
      v38 = "[CMContinuityCaptureCompositeDevice performConnectionDisconnectEventIfApplicable:]";
      _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ %s force reset", buf, 0x16u);
    }
  }

  else
  {
LABEL_16:
    if (!v10 || ((v16 = [(CMContinuityCaptureCompositeDevice *)self validConnectionResetEventForData:v4], v6) ? (v17 = v16) : (v17 = 0), !v17))
    {
      v24 = [(CMContinuityCaptureCompositeDevice *)self eventQueue];
      [v24 notifyCompletion];
      goto LABEL_31;
    }
  }

  v18 = +[CMContinuityCaptureSessionStateManager sharedInstance];
  v19 = [(CMContinuityCaptureCompositeDevice *)self client];
  v20 = [v19 device];
  v21 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  v22 = [v21 isSessionInitiatedOnCommunalDevice];
  v23 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  v34 = 0;
  LOBYTE(v22) = [v18 startSessionWithDevice:v20 forTransportType:v6 validateTransport:1 initiatedOnCommunalDevice:v22 micOnly:objc_msgSend(v23 outError:{"isSessionMicOnly"), &v34}];
  v24 = v34;

  if ((v22 & 1) == 0)
  {
    if (v24 && ([v24 code] == -1011 || objc_msgSend(v24, "code") == -1010 || objc_msgSend(v24, "code") == -1013))
    {
      [(CMContinuityCaptureCompositeDevice *)self notifyTransportError:v24];
    }

    v28 = [(CMContinuityCaptureCompositeDevice *)self eventQueue];
    [v28 notifyCompletion];
    goto LABEL_30;
  }

  v32[0] = @"CMContinuityCaptureStateMachineEventDataKeyOption";
  v32[1] = @"CMContinuityCaptureStateMachineEventDataKeyPostTime";
  v33[0] = &unk_2854EC7D0;
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_continuous_time()];
  v33[1] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  [(CMContinuityCaptureCompositeDevice *)self _postEvent:@"kCMContinuityCaptureEventRemoteClientDisconnect" entity:0 data:v26];

  if (![(CMContinuityCaptureCompositeDevice *)self currentPreferredAvailableTransport])
  {
    v29 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v36 = self;
      _os_log_impl(&dword_242545000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ No valid transport for reset", buf, 0xCu);
    }

    v28 = [(CMContinuityCaptureCompositeDevice *)self eventQueue];
    [v28 notifyCompletion];
LABEL_30:

    goto LABEL_31;
  }

  client = self->_client;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __83__CMContinuityCaptureCompositeDevice_performConnectionDisconnectEventIfApplicable___block_invoke;
  v30[3] = &unk_278D5C1E8;
  objc_copyWeak(&v31, &location);
  [(ContinuityCaptureDeviceClient *)client resetSession:v30];
  objc_destroyWeak(&v31);
LABEL_31:

  objc_destroyWeak(&location);
}

void __83__CMContinuityCaptureCompositeDevice_performConnectionDisconnectEventIfApplicable___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = [WeakRetained[8] preferredTransport];
      *buf = 138543874;
      v27 = v6;
      v28 = 1024;
      v29 = v7;
      v30 = 2114;
      v31 = a2;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ resetSession %d error %{public}@", buf, 0x1Cu);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = [WeakRetained[2] allKeys];
    v8 = [obj countByEnumeratingWithState:&v22 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = [*(*(&v22 + 1) + 8 * v11) integerValue];
          v19 = @"CMContinuityCaptureStateMachineEventDataKeySessionID";
          v13 = MEMORY[0x277CCABB0];
          v14 = [WeakRetained client];
          v15 = [v13 numberWithUnsignedLongLong:{objc_msgSend(v14, "currentSessionID")}];
          v20 = v15;
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
          [WeakRetained postEvent:@"kCMContinuityCaptureEventRemoteClientReconnect" entity:v12 data:v16];

          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v22 objects:v21 count:16];
      }

      while (v9);
    }

    v17 = [WeakRetained eventQueue];
    [v17 notifyCompletion];
  }
}

- (void)performConnectionChangeEventIfApplicable:(id)a3
{
  v4 = a3;
  objc_initWeak(location, self);
  v5 = [(CMContinuityCaptureCompositeDevice *)self provider];
  if (v5)
  {
    if (v4 && ([v4 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataForceConnectionChangeForTransport"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      v7 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v4 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataForceConnectionChangeForTransport"];
        *buf = 138543618;
        v32 = self;
        v33 = 2112;
        v34 = v8;
        _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Force Connection Switch to %@", buf, 0x16u);
      }
    }

    else
    {
      if (![(CMContinuityCaptureCompositeDevice *)self shouldSwitchConnection]|| ![(CMContinuityCaptureCompositeDevice *)self validConnectionResetEventForData:v4])
      {
        v11 = [(CMContinuityCaptureCompositeDevice *)self eventQueue];
        [v11 notifyCompletion];
LABEL_25:

        goto LABEL_26;
      }

      if (!v4)
      {
        goto LABEL_14;
      }
    }

    v9 = [v4 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataForceConnectionChangeForTransport"];

    if (v9)
    {
      v10 = [v4 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataForceConnectionChangeForTransport"];
      v23 = [v10 integerValue];

      goto LABEL_15;
    }

LABEL_14:
    v23 = [(CMContinuityCaptureCompositeDevice *)self currentPreferredAvailableTransport];
LABEL_15:
    v12 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    v13 = [(CMContinuityCaptureCompositeDevice *)self client];
    v14 = [v13 device];
    v15 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    v16 = [v15 isSessionInitiatedOnCommunalDevice];
    v17 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    v30 = 0;
    v18 = [v12 startSessionWithDevice:v14 forTransportType:v24 validateTransport:1 initiatedOnCommunalDevice:v16 micOnly:objc_msgSend(v17 outError:{"isSessionMicOnly"), &v30}];
    v11 = v30;

    if (v18)
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __79__CMContinuityCaptureCompositeDevice_performConnectionChangeEventIfApplicable___block_invoke;
      v28[3] = &unk_278D5C210;
      objc_copyWeak(v29, location);
      v29[1] = v24;
      v19 = MEMORY[0x245D12020](v28);
      v20 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v32 = self;
        _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ go ahead with connection switch", buf, 0xCu);
      }

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __79__CMContinuityCaptureCompositeDevice_performConnectionChangeEventIfApplicable___block_invoke_76;
      v25[3] = &unk_278D5C260;
      objc_copyWeak(&v27, location);
      v21 = v19;
      v26 = v21;
      [v5 registerStreamIntentForDevice:self forTransportType:v24 completion:v25];

      objc_destroyWeak(&v27);
      objc_destroyWeak(v29);
    }

    else
    {
      if (v11 && ([v11 code] == -1011 || objc_msgSend(v11, "code") == -1010 || objc_msgSend(v11, "code") == -1013))
      {
        [(CMContinuityCaptureCompositeDevice *)self notifyTransportError:v11];
      }

      v22 = [(CMContinuityCaptureCompositeDevice *)self eventQueue];
      [v22 notifyCompletion];
    }

    goto LABEL_25;
  }

LABEL_26:

  objc_destroyWeak(location);
}

void __79__CMContinuityCaptureCompositeDevice_performConnectionChangeEventIfApplicable___block_invoke(uint64_t a1, void *a2)
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    *buf = 138543618;
    v17 = WeakRetained;
    v18 = 2114;
    v19 = a2;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ registerStreamIntentForDevice (performConnectionChangeEventIfApplicable) error %{public}@", buf, 0x16u);
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    if (a2 && [a2 code])
    {
      v7 = [v6 eventQueue];
      [v7 notifyCompletion];
    }

    else
    {
      v6[12] = [v6 currentSessionID];
      v14[0] = @"CMContinuityCaptureStateMachineEventDataKeyOption";
      v14[1] = @"CMContinuityCaptureStateMachineEventDataKeyPostTime";
      v15[0] = &unk_2854EC7D0;
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_continuous_time()];
      v15[1] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
      [v6 _postEvent:@"kCMContinuityCaptureEventRemoteClientDisconnect" entity:0 data:v9];

      v10 = v6[8];
      v11 = *(a1 + 40);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __79__CMContinuityCaptureCompositeDevice_performConnectionChangeEventIfApplicable___block_invoke_75;
      v12[3] = &unk_278D5C210;
      objc_copyWeak(v13, (a1 + 32));
      v13[1] = *(a1 + 40);
      [v10 setPreferredTransport:v11 resetConnection:1 completion:v12];
      objc_destroyWeak(v13);
    }
  }
}

void __79__CMContinuityCaptureCompositeDevice_performConnectionChangeEventIfApplicable___block_invoke_75(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = *(a1 + 40);
      *buf = 138543874;
      v28 = v6;
      v29 = 1024;
      v30 = v7;
      v31 = 2114;
      v32 = a2;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ setPreferredTransport %d error %{public}@", buf, 0x1Cu);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [WeakRetained[2] allKeys];
    v8 = [obj countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v19 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v11 = [*(*(&v23 + 1) + 8 * i) integerValue];
          v20[0] = @"CMContinuityCaptureStateMachineEventDataKeySessionID";
          v12 = MEMORY[0x277CCABB0];
          v13 = [WeakRetained client];
          v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(v13, "currentSessionID")}];
          v20[1] = @"CMContinuityCaptureStateMachineEventDataKeyOption";
          v21[0] = v14;
          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
          v21[1] = v15;
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
          [WeakRetained postEvent:@"kCMContinuityCaptureEventRemoteClientReconnect" entity:v11 data:v16];
        }

        v9 = [obj countByEnumeratingWithState:&v23 objects:v22 count:16];
      }

      while (v9);
    }

    v17 = [WeakRetained eventQueue];
    [v17 notifyCompletion];
  }
}

void __79__CMContinuityCaptureCompositeDevice_performConnectionChangeEventIfApplicable___block_invoke_76(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __79__CMContinuityCaptureCompositeDevice_performConnectionChangeEventIfApplicable___block_invoke_2;
    v7[3] = &unk_278D5C238;
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

- (BOOL)postEventAction:(unint64_t)a3 args:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  if (CMContinityCaptureDebugLogEnabled())
  {
    v7 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v30 = self;
      v31 = 2048;
      v32 = a3;
      v33 = 2112;
      v34 = v6;
      _os_log_debug_impl(&dword_242545000, v7, OS_LOG_TYPE_DEBUG, "%@ Perform %lu %@", buf, 0x20u);
    }
  }

  if (a3 == 3)
  {
    if ([v6 count] < 2)
    {
      goto LABEL_22;
    }

    v8 = [v6 objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0 || ([v6 objectAtIndexedSubscript:1], v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v11 = objc_opt_isKindOfClass(), v10, (v11 & 1) == 0))
    {
LABEL_22:
      v25 = 0;
      goto LABEL_21;
    }

    v12 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v6 objectAtIndexedSubscript:0];
      *buf = 138412546;
      v30 = self;
      v31 = 2114;
      v32 = v13;
      _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%@ Perform event %{public}@", buf, 0x16u);
    }

    v14 = [v6 objectAtIndexedSubscript:0];
    v15 = [v14 isEqualToString:@"kCMContinuityCaptureEventConnectionChange"];

    if (v15)
    {
      v16 = [v6 objectAtIndexedSubscript:2];
      [(CMContinuityCaptureCompositeDevice *)self performConnectionChangeEventIfApplicable:v16];
    }

    else
    {
      v17 = [v6 objectAtIndexedSubscript:0];
      v18 = [v17 isEqualToString:@"kCMContinuityCaptureEventConnectionDisconnect"];

      if (v18)
      {
        v16 = [v6 objectAtIndexedSubscript:2];
        [(CMContinuityCaptureCompositeDevice *)self performConnectionDisconnectEventIfApplicable:v16];
      }

      else
      {
        v19 = [v6 objectAtIndexedSubscript:2];
        if (v19)
        {
          v20 = objc_alloc(MEMORY[0x277CBEB38]);
          v21 = [v6 objectAtIndexedSubscript:2];
          v16 = [v20 initWithDictionary:v21];
        }

        else
        {
          v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
        }

        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __59__CMContinuityCaptureCompositeDevice_postEventAction_args___block_invoke;
        v27[3] = &unk_278D5C1E8;
        objc_copyWeak(&v28, &location);
        v22 = MEMORY[0x245D12020](v27);
        [v16 setObject:v22 forKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataCompletionBlock"];

        v23 = [v6 objectAtIndexedSubscript:0];
        v24 = [v6 objectAtIndexedSubscript:1];
        -[CMContinuityCaptureCompositeDevice _postEvent:entity:data:](self, "_postEvent:entity:data:", v23, [v24 unsignedIntValue], v16);

        objc_destroyWeak(&v28);
      }
    }
  }

  v25 = 1;
LABEL_21:
  objc_destroyWeak(&location);

  return v25;
}

void __59__CMContinuityCaptureCompositeDevice_postEventAction_args___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained eventQueue];
    [v2 notifyCompletion];

    WeakRetained = v3;
  }
}

- (void)_postEvent:(id)a3 entity:(int64_t)a4 data:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v10 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543874;
    v21 = self;
    v22 = 2114;
    v23 = v8;
    v24 = 1024;
    v25 = a4;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ postEvent : %{public}@ entity : %d", &v20, 0x1Cu);
  }

  if (a4)
  {
    captureDeviceByEntityType = self->_captureDeviceByEntityType;
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v13 = [(NSMutableDictionary *)captureDeviceByEntityType objectForKey:v12];

    if (v13)
    {
      v14 = self->_captureDeviceByEntityType;
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
      v16 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v15];
      [v16 postEvent:v8 entity:a4 data:v9];
    }

    else if (v9)
    {
      v17 = [v9 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataCompletionBlock"];

      if (v17)
      {
        v18 = [v9 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataCompletionBlock"];
        v19 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-536870911 userInfo:0];
        (v18)[2](v18, v19);
      }
    }
  }

  else
  {
    [(CMContinuityCaptureCompositeDevice *)self postEventOnAllEntities:v8 data:v9];
  }
}

- (void)startStream:(id)a3 option:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__CMContinuityCaptureCompositeDevice_startStream_option_completion___block_invoke;
  block[3] = &unk_278D5C288;
  objc_copyWeak(v16, &location);
  v16[1] = a4;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __68__CMContinuityCaptureCompositeDevice_startStream_option_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _startStream:*(a1 + 32) option:*(a1 + 56) completion:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_startStream:(id)a3 option:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(location, self);
  v10 = [(CMContinuityCaptureCompositeDevice *)self provider];
  if (v10)
  {
    v55[0] = 0;
    v55[1] = v55;
    v55[2] = 0x3032000000;
    v55[3] = __Block_byref_object_copy_;
    v55[4] = __Block_byref_object_dispose_;
    v56 = 0;
    dispatch_assert_queue_V2(self->_queue);
    v11 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      *&buf[4] = self;
      *&buf[12] = 2080;
      *&buf[14] = "[CMContinuityCaptureCompositeDevice _startStream:option:completion:]";
      *&buf[22] = 2114;
      v53 = v8;
      LOWORD(v54) = 2048;
      *(&v54 + 2) = a4;
      _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ %s starting stream with configuration %{public}@, option '%lu'", buf, 0x2Au);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v53 = __Block_byref_object_copy_;
    *&v54 = __Block_byref_object_dispose_;
    *(&v54 + 1) = dispatch_group_create();
    captureDeviceByEntityType = self->_captureDeviceByEntityType;
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "entity")}];
    v14 = [(NSMutableDictionary *)captureDeviceByEntityType objectForKeyedSubscript:v13];

    if (v14)
    {
      v29 = v10;
      dispatch_group_enter(*(*&buf[8] + 40));
      dispatch_group_enter(*(*&buf[8] + 40));
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke;
      v46[3] = &unk_278D5C300;
      objc_copyWeak(v51, location);
      v28 = v8;
      v15 = v8;
      v47 = v15;
      v49 = buf;
      v50 = v55;
      v16 = v14;
      v48 = v16;
      v51[1] = a4;
      v17 = a4;
      v18 = MEMORY[0x245D12020](v46);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_2_79;
      v41[3] = &unk_278D5C2D8;
      objc_copyWeak(&v45, location);
      v19 = v15;
      v42 = v19;
      v43 = v55;
      v44 = buf;
      v20 = MEMORY[0x245D12020](v41);
      client = self->_client;
      v22 = [v19 entity];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_2_81;
      v39[3] = &unk_278D5C328;
      v23 = v18;
      v40 = v23;
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_3;
      v37[3] = &unk_278D5C328;
      v24 = v20;
      v38 = v24;
      [(ContinuityCaptureDeviceClient *)client activateEntity:v22 configuration:v19 option:v17 entityCompletion:v39 overallCompletion:v37];
      v25 = *(*&buf[8] + 40);
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_4;
      block[3] = &unk_278D5C350;
      objc_copyWeak(&v36, location);
      v34 = v55;
      v31 = v19;
      v32 = v16;
      v33 = v9;
      v35 = buf;
      dispatch_group_notify(v25, queue, block);

      objc_destroyWeak(&v36);
      objc_destroyWeak(&v45);

      objc_destroyWeak(v51);
      v8 = v28;
      v10 = v29;
    }

    else
    {
      v27 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-536870911 userInfo:0];
      (*(v9 + 2))(v9, v27);
    }

    _Block_object_dispose(buf, 8);

    _Block_object_dispose(v55, 8);
  }

  objc_destroyWeak(location);
}

void __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(2);
    v6 = v5;
    if (a2)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_loadWeakRetained((a1 + 64));
        v16 = [WeakRetained client];
        v17 = [v16 currentSessionID];
        v18 = [*(a1 + 32) entity];
        *buf = 138544130;
        v25 = v15;
        v26 = 2048;
        v27 = v17;
        v28 = 1024;
        v29 = v18;
        v30 = 2114;
        v31 = a2;
        _os_log_error_impl(&dword_242545000, v6, OS_LOG_TYPE_ERROR, "%{public}@ [sessionID:%llx] Activation failure for entity %d error %{public}@", buf, 0x26u);
      }

      if ([a2 code])
      {
        v7 = WeakRetained[1];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_77;
        block[3] = &unk_278D5C2B0;
        block[4] = *(a1 + 48);
        dispatch_async(v7, block);
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
        goto LABEL_11;
      }
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_loadWeakRetained((a1 + 64));
        v9 = [WeakRetained client];
        v10 = [v9 currentSessionID];
        v11 = [*(a1 + 32) entity];
        *buf = 138543874;
        v25 = v8;
        v26 = 2048;
        v27 = v10;
        v28 = 1024;
        v29 = v11;
        _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] Activation complete for entity %d", buf, 0x1Cu);
      }
    }

    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = *(a1 + 72);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_2;
    v19[3] = &unk_278D5C2D8;
    objc_copyWeak(&v22, (a1 + 64));
    v20 = *(a1 + 32);
    v21 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
    [v12 startStream:v13 option:v14 completion:v19];

    objc_destroyWeak(&v22);
  }

LABEL_11:
}

void __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_77(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

void __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_2(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(2);
    v6 = v5;
    if (a2)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_loadWeakRetained((a1 + 56));
        v8 = *(a1 + 32);
        *buf = 138543874;
        v13 = v7;
        v14 = 2112;
        v15 = v8;
        v16 = 2112;
        v17 = a2;
        _os_log_error_impl(&dword_242545000, v6, OS_LOG_TYPE_ERROR, "%{public}@ start stream failure for %@ error %@", buf, 0x20u);
LABEL_7:
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_loadWeakRetained((a1 + 56));
      v9 = *(a1 + 32);
      *buf = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ start stream complete for %@", buf, 0x16u);
      goto LABEL_7;
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v10 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_78;
    block[3] = &unk_278D5C2B0;
    block[4] = *(a1 + 48);
    dispatch_async(v10, block);
  }
}

void __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_78(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

void __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_2_79(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v6 = CMContinuityCaptureLog(2);
    v7 = v6;
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_loadWeakRetained((a1 + 56));
        v16 = [WeakRetained client];
        v17 = [v16 currentSessionID];
        v18 = [*(a1 + 32) entity];
        *buf = 138544130;
        v23 = v15;
        v24 = 2048;
        v25 = v17;
        v26 = 1024;
        v27 = v18;
        v28 = 2114;
        v29 = v4;
        _os_log_error_impl(&dword_242545000, v7, OS_LOG_TYPE_ERROR, "%{public}@ [sessionID:%llx] Overall activation failure for entity %d error %{public}@", buf, 0x26u);
      }

      WeakRetained[12] = [WeakRetained currentSessionID];
      if ([v4 code])
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
        v20[0] = @"CMContinuityCaptureStateMachineEventDataKeyAttemptStreamRestart";
        v20[1] = @"CMContinuityCaptureStateMachineEventDataKeyPostTime";
        v21[0] = MEMORY[0x277CBEC28];
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_continuous_time()];
        v21[1] = v8;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
        [WeakRetained postEvent:@"kCMContinuityCaptureEventStreamInterrupted" entity:0 data:v9];
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_loadWeakRetained((a1 + 56));
        v11 = [WeakRetained client];
        v12 = [v11 currentSessionID];
        v13 = [*(a1 + 32) entity];
        *buf = 138543874;
        v23 = v10;
        v24 = 2048;
        v25 = v12;
        v26 = 1024;
        v27 = v13;
        _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] Overall activation complete for entity %d", buf, 0x1Cu);
      }

      WeakRetained[12] = [WeakRetained currentSessionID];
    }

    v14 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_80;
    block[3] = &unk_278D5C2B0;
    block[4] = *(a1 + 48);
    dispatch_async(v14, block);
  }
}

void __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_80(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

void __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!WeakRetained)
  {
    goto LABEL_17;
  }

  v3 = *(*(*(a1 + 56) + 8) + 40);
  v4 = CMContinuityCaptureLog(2);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = objc_loadWeakRetained((a1 + 72));
    v7 = [WeakRetained client];
    v8 = [v7 currentSessionID];
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 138544130;
    v31 = v6;
    v32 = 2048;
    v33 = v8;
    v34 = 2112;
    v35 = v9;
    v36 = 2112;
    v37 = v10;
    v11 = "%{public}@ [sessionID:%llx] Overall start stream failure for configuration %@ with error %@";
    v12 = v4;
    v13 = 42;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = objc_loadWeakRetained((a1 + 72));
    v7 = [WeakRetained client];
    v14 = [v7 currentSessionID];
    v15 = *(a1 + 32);
    *buf = 138543874;
    v31 = v6;
    v32 = 2048;
    v33 = v14;
    v34 = 2112;
    v35 = v15;
    v11 = "%{public}@ [sessionID:%llx] Overall start stream completion for configuration %@";
    v12 = v4;
    v13 = 32;
  }

  _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);

LABEL_8:
  v16 = *(*(*(a1 + 56) + 8) + 40);
  if (v16)
  {
    if ([v16 code])
    {
      v17 = +[CMContinuityCaptureSessionStateManager sharedInstance];
      v18 = [v17 shouldResetConnectionForDevice:*(a1 + 40)];

      if (v18)
      {
        v19 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = objc_loadWeakRetained((a1 + 72));
          *buf = 138543362;
          v31 = v20;
          _os_log_impl(&dword_242545000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ stream failed try reset", buf, 0xCu);
        }

        v21 = [*(a1 + 40) entity];
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{mach_continuous_time(), @"CMContinuityCaptureStateMachineEventDataKeyPostTime"}];
        v29[0] = v22;
        v28[1] = @"CMContinuityCaptureStateMachineEventDataKeyForceConnectionReset";
        v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(WeakRetained, "hasValidStreamState")}];
        v29[1] = v23;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
        [WeakRetained postEvent:@"kCMContinuityCaptureEventConnectionDisconnect" entity:v21 data:v24];
      }
    }
  }

  v25 = *(a1 + 48);
  if (v25)
  {
    (*(v25 + 16))(v25, *(*(*(a1 + 56) + 8) + 40));
  }

  v26 = *(*(a1 + 64) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = 0;

LABEL_17:
}

- (void)stopStream:(int64_t)a3 option:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__CMContinuityCaptureCompositeDevice_stopStream_option_completion___block_invoke;
  block[3] = &unk_278D5C378;
  objc_copyWeak(v13, &location);
  v13[1] = a3;
  v13[2] = a4;
  v12 = v8;
  v10 = v8;
  dispatch_async(queue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __67__CMContinuityCaptureCompositeDevice_stopStream_option_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _stopStream:*(a1 + 48) option:*(a1 + 56) completion:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_stopStream:(int64_t)a3 option:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  v9 = [(CMContinuityCaptureCompositeDevice *)self provider];
  v10 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = self;
    v20 = 2080;
    v21 = "[CMContinuityCaptureCompositeDevice _stopStream:option:completion:]";
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %s ", buf, 0x16u);
  }

  captureDeviceByEntityType = self->_captureDeviceByEntityType;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v13 = [(NSMutableDictionary *)captureDeviceByEntityType objectForKeyedSubscript:v12];

  if (v13 && v9)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__CMContinuityCaptureCompositeDevice__stopStream_option_completion___block_invoke;
    v15[3] = &unk_278D5C3F0;
    objc_copyWeak(v17, &location);
    v17[1] = a4;
    v17[2] = a3;
    v16 = v8;
    [v13 stopStream:a3 option:a4 completion:v15];

    objc_destroyWeak(v17);
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-536870911 userInfo:0];
    (*(v8 + 2))(v8, v14);
  }

  objc_destroyWeak(&location);
}

void __68__CMContinuityCaptureCompositeDevice__stopStream_option_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__CMContinuityCaptureCompositeDevice__stopStream_option_completion___block_invoke_2;
    block[3] = &unk_278D5C3C8;
    objc_copyWeak(&v10, (a1 + 40));
    v11 = *(a1 + 48);
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, block);

    objc_destroyWeak(&v10);
  }
}

void __68__CMContinuityCaptureCompositeDevice__stopStream_option_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      v5 = (*(a1 + 56) & 0x200) == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v8 = *(a1 + 40);
      if (v8)
      {
        (*(v8 + 16))(v8, 0);
      }
    }

    else
    {
      v6 = *(WeakRetained + 8);
      v7 = *(a1 + 64);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __68__CMContinuityCaptureCompositeDevice__stopStream_option_completion___block_invoke_3;
      v9[3] = &unk_278D5C3A0;
      v11 = *(a1 + 40);
      v10 = *(a1 + 32);
      [v6 terminateEntity:v7 option:v4 completion:v9];
    }
  }
}

- (void)scheduleSystemPressureNotification:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"kCMContinuityCaptureControlSystemPressure"];
  if (v5)
  {
    v6 = [v4 value];
    [v5 setValue:v6];
  }

  v7 = [v4 value];
  v8 = [v7 isEqualToString:*MEMORY[0x277CE59E8]];

  if (v8)
  {
    v9 = [(ContinuityCaptureDeviceClient *)self->_client device];
    v10 = [v9 deviceModel];
    v11 = continuityCaptureNotificationCenter_isiPhone(v10);

    v12 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    v13 = @"SYSTEM_PRESSURE_TITLE_IPAD";
    if (v11)
    {
      v13 = @"SYSTEM_PRESSURE_TITLE_IPHONE";
    }

    v28[0] = @"kContinuityCaptureNotificationKeyTitle";
    v28[1] = @"kContinuityCaptureNotificationKeyBody";
    v14 = @"SYSTEM_PRESSURE_SHUTDOWN_IPAD";
    if (v11)
    {
      v14 = @"SYSTEM_PRESSURE_SHUTDOWN_IPHONE";
    }

    v29[0] = v13;
    v29[1] = v14;
    v28[2] = @"kContinuityCaptureNotificationKeyBodyArgs";
    v26 = [(ContinuityCaptureDeviceClient *)self->_client device];
    v25 = [v26 deviceName];
    v27 = v25;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v29[2] = v24;
    v29[3] = MEMORY[0x277CBEC28];
    v28[3] = @"kContinuityCaptureNotificationKeyOneTime";
    v28[4] = @"kContinuityCaptureNotificationKeyIdentifier";
    v15 = MEMORY[0x277CCACA8];
    v16 = [(ContinuityCaptureDeviceClient *)self->_client device];
    v17 = [v16 deviceIdentifier];
    v18 = [v17 UUIDString];
    v19 = [v15 stringWithFormat:@"%@%@", @"CMContinuityCaptureSystemPressueNotification", v18];
    v29[4] = v19;
    v28[5] = @"kContinuityCaptureNotificationKeyDeviceModel";
    v20 = [(ContinuityCaptureDeviceClient *)self->_client device];
    v21 = [v20 deviceModel];
    v29[5] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:6];
    [v12 scheduleNotification:7 data:v22];
  }

  else
  {
    v23 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    [v23 unscheduleNotification:7];
  }
}

- (void)postValueChangeForControl:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CMContinuityCaptureCompositeDevice_postValueChangeForControl___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __64__CMContinuityCaptureCompositeDevice_postValueChangeForControl___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setValueForControl:*(a1 + 32) completion:&__block_literal_global];
    WeakRetained = v3;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ContinuityCaptureDeviceClient *)self->_client device];
  v7 = [v6 deviceIdentifier];
  v8 = [v7 UUIDString];
  v9 = [v3 stringWithFormat:@"%@: %@ [%p]", v5, v8, self];

  return v9;
}

- (id)controlWithName:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(CMContinuityCaptureCompositeDevice *)self controls];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (CMContinuityCaptureProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (CMContinuityCaptureCompositeDevice)initWithDevice:(id)a3 provider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CCACA8];
  v9 = [v6 deviceIdentifier];
  v10 = [v8 stringWithFormat:@"com.apple.CMContinuityCompositeDevice.%@", v9];
  [v10 UTF8String];
  v11 = FigDispatchQueueCreateWithPriority();

  v47.receiver = self;
  v47.super_class = CMContinuityCaptureCompositeDevice;
  v12 = [(CMContinuityCaptureCompositeDevice *)&v47 init];
  if (v12 && (v13 = [[CMContinuityCaptureNWClient alloc] initWithDevice:v6 queue:v11 taskDelegate:v12]) != 0)
  {
    v14 = v13;
    v15 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v44 = v12;
      v45 = 2114;
      v46 = v14;
      OUTLINED_FUNCTION_9(&dword_242545000, v15, v16, "%{public}@ create with client %{public}@", buf);
    }

    objc_storeWeak(&v12->_provider, v7);
    objc_storeStrong(&v12->_client, v14);
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    captureDeviceByEntityType = v12->_captureDeviceByEntityType;
    v12->_captureDeviceByEntityType = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cmControlByName = v12->_cmControlByName;
    v12->_cmControlByName = v19;

    objc_storeStrong(&v12->_queue, v11);
    v21 = [[CMContinuityCaptureEventQueue alloc] initWithActionDelegate:v12 queue:v12->_queue];
    eventQueue = v12->_eventQueue;
    v12->_eventQueue = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    connectionSwitchLogs = v12->_connectionSwitchLogs;
    v12->_connectionSwitchLogs = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    remoteSessionLogs = v12->_remoteSessionLogs;
    v12->_remoteSessionLogs = v25;

    v27 = CMContinuityCaptureGetCurrentTimeString();
    publishTime = v12->_publishTime;
    v12->_publishTime = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
    streamingIntentEntities = v12->_streamingIntentEntities;
    v12->_streamingIntentEntities = v29;

    [(CMContinuityCaptureCompositeDevice *)v12 setupControls];
    if ([(CMContinuityCaptureCompositeDevice *)v12 setupCaptureDevices])
    {
      v31 = +[CMContinuityCaptureDiscoverySession sharedInstance];
      v32 = [v31 queue];
      dispatch_assert_queue_not_V2(v32);

      v33 = +[CMContinuityCaptureDiscoverySession sharedInstance];
      v34 = [v33 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__CMContinuityCaptureCompositeDevice_initWithDevice_provider___block_invoke;
      block[3] = &unk_278D5C008;
      v35 = v6;
      v41 = v35;
      v36 = v12;
      v42 = v36;
      dispatch_async_and_wait(v34, block);

      objc_storeWeak(v36 + 11, v35);
      [v36 setupSidebandMessageNotificationHandler];
      v37 = v36;
    }

    else
    {
      v39 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v44 = v12;
        _os_log_impl(&dword_242545000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to setup capture devices", buf, 0xCu);
      }

      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

- (void)_device:(id)a3 updatedValueForControl:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 name];
  dispatch_assert_queue_V2(self->_queue);
  v9 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854EC788];
  v10 = [v7 isEqual:v9];

  if (!v10)
  {
    goto LABEL_13;
  }

  if (![OUTLINED_FUNCTION_0() isEqualToString:?])
  {
    v19 = @"kCMContinuityCaptureControlCameraReadyToUnhide";
    if ([OUTLINED_FUNCTION_0() isEqualToString:?] || (v19 = @"kCMContinuityCaptureControlBatteryState", objc_msgSend(OUTLINED_FUNCTION_0(), "isEqualToString:")) || (v19 = @"kCMContinuityCaptureControlBatteryLevel", objc_msgSend(OUTLINED_FUNCTION_0(), "isEqualToString:")))
    {
      v11 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:v19];
      v20 = [v6 value];
      [v11 setValue:v20];

      v13 = 0;
      v12 = 0;
      goto LABEL_12;
    }

LABEL_13:
    v13 = 0;
    v12 = 0;
    v11 = 0;
    goto LABEL_12;
  }

  v11 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"kCMContinuityCaptureControlCameraHidden"];
  v12 = [v11 value];
  v13 = [v6 value];
  if (([v12 isEqualToNumber:v13] & 1) == 0)
  {
    [v11 setValue:v13];
    if ([v13 isEqualToNumber:MEMORY[0x277CBEC28]])
    {
      v14 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(ContinuityCaptureDeviceClient *)self->_client device];
        v21 = 138543618;
        v22 = self;
        v23 = 2112;
        v24 = v15;
        OUTLINED_FUNCTION_9(&dword_242545000, v14, v16, "%{public}@ relay skip placement step message on device %@", &v21);
      }

      v17 = [(ContinuityCaptureDeviceClient *)self->_client device];
      [v17 setPlacementStepSkipped:1];

      v18 = [(ContinuityCaptureDeviceClient *)self->_client device];
      [v18 relaySkipPlacementStepForTranport:{-[CMContinuityCaptureCompositeDevice currentPreferredAvailableTransport](self, "currentPreferredAvailableTransport")}];
    }
  }

LABEL_12:
}

- (void)handleAVCNegotiation:(int64_t)a3 data:(id)a4
{
  v9 = a4;
  dispatch_assert_queue_V2(self->_queue);
  captureDeviceByEntityType = self->_captureDeviceByEntityType;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v8 = [OUTLINED_FUNCTION_0() objectForKeyedSubscript:?];

  if (v8)
  {
    [OUTLINED_FUNCTION_4() handleAVCNegotiation:? data:?];
  }
}

- (void)_observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a5;
  v11 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_5(5.7781e-34);
    v75 = 2080;
    v76 = "[CMContinuityCaptureCompositeDevice _observeValueForKeyPath:ofObject:change:context:]";
    v77 = 2112;
    v78 = v9;
    _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%@ %s %@", buf, 0x20u);
  }

  dispatch_assert_queue_V2(self->_queue);
  if (![v9 isEqualToString:@"currentState"])
  {
    if ([v9 isEqualToString:@"deviceStatus"] && -[CMContinuityCaptureCompositeDevice shouldSwitchConnection](self, "shouldSwitchConnection"))
    {
      v67[0] = @"CMContinuityCaptureStateMachineEventDataKeySessionID";
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[ContinuityCaptureDeviceClient currentSessionID](self->_client, "currentSessionID")}];
      v68[0] = v40;
      v67[1] = @"CMContinuityCaptureStateMachineEventDataKeyPostTime";
      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_continuous_time()];
      v68[1] = v41;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
      OUTLINED_FUNCTION_3();
      [v43 postEvent:? entity:? data:?];

LABEL_50:
      v29 = 0;
      v27 = 0;
      v32 = 0;
      v39 = 0;
      goto LABEL_51;
    }

    if (![v9 isEqualToString:@"terminationDeferred"])
    {
      if ([v9 isEqualToString:@"placementStepSkipped"])
      {
        v55 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        v56 = [v55 BOOLValue];

        if (v56)
        {
          [(CMContinuityCaptureCompositeDevice *)self _handlePlacementStepSkipped];
        }
      }

      goto LABEL_50;
    }

    v44 = *MEMORY[0x277CCA2F0];
    v45 = [OUTLINED_FUNCTION_1() objectForKeyedSubscript:?];
    v46 = [v45 BOOLValue];
    v47 = MEMORY[0x277CCA300];
    if (v46)
    {
      v48 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v49 = [v48 BOOLValue];

      if ((v49 & 1) == 0)
      {
        v50 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_5(5.8381e-34);
          OUTLINED_FUNCTION_8(&dword_242545000, v51, v52, "%{public}@ Defer device");
        }

        v53 = self;
        v54 = 1;
        goto LABEL_49;
      }
    }

    else
    {
    }

    v57 = [OUTLINED_FUNCTION_1() objectForKeyedSubscript:?];
    if ([v57 BOOLValue])
    {

      goto LABEL_50;
    }

    v58 = [v10 objectForKeyedSubscript:*v47];
    v59 = [v58 BOOLValue];

    if (!v59)
    {
      goto LABEL_50;
    }

    v60 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_5(5.8381e-34);
      OUTLINED_FUNCTION_8(&dword_242545000, v61, v62, "%{public}@ Un-Defer device");
    }

    v53 = self;
    v54 = 0;
LABEL_49:
    [(CMContinuityCaptureCompositeDevice *)v53 deferDevice:v54];
    goto LABEL_50;
  }

  v12 = a6;
  captureDeviceByEntityType = self->_captureDeviceByEntityType;
  v66 = v12;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "entity")}];
  v15 = [(NSMutableDictionary *)captureDeviceByEntityType objectForKey:v14];

  if (!v15)
  {
    goto LABEL_31;
  }

  v16 = *MEMORY[0x277CCA2F0];
  v17 = [OUTLINED_FUNCTION_1() objectForKeyedSubscript:?];
  if (!v17)
  {
    goto LABEL_31;
  }

  v18 = v17;
  v19 = [OUTLINED_FUNCTION_1() objectForKeyedSubscript:?];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_31;
  }

  v21 = *MEMORY[0x277CCA300];
  v22 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
  if (!v22 || (v23 = v22, [v10 objectForKeyedSubscript:v21], v24 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v25 = objc_opt_isKindOfClass(), v24, v23, (v25 & 1) == 0))
  {
LABEL_31:
    v29 = 0;
    v27 = 0;
    v32 = 0;
LABEL_32:
    v39 = v66;
    goto LABEL_51;
  }

  v26 = [OUTLINED_FUNCTION_1() objectForKeyedSubscript:?];
  v27 = [v26 name];

  v28 = [v10 objectForKeyedSubscript:v21];
  v29 = [v28 name];

  v30 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_5(5.8384e-34);
    v75 = 2112;
    v76 = v29;
    v77 = 2112;
    v78 = v27;
    v79 = 2112;
    v80 = v66;
    _os_log_impl(&dword_242545000, v30, OS_LOG_TYPE_INFO, "%{public}@ Change of state from %@ to %@ for %@", buf, 0x2Au);
  }

  v31 = [(NSMutableDictionary *)self->_captureDeviceByEntityType allValues];
  v32 = v31;
  if (!v31)
  {
    goto LABEL_32;
  }

  v65 = self;
  if (![v31 count])
  {
    goto LABEL_32;
  }

  v63 = v10;
  v64 = v9;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v32 = v32;
  v33 = [v32 countByEnumeratingWithState:&v70 objects:v69 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v71;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v71 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v70 + 1) + 8 * i);
        if (v37 != v66)
        {
          if (([v29 isEqualToString:@"kCMContinuityCaptureStatePaused"] & 1) != 0 || objc_msgSend(v29, "isEqualToString:", @"kCMContinuityCaptureStateDisabled")) && ((v38 = @"kCMContinuityCaptureEventAssociatedDeviceResume", (objc_msgSend(v27, "isEqualToString:", @"kCMContinuityCaptureStateStreaming", v63, v64)) || (v38 = @"kCMContinuityCaptureEventAssociatedDeviceResume", (objc_msgSend(v27, "isEqualToString:", @"kCMContinuityCaptureStateInit"))) || (v38 = @"kCMContinuityCaptureEventAssociatedDevicePause", objc_msgSend(v27, "isEqualToString:", @"kCMContinuityCaptureStatePaused", v63, v64)))
          {
            -[CMContinuityCaptureCompositeDevice postEvent:entity:data:](v65, "postEvent:entity:data:", v38, [v37 entity], 0);
          }
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v70 objects:v69 count:16];
    }

    while (v34);
  }

  v10 = v63;
  v9 = v64;
  v39 = v66;
LABEL_51:
}

- (void)scheduleBatteryLevelNotification:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"kCMContinuityCaptureControlBatteryLevel"];
  v7 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"kCMContinuityCaptureControlBatteryState"];
  v8 = v7;
  if (!v6)
  {
    goto LABEL_40;
  }

  if (!v7)
  {
    goto LABEL_40;
  }

  v9 = [v4 name];
  v10 = [v9 isEqualToString:@"kCMContinuityCaptureControlBatteryLevel"];

  if (!v10)
  {
    goto LABEL_40;
  }

  v11 = [v6 value];
  [v11 floatValue];
  v13 = v12;

  v14 = [v4 value];
  [v14 floatValue];
  v16 = v15;

  v17 = [v8 value];
  v53 = [v17 intValue];

  v18 = [(CMContinuityCaptureCompositeDevice *)self client];
  v19 = [v18 device];
  v20 = [v19 deviceModel];
  LODWORD(v14) = continuityCaptureNotificationCenter_isiPhone(v20);

  v54 = v8;
  v52 = v14;
  if (v13 <= 0.05 || v16 > 0.05 || v16 <= 0.0)
  {
    if (v13 <= 0.1 || v16 > 0.1 || v16 <= 0.05)
    {
      if (v13 <= 0.2 || v16 > 0.2 || v16 <= 0.1)
      {
        goto LABEL_18;
      }

      v21 = [(CMContinuityCaptureCompositeDevice *)self client];
      v22 = [v21 device];
      v26 = [v22 deviceName];
      v64[0] = v26;
      v27 = [MEMORY[0x277CCABB8] localizedStringFromNumber:&unk_2854ECCC8 numberStyle:3];
      v64[1] = v27;
      v28 = MEMORY[0x277CBEA60];
      v29 = v64;
    }

    else
    {
      v21 = [(CMContinuityCaptureCompositeDevice *)self client];
      v22 = [v21 device];
      v26 = [v22 deviceName];
      v65[0] = v26;
      v27 = [MEMORY[0x277CCABB8] localizedStringFromNumber:&unk_2854ECCB8 numberStyle:3];
      v65[1] = v27;
      v28 = MEMORY[0x277CBEA60];
      v29 = v65;
    }

    v30 = [v28 arrayWithObjects:v29 count:2];
    [v5 setObject:v30 forKeyedSubscript:@"kContinuityCaptureNotificationKeyBodyArgs"];
  }

  else
  {
    v21 = [(CMContinuityCaptureCompositeDevice *)self client];
    v22 = [v21 device];
    v23 = [v22 deviceName];
    v66[0] = v23;
    v24 = [MEMORY[0x277CCABB8] localizedStringFromNumber:&unk_2854ECCA8 numberStyle:3];
    v66[1] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
    [v5 setObject:v25 forKeyedSubscript:@"kContinuityCaptureNotificationKeyBodyArgs"];
  }

LABEL_18:
  v31 = [v5 objectForKeyedSubscript:@"kContinuityCaptureNotificationKeyBodyArgs"];
  v32 = v31;
  if (!v31)
  {
    goto LABEL_29;
  }

  if (v53 != 4 && v53 != 1)
  {
    goto LABEL_29;
  }

  if (v16 < v13)
  {
    [v5 setObject:@"CONTINUITY_CAPTURE_TITLE" forKeyedSubscript:@"kContinuityCaptureNotificationKeyTitle"];
    if (v52)
    {
      v34 = @"BATTERY_LEVEL_BODY_IPHONE";
    }

    else
    {
      v34 = @"BATTERY_LEVEL_BODY_IPAD";
    }

    [v5 setObject:v34 forKeyedSubscript:@"kContinuityCaptureNotificationKeyBody"];
    v35 = MEMORY[0x277CCACA8];
    v36 = [(ContinuityCaptureDeviceClient *)self->_client device];
    v37 = [v36 deviceIdentifier];
    v38 = [v37 UUIDString];
    v39 = [v35 stringWithFormat:@"%@%@", @"CMContinuityCaptureBatteryNotification", v38];
    [v5 setObject:v39 forKeyedSubscript:@"kContinuityCaptureNotificationKeyIdentifier"];

    [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"kContinuityCaptureNotificationKeyOneTime"];
    v40 = [(ContinuityCaptureDeviceClient *)self->_client device];
    v41 = [v40 deviceModel];
    [v5 setObject:v41 forKeyedSubscript:@"kContinuityCaptureNotificationKeyDeviceModel"];

    v32 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    [v32 scheduleNotification:6 data:v5];
LABEL_29:
  }

  v42 = [v4 value];
  [v6 setValue:v42];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v43 = [(NSMutableDictionary *)self->_captureDeviceByEntityType allValues];
  v44 = [v43 countByEnumeratingWithState:&v60 objects:v59 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v61;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v61 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v60 + 1) + 8 * i);
        OUTLINED_FUNCTION_3();
        [v49 setValueForControl:? completion:?];
      }

      v45 = [v43 countByEnumeratingWithState:&v60 objects:v59 count:16];
    }

    while (v45);
  }

  v50 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v55 = 138543618;
    v56 = self;
    v57 = 2112;
    v58 = v6;
    OUTLINED_FUNCTION_9(&dword_242545000, v50, v51, "%{public}@ Battery Level %@ updated", &v55);
  }

  v8 = v54;
LABEL_40:
}

- (void)handleBatteryState:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"kCMContinuityCaptureControlBatteryState"];
  if (v5)
  {
    v6 = [v4 value];
    v7 = [v6 intValue];

    if (v7 == 2)
    {
      v8 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
      [v8 unscheduleNotification:6];
    }

    v9 = [v4 value];
    [v5 setValue:v9];

    v10 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543618;
      v23 = self;
      v24 = 2112;
      v25 = v5;
      OUTLINED_FUNCTION_9(&dword_242545000, v10, v11, "%{public}@ Battery state %@ updated", &v22);
    }

    v12 = [OUTLINED_FUNCTION_6() allValues];
    OUTLINED_FUNCTION_7();
    v14 = [v13 countByEnumeratingWithState:? objects:? count:?];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(v20 + 8 * v17);
          OUTLINED_FUNCTION_3();
          [v19 setValueForControl:? completion:?];
          ++v17;
        }

        while (v15 != v17);
        OUTLINED_FUNCTION_7();
        v15 = [v12 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v15);
    }
  }
}

- (void)handleRemoteSystemNotificationControl:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 name];

    if (v6)
    {
      dispatch_assert_queue_V2(self->_queue);
      v7 = [v5 name];
      v8 = [v7 isEqualToString:@"kCMContinuityCaptureControlSystemPressure"];

      if (v8)
      {
        [OUTLINED_FUNCTION_4() scheduleSystemPressureNotification:?];
        goto LABEL_24;
      }

      v9 = [v5 name];
      v10 = [v9 isEqualToString:@"kCMContinuityCaptureControlBatteryLevel"];

      if (v10)
      {
        [OUTLINED_FUNCTION_4() scheduleBatteryLevelNotification:?];
        goto LABEL_24;
      }

      v11 = [v5 name];
      v12 = [v11 isEqualToString:@"kCMContinuityCaptureControlBatteryState"];

      if (v12)
      {
        [OUTLINED_FUNCTION_4() handleBatteryState:?];
        goto LABEL_24;
      }

      v13 = [v5 name];
      v14 = [v13 isEqualToString:@"kCMContinuityCaptureControlIncomingCall"];

      if (v14)
      {
        v15 = [v5 value];

        if (v15)
        {
          goto LABEL_24;
        }

        v16 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }
      }

      else
      {
        v18 = [v5 name];
        v19 = [v18 isEqualToString:@"kCMContinuityCaptureControlIncomingCallComplete"];

        if (v19)
        {
          v20 = [v5 value];

          if (v20)
          {
            v21 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
            [v21 unscheduleNotification:4];

            v22 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
            [v22 unscheduleNotification:5];

            goto LABEL_24;
          }

          v16 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
LABEL_12:
            OUTLINED_FUNCTION_2();
            v17 = "%{public}@ Invalid call data";
LABEL_29:
            _os_log_impl(&dword_242545000, v16, OS_LOG_TYPE_DEFAULT, v17, v30, 0xCu);
          }
        }

        else
        {
          v23 = [v5 name];
          v24 = [v23 isEqualToString:@"kCMContinuityCaptureControlDebugInfo"];

          if (!v24)
          {
            goto LABEL_24;
          }

          v25 = [v5 value];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            if (CMContinityCaptureDebugLogEnabled())
            {
              v27 = CMContinuityCaptureLog(2);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                v28 = [v5 value];
                OUTLINED_FUNCTION_2();
                v31 = 2114;
                v32 = v29;
                _os_log_debug_impl(&dword_242545000, v27, OS_LOG_TYPE_DEBUG, "%{public}@ RemoteSessionSummary %{public}@", v30, 0x16u);
              }
            }

            v16 = [v5 value];
            [OUTLINED_FUNCTION_0() logRemoteSessionSummary:?];
            goto LABEL_23;
          }

          v16 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_2();
            v17 = "%{public}@ Invalid control data";
            goto LABEL_29;
          }
        }
      }

LABEL_23:
    }
  }

LABEL_24:
}

- (void)setValueForControl:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  captureDeviceByEntityType = self->_captureDeviceByEntityType;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "entity")}];
  v10 = [(NSMutableDictionary *)captureDeviceByEntityType objectForKeyedSubscript:v9];

  dispatch_assert_queue_V2(self->_queue);
  if ([v6 entity] == 4)
  {
    v11 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_INFO, "%@ system notification for %@", &v12, 0x16u);
    }

    [(CMContinuityCaptureCompositeDevice *)self handleRemoteSystemNotificationControl:v6];
  }

  else if (v10)
  {
    [v10 setValueForControl:v6 completion:v7];
  }
}

- (void)didCaptureStillImage:(id)a3 entity:(int64_t)a4
{
  v9 = a3;
  dispatch_assert_queue_V2(self->_queue);
  captureDeviceByEntityType = self->_captureDeviceByEntityType;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v8 = [OUTLINED_FUNCTION_0() objectForKeyedSubscript:?];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 didCaptureStillImage:v9 entity:a4];
    }
  }
}

- (void)_handlePlacementStepSkipped
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"kCMContinuityCaptureControlCameraReadyToUnhide"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 value];
    if (([v5 isEqualToNumber:MEMORY[0x277CBEC38]] & 1) == 0)
    {
      [v4 setValue:MEMORY[0x277CBEC38]];
      v6 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v18 = self;
        v19 = 2082;
        v20 = "[CMContinuityCaptureCompositeDevice _handlePlacementStepSkipped]";
        v21 = 2112;
        v22 = v4;
        _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s updated value for %@", buf, 0x20u);
      }

      v7 = [OUTLINED_FUNCTION_6() allValues];
      OUTLINED_FUNCTION_7();
      v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(v15 + 8 * i);
            OUTLINED_FUNCTION_3();
            [v14 setValueForControl:? completion:?];
          }

          OUTLINED_FUNCTION_7();
          v10 = [v7 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v10);
      }
    }
  }

  else
  {
    v5 = 0;
  }
}

@end