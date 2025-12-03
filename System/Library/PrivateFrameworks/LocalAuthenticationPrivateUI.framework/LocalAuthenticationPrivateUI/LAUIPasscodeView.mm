@interface LAUIPasscodeView
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (LAUIPasscodeView)initWithContext:(id)context shouldPresentUI:(BOOL)i;
- (void)_appDidBecomeActive:(id)active;
- (void)_prepareHostedSceneWithCompletion:(id)completion;
- (void)_prepareRemoteUI;
- (void)_prepareRemoteViewServiceWithCompletion:(id)completion;
- (void)_presentRemoteView;
- (void)_startRemoteView;
- (void)_toggleEditingShouldStart:(BOOL)start;
- (void)dealloc;
- (void)event:(int64_t)event params:(id)params reply:(id)reply;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation LAUIPasscodeView

- (LAUIPasscodeView)initWithContext:(id)context shouldPresentUI:(BOOL)i
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = LAUIPasscodeView;
  v7 = [(LAUIPasscodeView *)&v13 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    v9 = objc_storeWeak(&v7->_context, contextCopy);
    uiDelegate = [contextCopy uiDelegate];
    objc_storeWeak(&v8->_originalDelegate, uiDelegate);

    WeakRetained = objc_loadWeakRetained(&v8->_context);
    [WeakRetained setUiDelegate:v8];

    v8->_shouldBecomeFirstResponder = 1;
    v8->_shouldPresentUI = i;
    [(LAUIPasscodeView *)v8 _prepareRemoteUI];
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = LAUIPasscodeView;
  [(LAUIPasscodeView *)&v4 viewDidAppear:appear];
  if (self->_shouldBecomeFirstResponder)
  {
    [(LAUIPasscodeView *)self _toggleEditingShouldStart:1];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = LAUIPasscodeView;
  [(LAUIPasscodeView *)&v4 viewWillDisappear:disappear];
  [(LAUIPasscodeView *)self _toggleEditingShouldStart:0];
}

- (BOOL)becomeFirstResponder
{
  v5.receiver = self;
  v5.super_class = LAUIPasscodeView;
  becomeFirstResponder = [(LAUIPasscodeView *)&v5 becomeFirstResponder];
  self->_shouldBecomeFirstResponder = 1;
  [(LAUIPasscodeView *)self _toggleEditingShouldStart:1];
  return (self->_remoteVC != 0) & becomeFirstResponder;
}

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = LAUIPasscodeView;
  resignFirstResponder = [(LAUIPasscodeView *)&v5 resignFirstResponder];
  self->_shouldBecomeFirstResponder = 0;
  [(LAUIPasscodeView *)self _toggleEditingShouldStart:0];
  return (self->_remoteVC != 0) & resignFirstResponder;
}

- (void)event:(int64_t)event params:(id)params reply:(id)reply
{
  paramsCopy = params;
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_originalDelegate);

  if (WeakRetained)
  {
    v10 = objc_loadWeakRetained(&self->_originalDelegate);
    [v10 event:event params:paramsCopy reply:replyCopy];
  }

  if (event == 2)
  {
    v11 = [paramsCopy objectForKeyedSubscript:&unk_28682F738];
    if (v11)
    {
      v12 = v11;
      v13 = [paramsCopy objectForKeyedSubscript:&unk_28682F738];
      bOOLValue = [v13 BOOLValue];

      if (bOOLValue)
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
    mEMORY[0x277D24068] = [MEMORY[0x277D24068] sharedInstance];
    featureFlagLaunchAngelEnabled = [mEMORY[0x277D24068] featureFlagLaunchAngelEnabled];

    if (featureFlagLaunchAngelEnabled)
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

- (void)_prepareRemoteViewServiceWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__LAUIPasscodeView__prepareRemoteViewServiceWithCompletion___block_invoke;
  v7[3] = &unk_279821578;
  objc_copyWeak(&v9, &location);
  v5 = completionCopy;
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

- (void)_prepareHostedSceneWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x277D241F8]);
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__LAUIPasscodeView__prepareHostedSceneWithCompletion___block_invoke;
  v6[3] = &unk_2798215A0;
  objc_copyWeak(&v7, &location);
  [v5 prepareRemoteSceneWithCompletion:v6];
  completionCopy[2](completionCopy, v5, 0);
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
        view = [(LAUIPasscodeView *)self view];
        subviews = [view subviews];
        view2 = [(LACPasscodeUIService *)self->_remoteVC view];
        v6 = [subviews containsObject:view2];

        if ((v6 & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&dword_2560E6000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Presenting remote UI", buf, 2u);
          }

          view3 = [(LAUIPasscodeView *)self view];
          view4 = [(LACPasscodeUIService *)self->_remoteVC view];
          [view3 addSubview:view4];

          view5 = [(LACPasscodeUIService *)self->_remoteVC view];
          [view5 setTranslatesAutoresizingMaskIntoConstraints:0];

          view6 = [(LACPasscodeUIService *)self->_remoteVC view];
          topAnchor = [view6 topAnchor];
          view7 = [(LAUIPasscodeView *)self view];
          topAnchor2 = [view7 topAnchor];
          v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
          [v14 setActive:1];

          view8 = [(LACPasscodeUIService *)self->_remoteVC view];
          bottomAnchor = [view8 bottomAnchor];
          view9 = [(LAUIPasscodeView *)self view];
          bottomAnchor2 = [view9 bottomAnchor];
          v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
          [v19 setActive:1];

          view10 = [(LACPasscodeUIService *)self->_remoteVC view];
          leadingAnchor = [view10 leadingAnchor];
          view11 = [(LAUIPasscodeView *)self view];
          leadingAnchor2 = [view11 leadingAnchor];
          v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
          [v24 setActive:1];

          view12 = [(LACPasscodeUIService *)self->_remoteVC view];
          trailingAnchor = [view12 trailingAnchor];
          view13 = [(LAUIPasscodeView *)self view];
          trailingAnchor2 = [view13 trailingAnchor];
          v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
          [v29 setActive:1];

          [(LAUIPasscodeView *)self addChildViewController:self->_remoteVC];
          [(LACPasscodeUIService *)self->_remoteVC didMoveToParentViewController:self];
          [(LAUIPasscodeView *)self _startRemoteView];
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter addObserver:self selector:sel__appDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

          defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter2 addObserver:self selector:sel__appDidBecomeInactive_ name:*MEMORY[0x277D76768] object:0];
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
    externalizedContext = [WeakRetained externalizedContext];
    [(LACPasscodeUIService *)remoteVC setContext:externalizedContext];

    shouldBecomeFirstResponder = self->_shouldBecomeFirstResponder;

    [(LAUIPasscodeView *)self _toggleEditingShouldStart:shouldBecomeFirstResponder];
  }
}

- (void)_toggleEditingShouldStart:(BOOL)start
{
  if (self->_isRemoteVCPrepared)
  {
    remoteVC = self->_remoteVC;
    if (start)
    {
      [(LACPasscodeUIService *)remoteVC startEditing];
    }

    else
    {
      [(LACPasscodeUIService *)remoteVC endEditing];
    }
  }
}

- (void)_appDidBecomeActive:(id)active
{
  if (self->_shouldBecomeFirstResponder)
  {
    [(LAUIPasscodeView *)self _toggleEditingShouldStart:1];
  }
}

@end