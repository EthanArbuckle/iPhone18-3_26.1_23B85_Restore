@interface LAUIAuthenticationView
+ (CGRect)defaultRect;
- (BOOL)disableMechanism:(unint64_t)a3 error:(id *)a4;
- (BOOL)enableMechanism:(unint64_t)a3 error:(id *)a4;
- (BOOL)isMechanismActive:(unint64_t)a3;
- (BOOL)isMechanismAvailable:(unint64_t)a3 error:(id *)a4;
- (BOOL)isMechanismEnabled:(unint64_t)a3;
- (LAUIAuthenticationDelegate)delegate;
- (LAUIAuthenticationView)initWithCoder:(id)a3;
- (LAUIAuthenticationView)initWithFrame:(CGRect)a3 mechanisms:(unint64_t)a4 context:(id)a5;
- (LAUIAuthenticationView)initWithMechanisms:(unint64_t)a3 context:(id)a4;
- (id)callerIconBundlePath;
- (id)callerIconPath;
- (id)localizedCallerName;
- (int64_t)_stateOfSuccess;
- (void)_biometryIdle;
- (void)_setupMechanisms:(unint64_t)a3 context:(id)a4;
- (void)_setupView;
- (void)authenticationResult:(id)a3 error:(id)a4 context:(id)a5;
- (void)biometricNoMatch;
- (void)biometryState:(int64_t)a3 completionHandler:(id)a4;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)setFastAnimations:(BOOL)a3;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation LAUIAuthenticationView

- (LAUIAuthenticationView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = LAUIAuthenticationView;
  v3 = [(LAUIAuthenticationView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(LAUIAuthenticationView *)v3 _setupMechanisms:0 context:0];
  }

  return v4;
}

- (LAUIAuthenticationView)initWithMechanisms:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  +[LAUIAuthenticationView defaultRect];
  v7 = [(LAUIAuthenticationView *)self initWithFrame:a3 mechanisms:v6 context:?];

  return v7;
}

- (LAUIAuthenticationView)initWithFrame:(CGRect)a3 mechanisms:(unint64_t)a4 context:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = LAUIAuthenticationView;
  v12 = [(LAUIAuthenticationView *)&v15 initWithFrame:x, y, width, height];
  v13 = v12;
  if (v12)
  {
    [(LAUIAuthenticationView *)v12 _setupMechanisms:a4 context:v11];
  }

  return v13;
}

- (void)_setupMechanisms:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  v7 = [[LAUIAuthenticationCore alloc] initWithMechanisms:a3 context:v6];

  authenticationCore = self->_authenticationCore;
  self->_authenticationCore = v7;

  [(LAUIAuthenticationCore *)self->_authenticationCore setView:self];
  v9 = self->_authenticationCore;

  [(LAUIAuthenticationCore *)v9 setDelegate:self];
}

- (BOOL)isMechanismAvailable:(unint64_t)a3 error:(id *)a4
{
  v6 = [(LAUIAuthenticationView *)self authenticationCore];
  LOBYTE(a4) = [v6 isMechanismAvailable:a3 error:a4];

  return a4;
}

- (BOOL)isMechanismEnabled:(unint64_t)a3
{
  v4 = [(LAUIAuthenticationView *)self authenticationCore];
  LOBYTE(a3) = [v4 isMechanismEnabled:a3];

  return a3;
}

- (BOOL)isMechanismActive:(unint64_t)a3
{
  v4 = [(LAUIAuthenticationView *)self authenticationCore];
  LOBYTE(a3) = [v4 isMechanismActive:a3];

  return a3;
}

- (BOOL)enableMechanism:(unint64_t)a3 error:(id *)a4
{
  v6 = [(LAUIAuthenticationView *)self authenticationCore];
  LOBYTE(a4) = [v6 enableMechanism:a3 error:a4];

  return a4;
}

- (BOOL)disableMechanism:(unint64_t)a3 error:(id *)a4
{
  v6 = [(LAUIAuthenticationView *)self authenticationCore];
  LOBYTE(a4) = [v6 disableMechanism:a3 error:a4];

  return a4;
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

- (void)willMoveToSuperview:(id)a3
{
  if (a3)
  {
    [(LAUIAuthenticationView *)self _setupView];
  }
}

- (void)didMoveToSuperview
{
  v2 = [(LAUIAuthenticationView *)self authenticationCore];
  [v2 checkView];
}

- (void)didMoveToWindow
{
  v2 = [(LAUIAuthenticationView *)self authenticationCore];
  [v2 checkView];
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
    v15 = self;
    _os_log_impl(&dword_2560E6000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v12, 0x16u);
  }

  v4 = [(LAUIAuthenticationView *)self style];
  [(LAUIAuthenticationView *)self frame];
  v5 = [LAUIPKGlyphWrapper glyphWithStyle:v4 frame:?];
  glyphWrapper = self->_glyphWrapper;
  self->_glyphWrapper = v5;

  [(LAUIPKGlyphWrapper *)self->_glyphWrapper setFastAnimations:[(LAUIAuthenticationView *)self fastAnimations]];
  v7 = [(LAUIAuthenticationView *)self glyphWrapper];
  v8 = [v7 view];

  if (v8)
  {
    [(LAUIAuthenticationView *)self addSubview:v8];
    v9 = [(LAUIAuthenticationView *)self authenticationCore];
    v10 = [v9 biometryType];

    if (v10 == 2)
    {
      v11 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_tappedFaceID_];
      [v8 addGestureRecognizer:v11];
    }
  }
}

- (void)biometryState:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = LA_LOG_LAUIAuthenticationView();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(LAUIAuthenticationView *)a3 biometryState:v7 completionHandler:?];
  }

  v8 = [(LAUIAuthenticationView *)self authenticationCore];
  v9 = [v8 biometryType];

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v11 = 7;
    }

    else if (a3 == 4)
    {
      v11 = [(LAUIAuthenticationView *)self _stateOfSuccess];
    }

    else
    {
      v12 = 3;
      if (v9 != 2)
      {
        v12 = 0;
      }

      if (a3 == 5)
      {
        v11 = v12;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else if (a3)
  {
    v10 = 5;
    if (v9 != 2)
    {
      v10 = 1;
    }

    if (a3 != 2)
    {
      v10 = 0;
    }

    if (a3 == 1)
    {
      v11 = 4 * (v9 == 2);
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    if (self->_lastState)
    {
      [(LAUIAuthenticationView *)self _biometryIdle];
    }

    v11 = 0;
  }

  if (a3)
  {
    v13 = 1;
  }

  else
  {
    v13 = v9 == 2;
  }

  v14 = !v13;
  self->_lastState = a3;
  v15 = [(LAUIAuthenticationView *)self glyphWrapper];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__LAUIAuthenticationView_biometryState_completionHandler___block_invoke;
  v17[3] = &unk_279821610;
  v18 = v6;
  v16 = v6;
  [v15 setState:v11 idleTouchID:v14 animated:1 completionHandler:v17];
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
  v5 = [(LAUIAuthenticationView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(LAUIAuthenticationView *)self delegate];
    [v7 processAuthenticationSuccessWithCompletionHandler:v4];
LABEL_8:

    v3 = 7;
    goto LABEL_9;
  }

  v8 = [(LAUIAuthenticationView *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v7 = [(LAUIAuthenticationView *)self delegate];
    [v7 processBiometricMatchWithCompletionHandler:v4];
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

- (void)authenticationResult:(id)a3 error:(id)a4 context:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(LAUIAuthenticationView *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = LA_LOG_LAUIAuthenticationView();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (v8)
      {
        v14 = v8;
      }

      else
      {
        v14 = v9;
      }

      v16 = 136315906;
      v17 = "[LAUIAuthenticationView authenticationResult:error:context:]";
      v18 = 2114;
      v19 = v14;
      v20 = 2114;
      v21 = v10;
      v22 = 2112;
      v23 = self;
      _os_log_impl(&dword_2560E6000, v13, OS_LOG_TYPE_DEFAULT, "%s %{public}@, %{public}@ on %@", &v16, 0x2Au);
    }

    v15 = [(LAUIAuthenticationView *)self delegate];
    [v15 authenticationResult:v8 error:v9 context:v10];
  }
}

- (void)biometricNoMatch
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(LAUIAuthenticationView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = LA_LOG_LAUIAuthenticationView();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[LAUIAuthenticationView biometricNoMatch]";
      v9 = 2112;
      v10 = self;
      _os_log_impl(&dword_2560E6000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
    }

    v6 = [(LAUIAuthenticationView *)self delegate];
    [v6 biometricNoMatch];
  }
}

- (void)_biometryIdle
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(LAUIAuthenticationView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = LA_LOG_LAUIAuthenticationView();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[LAUIAuthenticationView _biometryIdle]";
      v9 = 2112;
      v10 = self;
      _os_log_impl(&dword_2560E6000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
    }

    v6 = [(LAUIAuthenticationView *)self delegate];
    [v6 biometryDidBecomeIdle];
  }
}

- (id)callerIconPath
{
  v3 = [(LAUIAuthenticationView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(LAUIAuthenticationView *)self delegate];
    v5 = [v4 callerIconPath];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)callerIconBundlePath
{
  v3 = [(LAUIAuthenticationView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(LAUIAuthenticationView *)self delegate];
    v5 = [v4 callerIconBundlePath];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)localizedCallerName
{
  v3 = [(LAUIAuthenticationView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(LAUIAuthenticationView *)self delegate];
    v5 = [v4 localizedCallerName];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setFastAnimations:(BOOL)a3
{
  v3 = a3;
  self->_fastAnimations = a3;
  v4 = [(LAUIAuthenticationView *)self glyphWrapper];
  [v4 setFastAnimations:v3];
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