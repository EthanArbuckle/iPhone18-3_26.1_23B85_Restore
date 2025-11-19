@interface LAUIAuthenticationCore
+ (void)performBlockOnMainThread:(id)a3;
- (BOOL)_mechanism:(unint64_t)a3 enable:(BOOL)a4 error:(id *)a5;
- (BOOL)_simpleStatusInParams:(id)a3 touchId:(int64_t)a4 faceId:(int64_t)a5;
- (BOOL)isMechanismAvailable:(unint64_t)a3 error:(id *)a4;
- (LAUIAuthenticationCore)initWithMechanisms:(unint64_t)a3 context:(id)a4;
- (LAUIAuthenticationCoreDelegate)delegate;
- (UIView)view;
- (id)_optionsForBackgroundMechanism;
- (id)notificationNames;
- (void)_biometricNoMatchWithBiolockoutError:(id)a3;
- (void)_biometryState:(int64_t)a3;
- (void)_enableAvailableMechanisms:(unint64_t)a3;
- (void)_handleBackgroundMechanismsResult:(id)a3 error:(id)a4 context:(id)a5;
- (void)_notification:(id)a3;
- (void)_processActivityChangeForNotification:(id)a3 block:(id)a4;
- (void)_setupMechanisms:(unint64_t)a3;
- (void)_setupNotifications:(BOOL)a3;
- (void)_startBackgroundMechanisms;
- (void)_stopBackgroundMechanisms;
- (void)checkView;
- (void)event:(int64_t)a3 params:(id)a4 reply:(id)a5;
- (void)setActiveMechanisms:(unint64_t)a3;
- (void)setEnabledMechanisms:(unint64_t)a3;
- (void)setView:(id)a3;
- (void)startOrStopBackgroundMechanisms;
@end

@implementation LAUIAuthenticationCore

- (LAUIAuthenticationCore)initWithMechanisms:(unint64_t)a3 context:(id)a4
{
  v7 = a4;
  v16.receiver = self;
  v16.super_class = LAUIAuthenticationCore;
  v8 = [(LAUIAuthenticationCore *)&v16 init];
  v9 = v8;
  if (v8)
  {
    if (v7)
    {
      objc_storeStrong(&v8->_context, a4);
    }

    else
    {
      v10 = objc_opt_new();
      context = v9->_context;
      v9->_context = v10;

      v9->_usesInternalContext = 1;
    }

    [(LAUIAuthenticationCore *)v9 _setupMechanisms:a3];
    [(LAUIAuthenticationCore *)v9 _setupNotifications:1];
    v9->_applicationActive = 1;
    v12 = [MEMORY[0x277D24078] sharedInstance];
    v13 = [v12 infoForPid:getpid()];

    v14 = [MEMORY[0x277D24030] sharedInstance];
    v9->_supportsConcurrentEvaluations = [v14 isConcurrentEvaluationEnabledForClientInfo:v13];
  }

  return v9;
}

- (void)_setupMechanisms:(unint64_t)a3
{
  [(LAUIAuthenticationCore *)self setActiveMechanisms:0];

  [(LAUIAuthenticationCore *)self _enableAvailableMechanisms:a3];
}

- (void)_enableAvailableMechanisms:(unint64_t)a3
{
  [(LAUIAuthenticationCore *)self setEnabledMechanisms:0];
  if (a3)
  {
    v5 = 1;
    do
    {
      if ((v5 & a3) != 0)
      {
        if ([(LAUIAuthenticationCore *)self isMechanismAvailable:v5 error:0])
        {
          [(LAUIAuthenticationCore *)self setEnabledMechanisms:[(LAUIAuthenticationCore *)self enabledMechanisms]| v5];
        }
      }

      v5 *= 2;
    }

    while (v5 <= a3);
  }
}

- (void)_setupNotifications:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(LAUIAuthenticationCore *)self notificationNames];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addObserver:self selector:sel__notification_ name:*(*(&v10 + 1) + 8 * i) object:0];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)isMechanismAvailable:(unint64_t)a3 error:(id *)a4
{
  v5 = a3 == 4;
  if (a3 != 4)
  {
    if (!a4)
    {
      return 0;
    }

    LAErrorHelperClass = getLAErrorHelperClass();
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported mechanism: %d", a3];
    [LAErrorHelperClass internalErrorWithMessage:v11];
    *a4 = v10 = 0;
    goto LABEL_8;
  }

  v7 = [(LAUIAuthenticationCore *)self context];

  if (!v7)
  {
    v8 = objc_opt_new();
    [(LAUIAuthenticationCore *)self setContext:v8];
  }

  v9 = [(LAUIAuthenticationCore *)self context];
  v10 = [v9 canEvaluatePolicy:v5 error:a4];

  if (![(LAUIAuthenticationCore *)self biometryType])
  {
    v11 = [(LAUIAuthenticationCore *)self context];
    self->_biometryType = [v11 biometryType];
LABEL_8:
  }

  return v10;
}

- (BOOL)_mechanism:(unint64_t)a3 enable:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v30 = *MEMORY[0x277D85DE8];
  v9 = LA_LOG_LAUIAuthenticationCore();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(LAUIAuthenticationCore *)self delegate];
    v11 = "disabling";
    *buf = 138543874;
    v25 = v10;
    if (v6)
    {
      v11 = "enabling";
    }

    v26 = 2082;
    v27 = v11;
    v28 = 1024;
    v29 = a3;
    _os_log_impl(&dword_2560E6000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ is %{public}s mechanism: %d", buf, 0x1Cu);
  }

  if (v6)
  {
    v23 = 0;
    v12 = [(LAUIAuthenticationCore *)self isMechanismAvailable:a3 error:&v23];
    v13 = v23;
    if (v12)
    {
      [(LAUIAuthenticationCore *)self setEnabledMechanisms:[(LAUIAuthenticationCore *)self enabledMechanisms]| a3];
      if (a3 == 4 && [(LAUIAuthenticationCore *)self biometryType]== 2 && ([(LAUIAuthenticationCore *)self activeMechanisms]& 4) != 0)
      {
        objc_initWeak(buf, self);
        v14 = [(LAUIAuthenticationCore *)self context];
        v18 = MEMORY[0x277D85DD0];
        v19 = 3221225472;
        v20 = __50__LAUIAuthenticationCore__mechanism_enable_error___block_invoke;
        v21 = &unk_279821920;
        objc_copyWeak(&v22, buf);
        [v14 retryProcessedEvent:7 reply:&v18];

        objc_destroyWeak(&v22);
        objc_destroyWeak(buf);
      }
    }

    if (v13)
    {
      v15 = 0;
      if (!a5)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else
  {
    [(LAUIAuthenticationCore *)self setEnabledMechanisms:[(LAUIAuthenticationCore *)self enabledMechanisms]& ~a3];
  }

  [(LAUIAuthenticationCore *)self startOrStopBackgroundMechanisms:v18];
  v13 = 0;
  v15 = 1;
  if (a5)
  {
LABEL_16:
    v16 = v13;
    *a5 = v13;
  }

LABEL_17:

  return v15;
}

void __50__LAUIAuthenticationCore__mechanism_enable_error___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && a2)
  {
    WeakRetained[8] = 0;
  }
}

- (void)setEnabledMechanisms:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  enabledMechanisms = self->_enabledMechanisms;
  if (enabledMechanisms != a3)
  {
    v4 = a3;
    self->_enabledMechanisms = a3;
    v6 = LA_LOG_LAUIAuthenticationCore();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [(LAUIAuthenticationCore *)self delegate];
      v8 = 138543874;
      v9 = v7;
      v10 = 1024;
      v11 = enabledMechanisms;
      v12 = 1024;
      v13 = v4;
      _os_log_debug_impl(&dword_2560E6000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ has changed enabled mechanisms from %d to %d", &v8, 0x18u);
    }
  }
}

- (void)setActiveMechanisms:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  activeMechanisms = self->_activeMechanisms;
  if (activeMechanisms != a3)
  {
    v4 = a3;
    self->_activeMechanisms = a3;
    v6 = LA_LOG_LAUIAuthenticationCore();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [(LAUIAuthenticationCore *)self delegate];
      v8 = 138543874;
      v9 = v7;
      v10 = 1024;
      v11 = activeMechanisms;
      v12 = 1024;
      v13 = v4;
      _os_log_debug_impl(&dword_2560E6000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ has changed active mechanisms from %d to %d", &v8, 0x18u);
    }
  }
}

- (void)startOrStopBackgroundMechanisms
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = [a1 enabledMechanisms];
  _os_log_debug_impl(&dword_2560E6000, a2, OS_LOG_TYPE_DEBUG, "All mechanisms already running: %d", v3, 8u);
}

- (void)_startBackgroundMechanisms
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->_usesInternalContext)
  {
    v3 = [(LAUIAuthenticationCore *)self context];
    [v3 invalidate];

    v4 = objc_opt_new();
    [(LAUIAuthenticationCore *)self setContext:v4];
  }

  v5 = LA_LOG_LAUIAuthenticationCore();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(LAUIAuthenticationCore *)self delegate];
    context = self->_context;
    *buf = 138543618;
    v20 = v6;
    v21 = 2114;
    v22 = context;
    _os_log_impl(&dword_2560E6000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ will use %{public}@", buf, 0x16u);
  }

  v8 = [(LAUIAuthenticationCore *)self context];
  v9 = [(LAUIAuthenticationCore *)self context];
  [v9 setUiDelegate:self];

  v10 = [(LAUIAuthenticationCore *)self _policyForBackgroundMechanisms];
  if (v10)
  {
    v11 = [(LAUIAuthenticationCore *)self enabledMechanisms]& 4;
    [(LAUIAuthenticationCore *)self setActiveMechanisms:[(LAUIAuthenticationCore *)self activeMechanisms]| v11];
    v18 = 0;
    v12 = [v8 canEvaluatePolicy:v10 error:&v18];
    v13 = v18;
    if (v12)
    {
      objc_initWeak(buf, self);
      v14 = [(LAUIAuthenticationCore *)self _optionsForBackgroundMechanism];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __52__LAUIAuthenticationCore__startBackgroundMechanisms__block_invoke;
      v15[3] = &unk_279821948;
      objc_copyWeak(v17, buf);
      v15[4] = self;
      v17[1] = v11;
      v16 = v8;
      [v16 evaluatePolicy:v10 options:v14 reply:v15];

      objc_destroyWeak(v17);
      objc_destroyWeak(buf);
    }

    else
    {
      [(LAUIAuthenticationCore *)self _handleBackgroundMechanismsResult:0 error:v13 context:v8];
    }
  }
}

void __52__LAUIAuthenticationCore__startBackgroundMechanisms__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (*(*(a1 + 32) + 24) != 1 || ([MEMORY[0x277D24060] error:v5 hasCode:*MEMORY[0x277D23E90] subcode:*MEMORY[0x277D23EC0]] & 1) == 0))
  {
    [WeakRetained setActiveMechanisms:{objc_msgSend(WeakRetained, "activeMechanisms") & ~*(a1 + 56)}];
    [WeakRetained _handleBackgroundMechanismsResult:v7 error:v5 context:*(a1 + 40)];
  }
}

- (id)_optionsForBackgroundMechanism
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithObject:MEMORY[0x277CBEC38] forKey:&unk_28682FB28];
  if ([(LAUIAuthenticationCore *)self isMechanismEnabled:4])
  {
    v4 = [(LAUIAuthenticationCore *)self delegate];
    v5 = [v4 callerIconPath];

    v6 = [(LAUIAuthenticationCore *)self delegate];
    v7 = [v6 callerIconBundlePath];

    v8 = [v5 length];
    v9 = v5;
    if (v8 || (v10 = [v7 length], v9 = v7, v10))
    {
      [v3 setObject:v9 forKey:&unk_28682FB40];
    }

    v11 = [(LAUIAuthenticationCore *)self delegate];
    v12 = [v11 localizedCallerName];

    if (v12)
    {
      [v3 setObject:v12 forKey:&unk_28682FB58];
    }

    if ([(LAUIAuthenticationCore *)self biometryType]== 2)
    {
      v16 = &unk_28682FB88;
      v17 = &unk_28682FB88;
      v18 = &unk_28682FB70;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v19[0] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      [v3 setObject:v14 forKey:&unk_28682FBA0];
    }
  }

  return v3;
}

- (void)_handleBackgroundMechanismsResult:(id)a3 error:(id)a4 context:(id)a5
{
  v17 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(LAUIAuthenticationCore *)self context];

  if (v11 != v10)
  {
    [v10 invalidate];
    goto LABEL_12;
  }

  if (v17)
  {
    v12 = [v17 objectForKeyedSubscript:&unk_28682FBB8];
    if ([v12 BOOLValue])
    {
      v13 = [(LAUIAuthenticationCore *)self biometryType];

      if (v13 == 2)
      {
        objc_storeStrong(&self->_faceIdResult, a3);
        goto LABEL_12;
      }
    }

    else
    {
    }

    v14 = [(LAUIAuthenticationCore *)self delegate];
    v15 = v14;
    v16 = v17;
  }

  else
  {
    if ([getLAErrorHelperClass() error:v9 hasCode:-9])
    {
      goto LABEL_12;
    }

    v14 = [(LAUIAuthenticationCore *)self delegate];
    v15 = v14;
    v16 = 0;
  }

  [v14 authenticationResult:v16 error:v9 context:v10];

LABEL_12:
}

- (void)_stopBackgroundMechanisms
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_context && self->_usesInternalContext)
  {
    v3 = LA_LOG_LAUIAuthenticationCore();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(LAUIAuthenticationCore *)self delegate];
      context = self->_context;
      v7 = 138543618;
      v8 = v4;
      v9 = 2114;
      v10 = context;
      _os_log_impl(&dword_2560E6000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ will discard %{public}@", &v7, 0x16u);
    }

    [(LAContext *)self->_context invalidate];
    v6 = self->_context;
    self->_context = 0;
  }

  [(LAUIAuthenticationCore *)self setActiveMechanisms:[(LAUIAuthenticationCore *)self activeMechanisms]& (~[(LAUIAuthenticationCore *)self enabledMechanisms]| 0xFFFFFFFFFFFFFFFBLL)];
  if ([(LAUIAuthenticationCore *)self isMechanismEnabled:4])
  {
    [(LAUIAuthenticationCore *)self _biometryState:0];
  }
}

- (id)notificationNames
{
  if (notificationNames_onceToken != -1)
  {
    [LAUIAuthenticationCore notificationNames];
  }

  v3 = notificationNames_notificationNames;

  return v3;
}

void __43__LAUIAuthenticationCore_notificationNames__block_invoke()
{
  v0 = notificationNames_notificationNames;
  notificationNames_notificationNames = MEMORY[0x277CBEBF8];
}

- (void)_notification:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__LAUIAuthenticationCore__notification___block_invoke;
  v5[3] = &unk_2798215C8;
  objc_copyWeak(&v6, &location);
  [(LAUIAuthenticationCore *)self _processActivityChangeForNotification:v4 block:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __40__LAUIAuthenticationCore__notification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
}

- (void)checkView
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__LAUIAuthenticationCore_checkView__block_invoke;
  v3[3] = &unk_2798215C8;
  objc_copyWeak(&v4, &location);
  [(LAUIAuthenticationCore *)self _processActivityChangeForNotification:0 block:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __35__LAUIAuthenticationCore_checkView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained view];
    v3 = [v2 window];
    [v4 setKeyWindow:{objc_msgSend(v3, "isKeyWindow")}];

    WeakRetained = v4;
  }
}

- (void)setView:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_view, v4);
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__LAUIAuthenticationCore_setView___block_invoke;
  v6[3] = &unk_279821970;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(LAUIAuthenticationCore *)self _processActivityChangeForNotification:0 block:v6];
  [(LAUIAuthenticationCore *)self startOrStopBackgroundMechanisms];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __34__LAUIAuthenticationCore_setView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [*(a1 + 32) window];
    [v4 setKeyWindow:{objc_msgSend(v3, "isKeyWindow")}];

    WeakRetained = v4;
  }
}

- (void)_processActivityChangeForNotification:(id)a3 block:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(LAUIAuthenticationCore *)self isUiActive];
  if (v6)
  {
    v6[2](v6);
  }

  if ([(LAUIAuthenticationCore *)self isApplicationActive])
  {
    v8 = [(LAUIAuthenticationCore *)self isKeyWindow];
  }

  else
  {
    v8 = 0;
  }

  [(LAUIAuthenticationCore *)self setUiActive:v8];
  if (v7 != [(LAUIAuthenticationCore *)self isUiActive])
  {
    [(LAUIAuthenticationCore *)self startOrStopBackgroundMechanisms];
    v9 = [(LAUIAuthenticationCore *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(LAUIAuthenticationCore *)self delegate];
      [v11 notification:-[LAUIAuthenticationCore isUiActive](self original:"isUiActive") mechanism:{v12, 0}];
    }
  }
}

- (void)event:(int64_t)a3 params:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 objectForKeyedSubscript:&unk_28682FBD0];
  v11 = [v10 BOOLValue];
  if (a3 == 7 || a3 == 1)
  {
    v12 = [v8 objectForKeyedSubscript:&unk_28682FBE8];
    v13 = v12;
    if (v12)
    {
      self->_mirroringToDefaultUI = [v12 BOOLValue];
      [(LAUIAuthenticationCore *)self _biometryState:self->_lastState];
    }

    if (v10)
    {
      self->_doneMatching = v11 ^ 1;
      v14 = v11;
      v15 = self;
LABEL_13:
      [(LAUIAuthenticationCore *)v15 _biometryState:v14];
LABEL_14:

      goto LABEL_15;
    }

    if ([(LAUIAuthenticationCore *)self _simpleStatusInParams:v8 touchId:0 faceId:0])
    {
      v15 = self;
      v14 = 2;
      goto LABEL_13;
    }

    if ([(LAUIAuthenticationCore *)self _simpleStatusInParams:v8 touchId:1 faceId:1])
    {
      goto LABEL_10;
    }

    if ([(LAUIAuthenticationCore *)self _simpleStatusInParams:v8 touchId:2 faceId:2])
    {
      v15 = self;
      v14 = 4;
      goto LABEL_13;
    }

    if ([(LAUIAuthenticationCore *)self _simpleStatusInParams:v8 touchId:-1 faceId:10])
    {
LABEL_10:
      v15 = self;
      v14 = 1;
      goto LABEL_13;
    }

    if ([(LAUIAuthenticationCore *)self _simpleStatusInParams:v8 touchId:-1 faceId:11])
    {
      v15 = self;
      v14 = 0;
      goto LABEL_13;
    }

    if (![(LAUIAuthenticationCore *)self _simpleStatusInParams:v8 touchId:3 faceId:3])
    {
      v18 = [v8 objectForKeyedSubscript:&unk_28682FC30];
      if (v18)
      {
        v19 = v18;
        v20 = [v8 objectForKeyedSubscript:&unk_28682FC30];
        v21 = [v20 integerValue];

        if (v21 == 11)
        {
          v22 = LA_LOG_LAUIAuthenticationCore();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *v23 = 0;
            _os_log_impl(&dword_2560E6000, v22, OS_LOG_TYPE_DEFAULT, "Face mask detected. Will shortcircuit bio-auth.", v23, 2u);
          }

          [(LAContext *)self->_context failProcessedEvent:a3 failureError:0 reply:&__block_literal_global_44];
        }
      }

      goto LABEL_14;
    }

    v16 = [v8 objectForKeyedSubscript:&unk_28682FC00];
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = [v8 objectForKeyedSubscript:&unk_28682FC18];
      if (!v17)
      {
LABEL_29:
        [(LAUIAuthenticationCore *)self _biometryState:5];
        [(LAUIAuthenticationCore *)self _biometricNoMatchWithBiolockoutError:v17];

        goto LABEL_14;
      }
    }

    [(LAUIAuthenticationCore *)self setEnabledMechanisms:[(LAUIAuthenticationCore *)self enabledMechanisms]& 0xFFFFFFFFFFFFFFFBLL];
    goto LABEL_29;
  }

LABEL_15:
  (*(v9 + 2))(v9, MEMORY[0x277CBEC10], 0);
}

- (BOOL)_simpleStatusInParams:(id)a3 touchId:(int64_t)a4 faceId:(int64_t)a5
{
  v8 = a3;
  v9 = [(LAUIAuthenticationCore *)self biometryType];
  if (v9 == 1)
  {
    v10 = &unk_28682FC48;
  }

  else
  {
    if (v9 != 2)
    {
LABEL_7:
      v13 = 0;
      goto LABEL_8;
    }

    v10 = &unk_28682FC60;
    a4 = a5;
  }

  v11 = [v8 objectForKeyedSubscript:v10];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = v11;
  v13 = [v11 integerValue] == a4;

LABEL_8:
  return v13;
}

- (void)_biometryState:(int64_t)a3
{
  self->_lastState = a3;
  doneMatching = self->_doneMatching;
  if (a3 == 4)
  {
    self->_doneMatching = 1;
  }

  if (!doneMatching)
  {
    mirroringToDefaultUI = self->_mirroringToDefaultUI;
    objc_initWeak(&location, self);
    v7 = [(LAUIAuthenticationCore *)self delegate];
    v8 = 3;
    if (a3 > 3)
    {
      v8 = a3;
    }

    if (mirroringToDefaultUI)
    {
      v9 = v8;
    }

    else
    {
      v9 = a3;
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __41__LAUIAuthenticationCore__biometryState___block_invoke;
    v10[3] = &unk_279821658;
    objc_copyWeak(v11, &location);
    v11[1] = a3;
    [v7 biometryState:v9 completionHandler:v10];

    objc_destroyWeak(v11);
    objc_destroyWeak(&location);
  }
}

void __41__LAUIAuthenticationCore__biometryState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*(a1 + 40) == 4)
    {
      v7 = WeakRetained;
      v3 = [WeakRetained biometryType] == 2;
      WeakRetained = v7;
      if (v3)
      {
        v4 = [v7 delegate];
        v5 = [v7 faceIdResult];
        v6 = [v7 context];
        [v4 authenticationResult:v5 error:0 context:v6];

        WeakRetained = v7;
      }
    }
  }
}

- (void)_biometricNoMatchWithBiolockoutError:(id)a3
{
  v7 = a3;
  v4 = [(LAUIAuthenticationCore *)self delegate];
  [v4 biometricNoMatch];

  if (v7)
  {
    v5 = [(LAUIAuthenticationCore *)self delegate];
    v6 = [(LAUIAuthenticationCore *)self context];
    [v5 authenticationResult:0 error:v7 context:v6];
  }
}

+ (void)performBlockOnMainThread:(id)a3
{
  v3 = MEMORY[0x277CCACC8];
  block = a3;
  if ([v3 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

- (LAUIAuthenticationCoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end