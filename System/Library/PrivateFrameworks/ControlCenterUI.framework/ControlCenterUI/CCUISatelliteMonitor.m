@interface CCUISatelliteMonitor
- (BOOL)canShowDemo;
- (BOOL)isAnyServiceSupported;
- (BOOL)isMessagingServiceAvailable;
- (BOOL)isSupported;
- (CCUISatelliteMonitor)initWithQueue:(id)a3;
- (CCUISatelliteMonitorDelegate)delegate;
- (unint64_t)_calculateState;
- (void)_disconnectFromSatelliteWithCompletion:(id)a3;
- (void)_manager:(id)a3 offGridModeUpdated:(int64_t)a4 publishStatus:(int64_t)a5 context:(id)a6;
- (void)_reevaluateState;
- (void)disconnectFromSatellite;
- (void)notifyDelegateOfStateChange:(unint64_t)a3;
- (void)start;
- (void)stateChanged:(id)a3;
- (void)turnOff;
@end

@implementation CCUISatelliteMonitor

- (CCUISatelliteMonitor)initWithQueue:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CCUISatelliteMonitor;
  v6 = [(CCUISatelliteMonitor *)&v14 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v5];
    client = v6->_client;
    v6->_client = v7;

    objc_storeStrong(&v6->_queue, a3);
    v9 = [objc_alloc(MEMORY[0x277CC3768]) initWithDelegate:v6 queue:v5];
    stewieStateMonitor = v6->_stewieStateMonitor;
    v6->_stewieStateMonitor = v9;

    v11 = [objc_alloc(MEMORY[0x277D18740]) initWithQueue:v5 error:0];
    offGridStateManager = v6->_offGridStateManager;
    v6->_offGridStateManager = v11;

    [(IDSOffGridStateManager *)v6->_offGridStateManager setDelegate:v6];
    *&v6->_offGridMode = xmmword_21EAB5750;
  }

  return v6;
}

- (BOOL)canShowDemo
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(CTStewieStateMonitor *)self->_stewieStateMonitor getState];
  [(CCUISatelliteMonitor *)self _satelliteServices];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 isDemoAllowedForService:{objc_msgSend(*(*(&v9 + 1) + 8 * i), "integerValue", v9)}])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (void)start
{
  [(CTStewieStateMonitor *)self->_stewieStateMonitor start];

  [(CCUISatelliteMonitor *)self _reevaluateState];
}

- (void)turnOff
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x277D18738]);
  [v3 setEntryPointSource:@"ControlCenter"];
  [(CCUISatelliteMonitor *)self setWaitingForOffGridModeToDisableBeforeDisconnecting:1];
  offGridStateManager = self->_offGridStateManager;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__CCUISatelliteMonitor_turnOff__block_invoke;
  v5[3] = &unk_278382C00;
  objc_copyWeak(&v6, &location);
  [(IDSOffGridStateManager *)offGridStateManager setOffGridMode:1 options:v3 completion:v5];
  objc_destroyWeak(&v6);

  objc_destroyWeak(&location);
}

void __31__CCUISatelliteMonitor_turnOff__block_invoke(uint64_t a1, void *a2, void *a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__CCUISatelliteMonitor_turnOff__block_invoke_2;
  block[3] = &unk_278382BD8;
  objc_copyWeak(v6, (a1 + 32));
  v6[1] = a2;
  v6[2] = a3;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v6);
}

void __31__CCUISatelliteMonitor_turnOff__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[8] = *(a1 + 40);
    WeakRetained[9] = *(a1 + 48);
    v3 = WeakRetained;
    [WeakRetained _reevaluateState];
    WeakRetained = v3;
  }
}

- (void)disconnectFromSatellite
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__CCUISatelliteMonitor_disconnectFromSatellite__block_invoke;
  v3[3] = &unk_278382C28;
  objc_copyWeak(&v4, &location);
  v3[4] = self;
  [(CCUISatelliteMonitor *)self _disconnectFromSatelliteWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __47__CCUISatelliteMonitor_disconnectFromSatellite__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __47__CCUISatelliteMonitor_disconnectFromSatellite__block_invoke_2;
  v2[3] = &unk_2783828B0;
  objc_copyWeak(&v3, (a1 + 40));
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
}

void __47__CCUISatelliteMonitor_disconnectFromSatellite__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) setWaitingForOffGridModeToDisableBeforeDisconnecting:0];
  if (WeakRetained)
  {
    v2 = objc_loadWeakRetained((a1 + 40));
    [v2 _reevaluateState];
  }
}

- (void)_disconnectFromSatelliteWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CC3748]);
  [v5 setReason:1];
  v6 = [(CCUISatelliteMonitor *)self client];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__CCUISatelliteMonitor__disconnectFromSatelliteWithCompletion___block_invoke;
  v8[3] = &unk_278382C50;
  v9 = v4;
  v7 = v4;
  [v6 exitStewieWithContext:v5 completion:v8];
}

- (BOOL)isSupported
{
  client = self->_client;
  v7 = 0;
  v3 = [(CoreTelephonyClient *)client getStewieSupport:&v7];
  v4 = v3;
  if (v7)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 hwSupport];
  }

  return v5;
}

- (BOOL)isAnyServiceSupported
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(CTStewieStateMonitor *)self->_stewieStateMonitor getState];
  [(CCUISatelliteMonitor *)self _satelliteServices];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v3 isAllowedService:{objc_msgSend(v9, "integerValue", v12)}] & 1) != 0 || (objc_msgSend(v3, "isDemoAllowedForService:", objc_msgSend(v9, "integerValue")))
        {
          v10 = 1;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_13:

  return v10;
}

- (void)notifyDelegateOfStateChange:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained satelliteMonitor:self didChangeState:a3];
}

- (void)stateChanged:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__CCUISatelliteMonitor_stateChanged___block_invoke;
  block[3] = &unk_278381DF0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_reevaluateState
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(CCUISatelliteMonitor *)self _calculateState];
  if (v3 != self->_state)
  {
    v4 = v3;
    v5 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v8 = v4;
      _os_log_impl(&dword_21E9F5000, v5, OS_LOG_TYPE_DEFAULT, "[Satellite] State changed to %lu", buf, 0xCu);
    }

    self->_state = v4;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__CCUISatelliteMonitor__reevaluateState__block_invoke;
    v6[3] = &unk_278382060;
    v6[4] = self;
    v6[5] = v4;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

- (unint64_t)_calculateState
{
  if ([(CCUISatelliteMonitor *)self isAnyServiceSupported])
  {
    v3 = [(CTStewieStateMonitor *)self->_stewieStateMonitor getState];
    if ([v3 displayStewieInStatusBar])
    {
      v4 = [(CCUISatelliteMonitor *)self isMessagingServiceAvailable];
      if (([v3 isStewieActiveOverBB] & 1) == 0)
      {
        if (self->_offGridMode == 2 && v4)
        {
          v5 = 3;
        }

        else
        {
          v5 = 2;
        }

        goto LABEL_11;
      }

      if (!self->_offGridModePublishStatus)
      {
        offGridMode = self->_offGridMode;
        if (offGridMode == 2 && v4)
        {
          v5 = 4;
          goto LABEL_11;
        }

        if (offGridMode == 1 && v4)
        {
          v5 = 6;
          goto LABEL_11;
        }
      }

      v5 = 5;
    }

    else
    {
      v5 = 1;
    }

LABEL_11:

    return v5;
  }

  return 0;
}

- (BOOL)isMessagingServiceAvailable
{
  v2 = [(CTStewieStateMonitor *)self->_stewieStateMonitor getState];
  if ([v2 isAllowedService:16] & 1) != 0 || (objc_msgSend(v2, "isAllowedService:", 32) & 1) != 0 || (objc_msgSend(v2, "isActiveService:", 16))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isActiveService:32];
  }

  return v3;
}

- (void)_manager:(id)a3 offGridModeUpdated:(int64_t)a4 publishStatus:(int64_t)a5 context:(id)a6
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CCUISatelliteMonitor__manager_offGridModeUpdated_publishStatus_context___block_invoke;
  block[3] = &unk_278382C78;
  block[4] = self;
  block[5] = a4;
  block[6] = a5;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v8 = [(CCUISatelliteMonitor *)self waitingForOffGridModeToDisableBeforeDisconnecting];
  if (a5 == 1 && v8)
  {
    [(CCUISatelliteMonitor *)self disconnectFromSatellite];
  }
}

uint64_t __74__CCUISatelliteMonitor__manager_offGridModeUpdated_publishStatus_context___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 64) = *(a1 + 40);
  *(*(a1 + 32) + 72) = *(a1 + 48);
  return [*(a1 + 32) _reevaluateState];
}

- (CCUISatelliteMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end