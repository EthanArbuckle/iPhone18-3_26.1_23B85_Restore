@interface CSUserPresenceMonitor
+ (void)synthesizeUserPresenceForReason:(id)a3;
- (BOOL)_handleBiometricEvent:(unint64_t)a3;
- (BOOL)handleEvent:(id)a3;
- (CSUserPresenceMonitor)initWithBiometricResource:(id)a3;
- (CSUserPresenceMonitor)initWithBiometricResource:(id)a3 attentionAwarenessClient:(id)a4;
- (void)_cancelPollForAttention;
- (void)_configureAttentionAwarenessClient;
- (void)_handleAttentionAwarenessEvent:(id)a3;
- (void)_monitorForInjectedUserPresence;
- (void)_pollForAttention;
- (void)_resumeAttentionAwarenessClient;
- (void)_setUserPresenceDetectedRecently:(BOOL)a3;
- (void)_setUserPresenceDetectedSinceWake:(BOOL)a3;
- (void)_suspendAttentionAwarenessClient;
- (void)_updateFaceDetectionStateForMonitorType:(int64_t)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)disableDetectionForReason:(id)a3 monitorType:(int64_t)a4;
- (void)enableDetectionForReason:(id)a3 monitorType:(int64_t)a4;
@end

@implementation CSUserPresenceMonitor

- (void)_pollForAttention
{
  v3 = [MEMORY[0x277CBEAA8] distantFuture];
  [v3 timeIntervalSinceNow];
  v5 = v4;

  objc_initWeak(&location, self);
  attentionAwarenessClient = self->_attentionAwarenessClient;
  v7 = MEMORY[0x277D85CD0];
  v8 = MEMORY[0x277D85CD0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__CSUserPresenceMonitor__pollForAttention__block_invoke;
  v14[3] = &unk_27838DC70;
  objc_copyWeak(&v15, &location);
  v13 = 0;
  v9 = [(AWAttentionAwarenessClient *)attentionAwarenessClient pollForAttentionWithTimeout:v7 queue:v14 block:&v13 error:v5];
  v10 = v13;

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    v12 = SBLogDashBoard();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CSUserPresenceMonitor _pollForAttention];
    }
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_resumeAttentionAwarenessClient
{
  attentionAwarenessClient = self->_attentionAwarenessClient;
  v6 = 0;
  v3 = [(AWAttentionAwarenessClient *)attentionAwarenessClient resumeWithError:&v6];
  v4 = v6;
  if ((v3 & 1) == 0)
  {
    v5 = SBLogDashBoard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CSUserPresenceMonitor _resumeAttentionAwarenessClient];
    }
  }
}

void __42__CSUserPresenceMonitor__pollForAttention__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleAttentionAwarenessEvent:v6];
  }
}

- (void)_cancelPollForAttention
{
  attentionAwarenessClient = self->_attentionAwarenessClient;
  v6 = 0;
  v3 = [(AWAttentionAwarenessClient *)attentionAwarenessClient cancelPollForAttentionWithError:&v6];
  v4 = v6;
  if ((v3 & 1) == 0)
  {
    v5 = SBLogDashBoard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CSUserPresenceMonitor _cancelPollForAttention];
    }
  }
}

- (void)_suspendAttentionAwarenessClient
{
  attentionAwarenessClient = self->_attentionAwarenessClient;
  v6 = 0;
  v3 = [(AWAttentionAwarenessClient *)attentionAwarenessClient suspendWithError:&v6];
  v4 = v6;
  if ((v3 & 1) == 0)
  {
    v5 = SBLogDashBoard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CSUserPresenceMonitor _suspendAttentionAwarenessClient];
    }
  }
}

- (CSUserPresenceMonitor)initWithBiometricResource:(id)a3
{
  v4 = MEMORY[0x277CEF760];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(CSUserPresenceMonitor *)self initWithBiometricResource:v5 attentionAwarenessClient:v6];

  return v7;
}

- (CSUserPresenceMonitor)initWithBiometricResource:(id)a3 attentionAwarenessClient:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CSUserPresenceMonitor;
  v9 = [(CSUserPresenceMonitor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_biometricResource, a3);
    objc_storeStrong(&v10->_attentionAwarenessClient, a4);
    [(CSUserPresenceMonitor *)v10 _monitorForInjectedUserPresence];
    [(CSUserPresenceMonitor *)v10 _configureAttentionAwarenessClient];
  }

  return v10;
}

- (void)_monitorForInjectedUserPresence
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = [MEMORY[0x277CCABD8] mainQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__CSUserPresenceMonitor__monitorForInjectedUserPresence__block_invoke;
  v6[3] = &unk_27838DC48;
  v6[4] = self;
  v5 = [v3 addObserverForName:@"cs-inject-user-presence" object:0 queue:v4 usingBlock:v6];
}

void __56__CSUserPresenceMonitor__monitorForInjectedUserPresence__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogDashBoard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 userInfo];
    v6 = [v5 valueForKey:@"reason"];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_21EB05000, v4, OS_LOG_TYPE_DEFAULT, "[User Presence Monitor] Injecting fake user presence with reason %@", &v7, 0xCu);
  }

  [*(a1 + 32) _setUserPresenceDetectedSinceWake:1];
}

- (void)dealloc
{
  [(AWAttentionAwarenessClient *)self->_attentionAwarenessClient invalidateWithError:0];
  attentionAwarenessClient = self->_attentionAwarenessClient;
  self->_attentionAwarenessClient = 0;

  v4.receiver = self;
  v4.super_class = CSUserPresenceMonitor;
  [(CSUserPresenceMonitor *)&v4 dealloc];
}

- (void)enableDetectionForReason:(id)a3 monitorType:(int64_t)a4
{
  v6 = a3;
  activationReasons = self->_activationReasons;
  v10 = v6;
  if (!activationReasons)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v9 = self->_activationReasons;
    self->_activationReasons = v8;

    v6 = v10;
    activationReasons = self->_activationReasons;
  }

  [(NSMutableSet *)activationReasons addObject:v6];
  [(CSUserPresenceMonitor *)self _updateFaceDetectionStateForMonitorType:a4];
}

- (void)disableDetectionForReason:(id)a3 monitorType:(int64_t)a4
{
  [(NSMutableSet *)self->_activationReasons removeObject:a3];

  [(CSUserPresenceMonitor *)self _updateFaceDetectionStateForMonitorType:a4];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  if (v5 <= 10)
  {
    if (v5 == 5)
    {
      [(CSUserPresenceMonitor *)self _setUserPresenceDetectedSinceWake:1];
    }

    else
    {
      if (v5 != 10)
      {
        goto LABEL_14;
      }

      self->_coverSheetResignedActive = 1;
    }

LABEL_13:
    [(CSUserPresenceMonitor *)self _updateFaceDetectionStateForMonitorType:0];
    goto LABEL_14;
  }

  switch(v5)
  {
    case 11:
      self->_coverSheetResignedActive = 0;
      goto LABEL_13;
    case 25:
      [(CSUserPresenceMonitor *)self _setUserPresenceDetectedSinceWake:0];
      [(CSUserPresenceMonitor *)self _cancelPollForAttention];
      goto LABEL_13;
    case 15:
      v6 = [v4 value];
      v7 = -[CSUserPresenceMonitor _handleBiometricEvent:](self, "_handleBiometricEvent:", [v6 unsignedIntegerValue]);

      if (v7)
      {
        goto LABEL_13;
      }

      break;
  }

LABEL_14:

  return 0;
}

- (void)_setUserPresenceDetectedSinceWake:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_userPresenceDetectedSinceWake != a3)
  {
    self->_userPresenceDetectedSinceWake = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_observers;
    v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) userPresenceDetectedSinceWakeDidChange:{self, v9}];
        }

        while (v6 != v8);
        v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_setUserPresenceDetectedRecently:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_userPresenceDetectedRecently != a3)
  {
    self->_userPresenceDetectedRecently = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_observers;
    v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) userPresenceDetectedRecentlyDidChange:{self, v9}];
        }

        while (v6 != v8);
        v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (BOOL)_handleBiometricEvent:(unint64_t)a3
{
  result = 0;
  if (a3 <= 0x16)
  {
    if (((1 << a3) & 0x724000) != 0)
    {
      v5 = SBLogDashBoard();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "[User Presence Monitor] No user attention or face out of view", v8, 2u);
      }

      v6 = 0;
LABEL_6:
      [(CSUserPresenceMonitor *)self _setUserPresenceDetectedRecently:v6];
      return 1;
    }

    if (a3 == 13)
    {
      v7 = SBLogDashBoard();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "[User Presence Monitor] Face in view", buf, 2u);
      }

      v6 = 1;
      [(CSUserPresenceMonitor *)self _setUserPresenceDetectedSinceWake:1];
      goto LABEL_6;
    }
  }

  return result;
}

- (void)_configureAttentionAwarenessClient
{
  v3 = objc_alloc_init(MEMORY[0x277CEF768]);
  [v3 setIdentifier:@"com.apple.SpringBoard.CoverSheetUserPresenceMonitor"];
  [v3 setEventMask:128];
  [(AWAttentionAwarenessClient *)self->_attentionAwarenessClient setConfiguration:v3];
}

- (void)_handleAttentionAwarenessEvent:(id)a3
{
  v4 = a3;
  if (([v4 eventMask] & 0x80) != 0)
  {
    v5 = objc_opt_class();
    v6 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = SBLogDashBoard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "[User Presence Monitor] Did receive face detect event", v12, 2u);
    }

    v10 = 1;
    [(CSUserPresenceMonitor *)self _setUserPresenceDetectedSinceWake:1];
    v11 = [v8 faceState];
    if (v11 != 1)
    {
      if (v11 != 3)
      {
LABEL_14:

        goto LABEL_15;
      }

      v10 = 0;
    }

    [(CSUserPresenceMonitor *)self _setUserPresenceDetectedRecently:v10];
    goto LABEL_14;
  }

LABEL_15:
}

- (void)_updateFaceDetectionStateForMonitorType:(int64_t)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [(CSUserPresenceMonitor *)self isUserPresenceDetectionSupported];
  v6 = [(CSUserPresenceMonitor *)self _isFaceDetectPermitted];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (!self->_coverSheetResignedActive)
    {
      v8 = [(NSMutableSet *)self->_activationReasons count]!= 0;
      if (a3)
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    }

    v8 = 0;
  }

  if (a3)
  {
    goto LABEL_8;
  }

LABEL_6:
  if (self->_userPresenceDetectedSinceWake)
  {
    v8 = 0;
  }

LABEL_8:
  v9 = SBLogDashBoard();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    userPresenceDetectedSinceWake = self->_userPresenceDetectedSinceWake;
    coverSheetResignedActive = self->_coverSheetResignedActive;
    activationReasons = self->_activationReasons;
    v15[0] = 67110402;
    v15[1] = v5;
    v16 = 1024;
    v17 = v7;
    v18 = 1024;
    v19 = userPresenceDetectedSinceWake;
    v20 = 1024;
    v21 = coverSheetResignedActive;
    v22 = 2112;
    v23 = activationReasons;
    v24 = 1024;
    v25 = v8;
    _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "[User Presence Monitor] Evaluate face detection enablement [ available: %{BOOL}d allowed: %{BOOL}d detected: %{BOOL}d resignedActive: %{BOOL}d reasons: %@ ] result: %{BOOL}d", v15, 0x2Au);
  }

  if (v8)
  {
    v13 = SBLogDashBoard();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(&dword_21EB05000, v13, OS_LOG_TYPE_DEFAULT, "[User Presence Monitor] Polling for attention", v15, 2u);
    }

    [(CSUserPresenceMonitor *)self _pollForAttention];
    [(CSUserPresenceMonitor *)self _resumeAttentionAwarenessClient];
  }

  else if (self->_attentionAwarenessClient)
  {
    v14 = SBLogDashBoard();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(&dword_21EB05000, v14, OS_LOG_TYPE_DEFAULT, "[User Presence Monitor] Cancelling poll for attention", v15, 2u);
    }

    [(CSUserPresenceMonitor *)self _cancelPollForAttention];
    [(CSUserPresenceMonitor *)self _suspendAttentionAwarenessClient];
  }
}

+ (void)synthesizeUserPresenceForReason:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v6 = objc_alloc_init(v3);
  [v6 setValue:v4 forKey:@"reason"];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"cs-inject-user-presence" object:0 userInfo:v6];
}

@end