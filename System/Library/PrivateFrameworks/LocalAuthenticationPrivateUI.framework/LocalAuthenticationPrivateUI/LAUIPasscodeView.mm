@interface LAUIPasscodeView
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (LAUIPasscodeView)initWithContext:(id)a3 shouldPresentUI:(BOOL)a4;
- (void)_appDidBecomeActive:(id)a3;
- (void)_prepareHostedSceneWithCompletion:(id)a3;
- (void)_prepareRemoteUI;
- (void)_prepareRemoteViewServiceWithCompletion:(id)a3;
- (void)_presentRemoteView;
- (void)_startRemoteView;
- (void)_toggleEditingShouldStart:(BOOL)a3;
- (void)dealloc;
- (void)event:(int64_t)a3 params:(id)a4 reply:(id)a5;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation LAUIPasscodeView

- (LAUIPasscodeView)initWithContext:(id)a3 shouldPresentUI:(BOOL)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = LAUIPasscodeView;
  v7 = [(LAUIPasscodeView *)&v13 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    v9 = objc_storeWeak(&v7->_context, v6);
    v10 = [v6 uiDelegate];
    objc_storeWeak(&v8->_originalDelegate, v10);

    WeakRetained = objc_loadWeakRetained(&v8->_context);
    [WeakRetained setUiDelegate:v8];

    v8->_shouldBecomeFirstResponder = 1;
    v8->_shouldPresentUI = a4;
    [(LAUIPasscodeView *)v8 _prepareRemoteUI];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  WeakRetained = objc_loadWeakRetained(&self->_originalDelegate);
  v5 = objc_loadWeakRetained(&self->_context);
  [v5 setUiDelegate:WeakRetained];

  v6.receiver = self;
  v6.super_class = LAUIPasscodeView;
  [(LAUIPasscodeView *)&v6 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(LAUIPasscodeView *)self setView:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = LAUIPasscodeView;
  [(LAUIPasscodeView *)&v4 viewDidAppear:a3];
  if (self->_shouldBecomeFirstResponder)
  {
    [(LAUIPasscodeView *)self _toggleEditingShouldStart:1];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = LAUIPasscodeView;
  [(LAUIPasscodeView *)&v4 viewWillDisappear:a3];
  [(LAUIPasscodeView *)self _toggleEditingShouldStart:0];
}

- (BOOL)becomeFirstResponder
{
  v5.receiver = self;
  v5.super_class = LAUIPasscodeView;
  v3 = [(LAUIPasscodeView *)&v5 becomeFirstResponder];
  self->_shouldBecomeFirstResponder = 1;
  [(LAUIPasscodeView *)self _toggleEditingShouldStart:1];
  return (self->_remoteVC != 0) & v3;
}

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = LAUIPasscodeView;
  v3 = [(LAUIPasscodeView *)&v5 resignFirstResponder];
  self->_shouldBecomeFirstResponder = 0;
  [(LAUIPasscodeView *)self _toggleEditingShouldStart:0];
  return (self->_remoteVC != 0) & v3;
}

- (void)event:(int64_t)a3 params:(id)a4 reply:(id)a5
{
  v15 = a4;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_originalDelegate);

  if (WeakRetained)
  {
    v10 = objc_loadWeakRetained(&self->_originalDelegate);
    [v10 event:a3 params:v15 reply:v8];
  }

  if (a3 == 2)
  {
    v11 = [v15 objectForKeyedSubscript:&unk_28682F738];
    if (v11)
    {
      v12 = v11;
      v13 = [v15 objectForKeyedSubscript:&unk_28682F738];
      v14 = [v13 BOOLValue];

      if (v14)
      {
        self->_shouldPresentUI = 1;
        [(LAUIPasscodeView *)self _presentRemoteView];
      }
    }
  }
}

- (void)_prepareRemoteUI
{
  if (!self->_remoteVC)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __36__LAUIPasscodeView__prepareRemoteUI__block_invoke;
    v9[3] = &unk_279821528;
    objc_copyWeak(&v10, &location);
    v3 = MEMORY[0x259C5AE60](v9);
    v4 = [MEMORY[0x277D24068] sharedInstance];
    v5 = [v4 featureFlagLaunchAngelEnabled];

    if (v5)
    {
      v6 = v8;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __36__LAUIPasscodeView__prepareRemoteUI__block_invoke_14;
      v8[3] = &unk_279821550;
      v8[4] = v3;
      [(LAUIPasscodeView *)self _prepareHostedSceneWithCompletion:v8];
    }

    else
    {
      v6 = v7;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __36__LAUIPasscodeView__prepareRemoteUI__block_invoke_2;
      v7[3] = &unk_279821550;
      v7[4] = v3;
      [(LAUIPasscodeView *)self _prepareRemoteViewServiceWithCompletion:v7];
    }

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __36__LAUIPasscodeView__prepareRemoteUI__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __36__LAUIPasscodeView__prepareRemoteUI__block_invoke_cold_1();
      }
    }

    else
    {
      objc_storeStrong(WeakRetained + 127, a2);
      [v9 _presentRemoteView];
    }
  }
}

- (void)_prepareRemoteViewServiceWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__LAUIPasscodeView__prepareRemoteViewServiceWithCompletion___block_invoke;
  v7[3] = &unk_279821578;
  objc_copyWeak(&v9, &location);
  v5 = v4;
  v8 = v5;
  v6 = [_PasscodeEmbeddedRemoteViewControllerHost requestViewController:@"PasscodeEmbeddedRemoteViewController" fromServiceWithBundleIdentifier:@"com.apple.CoreAuthUI" connectionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __60__LAUIPasscodeView__prepareRemoteViewServiceWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v5)
    {
      v7 = *(*(a1 + 32) + 16);
LABEL_6:
      v7();
      goto LABEL_7;
    }

    if ([v11 conformsToProtocol:&unk_286840E98])
    {
      WeakRetained[1024] = 1;
      v7 = *(*(a1 + 32) + 16);
      goto LABEL_6;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Received remote VC has unexpected type %@", v11];
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277D24060] errorWithCode:*MEMORY[0x277D23E88] debugDescription:v8];
    (*(v9 + 16))(v9, 0, v10);
  }

LABEL_7:
}

- (void)_prepareHostedSceneWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D241F8]);
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__LAUIPasscodeView__prepareHostedSceneWithCompletion___block_invoke;
  v6[3] = &unk_2798215A0;
  objc_copyWeak(&v7, &location);
  [v5 prepareRemoteSceneWithCompletion:v6];
  v4[2](v4, v5, 0);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __54__LAUIPasscodeView__prepareHostedSceneWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = LACLogUI();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __54__LAUIPasscodeView__prepareHostedSceneWithCompletion___block_invoke_cold_1();
      }
    }

    else
    {
      WeakRetained[1024] = 1;
      [WeakRetained _startRemoteView];
    }
  }
}

- (void)_presentRemoteView
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
    if (self->_shouldPresentUI)
    {
      if (self->_remoteVC)
      {
        v3 = [(LAUIPasscodeView *)self view];
        v4 = [v3 subviews];
        v5 = [(LACPasscodeUIService *)self->_remoteVC view];
        v6 = [v4 containsObject:v5];

        if ((v6 & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&dword_2560E6000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Presenting remote UI", buf, 2u);
          }

          v7 = [(LAUIPasscodeView *)self view];
          v8 = [(LACPasscodeUIService *)self->_remoteVC view];
          [v7 addSubview:v8];

          v9 = [(LACPasscodeUIService *)self->_remoteVC view];
          [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

          v10 = [(LACPasscodeUIService *)self->_remoteVC view];
          v11 = [v10 topAnchor];
          v12 = [(LAUIPasscodeView *)self view];
          v13 = [v12 topAnchor];
          v14 = [v11 constraintEqualToAnchor:v13];
          [v14 setActive:1];

          v15 = [(LACPasscodeUIService *)self->_remoteVC view];
          v16 = [v15 bottomAnchor];
          v17 = [(LAUIPasscodeView *)self view];
          v18 = [v17 bottomAnchor];
          v19 = [v16 constraintEqualToAnchor:v18];
          [v19 setActive:1];

          v20 = [(LACPasscodeUIService *)self->_remoteVC view];
          v21 = [v20 leadingAnchor];
          v22 = [(LAUIPasscodeView *)self view];
          v23 = [v22 leadingAnchor];
          v24 = [v21 constraintEqualToAnchor:v23];
          [v24 setActive:1];

          v25 = [(LACPasscodeUIService *)self->_remoteVC view];
          v26 = [v25 trailingAnchor];
          v27 = [(LAUIPasscodeView *)self view];
          v28 = [v27 trailingAnchor];
          v29 = [v26 constraintEqualToAnchor:v28];
          [v29 setActive:1];

          [(LAUIPasscodeView *)self addChildViewController:self->_remoteVC];
          [(LACPasscodeUIService *)self->_remoteVC didMoveToParentViewController:self];
          [(LAUIPasscodeView *)self _startRemoteView];
          v30 = [MEMORY[0x277CCAB98] defaultCenter];
          [v30 addObserver:self selector:sel__appDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

          v31 = [MEMORY[0x277CCAB98] defaultCenter];
          [v31 addObserver:self selector:sel__appDidBecomeInactive_ name:*MEMORY[0x277D76768] object:0];
        }
      }
    }
  }

  else
  {
    objc_initWeak(buf, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__LAUIPasscodeView__presentRemoteView__block_invoke;
    block[3] = &unk_2798215C8;
    objc_copyWeak(&v33, buf);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v33);
    objc_destroyWeak(buf);
  }
}

void __38__LAUIPasscodeView__presentRemoteView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _presentRemoteView];
    WeakRetained = v2;
  }
}

- (void)_startRemoteView
{
  if (self->_isRemoteVCPrepared)
  {
    remoteVC = self->_remoteVC;
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v6 = [WeakRetained externalizedContext];
    [(LACPasscodeUIService *)remoteVC setContext:v6];

    shouldBecomeFirstResponder = self->_shouldBecomeFirstResponder;

    [(LAUIPasscodeView *)self _toggleEditingShouldStart:shouldBecomeFirstResponder];
  }
}

- (void)_toggleEditingShouldStart:(BOOL)a3
{
  if (self->_isRemoteVCPrepared)
  {
    remoteVC = self->_remoteVC;
    if (a3)
    {
      [(LACPasscodeUIService *)remoteVC startEditing];
    }

    else
    {
      [(LACPasscodeUIService *)remoteVC endEditing];
    }
  }
}

- (void)_appDidBecomeActive:(id)a3
{
  if (self->_shouldBecomeFirstResponder)
  {
    [(LAUIPasscodeView *)self _toggleEditingShouldStart:1];
  }
}

@end