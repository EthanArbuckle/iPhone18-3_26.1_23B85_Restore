@interface LAUIAuthenticationCore
+ (void)performBlockOnMainThread:(id)thread;
- (BOOL)_mechanism:(unint64_t)_mechanism enable:(BOOL)enable error:(id *)error;
- (BOOL)_simpleStatusInParams:(id)params touchId:(int64_t)id faceId:(int64_t)faceId;
- (BOOL)isMechanismAvailable:(unint64_t)available error:(id *)error;
- (LAUIAuthenticationCore)initWithMechanisms:(unint64_t)mechanisms context:(id)context;
- (LAUIAuthenticationCoreDelegate)delegate;
- (UIView)view;
- (id)_optionsForBackgroundMechanism;
- (id)notificationNames;
- (void)_biometricNoMatchWithBiolockoutError:(id)error;
- (void)_biometryState:(int64_t)state;
- (void)_enableAvailableMechanisms:(unint64_t)mechanisms;
- (void)_handleBackgroundMechanismsResult:(id)result error:(id)error context:(id)context;
- (void)_notification:(id)_notification;
- (void)_processActivityChangeForNotification:(id)notification block:(id)block;
- (void)_setupMechanisms:(unint64_t)mechanisms;
- (void)_setupNotifications:(BOOL)notifications;
- (void)_startBackgroundMechanisms;
- (void)_stopBackgroundMechanisms;
- (void)checkView;
- (void)event:(int64_t)event params:(id)params reply:(id)reply;
- (void)setActiveMechanisms:(unint64_t)mechanisms;
- (void)setEnabledMechanisms:(unint64_t)mechanisms;
- (void)setView:(id)view;
- (void)startOrStopBackgroundMechanisms;
@end

@implementation LAUIAuthenticationCore

- (LAUIAuthenticationCore)initWithMechanisms:(unint64_t)mechanisms context:(id)context
{
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = LAUIAuthenticationCore;
  v8 = [(LAUIAuthenticationCore *)&v16 init];
  v9 = v8;
  if (v8)
  {
    if (contextCopy)
    {
      objc_storeStrong(&v8->_context, context);
    }

    else
    {
      v10 = objc_opt_new();
      context = v9->_context;
      v9->_context = v10;

      v9->_usesInternalContext = 1;
    }

    [(LAUIAuthenticationCore *)v9 _setupMechanisms:mechanisms];
    [(LAUIAuthenticationCore *)v9 _setupNotifications:1];
    v9->_applicationActive = 1;
    mEMORY[0x277D24078] = [MEMORY[0x277D24078] sharedInstance];
    v13 = [mEMORY[0x277D24078] infoForPid:getpid()];

    mEMORY[0x277D24030] = [MEMORY[0x277D24030] sharedInstance];
    v9->_supportsConcurrentEvaluations = [mEMORY[0x277D24030] isConcurrentEvaluationEnabledForClientInfo:v13];
  }

  return v9;
}

- (void)_setupMechanisms:(unint64_t)mechanisms
{
  [(LAUIAuthenticationCore *)self setActiveMechanisms:0];

  [(LAUIAuthenticationCore *)self _enableAvailableMechanisms:mechanisms];
}

- (void)_enableAvailableMechanisms:(unint64_t)mechanisms
{
  [(LAUIAuthenticationCore *)self setEnabledMechanisms:0];
  if (mechanisms)
  {
    v5 = 1;
    do
    {
      if ((v5 & mechanisms) != 0)
      {
        if ([(LAUIAuthenticationCore *)self isMechanismAvailable:v5 error:0])
        {
          [(LAUIAuthenticationCore *)self setEnabledMechanisms:[(LAUIAuthenticationCore *)self enabledMechanisms]| v5];
        }
      }

      v5 *= 2;
    }

    while (v5 <= mechanisms);
  }
}

- (void)_setupNotifications:(BOOL)notifications
{
  v15 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  notificationNames = [(LAUIAuthenticationCore *)self notificationNames];
  v6 = [notificationNames countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(notificationNames);
        }

        [defaultCenter addObserver:self selector:sel__notification_ name:*(*(&v10 + 1) + 8 * i) object:0];
      }

      v7 = [notificationNames countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)isMechanismAvailable:(unint64_t)available error:(id *)error
{
  v5 = available == 4;
  if (available != 4)
  {
    if (!error)
    {
      return 0;
    }

    LAErrorHelperClass = getLAErrorHelperClass();
    available = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported mechanism: %d", available];
    [LAErrorHelperClass internalErrorWithMessage:available];
    *error = v10 = 0;
    goto LABEL_8;
  }

  context = [(LAUIAuthenticationCore *)self context];

  if (!context)
  {
    v8 = objc_opt_new();
    [(LAUIAuthenticationCore *)self setContext:v8];
  }

  context2 = [(LAUIAuthenticationCore *)self context];
  v10 = [context2 canEvaluatePolicy:v5 error:error];

  if (![(LAUIAuthenticationCore *)self biometryType])
  {
    available = [(LAUIAuthenticationCore *)self context];
    self->_biometryType = [available biometryType];
LABEL_8:
  }

  return v10;
}

- (BOOL)_mechanism:(unint64_t)_mechanism enable:(BOOL)enable error:(id *)error
{
  enableCopy = enable;
  v30 = *MEMORY[0x277D85DE8];
  v9 = LA_LOG_LAUIAuthenticationCore();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    delegate = [(LAUIAuthenticationCore *)self delegate];
    v11 = "disabling";
    *buf = 138543874;
    v25 = delegate;
    if (enableCopy)
    {
      v11 = "enabling";
    }

    v26 = 2082;
    v27 = v11;
    v28 = 1024;
    _mechanismCopy = _mechanism;
    _os_log_impl(&dword_2560E6000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ is %{public}s mechanism: %d", buf, 0x1Cu);
  }

  if (enableCopy)
  {
    v23 = 0;
    v12 = [(LAUIAuthenticationCore *)self isMechanismAvailable:_mechanism error:&v23];
    v13 = v23;
    if (v12)
    {
      [(LAUIAuthenticationCore *)self setEnabledMechanisms:[(LAUIAuthenticationCore *)self enabledMechanisms]| _mechanism];
      if (_mechanism == 4 && [(LAUIAuthenticationCore *)self biometryType]== 2 && ([(LAUIAuthenticationCore *)self activeMechanisms]& 4) != 0)
      {
        objc_initWeak(buf, self);
        context = [(LAUIAuthenticationCore *)self context];
        v18 = MEMORY[0x277D85DD0];
        v19 = 3221225472;
        v20 = __50__LAUIAuthenticationCore__mechanism_enable_error___block_invoke;
        v21 = &unk_279821920;
        objc_copyWeak(&v22, buf);
        [context retryProcessedEvent:7 reply:&v18];

        objc_destroyWeak(&v22);
        objc_destroyWeak(buf);
      }
    }

    if (v13)
    {
      v15 = 0;
      if (!error)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else
  {
    [(LAUIAuthenticationCore *)self setEnabledMechanisms:[(LAUIAuthenticationCore *)self enabledMechanisms]& ~_mechanism];
  }

  [(LAUIAuthenticationCore *)self startOrStopBackgroundMechanisms:v18];
  v13 = 0;
  v15 = 1;
  if (error)
  {
LABEL_16:
    v16 = v13;
    *error = v13;
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

- (void)setEnabledMechanisms:(unint64_t)mechanisms
{
  v14 = *MEMORY[0x277D85DE8];
  enabledMechanisms = self->_enabledMechanisms;
  if (enabledMechanisms != mechanisms)
  {
    mechanismsCopy = mechanisms;
    self->_enabledMechanisms = mechanisms;
    v6 = LA_LOG_LAUIAuthenticationCore();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      delegate = [(LAUIAuthenticationCore *)self delegate];
      v8 = 138543874;
      v9 = delegate;
      v10 = 1024;
      v11 = enabledMechanisms;
      v12 = 1024;
      v13 = mechanismsCopy;
      _os_log_debug_impl(&dword_2560E6000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ has changed enabled mechanisms from %d to %d", &v8, 0x18u);
    }
  }
}

- (void)setActiveMechanisms:(unint64_t)mechanisms
{
  v14 = *MEMORY[0x277D85DE8];
  activeMechanisms = self->_activeMechanisms;
  if (activeMechanisms != mechanisms)
  {
    mechanismsCopy = mechanisms;
    self->_activeMechanisms = mechanisms;
    v6 = LA_LOG_LAUIAuthenticationCore();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      delegate = [(LAUIAuthenticationCore *)self delegate];
      v8 = 138543874;
      v9 = delegate;
      v10 = 1024;
      v11 = activeMechanisms;
      v12 = 1024;
      v13 = mechanismsCopy;
      _os_log_debug_impl(&dword_2560E6000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ has changed active mechanisms from %d to %d", &v8, 0x18u);
    }
  }
}

- (void)startOrStopBackgroundMechanisms
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = [self enabledMechanisms];
  _os_log_debug_impl(&dword_2560E6000, a2, OS_LOG_TYPE_DEBUG, "All mechanisms already running: %d", v3, 8u);
}

- (void)_startBackgroundMechanisms
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->_usesInternalContext)
  {
    context = [(LAUIAuthenticationCore *)self context];
    [context invalidate];

    v4 = objc_opt_new();
    [(LAUIAuthenticationCore *)self setContext:v4];
  }

  v5 = LA_LOG_LAUIAuthenticationCore();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    delegate = [(LAUIAuthenticationCore *)self delegate];
    context = self->_context;
    *buf = 138543618;
    v20 = delegate;
    v21 = 2114;
    v22 = context;
    _os_log_impl(&dword_2560E6000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ will use %{public}@", buf, 0x16u);
  }

  context2 = [(LAUIAuthenticationCore *)self context];
  context3 = [(LAUIAuthenticationCore *)self context];
  [context3 setUiDelegate:self];

  _policyForBackgroundMechanisms = [(LAUIAuthenticationCore *)self _policyForBackgroundMechanisms];
  if (_policyForBackgroundMechanisms)
  {
    v11 = [(LAUIAuthenticationCore *)self enabledMechanisms]& 4;
    [(LAUIAuthenticationCore *)self setActiveMechanisms:[(LAUIAuthenticationCore *)self activeMechanisms]| v11];
    v18 = 0;
    v12 = [context2 canEvaluatePolicy:_policyForBackgroundMechanisms error:&v18];
    v13 = v18;
    if (v12)
    {
      objc_initWeak(buf, self);
      _optionsForBackgroundMechanism = [(LAUIAuthenticationCore *)self _optionsForBackgroundMechanism];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __52__LAUIAuthenticationCore__startBackgroundMechanisms__block_invoke;
      v15[3] = &unk_279821948;
      objc_copyWeak(v17, buf);
      v15[4] = self;
      v17[1] = v11;
      v16 = context2;
      [v16 evaluatePolicy:_policyForBackgroundMechanisms options:_optionsForBackgroundMechanism reply:v15];

      objc_destroyWeak(v17);
      objc_destroyWeak(buf);
    }

    else
    {
      [(LAUIAuthenticationCore *)self _handleBackgroundMechanismsResult:0 error:v13 context:context2];
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
    delegate = [(LAUIAuthenticationCore *)self delegate];
    callerIconPath = [delegate callerIconPath];

    delegate2 = [(LAUIAuthenticationCore *)self delegate];
    callerIconBundlePath = [delegate2 callerIconBundlePath];

    v8 = [callerIconPath length];
    v9 = callerIconPath;
    if (v8 || (v10 = [callerIconBundlePath length], v9 = callerIconBundlePath, v10))
    {
      [v3 setObject:v9 forKey:&unk_28682FB40];
    }

    delegate3 = [(LAUIAuthenticationCore *)self delegate];
    localizedCallerName = [delegate3 localizedCallerName];

    if (localizedCallerName)
    {
      [v3 setObject:localizedCallerName forKey:&unk_28682FB58];
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

- (void)_handleBackgroundMechanismsResult:(id)result error:(id)error context:(id)context
{
  resultCopy = result;
  errorCopy = error;
  contextCopy = context;
  context = [(LAUIAuthenticationCore *)self context];

  if (context != contextCopy)
  {
    [contextCopy invalidate];
    goto LABEL_12;
  }

  if (resultCopy)
  {
    v12 = [resultCopy objectForKeyedSubscript:&unk_28682FBB8];
    if ([v12 BOOLValue])
    {
      biometryType = [(LAUIAuthenticationCore *)self biometryType];

      if (biometryType == 2)
      {
        objc_storeStrong(&self->_faceIdResult, result);
        goto LABEL_12;
      }
    }

    else
    {
    }

    delegate = [(LAUIAuthenticationCore *)self delegate];
    v15 = delegate;
    v16 = resultCopy;
  }

  else
  {
    if ([getLAErrorHelperClass() error:errorCopy hasCode:-9])
    {
      goto LABEL_12;
    }

    delegate = [(LAUIAuthenticationCore *)self delegate];
    v15 = delegate;
    v16 = 0;
  }

  [delegate authenticationResult:v16 error:errorCopy context:contextCopy];

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
      delegate = [(LAUIAuthenticationCore *)self delegate];
      context = self->_context;
      v7 = 138543618;
      v8 = delegate;
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

- (void)_notification:(id)_notification
{
  _notificationCopy = _notification;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__LAUIAuthenticationCore__notification___block_invoke;
  v5[3] = &unk_2798215C8;
  objc_copyWeak(&v6, &location);
  [(LAUIAuthenticationCore *)self _processActivityChangeForNotification:_notificationCopy block:v5];
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

- (void)setView:(id)view
{
  viewCopy = view;
  objc_storeWeak(&self->_view, viewCopy);
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__LAUIAuthenticationCore_setView___block_invoke;
  v6[3] = &unk_279821970;
  objc_copyWeak(&v8, &location);
  v5 = viewCopy;
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

- (void)_processActivityChangeForNotification:(id)notification block:(id)block
{
  notificationCopy = notification;
  blockCopy = block;
  isUiActive = [(LAUIAuthenticationCore *)self isUiActive];
  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

  if ([(LAUIAuthenticationCore *)self isApplicationActive])
  {
    isKeyWindow = [(LAUIAuthenticationCore *)self isKeyWindow];
  }

  else
  {
    isKeyWindow = 0;
  }

  [(LAUIAuthenticationCore *)self setUiActive:isKeyWindow];
  if (isUiActive != [(LAUIAuthenticationCore *)self isUiActive])
  {
    [(LAUIAuthenticationCore *)self startOrStopBackgroundMechanisms];
    delegate = [(LAUIAuthenticationCore *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(LAUIAuthenticationCore *)self delegate];
      [delegate2 notification:-[LAUIAuthenticationCore isUiActive](self original:"isUiActive") mechanism:{notificationCopy, 0}];
    }
  }
}

- (void)event:(int64_t)event params:(id)params reply:(id)reply
{
  paramsCopy = params;
  replyCopy = reply;
  v10 = [paramsCopy objectForKeyedSubscript:&unk_28682FBD0];
  bOOLValue = [v10 BOOLValue];
  if (event == 7 || event == 1)
  {
    v12 = [paramsCopy objectForKeyedSubscript:&unk_28682FBE8];
    v13 = v12;
    if (v12)
    {
      self->_mirroringToDefaultUI = [v12 BOOLValue];
      [(LAUIAuthenticationCore *)self _biometryState:self->_lastState];
    }

    if (v10)
    {
      self->_doneMatching = bOOLValue ^ 1;
      v14 = bOOLValue;
      selfCopy5 = self;
LABEL_13:
      [(LAUIAuthenticationCore *)selfCopy5 _biometryState:v14];
LABEL_14:

      goto LABEL_15;
    }

    if ([(LAUIAuthenticationCore *)self _simpleStatusInParams:paramsCopy touchId:0 faceId:0])
    {
      selfCopy5 = self;
      v14 = 2;
      goto LABEL_13;
    }

    if ([(LAUIAuthenticationCore *)self _simpleStatusInParams:paramsCopy touchId:1 faceId:1])
    {
      goto LABEL_10;
    }

    if ([(LAUIAuthenticationCore *)self _simpleStatusInParams:paramsCopy touchId:2 faceId:2])
    {
      selfCopy5 = self;
      v14 = 4;
      goto LABEL_13;
    }

    if ([(LAUIAuthenticationCore *)self _simpleStatusInParams:paramsCopy touchId:-1 faceId:10])
    {
LABEL_10:
      selfCopy5 = self;
      v14 = 1;
      goto LABEL_13;
    }

    if ([(LAUIAuthenticationCore *)self _simpleStatusInParams:paramsCopy touchId:-1 faceId:11])
    {
      selfCopy5 = self;
      v14 = 0;
      goto LABEL_13;
    }

    if (![(LAUIAuthenticationCore *)self _simpleStatusInParams:paramsCopy touchId:3 faceId:3])
    {
      v18 = [paramsCopy objectForKeyedSubscript:&unk_28682FC30];
      if (v18)
      {
        v19 = v18;
        v20 = [paramsCopy objectForKeyedSubscript:&unk_28682FC30];
        integerValue = [v20 integerValue];

        if (integerValue == 11)
        {
          v22 = LA_LOG_LAUIAuthenticationCore();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *v23 = 0;
            _os_log_impl(&dword_2560E6000, v22, OS_LOG_TYPE_DEFAULT, "Face mask detected. Will shortcircuit bio-auth.", v23, 2u);
          }

          [(LAContext *)self->_context failProcessedEvent:event failureError:0 reply:&__block_literal_global_44];
        }
      }

      goto LABEL_14;
    }

    v16 = [paramsCopy objectForKeyedSubscript:&unk_28682FC00];
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = [paramsCopy objectForKeyedSubscript:&unk_28682FC18];
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
  (*(replyCopy + 2))(replyCopy, MEMORY[0x277CBEC10], 0);
}

- (BOOL)_simpleStatusInParams:(id)params touchId:(int64_t)id faceId:(int64_t)faceId
{
  paramsCopy = params;
  biometryType = [(LAUIAuthenticationCore *)self biometryType];
  if (biometryType == 1)
  {
    v10 = &unk_28682FC48;
  }

  else
  {
    if (biometryType != 2)
    {
LABEL_7:
      v13 = 0;
      goto LABEL_8;
    }

    v10 = &unk_28682FC60;
    id = faceId;
  }

  v11 = [paramsCopy objectForKeyedSubscript:v10];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = v11;
  v13 = [v11 integerValue] == id;

LABEL_8:
  return v13;
}

- (void)_biometryState:(int64_t)state
{
  self->_lastState = state;
  doneMatching = self->_doneMatching;
  if (state == 4)
  {
    self->_doneMatching = 1;
  }

  if (!doneMatching)
  {
    mirroringToDefaultUI = self->_mirroringToDefaultUI;
    objc_initWeak(&location, self);
    delegate = [(LAUIAuthenticationCore *)self delegate];
    stateCopy = 3;
    if (state > 3)
    {
      stateCopy = state;
    }

    if (mirroringToDefaultUI)
    {
      stateCopy2 = stateCopy;
    }

    else
    {
      stateCopy2 = state;
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __41__LAUIAuthenticationCore__biometryState___block_invoke;
    v10[3] = &unk_279821658;
    objc_copyWeak(v11, &location);
    v11[1] = state;
    [delegate biometryState:stateCopy2 completionHandler:v10];

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

- (void)_biometricNoMatchWithBiolockoutError:(id)error
{
  errorCopy = error;
  delegate = [(LAUIAuthenticationCore *)self delegate];
  [delegate biometricNoMatch];

  if (errorCopy)
  {
    delegate2 = [(LAUIAuthenticationCore *)self delegate];
    context = [(LAUIAuthenticationCore *)self context];
    [delegate2 authenticationResult:0 error:errorCopy context:context];
  }
}

+ (void)performBlockOnMainThread:(id)thread
{
  v3 = MEMORY[0x277CCACC8];
  block = thread;
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