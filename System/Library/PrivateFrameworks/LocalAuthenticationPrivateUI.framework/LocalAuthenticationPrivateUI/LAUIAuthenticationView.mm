@interface LAUIAuthenticationView
+ (CGRect)defaultRect;
- (BOOL)disableMechanism:(unint64_t)mechanism error:(id *)error;
- (BOOL)enableMechanism:(unint64_t)mechanism error:(id *)error;
- (BOOL)isMechanismActive:(unint64_t)active;
- (BOOL)isMechanismAvailable:(unint64_t)available error:(id *)error;
- (BOOL)isMechanismEnabled:(unint64_t)enabled;
- (LAUIAuthenticationDelegate)delegate;
- (LAUIAuthenticationView)initWithCoder:(id)coder;
- (LAUIAuthenticationView)initWithFrame:(CGRect)frame mechanisms:(unint64_t)mechanisms context:(id)context;
- (LAUIAuthenticationView)initWithMechanisms:(unint64_t)mechanisms context:(id)context;
- (id)callerIconBundlePath;
- (id)callerIconPath;
- (id)localizedCallerName;
- (int64_t)_stateOfSuccess;
- (void)_biometryIdle;
- (void)_setupMechanisms:(unint64_t)mechanisms context:(id)context;
- (void)_setupView;
- (void)authenticationResult:(id)result error:(id)error context:(id)context;
- (void)biometricNoMatch;
- (void)biometryState:(int64_t)state completionHandler:(id)handler;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)setFastAnimations:(BOOL)animations;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation LAUIAuthenticationView

- (LAUIAuthenticationView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = LAUIAuthenticationView;
  v3 = [(LAUIAuthenticationView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(LAUIAuthenticationView *)v3 _setupMechanisms:0 context:0];
  }

  return v4;
}

- (LAUIAuthenticationView)initWithMechanisms:(unint64_t)mechanisms context:(id)context
{
  contextCopy = context;
  +[LAUIAuthenticationView defaultRect];
  v7 = [(LAUIAuthenticationView *)self initWithFrame:mechanisms mechanisms:contextCopy context:?];

  return v7;
}

- (LAUIAuthenticationView)initWithFrame:(CGRect)frame mechanisms:(unint64_t)mechanisms context:(id)context
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = LAUIAuthenticationView;
  height = [(LAUIAuthenticationView *)&v15 initWithFrame:x, y, width, height];
  v13 = height;
  if (height)
  {
    [(LAUIAuthenticationView *)height _setupMechanisms:mechanisms context:contextCopy];
  }

  return v13;
}

- (void)_setupMechanisms:(unint64_t)mechanisms context:(id)context
{
  contextCopy = context;
  v7 = [[LAUIAuthenticationCore alloc] initWithMechanisms:mechanisms context:contextCopy];

  authenticationCore = self->_authenticationCore;
  self->_authenticationCore = v7;

  [(LAUIAuthenticationCore *)self->_authenticationCore setView:self];
  v9 = self->_authenticationCore;

  [(LAUIAuthenticationCore *)v9 setDelegate:self];
}

- (BOOL)isMechanismAvailable:(unint64_t)available error:(id *)error
{
  authenticationCore = [(LAUIAuthenticationView *)self authenticationCore];
  LOBYTE(error) = [authenticationCore isMechanismAvailable:available error:error];

  return error;
}

- (BOOL)isMechanismEnabled:(unint64_t)enabled
{
  authenticationCore = [(LAUIAuthenticationView *)self authenticationCore];
  LOBYTE(enabled) = [authenticationCore isMechanismEnabled:enabled];

  return enabled;
}

- (BOOL)isMechanismActive:(unint64_t)active
{
  authenticationCore = [(LAUIAuthenticationView *)self authenticationCore];
  LOBYTE(active) = [authenticationCore isMechanismActive:active];

  return active;
}

- (BOOL)enableMechanism:(unint64_t)mechanism error:(id *)error
{
  authenticationCore = [(LAUIAuthenticationView *)self authenticationCore];
  LOBYTE(error) = [authenticationCore enableMechanism:mechanism error:error];

  return error;
}

- (BOOL)disableMechanism:(unint64_t)mechanism error:(id *)error
{
  authenticationCore = [(LAUIAuthenticationView *)self authenticationCore];
  LOBYTE(error) = [authenticationCore disableMechanism:mechanism error:error];

  return error;
}

+ (CGRect)defaultRect
{
  v2 = 64.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 64.0;
  result.size.height = v5;
  result.size.width = v2;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)willMoveToSuperview:(id)superview
{
  if (superview)
  {
    [(LAUIAuthenticationView *)self _setupView];
  }
}

- (void)didMoveToSuperview
{
  authenticationCore = [(LAUIAuthenticationView *)self authenticationCore];
  [authenticationCore checkView];
}

- (void)didMoveToWindow
{
  authenticationCore = [(LAUIAuthenticationView *)self authenticationCore];
  [authenticationCore checkView];
}

- (void)_setupView
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = LA_LOG_LAUIAuthenticationView();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[LAUIAuthenticationView _setupView]";
    v14 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2560E6000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v12, 0x16u);
  }

  style = [(LAUIAuthenticationView *)self style];
  [(LAUIAuthenticationView *)self frame];
  v5 = [LAUIPKGlyphWrapper glyphWithStyle:style frame:?];
  glyphWrapper = self->_glyphWrapper;
  self->_glyphWrapper = v5;

  [(LAUIPKGlyphWrapper *)self->_glyphWrapper setFastAnimations:[(LAUIAuthenticationView *)self fastAnimations]];
  glyphWrapper = [(LAUIAuthenticationView *)self glyphWrapper];
  view = [glyphWrapper view];

  if (view)
  {
    [(LAUIAuthenticationView *)self addSubview:view];
    authenticationCore = [(LAUIAuthenticationView *)self authenticationCore];
    biometryType = [authenticationCore biometryType];

    if (biometryType == 2)
    {
      v11 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_tappedFaceID_];
      [view addGestureRecognizer:v11];
    }
  }
}

- (void)biometryState:(int64_t)state completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = LA_LOG_LAUIAuthenticationView();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(LAUIAuthenticationView *)state biometryState:v7 completionHandler:?];
  }

  authenticationCore = [(LAUIAuthenticationView *)self authenticationCore];
  biometryType = [authenticationCore biometryType];

  if (state > 2)
  {
    if (state == 3)
    {
      _stateOfSuccess = 7;
    }

    else if (state == 4)
    {
      _stateOfSuccess = [(LAUIAuthenticationView *)self _stateOfSuccess];
    }

    else
    {
      v12 = 3;
      if (biometryType != 2)
      {
        v12 = 0;
      }

      if (state == 5)
      {
        _stateOfSuccess = v12;
      }

      else
      {
        _stateOfSuccess = 0;
      }
    }
  }

  else if (state)
  {
    v10 = 5;
    if (biometryType != 2)
    {
      v10 = 1;
    }

    if (state != 2)
    {
      v10 = 0;
    }

    if (state == 1)
    {
      _stateOfSuccess = 4 * (biometryType == 2);
    }

    else
    {
      _stateOfSuccess = v10;
    }
  }

  else
  {
    if (self->_lastState)
    {
      [(LAUIAuthenticationView *)self _biometryIdle];
    }

    _stateOfSuccess = 0;
  }

  if (state)
  {
    v13 = 1;
  }

  else
  {
    v13 = biometryType == 2;
  }

  v14 = !v13;
  self->_lastState = state;
  glyphWrapper = [(LAUIAuthenticationView *)self glyphWrapper];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__LAUIAuthenticationView_biometryState_completionHandler___block_invoke;
  v17[3] = &unk_279821610;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [glyphWrapper setState:_stateOfSuccess idleTouchID:v14 animated:1 completionHandler:v17];
}

- (int64_t)_stateOfSuccess
{
  if ([(LAUIAuthenticationView *)self idleWhenDone])
  {
    v3 = 12;
  }

  else
  {
    v3 = 11;
  }

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__LAUIAuthenticationView__stateOfSuccess__block_invoke;
  v11[3] = &unk_279821658;
  objc_copyWeak(v12, &location);
  v12[1] = v3;
  v4 = MEMORY[0x259C5AE60](v11);
  delegate = [(LAUIAuthenticationView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(LAUIAuthenticationView *)self delegate];
    [delegate2 processAuthenticationSuccessWithCompletionHandler:v4];
LABEL_8:

    v3 = 7;
    goto LABEL_9;
  }

  delegate3 = [(LAUIAuthenticationView *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(LAUIAuthenticationView *)self delegate];
    [delegate2 processBiometricMatchWithCompletionHandler:v4];
    goto LABEL_8;
  }

LABEL_9:

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
  return v3;
}

void __41__LAUIAuthenticationView__stateOfSuccess__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __41__LAUIAuthenticationView__stateOfSuccess__block_invoke_2;
  v2[3] = &unk_279821658;
  objc_copyWeak(v3, (a1 + 32));
  v3[1] = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(v3);
}

void __41__LAUIAuthenticationView__stateOfSuccess__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained glyphWrapper];
  [v2 setState:*(a1 + 40) idleTouchID:0 animated:1 completionHandler:&__block_literal_global_1];
}

- (void)authenticationResult:(id)result error:(id)error context:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  errorCopy = error;
  contextCopy = context;
  delegate = [(LAUIAuthenticationView *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = LA_LOG_LAUIAuthenticationView();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (resultCopy)
      {
        v14 = resultCopy;
      }

      else
      {
        v14 = errorCopy;
      }

      v16 = 136315906;
      v17 = "[LAUIAuthenticationView authenticationResult:error:context:]";
      v18 = 2114;
      v19 = v14;
      v20 = 2114;
      v21 = contextCopy;
      v22 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_2560E6000, v13, OS_LOG_TYPE_DEFAULT, "%s %{public}@, %{public}@ on %@", &v16, 0x2Au);
    }

    delegate2 = [(LAUIAuthenticationView *)self delegate];
    [delegate2 authenticationResult:resultCopy error:errorCopy context:contextCopy];
  }
}

- (void)biometricNoMatch
{
  v11 = *MEMORY[0x277D85DE8];
  delegate = [(LAUIAuthenticationView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = LA_LOG_LAUIAuthenticationView();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[LAUIAuthenticationView biometricNoMatch]";
      v9 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_2560E6000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
    }

    delegate2 = [(LAUIAuthenticationView *)self delegate];
    [delegate2 biometricNoMatch];
  }
}

- (void)_biometryIdle
{
  v11 = *MEMORY[0x277D85DE8];
  delegate = [(LAUIAuthenticationView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = LA_LOG_LAUIAuthenticationView();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[LAUIAuthenticationView _biometryIdle]";
      v9 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_2560E6000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
    }

    delegate2 = [(LAUIAuthenticationView *)self delegate];
    [delegate2 biometryDidBecomeIdle];
  }
}

- (id)callerIconPath
{
  delegate = [(LAUIAuthenticationView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(LAUIAuthenticationView *)self delegate];
    callerIconPath = [delegate2 callerIconPath];
  }

  else
  {
    callerIconPath = 0;
  }

  return callerIconPath;
}

- (id)callerIconBundlePath
{
  delegate = [(LAUIAuthenticationView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(LAUIAuthenticationView *)self delegate];
    callerIconBundlePath = [delegate2 callerIconBundlePath];
  }

  else
  {
    callerIconBundlePath = 0;
  }

  return callerIconBundlePath;
}

- (id)localizedCallerName
{
  delegate = [(LAUIAuthenticationView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(LAUIAuthenticationView *)self delegate];
    localizedCallerName = [delegate2 localizedCallerName];
  }

  else
  {
    localizedCallerName = 0;
  }

  return localizedCallerName;
}

- (void)setFastAnimations:(BOOL)animations
{
  animationsCopy = animations;
  self->_fastAnimations = animations;
  glyphWrapper = [(LAUIAuthenticationView *)self glyphWrapper];
  [glyphWrapper setFastAnimations:animationsCopy];
}

- (LAUIAuthenticationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)biometryState:(os_log_t)log completionHandler:.cold.1(int a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 408);
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 1024;
  v6 = v3;
  _os_log_debug_impl(&dword_2560E6000, log, OS_LOG_TYPE_DEBUG, "biometryState: %d last state: %d", v4, 0xEu);
}

@end