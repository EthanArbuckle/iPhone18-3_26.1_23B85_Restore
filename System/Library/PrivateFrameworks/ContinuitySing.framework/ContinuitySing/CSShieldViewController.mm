@interface CSShieldViewController
- (BOOL)_isOnLockScreen;
- (BOOL)_needsMicConfirmation;
- (CSShieldViewController)initWithDisconnectHandler:(id)handler;
- (id)_localizedAddSongString;
- (id)_topButtonItemWithImageNamed:(id)named action:(id)action;
- (id)_tryBootstrapAgainAction;
- (id)emojiButtonWithEmoji:(id)emoji;
- (id)emojiSelectionButton;
- (id)identifierSetForPersistentID:(int64_t)d mediaItem:(id)item;
- (void)_activateEnableMicTimer;
- (void)_addPostLoadingTask:(id)task;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)_cancelEnableMicTimer;
- (void)_confirmAndTeardown;
- (void)_dismissEmojiKeyboard;
- (void)_endLoadingScreen;
- (void)_handleInvalidMusicAccountError;
- (void)_handleMusicProfileUpdateNeeded;
- (void)_presentAccountError;
- (void)_presentConfirmationCardType:(unint64_t)type completion:(id)completion;
- (void)_presentContinuityCameraDisabledError;
- (void)_presentEndpointDisconnectedError;
- (void)_presentErrorAlertIfNeeded;
- (void)_presentErrorRequestingGroupSession;
- (void)_presentHelpCard;
- (void)_presentOnboardingCardIfNeeded;
- (void)_presentPairingError;
- (void)_presentVersionMismatchError:(BOOL)error;
- (void)_reverbButtonStateChangedToState:(unint64_t)state;
- (void)_sendConnectMicRequest;
- (void)_sendEnableMicRequest;
- (void)_showInternalErrorAlert:(id)alert;
- (void)_showMusicUpsell;
- (void)_showReaction:(id)reaction from:(id)from;
- (void)_showReactionSendingAnimation:(id)animation at:(id)at;
- (void)_teardown;
- (void)_updateControlVisibility;
- (void)_updateMiniPlayerState:(id)state;
- (void)_updateReverbButtonForLevel:(int64_t)level;
- (void)_updateVocalAttenuationButtonActiveState;
- (void)_updateVocalAttenuationButtonForLevel:(double)level;
- (void)_updateVocalAttenuationButtonLevel;
- (void)_updateWithState:(id)state;
- (void)_userRequestedMicOn;
- (void)_vocalAttenuationButtonStateChangedToState:(unint64_t)state;
- (void)clearAlertWithCompletion:(id)completion;
- (void)connectionManager:(id)manager didRequestTeardownShieldWithError:(id)error;
- (void)connectionManager:(id)manager didUpdatePresentationError:(id)error;
- (void)consumeSinglePressDownForButtonKind:(int64_t)kind;
- (void)dealloc;
- (void)handleOpenQueueTap:(id)tap;
- (void)invalidateVolumeButtonConsumers;
- (void)mediaPicker:(id)picker didPickMediaItems:(id)items;
- (void)micControl:(id)control didChangetoState:(unint64_t)state;
- (void)micControl:(id)control didRequestToTurnOffFromState:(unint64_t)state;
- (void)micControl:(id)control didRequestToTurnOnFromState:(unint64_t)state;
- (void)playbackManager:(id)manager didUpdateState:(id)state;
- (void)presentCustomEmojiPicker;
- (void)presentMusicPicker;
- (void)presentMusicPickerWithNotificationSender:(id)sender;
- (void)presentReactionPickerFrom:(id)from reactionSender:(id)sender;
- (void)setupConstraints;
- (void)setupControlButtonConstraints;
- (void)setupControlButtons;
- (void)setupEmojiPicker;
- (void)setupEmojiPickerConstraints;
- (void)setupLoadingView;
- (void)setupLoadingViewConstraints;
- (void)setupMicControl;
- (void)setupMicControlConstraints;
- (void)setupMicPlacementTipView;
- (void)setupMicPlacementTipViewConstraints;
- (void)setupMiniPlayerViewController;
- (void)setupOnboarding;
- (void)setupReactionView;
- (void)setupTopButtons;
- (void)setupViews;
- (void)setupVolumeButtonConsumers;
- (void)setupVolumeHintsViewController;
- (void)shieldManager:(id)manager didUpdateSessionState:(id)state;
- (void)shieldManagerDidFinishLoading:(id)loading withPlaybackManager:(id)manager;
- (void)shieldManagerDidReceiveDisconnectRequest:(id)request;
- (void)textViewDidChange:(id)change;
- (void)updateUI;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CSShieldViewController

- (CSShieldViewController)initWithDisconnectHandler:(id)handler
{
  handlerCopy = handler;
  v13.receiver = self;
  v13.super_class = CSShieldViewController;
  v5 = [(CSShieldViewController *)&v13 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = _Block_copy(handlerCopy);
    disconnectHandler = v5->_disconnectHandler;
    v5->_disconnectHandler = v6;

    v8 = +[CSShieldManager sharedManager];
    [v8 addObserver:v5];

    v9 = +[CSShieldConnectionManager sharedManager];
    [v9 addObserver:v5];

    v10 = objc_alloc_init(CSHapticsPlayer);
    hapticsPlayer = v5->_hapticsPlayer;
    v5->_hapticsPlayer = v10;
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4 = +[CSShieldManager sharedManager];
  [v4 removeObserver:self];

  v5 = +[CSShieldConnectionManager sharedManager];
  [v5 removeObserver:self];

  v6 = +[CSShieldManager sharedManager];
  playbackManager = [v6 playbackManager];
  [playbackManager removeObserver:self];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = *MEMORY[0x277D76760];
  mEMORY[0x277D75130] = [MEMORY[0x277D75130] sharedApplication];
  [defaultCenter2 removeObserver:self name:v9 object:mEMORY[0x277D75130]];

  v11.receiver = self;
  v11.super_class = CSShieldViewController;
  [(CSShieldViewController *)&v11 dealloc];
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = CSShieldViewController;
  [(CSShieldViewController *)&v26 viewDidLoad];
  blackColor = [MEMORY[0x277D75340] blackColor];
  view = [(CSShieldViewController *)self view];
  [view setBackgroundColor:blackColor];

  view2 = [(CSShieldViewController *)self view];
  [view2 setAccessibilityIdentifier:@"ContinuitySing.CSShieldViewController.View"];

  [(CSShieldViewController *)self setOverrideUserInterfaceStyle:2];
  array = [MEMORY[0x277CBEB18] array];
  postLoadingTasks = self->_postLoadingTasks;
  self->_postLoadingTasks = array;

  [(CSShieldViewController *)self setupViews];
  [(CSShieldViewController *)self setupConstraints];
  [(CSShieldViewController *)self setupVolumeHintsViewController];
  [(CSShieldViewController *)self setupMiniPlayerViewController];
  view3 = [(CSShieldViewController *)self view];
  [view3 layoutIfNeeded];

  mEMORY[0x277CF6C58] = [MEMORY[0x277CF6C58] sharedInstance];
  [mEMORY[0x277CF6C58] skipPlacementStep];

  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __37__CSShieldViewController_viewDidLoad__block_invoke;
  v23 = &unk_278E0B7D0;
  objc_copyWeak(&v24, &location);
  v12 = [defaultCenter addObserverForName:@"ReactionEvent" object:0 queue:mainQueue usingBlock:&v20];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  mEMORY[0x277D75130] = [MEMORY[0x277D75130] sharedApplication];
  [defaultCenter2 addObserver:self selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x277D76760] object:mEMORY[0x277D75130]];

  v15 = MEMORY[0x277D7FB80];
  autoupdatingActiveAccount = [MEMORY[0x277D7FCA0] autoupdatingActiveAccount];
  v17 = [v15 sharedMonitorForIdentity:autoupdatingActiveAccount];
  v18 = [v17 beginObservingSubscriptionStatusWithHandler:&__block_literal_global_9];
  subscriptionStatusObservationToken = self->_subscriptionStatusObservationToken;
  self->_subscriptionStatusObservationToken = v18;

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __37__CSShieldViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"reaction"];

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = [v8 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"sender-identifier"];
    [WeakRetained _showReaction:v4 from:v7];
  }
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = CSShieldViewController;
  [(CSShieldViewController *)&v8 viewDidLayoutSubviews];
  configuration = [(UIButton *)self->_emojiMoreButton configuration];
  [(UIButton *)self->_emojiMoreButton frame];
  v4 = CGRectGetWidth(v9) * 0.375;
  background = [configuration background];
  [background setCornerRadius:v4];

  [(UIButton *)self->_emojiMoreButton frame];
  v6 = CGRectGetWidth(v10) * 0.15625;
  background2 = [configuration background];
  [background2 setBackgroundInsets:{v6, v6, v6, v6}];

  [(UIButton *)self->_emojiMoreButton setConfiguration:configuration];
}

- (void)_applicationWillEnterForeground:(id)foreground
{
  v4 = ContinuitySingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "[CSShieldViewController _applicationWillEnterForeground:]";
    v7 = 2114;
    selfCopy = self;
    v9 = 2080;
    v10 = "[CSShieldViewController _applicationWillEnterForeground:]";
    _os_log_impl(&dword_2441FB000, v4, OS_LOG_TYPE_INFO, "%s: %{public}@ %s", &v5, 0x20u);
  }

  [(CSShieldViewController *)self _presentErrorAlertIfNeeded];
}

- (void)updateUI
{
  v3 = +[CSShieldManager sharedManager];
  isMicStreaming = [v3 isMicStreaming];

  if ([(CSMicControl *)self->_micControl micState]== 3)
  {
    enableMicTimer = self->_enableMicTimer;
    if (enableMicTimer)
    {
      v6 = isMicStreaming == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      [(CSMicControl *)self->_micControl setMicControlState:isMicStreaming animated:1];

      [(CSShieldViewController *)self _cancelEnableMicTimer];
      return;
    }

    if (enableMicTimer)
    {
      return;
    }
  }

  micControl = self->_micControl;

  [(CSMicControl *)micControl setMicControlState:isMicStreaming animated:1];
}

- (void)_updateWithState:(id)state
{
  stateCopy = state;
  [(CSShieldViewController *)self _updateRightBarButtonsAnimated:1];
  v4 = stateCopy;
  if (stateCopy)
  {
    -[CSShieldViewController _updateReverbButtonForLevel:](self, "_updateReverbButtonForLevel:", [stateCopy reverbLevel]);
    [(CSShieldViewController *)self _presentOnboardingCardIfNeeded];
    v4 = stateCopy;
  }
}

- (void)_updateReverbButtonForLevel:(int64_t)level
{
  v5 = ContinuitySingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromCSReverbLevel(level);
    v8 = 136315394;
    v9 = "[CSShieldViewController _updateReverbButtonForLevel:]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: Update reverb button for level %@", &v8, 0x16u);
  }

  if ((level - 1) >= 3)
  {
    levelCopy = 0;
  }

  else
  {
    levelCopy = level;
  }

  [(CSToggleButton *)self->_reverbButton setToggleState:levelCopy];
}

- (void)_updateVocalAttenuationButtonForLevel:(double)level
{
  v5 = +[CSShieldManager sharedManager];
  playbackManager = [v5 playbackManager];
  currentState = [playbackManager currentState];
  vocalAttenuationIsAvailable = [currentState vocalAttenuationIsAvailable];

  if (vocalAttenuationIsAvailable)
  {
    v9 = ContinuitySingLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315394;
      v22 = "[CSShieldViewController _updateVocalAttenuationButtonForLevel:]";
      v23 = 2048;
      levelCopy = level;
      _os_log_impl(&dword_2441FB000, v9, OS_LOG_TYPE_DEFAULT, "%s: Update vocal attenuation button for level %f", &v21, 0x16u);
    }

    v10 = 0.35;
    v11 = 0.5;
    v12 = (0.35 + 1.0) * 0.5;
    v13 = vabdd_f64(level, v12);
    v15 = v12 < level;
    v14 = 2.22044605e-16;
    v15 = v15 || v13 < 2.22044605e-16;
    if (v15)
    {
      vocalAttenuationButton = self->_vocalAttenuationButton;
      v17 = 3;
    }

    else
    {
      v14 = 0.05;
      v19 = (0.35 + 0.05) * 0.5;
      v11 = vabdd_f64(level, v19);
      vocalAttenuationButton = self->_vocalAttenuationButton;
      v15 = v19 < level;
      v10 = 2.22044605e-16;
      if (v15 || v11 < 2.22044605e-16)
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }
    }

    [(CSToggleButton *)vocalAttenuationButton setToggleState:v17, v10, v11, v14, v13];
  }

  else
  {
    v18 = self->_vocalAttenuationButton;

    [(CSToggleButton *)v18 setToggleState:0];
  }
}

- (void)_addPostLoadingTask:(id)task
{
  aBlock = task;
  v4 = +[CSShieldManager sharedManager];
  isLoading = [v4 isLoading];

  if (isLoading)
  {
    postLoadingTasks = self->_postLoadingTasks;
    v7 = _Block_copy(aBlock);

    [(NSMutableArray *)postLoadingTasks addObject:v7];
    aBlock = v7;
  }

  else
  {
    aBlock[2]();
  }
}

- (void)_endLoadingScreen
{
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[CSShieldViewController _endLoadingScreen]";
    v15 = 2114;
    selfCopy = self;
    v17 = 2080;
    v18 = "[CSShieldViewController _endLoadingScreen]";
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: %{public}@ %s", buf, 0x20u);
  }

  v4 = self->_loadingSpinner;
  v5 = +[CSShieldManager sharedManager];
  playbackManager = [v5 playbackManager];
  [playbackManager addObserver:self];

  v7 = MEMORY[0x277D75D18];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__CSShieldViewController__endLoadingScreen__block_invoke;
  v11[3] = &unk_278E0AD78;
  v11[4] = self;
  v12 = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__CSShieldViewController__endLoadingScreen__block_invoke_2;
  v9[3] = &unk_278E0B410;
  v10 = v12;
  v8 = v12;
  [v7 animateWithDuration:v11 animations:v9 completion:0.3];
}

void __43__CSShieldViewController__endLoadingScreen__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1160);
  *(v2 + 1160) = 0;

  [*(a1 + 40) setAlpha:0.0];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(*(a1 + 32) + 1168);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v12 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v6);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 1168);
  *(v9 + 1168) = 0;
}

- (void)_teardown
{
  if (self->_disconnectHandler)
  {
    v3 = ContinuitySingLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = "[CSShieldViewController _teardown]";
      v6 = 2114;
      selfCopy = self;
      v8 = 2080;
      v9 = "[CSShieldViewController _teardown]";
      _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: %{public}@ %s", &v4, 0x20u);
    }

    (*(self->_disconnectHandler + 2))();
  }
}

- (void)setupViews
{
  [(CSShieldViewController *)self setupMicControl];
  [(CSShieldViewController *)self setupTopButtons];
  [(CSShieldViewController *)self setupOnboarding];
  [(CSShieldViewController *)self setupMicPlacementTipView];
  [(CSShieldViewController *)self setupControlButtons];
  [(CSShieldViewController *)self setupEmojiPicker];
  [(CSShieldViewController *)self setupReactionView];

  [(CSShieldViewController *)self setupLoadingView];
}

- (void)setupMicControl
{
  v3 = objc_alloc_init(CSMicControl);
  micControl = self->_micControl;
  self->_micControl = v3;

  [(CSMicControl *)self->_micControl setDelegate:self];
  [(CSMicControl *)self->_micControl setAccessibilityIdentifier:@"ContinuitySing.CSShieldViewController.MicControl"];
  v5 = +[CSShieldManager sharedManager];
  -[CSMicControl setUserInteractionEnabled:](self->_micControl, "setUserInteractionEnabled:", [v5 isLoading] ^ 1);

  view = [(CSShieldViewController *)self view];
  [view addSubview:self->_micControl];

  [(CSMicControl *)self->_micControl setAlpha:0.0];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__CSShieldViewController_setupMicControl__block_invoke;
  v7[3] = &unk_278E0ABD0;
  objc_copyWeak(&v8, &location);
  [(CSShieldViewController *)self _addPostLoadingTask:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __41__CSShieldViewController_setupMicControl__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[125] setAlpha:1.0];
    [v2[125] setUserInteractionEnabled:1];
    WeakRetained = v2;
  }
}

- (void)setupMicPlacementTipView
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  micPlacementTipView = self->_micPlacementTipView;
  self->_micPlacementTipView = v3;

  v5 = self->_micPlacementTipView;
  clearColor = [MEMORY[0x277D75340] clearColor];
  [(UIView *)v5 setBackgroundColor:clearColor];

  view = [(CSShieldViewController *)self view];
  [view addSubview:self->_micPlacementTipView];

  if (![(CSShieldViewController *)self _isOnLockScreen])
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__CSShieldViewController_setupMicPlacementTipView__block_invoke;
    v8[3] = &unk_278E0ABD0;
    objc_copyWeak(&v9, &location);
    [(CSShieldViewController *)self _addPostLoadingTask:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __50__CSShieldViewController_setupMicPlacementTipView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = +[CSTipsManager shared];
    [v2 registerMicTipInViewController:v3 sourceView:v3[148]];

    WeakRetained = v3;
  }
}

- (void)setupTopButtons
{
  objc_initWeak(location, self);
  _localizedAddSongString = [(CSShieldViewController *)self _localizedAddSongString];
  plainButtonConfiguration = [MEMORY[0x277D75228] plainButtonConfiguration];
  [plainButtonConfiguration setAttributedTitle:_localizedAddSongString];
  [plainButtonConfiguration contentInsets];
  [plainButtonConfiguration setContentInsets:?];
  v5 = MEMORY[0x277D75220];
  v6 = MEMORY[0x277D750C0];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __41__CSShieldViewController_setupTopButtons__block_invoke;
  v38[3] = &unk_278E0B3C0;
  objc_copyWeak(&v39, location);
  v7 = [v6 actionWithHandler:v38];
  v8 = [v5 buttonWithConfiguration:plainButtonConfiguration primaryAction:v7];

  labelColor = [MEMORY[0x277D75340] labelColor];
  [v8 setTintColor:labelColor];

  v10 = [objc_alloc(MEMORY[0x277D751E8]) initWithCustomView:v8];
  addSongButtonItem = self->_addSongButtonItem;
  self->_addSongButtonItem = v10;

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __41__CSShieldViewController_setupTopButtons__block_invoke_2;
  v36[3] = &unk_278E0ABD0;
  objc_copyWeak(&v37, location);
  [(CSShieldViewController *)self _addPostLoadingTask:v36];
  v12 = MEMORY[0x277D750C0];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __41__CSShieldViewController_setupTopButtons__block_invoke_3;
  v34[3] = &unk_278E0B3C0;
  objc_copyWeak(&v35, location);
  v13 = [v12 actionWithHandler:v34];
  v14 = [(CSShieldViewController *)self _topButtonItemWithImageNamed:@"xmark" action:v13];

  [v14 setAccessibilityIdentifier:@"ContinuitySing.CSShieldViewController.DisconnectButton"];
  v15 = MEMORY[0x277D750C0];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __41__CSShieldViewController_setupTopButtons__block_invoke_4;
  v32[3] = &unk_278E0B3C0;
  objc_copyWeak(&v33, location);
  v16 = [v15 actionWithHandler:v32];
  v17 = [(CSShieldViewController *)self _topButtonItemWithImageNamed:@"gear" action:v16];
  helpButtonItem = self->_helpButtonItem;
  self->_helpButtonItem = v17;

  v19 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v20 = [v19 localizedStringForKey:@"HELP_BUTTON_ACCESSIBILITY_LABEL" value:&stru_285797E10 table:0];
  [(UIBarButtonItem *)self->_helpButtonItem setAccessibilityLabel:v20];

  v31 = v14;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  rightBarButtonItemsPartial = self->_rightBarButtonItemsPartial;
  self->_rightBarButtonItemsPartial = v21;

  v30[0] = v14;
  fixedSpaceItem = [MEMORY[0x277D751E8] fixedSpaceItem];
  v24 = self->_helpButtonItem;
  v30[1] = fixedSpaceItem;
  v30[2] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  rightBarButtonItemsFull = self->_rightBarButtonItemsFull;
  self->_rightBarButtonItemsFull = v25;

  navigationItem = [(CSShieldViewController *)self navigationItem];
  [navigationItem setRightBarButtonItems:self->_rightBarButtonItemsPartial];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __41__CSShieldViewController_setupTopButtons__block_invoke_5;
  v28[3] = &unk_278E0ABD0;
  objc_copyWeak(&v29, location);
  [(CSShieldViewController *)self _addPostLoadingTask:v28];
  objc_destroyWeak(&v29);
  objc_destroyWeak(&v33);

  objc_destroyWeak(&v35);
  objc_destroyWeak(&v37);

  objc_destroyWeak(&v39);
  objc_destroyWeak(location);
}

void __41__CSShieldViewController_setupTopButtons__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentMusicPicker];
}

void __41__CSShieldViewController_setupTopButtons__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained navigationItem];
    [v2 setLeftBarButtonItem:v3[126] animated:1];

    WeakRetained = v3;
  }
}

void __41__CSShieldViewController_setupTopButtons__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _confirmAndTeardown];
}

void __41__CSShieldViewController_setupTopButtons__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentHelpCard];
}

void __41__CSShieldViewController_setupTopButtons__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateRightBarButtonsAnimated:1];
}

- (id)_topButtonItemWithImageNamed:(id)named action:(id)action
{
  v5 = MEMORY[0x277D755B0];
  actionCopy = action;
  v7 = [v5 _systemImageNamed:named];
  v8 = [objc_alloc(MEMORY[0x277D751E8]) initWithPrimaryAction:actionCopy];

  [v8 setImage:v7];

  return v8;
}

- (id)_localizedAddSongString
{
  v2 = objc_alloc(MEMORY[0x277CCAB48]);
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v4 = [v3 localizedStringForKey:@"BUTTON_LABEL_ADD_SONG" value:&stru_285797E10 table:0];
  v5 = [v2 initWithString:v4];

  string = [v5 string];
  v7 = [string rangeOfString:@"%@"];
  v9 = v8;

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = ContinuitySingLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CSShieldViewController _localizedAddSongString];
    }
  }

  else
  {
    v11 = [MEMORY[0x277D755B0] _systemImageNamed:@"music.badge.plus"];
    v12 = [MEMORY[0x277D74270] textAttachmentWithImage:v11];
    v13 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v12];
    [v5 replaceCharactersInRange:v7 withAttributedString:{v9, v13}];
  }

  return v5;
}

- (void)setupOnboarding
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__CSShieldViewController_setupOnboarding__block_invoke;
  v3[3] = &unk_278E0ABD0;
  objc_copyWeak(&v4, &location);
  [(CSShieldViewController *)self _addPostLoadingTask:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __41__CSShieldViewController_setupOnboarding__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentOnboardingCardIfNeeded];
}

- (void)setupEmojiPicker
{
  v27 = [(CSShieldViewController *)self emojiButtonWithEmoji:@"👍"];
  [v27 setAccessibilityIdentifier:@"Thumbs.Up.Emoji"];
  v33 = [(CSShieldViewController *)self emojiButtonWithEmoji:@"❤️"];
  [v33 setAccessibilityIdentifier:@"Heart.Emoji"];
  v32 = [(CSShieldViewController *)self emojiButtonWithEmoji:@"🎉"];
  [v32 setAccessibilityIdentifier:@"Party.Emoji"];
  v31 = [(CSShieldViewController *)self emojiButtonWithEmoji:@"🔥"];
  [v31 setAccessibilityIdentifier:@"Fire.Emoji"];
  v30 = [(CSShieldViewController *)self emojiButtonWithEmoji:@"🦄"];
  [v30 setAccessibilityIdentifier:@"Unicorn.Emoji"];
  v29 = [(CSShieldViewController *)self emojiButtonWithEmoji:@"🤘"];
  [v29 setAccessibilityIdentifier:@"Rock.On.Emoji"];
  v28 = [(CSShieldViewController *)self emojiButtonWithEmoji:@"⭐️"];
  [v28 setAccessibilityIdentifier:@"Star.Emoji"];
  emojiSelectionButton = [(CSShieldViewController *)self emojiSelectionButton];
  emojiMoreButton = self->_emojiMoreButton;
  self->_emojiMoreButton = emojiSelectionButton;

  [(UIButton *)self->_emojiMoreButton setAccessibilityIdentifier:@"More.Emoji"];
  v5 = objc_alloc(MEMORY[0x277D75A70]);
  v37[0] = v27;
  v37[1] = v33;
  v37[2] = v32;
  v37[3] = v31;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
  v7 = [v5 initWithArrangedSubviews:v6];

  [v7 setAxis:0];
  v8 = v7;
  v26 = v7;
  [v7 setSpacing:0.0];
  v9 = objc_alloc(MEMORY[0x277D75A70]);
  v36[0] = v30;
  v36[1] = v29;
  v10 = self->_emojiMoreButton;
  v36[2] = v28;
  v36[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
  v12 = [v9 initWithArrangedSubviews:v11];

  [v12 setAxis:0];
  [v12 setSpacing:0.0];
  v13 = objc_alloc(MEMORY[0x277D75A70]);
  v35[0] = v8;
  v35[1] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v15 = [v13 initWithArrangedSubviews:v14];
  emojiPickerContainer = self->_emojiPickerContainer;
  self->_emojiPickerContainer = v15;

  [(UIStackView *)self->_emojiPickerContainer setAxis:1];
  [(UIStackView *)self->_emojiPickerContainer setSpacing:0.0];
  view = [(CSShieldViewController *)self view];
  [view addSubview:self->_emojiPickerContainer];

  [(UIStackView *)self->_emojiPickerContainer setAlpha:0.0];
  [(CSShieldViewController *)self _updateControlVisibility];
  [(UIButton *)self->_emojiMoreButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = MEMORY[0x277CCAAD0];
  widthAnchor = [(UIButton *)self->_emojiMoreButton widthAnchor];
  widthAnchor2 = [v27 widthAnchor];
  v21 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v34[0] = v21;
  heightAnchor = [(UIButton *)self->_emojiMoreButton heightAnchor];
  widthAnchor3 = [(UIButton *)self->_emojiMoreButton widthAnchor];
  v24 = [heightAnchor constraintEqualToAnchor:widthAnchor3];
  v34[1] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  [v18 activateConstraints:v25];
}

- (id)emojiButtonWithEmoji:(id)emoji
{
  emojiCopy = emoji;
  borderlessButtonConfiguration = [MEMORY[0x277D75228] borderlessButtonConfiguration];
  objc_initWeak(location, self);
  v6 = MEMORY[0x277D75220];
  v7 = MEMORY[0x277D750C0];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __47__CSShieldViewController_emojiButtonWithEmoji___block_invoke;
  v33[3] = &unk_278E0B818;
  objc_copyWeak(&v35, location);
  v29 = emojiCopy;
  v34 = v29;
  v8 = [v7 actionWithHandler:v33];
  v9 = [v6 buttonWithConfiguration:borderlessButtonConfiguration primaryAction:v8];
  v25 = borderlessButtonConfiguration;

  v10 = objc_alloc_init(MEMORY[0x277D756C0]);
  v11 = objc_alloc(MEMORY[0x277CCA898]);
  v31 = *MEMORY[0x277D740A8];
  v12 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A10] maximumContentSizeCategory:*MEMORY[0x277D76848]];
  v32 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v14 = [v11 initWithString:v29 attributes:v13];
  [v10 setAttributedText:v14];

  [v9 addSubview:v10];
  [v10 sizeToFit];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = MEMORY[0x277CCAAD0];
  widthAnchor = [v9 widthAnchor];
  v27 = [widthAnchor constraintEqualToConstant:81.0];
  v30[0] = v27;
  heightAnchor = [v9 heightAnchor];
  v15 = [heightAnchor constraintEqualToConstant:81.0];
  v30[1] = v15;
  centerXAnchor = [v10 centerXAnchor];
  centerXAnchor2 = [v9 centerXAnchor];
  v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v30[2] = v18;
  centerYAnchor = [v10 centerYAnchor];
  centerYAnchor2 = [v9 centerYAnchor];
  v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v30[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  [v24 activateConstraints:v22];

  objc_destroyWeak(&v35);
  objc_destroyWeak(location);

  return v9;
}

void __47__CSShieldViewController_emojiButtonWithEmoji___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[150] playButtonFeedback];
    v5 = *(a1 + 32);
    v6 = [v9 sender];
    [v4 _showReactionSendingAnimation:v5 at:v6];

    v7 = +[CSShieldManager sharedManager];
    v8 = [v7 requestClient];
    [v8 sendReaction:*(a1 + 32)];
  }
}

- (id)emojiSelectionButton
{
  clearConfiguration = [MEMORY[0x277D751C8] clearConfiguration];
  v4 = [MEMORY[0x277D75340] colorWithWhite:1.0 alpha:0.1];
  [clearConfiguration setBackgroundColor:v4];

  tintedButtonConfiguration = [MEMORY[0x277D75228] tintedButtonConfiguration];
  [tintedButtonConfiguration setCornerStyle:-1];
  [tintedButtonConfiguration setBackground:clearConfiguration];
  objc_initWeak(location, self);
  v6 = MEMORY[0x277D75220];
  v7 = MEMORY[0x277D750C0];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __46__CSShieldViewController_emojiSelectionButton__block_invoke;
  v33[3] = &unk_278E0B3C0;
  objc_copyWeak(&v34, location);
  v8 = [v7 actionWithHandler:v33];
  v9 = [v6 buttonWithConfiguration:tintedButtonConfiguration primaryAction:v8];
  v26 = tintedButtonConfiguration;
  v27 = clearConfiguration;

  v10 = [MEMORY[0x277D755B0] systemImageNamed:@"plus"];
  v11 = MEMORY[0x277D755D8];
  v12 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A30] maximumContentSizeCategory:*MEMORY[0x277D76848]];
  v13 = [v11 configurationWithFont:v12];
  v31 = [v10 imageByApplyingSymbolConfiguration:v13];

  v14 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v31];
  whiteColor = [MEMORY[0x277D75340] whiteColor];
  [v14 setTintColor:whiteColor];

  [v9 addSubview:v14];
  [v14 sizeToFit];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = MEMORY[0x277CCAAD0];
  widthAnchor = [v9 widthAnchor];
  v29 = [widthAnchor constraintEqualToConstant:81.0];
  v32[0] = v29;
  heightAnchor = [v9 heightAnchor];
  v16 = [heightAnchor constraintEqualToConstant:81.0];
  v32[1] = v16;
  centerXAnchor = [v14 centerXAnchor];
  centerXAnchor2 = [v9 centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v32[2] = v19;
  centerYAnchor = [v14 centerYAnchor];
  centerYAnchor2 = [v9 centerYAnchor];
  v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v32[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
  [v25 activateConstraints:v23];

  objc_destroyWeak(&v34);
  objc_destroyWeak(location);

  return v9;
}

void __46__CSShieldViewController_emojiSelectionButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentCustomEmojiPicker];
}

- (void)presentCustomEmojiPicker
{
  if (!self->_emojiPickerTextView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75C48]);
    emojiPickerTextView = self->_emojiPickerTextView;
    self->_emojiPickerTextView = v3;

    [(UITextView *)self->_emojiPickerTextView setDelegate:self];
    [(UITextView *)self->_emojiPickerTextView setKeyboardType:124];
    [(UITextView *)self->_emojiPickerTextView setForceDisableDictation:1];
  }

  emojiTapToDismissGestureRecognizer = self->_emojiTapToDismissGestureRecognizer;
  if (!emojiTapToDismissGestureRecognizer)
  {
    v6 = [objc_alloc(MEMORY[0x277D75B78]) initWithTarget:self action:sel__dismissEmojiKeyboard];
    v7 = self->_emojiTapToDismissGestureRecognizer;
    self->_emojiTapToDismissGestureRecognizer = v6;

    [(UITapGestureRecognizer *)self->_emojiTapToDismissGestureRecognizer setCancelsTouchesInView:0];
    view = [(CSShieldViewController *)self view];
    [view addGestureRecognizer:self->_emojiTapToDismissGestureRecognizer];

    emojiTapToDismissGestureRecognizer = self->_emojiTapToDismissGestureRecognizer;
  }

  [(UITapGestureRecognizer *)emojiTapToDismissGestureRecognizer setEnabled:1];
  view2 = [(CSShieldViewController *)self view];
  [view2 addSubview:self->_emojiPickerTextView];

  v10 = self->_emojiPickerTextView;

  [(UITextView *)v10 becomeFirstResponder];
}

- (void)setupReactionView
{
  v3 = objc_alloc_init(CSReactionView);
  reactionView = self->_reactionView;
  self->_reactionView = v3;

  [(CSReactionView *)self->_reactionView setUserInteractionEnabled:0];
  view = [(CSShieldViewController *)self view];
  [view bounds];
  [(CSReactionView *)self->_reactionView setFrame:?];

  [(CSReactionView *)self->_reactionView setAutoresizingMask:18];
  view2 = [(CSShieldViewController *)self view];
  [view2 addSubview:self->_reactionView];
}

- (void)setupControlButtons
{
  objc_initWeak(&location, self);
  v3 = +[CSToggleButtonConfiguration vocalButtonConfiguration];
  v4 = [[CSToggleButton alloc] initWithConfiguration:v3];
  vocalAttenuationButton = self->_vocalAttenuationButton;
  self->_vocalAttenuationButton = v4;

  v6 = self->_vocalAttenuationButton;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __45__CSShieldViewController_setupControlButtons__block_invoke;
  v20[3] = &unk_278E0B840;
  objc_copyWeak(&v21, &location);
  [(CSToggleButton *)v6 setHandler:v20];
  [(CSToggleButton *)self->_vocalAttenuationButton setToggleState:3];
  [(CSShieldViewController *)self _updateVocalAttenuationButtonActiveState];
  [(CSShieldViewController *)self _updateVocalAttenuationButtonLevel];
  v7 = objc_alloc_init(CSToggleButtonDivider);
  controlButtonsDivider = self->_controlButtonsDivider;
  self->_controlButtonsDivider = v7;

  v9 = +[CSToggleButtonConfiguration reverbButtonConfiguration];
  v10 = [[CSToggleButton alloc] initWithConfiguration:v9];
  reverbButton = self->_reverbButton;
  self->_reverbButton = v10;

  v12 = self->_reverbButton;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __45__CSShieldViewController_setupControlButtons__block_invoke_2;
  v18[3] = &unk_278E0B840;
  objc_copyWeak(&v19, &location);
  [(CSToggleButton *)v12 setHandler:v18];
  v13 = objc_alloc_init(MEMORY[0x277D75A70]);
  activeControlButtonContainer = self->_activeControlButtonContainer;
  self->_activeControlButtonContainer = v13;

  [(UIStackView *)self->_activeControlButtonContainer setSpacing:30.0];
  [(UIStackView *)self->_activeControlButtonContainer setAlpha:0.0];
  [(UIStackView *)self->_activeControlButtonContainer setAlignment:1];
  view = [(CSShieldViewController *)self view];
  [view addSubview:self->_activeControlButtonContainer];

  [(UIStackView *)self->_activeControlButtonContainer addArrangedSubview:self->_vocalAttenuationButton];
  [(UIStackView *)self->_activeControlButtonContainer addArrangedSubview:self->_controlButtonsDivider];
  [(UIStackView *)self->_activeControlButtonContainer addArrangedSubview:self->_reverbButton];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __45__CSShieldViewController_setupControlButtons__block_invoke_3;
  v16[3] = &unk_278E0ABD0;
  objc_copyWeak(&v17, &location);
  [(CSShieldViewController *)self _addPostLoadingTask:v16];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __45__CSShieldViewController_setupControlButtons__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _vocalAttenuationButtonStateChangedToState:a2];
}

void __45__CSShieldViewController_setupControlButtons__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reverbButtonStateChangedToState:a2];
}

void __45__CSShieldViewController_setupControlButtons__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _updateControlVisibility];
    v2 = +[CSShieldManager sharedManager];
    v3 = [v2 sessionState];
    [v4 _updateWithState:v3];

    WeakRetained = v4;
  }
}

- (void)_updateControlVisibility
{
  v3 = +[CSShieldManager sharedManager];
  isLoading = [v3 isLoading];

  if ((isLoading & 1) == 0)
  {
    micState = [(CSMicControl *)self->_micControl micState];
    activeControlButtonContainer = self->_activeControlButtonContainer;
    if (micState == 1)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    if (micState == 1)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 1.0;
    }

    [(UIStackView *)self->_activeControlButtonContainer setAlpha:v7];
    emojiPickerContainer = self->_emojiPickerContainer;

    [(UIStackView *)emojiPickerContainer setAlpha:v8];
  }
}

- (void)setupLoadingView
{
  v3 = [objc_alloc(MEMORY[0x277D750E0]) initWithActivityIndicatorStyle:101];
  loadingSpinner = self->_loadingSpinner;
  self->_loadingSpinner = v3;

  whiteColor = [MEMORY[0x277D75340] whiteColor];
  [(UIActivityIndicatorView *)self->_loadingSpinner setColor:whiteColor];

  view = [(CSShieldViewController *)self view];
  [view addSubview:self->_loadingSpinner];

  v7 = self->_loadingSpinner;

  [(UIActivityIndicatorView *)v7 startAnimating];
}

- (void)setupConstraints
{
  [(CSShieldViewController *)self setupMicControlConstraints];
  [(CSShieldViewController *)self setupMicPlacementTipViewConstraints];
  [(CSShieldViewController *)self setupControlButtonConstraints];
  [(CSShieldViewController *)self setupEmojiPickerConstraints];

  [(CSShieldViewController *)self setupLoadingViewConstraints];
}

- (void)setupMicControlConstraints
{
  [(CSMicControl *)self->_micControl setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = MEMORY[0x277CCAAD0];
  micControl = self->_micControl;
  view = [(CSShieldViewController *)self view];
  v6 = [v3 constraintWithItem:micControl attribute:3 relatedBy:0 toItem:view attribute:4 multiplier:0.3075 constant:0.0];

  v7 = MEMORY[0x277CCAAD0];
  centerXAnchor = [(CSMicControl *)self->_micControl centerXAnchor];
  view2 = [(CSShieldViewController *)self view];
  centerXAnchor2 = [view2 centerXAnchor];
  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v13[0] = v11;
  v13[1] = v6;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  [v7 activateConstraints:v12];
}

- (void)setupMicPlacementTipViewConstraints
{
  [(UIView *)self->_micPlacementTipView setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = MEMORY[0x277CCAAD0];
  topAnchor = [(UIView *)self->_micPlacementTipView topAnchor];
  view = [(CSShieldViewController *)self view];
  topAnchor2 = [view topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v19[0] = v15;
  leadingAnchor = [(UIView *)self->_micPlacementTipView leadingAnchor];
  view2 = [(CSShieldViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v5 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
  v19[1] = v5;
  trailingAnchor = [(UIView *)self->_micPlacementTipView trailingAnchor];
  view3 = [(CSShieldViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-12.0];
  v19[2] = v9;
  heightAnchor = [(UIView *)self->_micPlacementTipView heightAnchor];
  v11 = [heightAnchor constraintEqualToConstant:1.0];
  v19[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
  [v13 activateConstraints:v12];
}

- (void)setupControlButtonConstraints
{
  [(UIStackView *)self->_activeControlButtonContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = MEMORY[0x277CCAAD0];
  centerXAnchor = [(UIStackView *)self->_activeControlButtonContainer centerXAnchor];
  view = [(CSShieldViewController *)self view];
  centerXAnchor2 = [view centerXAnchor];
  v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v27[0] = v23;
  topAnchor = [(UIStackView *)self->_activeControlButtonContainer topAnchor];
  bottomAnchor = [(CSMicControl *)self->_micControl bottomAnchor];
  v20 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:90.0];
  v27[1] = v20;
  leadingAnchor = [(UIStackView *)self->_activeControlButtonContainer leadingAnchor];
  view2 = [(CSShieldViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v15 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  v27[2] = v15;
  trailingAnchor = [(UIStackView *)self->_activeControlButtonContainer trailingAnchor];
  view3 = [(CSShieldViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v4 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v27[3] = v4;
  widthAnchor = [(CSToggleButton *)self->_vocalAttenuationButton widthAnchor];
  widthAnchor2 = [(CSToggleButton *)self->_reverbButton widthAnchor];
  v7 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v27[4] = v7;
  widthAnchor3 = [(CSToggleButtonDivider *)self->_controlButtonsDivider widthAnchor];
  v9 = [widthAnchor3 constraintEqualToConstant:2.0];
  v27[5] = v9;
  heightAnchor = [(CSToggleButtonDivider *)self->_controlButtonsDivider heightAnchor];
  v11 = [heightAnchor constraintEqualToConstant:56.0];
  v27[6] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:7];
  [v17 activateConstraints:v12];
}

- (void)setupEmojiPickerConstraints
{
  [(UIStackView *)self->_emojiPickerContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = MEMORY[0x277CCAAD0];
  centerXAnchor = [(UIStackView *)self->_emojiPickerContainer centerXAnchor];
  view = [(CSShieldViewController *)self view];
  centerXAnchor2 = [view centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  topAnchor = [(UIStackView *)self->_emojiPickerContainer topAnchor];
  bottomAnchor = [(CSMicControl *)self->_micControl bottomAnchor];
  v10 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:66.0];
  v12[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  [v3 activateConstraints:v11];
}

- (void)setupLoadingViewConstraints
{
  [(UIActivityIndicatorView *)self->_loadingSpinner setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = MEMORY[0x277CCAAD0];
  centerXAnchor = [(UIActivityIndicatorView *)self->_loadingSpinner centerXAnchor];
  view = [(CSShieldViewController *)self view];
  centerXAnchor2 = [view centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  centerYAnchor = [(UIActivityIndicatorView *)self->_loadingSpinner centerYAnchor];
  view2 = [(CSShieldViewController *)self view];
  centerYAnchor2 = [view2 centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v13[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  [v3 activateConstraints:v12];
}

- (void)setupVolumeHintsViewController
{
  v3 = objc_alloc_init(MEMORY[0x277D6C5C0]);
  volumeHintViewController = self->_volumeHintViewController;
  self->_volumeHintViewController = v3;

  [(TVRUIHintsViewController *)self->_volumeHintViewController setAllowSiriHint:0];
  [(TVRUIHintsViewController *)self->_volumeHintViewController setAllowTips:0];
  [(CSShieldViewController *)self addChildViewController:self->_volumeHintViewController];
  view = [(CSShieldViewController *)self view];
  view2 = [(TVRUIHintsViewController *)self->_volumeHintViewController view];
  [view addSubview:view2];

  view3 = [(CSShieldViewController *)self view];
  [view3 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  view4 = [(TVRUIHintsViewController *)self->_volumeHintViewController view];
  [view4 setFrame:{v9, v11, v13, v15}];

  view5 = [(TVRUIHintsViewController *)self->_volumeHintViewController view];
  [view5 setAutoresizingMask:18];
}

- (void)setupMiniPlayerViewController
{
  v3 = objc_alloc_init(CSMiniPlayerViewController);
  miniPlayerViewController = self->_miniPlayerViewController;
  self->_miniPlayerViewController = v3;

  self->_miniPlayerIsHidden = 1;
  [(CSShieldViewController *)self addChildViewController:self->_miniPlayerViewController];
  view = [(CSShieldViewController *)self view];
  view2 = [(CSMiniPlayerViewController *)self->_miniPlayerViewController view];
  [view addSubview:view2];

  view3 = [(CSMiniPlayerViewController *)self->_miniPlayerViewController view];
  view4 = [(CSMiniPlayerViewController *)self->_miniPlayerViewController view];
  [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

  bottomAnchor = [view3 bottomAnchor];
  view5 = [(CSShieldViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:60.0];
  miniPlayerBottomConstraint = self->_miniPlayerBottomConstraint;
  self->_miniPlayerBottomConstraint = v12;

  v22 = MEMORY[0x277CCAAD0];
  v25[0] = self->_miniPlayerBottomConstraint;
  leadingAnchor = [view3 leadingAnchor];
  view6 = [(CSShieldViewController *)self view];
  leadingAnchor2 = [view6 leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:28.0];
  v25[1] = v15;
  trailingAnchor = [view3 trailingAnchor];
  view7 = [(CSShieldViewController *)self view];
  trailingAnchor2 = [view7 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-28.0];
  v25[2] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  [v22 activateConstraints:v20];

  [(CSMiniPlayerViewController *)self->_miniPlayerViewController didMoveToParentViewController:self];
  v21 = [objc_alloc(MEMORY[0x277D75B78]) initWithTarget:self action:sel_handleOpenQueueTap_];
  [view3 addGestureRecognizer:v21];
}

- (void)handleOpenQueueTap:(id)tap
{
  tapCopy = tap;
  if ([tapCopy state] == 3)
  {
    objc_initWeak(&location, self);
    v5 = [CSQueueViewController alloc];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __45__CSShieldViewController_handleOpenQueueTap___block_invoke;
    v10 = &unk_278E0ABD0;
    objc_copyWeak(&v11, &location);
    v6 = [(CSQueueViewController *)v5 initWithAddSongHandler:&v7];
    [(CSShieldViewController *)self presentViewController:v6 animated:1 completion:0, v7, v8, v9, v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __45__CSShieldViewController_handleOpenQueueTap___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentMusicPicker];
}

- (void)setupVolumeButtonConsumers
{
  view = [(CSShieldViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  [windowScene _setSystemVolumeHUDEnabled:0];

  if (*&self->_volumeDecreaseInvalidator == 0)
  {
    mEMORY[0x277D66AA0] = [MEMORY[0x277D66AA0] sharedInstance];
    v7 = [mEMORY[0x277D66AA0] beginConsumingPressesForButtonKind:4 eventConsumer:self priority:0];
    volumeDecreaseInvalidator = self->_volumeDecreaseInvalidator;
    self->_volumeDecreaseInvalidator = v7;

    mEMORY[0x277D66AA0]2 = [MEMORY[0x277D66AA0] sharedInstance];
    v9 = [mEMORY[0x277D66AA0]2 beginConsumingPressesForButtonKind:3 eventConsumer:self priority:0];
    volumeIncreaseInvalidator = self->_volumeIncreaseInvalidator;
    self->_volumeIncreaseInvalidator = v9;
  }
}

- (void)invalidateVolumeButtonConsumers
{
  [(BSInvalidatable *)self->_volumeDecreaseInvalidator invalidate];
  [(BSInvalidatable *)self->_volumeIncreaseInvalidator invalidate];
  volumeDecreaseInvalidator = self->_volumeDecreaseInvalidator;
  self->_volumeDecreaseInvalidator = 0;

  volumeIncreaseInvalidator = self->_volumeIncreaseInvalidator;
  self->_volumeIncreaseInvalidator = 0;
}

- (void)_reverbButtonStateChangedToState:(unint64_t)state
{
  if (state < 2)
  {
    [(CSHapticsPlayer *)self->_hapticsPlayer playReverbButtonFeedbackWithIntensity:0];
  }

  else
  {
    if (state == 2)
    {
      [(CSHapticsPlayer *)self->_hapticsPlayer playReverbButtonFeedbackWithIntensity:1];
      v4 = 2;
      goto LABEL_11;
    }

    if (state == 3)
    {
      [(CSHapticsPlayer *)self->_hapticsPlayer playReverbButtonFeedbackWithIntensity:2];
      v4 = 3;
      goto LABEL_11;
    }

    v5 = ContinuitySingLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CSShieldViewController _reverbButtonStateChangedToState:];
    }
  }

  v4 = 1;
LABEL_11:
  v6 = ContinuitySingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
    v12 = 136315650;
    v13 = "[CSShieldViewController _reverbButtonStateChangedToState:]";
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_2441FB000, v6, OS_LOG_TYPE_DEFAULT, "%s: revderb button pushed; moving to state %@ and setting reverb level to %@", &v12, 0x20u);
  }

  v9 = +[CSShieldManager sharedManager];
  [v9 updateReverbLevel:v4];

  v10 = +[CSShieldManager sharedManager];
  requestClient = [v10 requestClient];
  [requestClient sendReverb:v4];
}

- (void)_vocalAttenuationButtonStateChangedToState:(unint64_t)state
{
  v4 = 1.0;
  switch(state)
  {
    case 3uLL:
      hapticsPlayer = self->_hapticsPlayer;
      v6 = 2;
      goto LABEL_7;
    case 2uLL:
      v4 = 0.35;
      hapticsPlayer = self->_hapticsPlayer;
      v6 = 1;
      goto LABEL_7;
    case 1uLL:
      v4 = 0.05;
      hapticsPlayer = self->_hapticsPlayer;
      v6 = 0;
LABEL_7:
      [(CSHapticsPlayer *)hapticsPlayer playVocalButtonFeedbackWithIntensity:v6];
      goto LABEL_11;
  }

  v7 = ContinuitySingLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [CSShieldViewController _vocalAttenuationButtonStateChangedToState:];
  }

LABEL_11:
  v8 = ContinuitySingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
    v15 = 136315650;
    v16 = "[CSShieldViewController _vocalAttenuationButtonStateChangedToState:]";
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_2441FB000, v8, OS_LOG_TYPE_DEFAULT, "%s: vocal level button pushed; moving to state %@ and setting vocal level to %@", &v15, 0x20u);
  }

  v11 = +[CSShieldManager sharedManager];
  playbackManager = [v11 playbackManager];
  [playbackManager setVocalAttenuationLevel:v4];

  v13 = +[CSShieldManager sharedManager];
  requestClient = [v13 requestClient];
  [requestClient sendVocalLevel:v4];
}

- (void)presentMusicPicker
{
  if ([(CSShieldViewController *)self _isOnLockScreen])
  {
    v3 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v3 setScheme:@"ContinuitySingPicker"];
    v4 = MEMORY[0x277D0AD60];
    v5 = *MEMORY[0x277D0AC58];
    v15[0] = *MEMORY[0x277D0AC70];
    v15[1] = v5;
    v16[0] = MEMORY[0x277CBEC38];
    v16[1] = MEMORY[0x277CBEC38];
    v15[2] = *MEMORY[0x277D0AC40];
    v6 = [v3 URL];
    v16[2] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
    v8 = [v4 optionsWithDictionary:v7];

    v9 = ContinuitySingLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[CSShieldViewController presentMusicPicker]";
      _os_log_impl(&dword_2441FB000, v9, OS_LOG_TYPE_DEFAULT, "%s: prompting to unlock device for music picker presentation", &v13, 0xCu);
    }

    v10 = SBSCreateOpenApplicationService();
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [v10 openApplication:bundleIdentifier withOptions:v8 completion:&__block_literal_global_154];
  }

  else
  {

    [(CSShieldViewController *)self presentMusicPickerWithNotificationSender:&__block_literal_global_158];
  }
}

void __44__CSShieldViewController_presentMusicPicker__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = ContinuitySingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44__CSShieldViewController_presentMusicPicker__block_invoke_cold_1();
    }
  }
}

void __44__CSShieldViewController_presentMusicPicker__block_invoke_155(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v6 = +[CSShieldManager sharedManager];
  v5 = [v6 requestClient];
  [v5 sendQueuedSongsNotificationWithTracks:v4 shouldQueueOnServer:a3];
}

- (void)_showReaction:(id)reaction from:(id)from
{
  reactionCopy = reaction;
  fromCopy = from;
  v8 = ContinuitySingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[CSShieldViewController _showReaction:from:]";
    v11 = 2112;
    v12 = reactionCopy;
    v13 = 2112;
    v14 = fromCopy;
    _os_log_impl(&dword_2441FB000, v8, OS_LOG_TYPE_DEFAULT, "%s: Received reaction %@ from sender: %@", &v9, 0x20u);
  }

  [(CSReactionView *)self->_reactionView showReaction:reactionCopy from:fromCopy];
}

- (void)_showReactionSendingAnimation:(id)animation at:(id)at
{
  atCopy = at;
  animationCopy = animation;
  view = [(CSShieldViewController *)self view];
  v8 = [view containsView:atCopy];

  view2 = [(CSShieldViewController *)self view];
  v10 = view2;
  if (v8)
  {
    [atCopy bounds];
    [v10 convertRect:atCopy fromView:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v23.origin.x = v12;
    v23.origin.y = v14;
    v23.size.width = v16;
    v23.size.height = v18;
    MidX = CGRectGetMidX(v23);
    v24.origin.x = v12;
    v24.origin.y = v14;
    v24.size.width = v16;
    v24.size.height = v18;
    MidY = CGRectGetMidY(v24);
  }

  else
  {
    [view2 bounds];
    MidX = CGRectGetMidX(v25);
    [(CSMicControl *)self->_micControl frame];
    MidY = CGRectGetMaxY(v26) + 150.0;
  }

  [(CSReactionView *)self->_reactionView showReactionSendingAnimation:animationCopy at:MidX, MidY];
}

- (void)_updateVocalAttenuationButtonActiveState
{
  v3 = +[CSShieldManager sharedManager];
  playbackManager = [v3 playbackManager];
  currentState = [playbackManager currentState];
  vocalAttenuationIsAvailable = [currentState vocalAttenuationIsAvailable];

  vocalAttenuationButton = self->_vocalAttenuationButton;

  [(CSToggleButton *)vocalAttenuationButton setEnabled:vocalAttenuationIsAvailable];
}

- (void)_updateVocalAttenuationButtonLevel
{
  v5 = +[CSShieldManager sharedManager];
  playbackManager = [v5 playbackManager];
  currentState = [playbackManager currentState];
  [currentState vocalAttenuationLevel];
  [(CSShieldViewController *)self _updateVocalAttenuationButtonForLevel:?];
}

- (void)_updateMiniPlayerState:(id)state
{
  stateCopy = state;
  currentSong = [stateCopy currentSong];
  v6 = currentSong == 0;

  if (self->_miniPlayerIsHidden == v6)
  {
    [(CSMiniPlayerViewController *)self->_miniPlayerViewController updatePlaybackState:stateCopy];
  }

  else
  {
    self->_miniPlayerIsHidden = v6;
    if (currentSong)
    {
      [(CSMiniPlayerViewController *)self->_miniPlayerViewController updatePlaybackState:stateCopy];
    }

    objc_initWeak(&location, self);
    v7 = MEMORY[0x277D75D18];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__CSShieldViewController__updateMiniPlayerState___block_invoke;
    v12[3] = &unk_278E0AD50;
    v13 = v6;
    v12[4] = self;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__CSShieldViewController__updateMiniPlayerState___block_invoke_2;
    v8[3] = &unk_278E0B8A8;
    objc_copyWeak(&v10, &location);
    v11 = v6;
    v9 = stateCopy;
    [v7 animateWithDuration:4 delay:v12 usingSpringWithDamping:v8 initialSpringVelocity:1.0 options:0.0 animations:0.5 completion:0.0];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __49__CSShieldViewController__updateMiniPlayerState___block_invoke(uint64_t a1)
{
  v2 = -40.0;
  if (*(a1 + 40))
  {
    v2 = 60.0;
  }

  [*(*(a1 + 32) + 1128) setConstant:v2];
  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

void __49__CSShieldViewController__updateMiniPlayerState___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && a2 && *(a1 + 48) == 1)
  {
    v5 = WeakRetained;
    [WeakRetained[140] updatePlaybackState:*(a1 + 32)];
    WeakRetained = v5;
  }
}

- (BOOL)_isOnLockScreen
{
  view = [(CSShieldViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  session = [windowScene session];
  role = [session role];
  v7 = role == *MEMORY[0x277D776D8];

  return v7;
}

- (void)consumeSinglePressDownForButtonKind:(int64_t)kind
{
  if (kind == 4)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x277D6C5C8] object:0];

    v6 = +[CSShieldManager sharedManager];
    requestClient = [v6 requestClient];
    [requestClient decreaseMicrophoneVolume:&__block_literal_global_164];
  }

  else
  {
    if (kind != 3)
    {
      return;
    }

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 postNotificationName:*MEMORY[0x277D6C5D0] object:0];

    v6 = +[CSShieldManager sharedManager];
    requestClient = [v6 requestClient];
    [requestClient increaseMicrophoneVolume:&__block_literal_global_161];
  }
}

void __62__CSShieldViewController_consumeSinglePressDownForButtonKind___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__CSShieldViewController_consumeSinglePressDownForButtonKind___block_invoke_2;
  block[3] = &unk_278E0ACD8;
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__CSShieldViewController_consumeSinglePressDownForButtonKind___block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(a1 + 32))
  {
    v2 = ContinuitySingLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __62__CSShieldViewController_consumeSinglePressDownForButtonKind___block_invoke_2_cold_1(v1);
    }
  }
}

void __62__CSShieldViewController_consumeSinglePressDownForButtonKind___block_invoke_162(uint64_t a1, void *a2)
{
  v2 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__CSShieldViewController_consumeSinglePressDownForButtonKind___block_invoke_2_165;
  block[3] = &unk_278E0ACD8;
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__CSShieldViewController_consumeSinglePressDownForButtonKind___block_invoke_2_165(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(a1 + 32))
  {
    v2 = ContinuitySingLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __62__CSShieldViewController_consumeSinglePressDownForButtonKind___block_invoke_2_cold_1(v1);
    }
  }
}

- (void)micControl:(id)control didRequestToTurnOnFromState:(unint64_t)state
{
  controlCopy = control;
  v6 = ContinuitySingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x277CCABB0];
    mEMORY[0x277CF6C50] = [MEMORY[0x277CF6C50] sharedInstance];
    v9 = [v7 numberWithInteger:{objc_msgSend(mEMORY[0x277CF6C50], "uiState")}];
    *buf = 136315906;
    v22 = "[CSShieldViewController micControl:didRequestToTurnOnFromState:]";
    v23 = 2112;
    selfCopy = self;
    v25 = 2080;
    v26 = "[CSShieldViewController micControl:didRequestToTurnOnFromState:]";
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_2441FB000, v6, OS_LOG_TYPE_DEFAULT, "%s: %@ %s %@", buf, 0x2Au);
  }

  [(CSHapticsPlayer *)self->_hapticsPlayer playButtonFeedback];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__CSShieldViewController_micControl_didRequestToTurnOnFromState___block_invoke;
  aBlock[3] = &unk_278E0B8D0;
  aBlock[4] = self;
  v10 = controlCopy;
  v20 = v10;
  v11 = _Block_copy(aBlock);
  _needsMicConfirmation = [(CSShieldViewController *)self _needsMicConfirmation];
  mEMORY[0x277CF6C50]2 = [MEMORY[0x277CF6C50] sharedInstance];
  uiState = [mEMORY[0x277CF6C50]2 uiState];

  if (uiState == 4 || _needsMicConfirmation)
  {
    v16 = 3;
  }

  else
  {
    v16 = 1;
  }

  [v10 setMicControlState:v16 animated:1];
  if (_needsMicConfirmation)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __65__CSShieldViewController_micControl_didRequestToTurnOnFromState___block_invoke_2;
    v17[3] = &unk_278E0B8F8;
    v18 = v11;
    [(CSShieldViewController *)self _presentConfirmationCardType:0 completion:v17];
  }

  else
  {
    (*(v11 + 2))(v11, 1);
  }
}

void __65__CSShieldViewController_micControl_didRequestToTurnOnFromState___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) _userRequestedMicOn];
    v4 = +[CSShieldManager sharedManager];
    [v4 setConfirmedMicTakeover:1];
  }

  else
  {
    v3 = *(a1 + 40);

    [v3 setMicControlState:0 animated:1];
  }
}

- (BOOL)_needsMicConfirmation
{
  v2 = +[CSShieldManager sharedManager];
  sessionState = [v2 sessionState];
  activeMicRemoteDisplayID = [sessionState activeMicRemoteDisplayID];

  if (activeMicRemoteDisplayID)
  {
    v5 = [v2 isMicLocal] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = +[CSShieldManager sharedManager];
  hasConfirmedMicTakeover = [v6 hasConfirmedMicTakeover];

  v8 = ContinuitySingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    v10 = @"YES";
    if (!hasConfirmedMicTakeover)
    {
      v10 = @"NO";
    }

    v12 = 136315650;
    v13 = "[CSShieldViewController _needsMicConfirmation]";
    v14 = 2112;
    v15 = v10;
    if (v5)
    {
      v9 = activeMicRemoteDisplayID;
    }

    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_2441FB000, v8, OS_LOG_TYPE_DEFAULT, "%s: mic control previously confirmed: %@ - mic is in use: %@ ", &v12, 0x20u);
  }

  return v5 & (hasConfirmedMicTakeover ^ 1);
}

- (void)micControl:(id)control didRequestToTurnOffFromState:(unint64_t)state
{
  controlCopy = control;
  v6 = ContinuitySingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x277CCABB0];
    mEMORY[0x277CF6C50] = [MEMORY[0x277CF6C50] sharedInstance];
    v9 = [v7 numberWithInteger:{objc_msgSend(mEMORY[0x277CF6C50], "uiState")}];
    v13 = 136315906;
    v14 = "[CSShieldViewController micControl:didRequestToTurnOffFromState:]";
    v15 = 2112;
    selfCopy = self;
    v17 = 2080;
    v18 = "[CSShieldViewController micControl:didRequestToTurnOffFromState:]";
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_2441FB000, v6, OS_LOG_TYPE_DEFAULT, "%s: %@ %s %@", &v13, 0x2Au);
  }

  [(CSHapticsPlayer *)self->_hapticsPlayer playButtonFeedback];
  [controlCopy setMicControlState:0 animated:1];

  mEMORY[0x277CF6C50]2 = [MEMORY[0x277CF6C50] sharedInstance];
  uiState = [mEMORY[0x277CF6C50]2 uiState];

  if (uiState == 1)
  {
    mEMORY[0x277CF6C58] = [MEMORY[0x277CF6C58] sharedInstance];
    [mEMORY[0x277CF6C58] pauseSessionForEvent:0];
  }

  else
  {
    mEMORY[0x277CF6C58] = ContinuitySingLog();
    if (os_log_type_enabled(mEMORY[0x277CF6C58], OS_LOG_TYPE_ERROR))
    {
      [CSShieldViewController micControl:didRequestToTurnOffFromState:];
    }
  }
}

- (void)micControl:(id)control didChangetoState:(unint64_t)state
{
  v6 = ContinuitySingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x277CCABB0];
    mEMORY[0x277CF6C50] = [MEMORY[0x277CF6C50] sharedInstance];
    v9 = [v7 numberWithInteger:{objc_msgSend(mEMORY[0x277CF6C50], "uiState")}];
    v14 = 136315906;
    v15 = "[CSShieldViewController micControl:didChangetoState:]";
    v16 = 2112;
    selfCopy = self;
    v18 = 2048;
    stateCopy = state;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_2441FB000, v6, OS_LOG_TYPE_DEFAULT, "%s: %@ mic control state changed to %zu with current state %@", &v14, 0x2Au);
  }

  [(CSShieldViewController *)self _updateControlVisibility];
  if (state == 1)
  {
    [(CSShieldViewController *)self setupVolumeButtonConsumers];
    volumeHintViewController = self->_volumeHintViewController;
    v11 = objc_opt_respondsToSelector();
    v12 = ContinuitySingLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v14 = 136315138;
        v15 = "[CSShieldViewController micControl:didChangetoState:]";
        _os_log_impl(&dword_2441FB000, v12, OS_LOG_TYPE_DEFAULT, "%s: Request mic volume hints", &v14, 0xCu);
      }

      [(TVRUIHintsViewController *)self->_volumeHintViewController requestHintsForMicVolume];
    }

    else
    {
      if (v13)
      {
        v14 = 136315138;
        v15 = "[CSShieldViewController micControl:didChangetoState:]";
        _os_log_impl(&dword_2441FB000, v12, OS_LOG_TYPE_DEFAULT, "%s: Request default volume hints", &v14, 0xCu);
      }

      [(TVRUIHintsViewController *)self->_volumeHintViewController requestHintsForSiri:0 volume:1];
    }
  }

  else
  {
    [(CSShieldViewController *)self invalidateVolumeButtonConsumers];
    [(TVRUIHintsViewController *)self->_volumeHintViewController dismissHints];
  }
}

- (void)_userRequestedMicOn
{
  v0 = MEMORY[0x277CCABB0];
  mEMORY[0x277CF6C50] = [MEMORY[0x277CF6C50] sharedInstance];
  v2 = [v0 numberWithInteger:{objc_msgSend(mEMORY[0x277CF6C50], "uiState")}];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_5_0(&dword_2441FB000, v3, v4, "%s: %@ %s unhandled current state %@", v5, v6, v7, v8, 2u);
}

- (void)_activateEnableMicTimer
{
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277CCABB0];
    mEMORY[0x277CF6C50] = [MEMORY[0x277CF6C50] sharedInstance];
    v6 = [v4 numberWithInteger:{objc_msgSend(mEMORY[0x277CF6C50], "uiState")}];
    *buf = 136315906;
    v13 = "[CSShieldViewController _activateEnableMicTimer]";
    v14 = 2112;
    selfCopy = self;
    v16 = 2080;
    v17 = "[CSShieldViewController _activateEnableMicTimer]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@ %s %@", buf, 0x2Au);
  }

  if (self->_enableMicTimer)
  {
    [(CSShieldViewController *)self _cancelEnableMicTimer];
  }

  objc_initWeak(buf, self);
  v7 = MEMORY[0x277CBEBB8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__CSShieldViewController__activateEnableMicTimer__block_invoke;
  v10[3] = &unk_278E0B128;
  objc_copyWeak(&v11, buf);
  v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:v10 block:10.0];
  enableMicTimer = self->_enableMicTimer;
  self->_enableMicTimer = v8;

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __49__CSShieldViewController__activateEnableMicTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = ContinuitySingLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __49__CSShieldViewController__activateEnableMicTimer__block_invoke_cold_1();
    }

    [WeakRetained _cancelEnableMicTimer];
    [WeakRetained updateUI];
  }
}

- (void)_cancelEnableMicTimer
{
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277CCABB0];
    mEMORY[0x277CF6C50] = [MEMORY[0x277CF6C50] sharedInstance];
    v6 = [v4 numberWithInteger:{objc_msgSend(mEMORY[0x277CF6C50], "uiState")}];
    v8 = 136315906;
    v9 = "[CSShieldViewController _cancelEnableMicTimer]";
    v10 = 2112;
    selfCopy = self;
    v12 = 2080;
    v13 = "[CSShieldViewController _cancelEnableMicTimer]";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@ %s %@", &v8, 0x2Au);
  }

  [(NSTimer *)self->_enableMicTimer invalidate];
  enableMicTimer = self->_enableMicTimer;
  self->_enableMicTimer = 0;
}

- (void)_sendConnectMicRequest
{
  v3 = +[CSShieldManager sharedManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__CSShieldViewController__sendConnectMicRequest__block_invoke;
  v4[3] = &unk_278E0B410;
  v4[4] = self;
  [v3 requestMicrophoneActivationWithCompletion:v4];
}

void __48__CSShieldViewController__sendConnectMicRequest__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __48__CSShieldViewController__sendConnectMicRequest__block_invoke_2;
  v2[3] = &unk_278E0AD50;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __48__CSShieldViewController__sendConnectMicRequest__block_invoke_2(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v2 = result;
    [*(result + 32) _cancelEnableMicTimer];
    v3 = *(v2 + 32);

    return [v3 updateUI];
  }

  return result;
}

- (void)_sendEnableMicRequest
{
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v9 = "[CSShieldViewController _sendEnableMicRequest]";
    v10 = 2112;
    selfCopy = self;
    v12 = 2080;
    v13 = "[CSShieldViewController _sendEnableMicRequest]";
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@ %s", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v4 = +[CSShieldManager sharedManager];
  requestClient = [v4 requestClient];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__CSShieldViewController__sendEnableMicRequest__block_invoke;
  v6[3] = &unk_278E0B948;
  objc_copyWeak(&v7, buf);
  [requestClient sendEnableMicRequest:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __47__CSShieldViewController__sendEnableMicRequest__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CSShieldViewController__sendEnableMicRequest__block_invoke_2;
  block[3] = &unk_278E0B920;
  objc_copyWeak(v9, (a1 + 32));
  v9[1] = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v9);
}

void __47__CSShieldViewController__sendEnableMicRequest__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = ContinuitySingLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 40));
      v5 = *(a1 + 48);
      v6 = *(a1 + 32);
      v12 = 136315906;
      v13 = "[CSShieldViewController _sendEnableMicRequest]_block_invoke_2";
      v14 = 2112;
      v15 = v4;
      v16 = 2048;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@ enable mic result:%zu error:%@", &v12, 0x2Au);
    }

    v7 = *(a1 + 48);
    if (v7 < 2)
    {
      v10 = [MEMORY[0x277CF6C58] sharedInstance];
      [v10 resumeStreamingForEvent:0];
    }

    else
    {
      if (v7 == 2)
      {
        v11 = +[CSShieldConnectionManager sharedManager];
        [v11 reportErrorWithCode:-113 subsystem:2 description:@"Enable microphone request failed" error:*(a1 + 32) exitSession:0];

        [WeakRetained _cancelEnableMicTimer];
        goto LABEL_10;
      }

      if (v7 == 3)
      {
        v8 = +[CSShieldConnectionManager sharedManager];
        [v8 reportErrorWithCode:-114 subsystem:2 description:@"Invalid user - session state out of sync" error:*(a1 + 32) exitSession:0];

        [WeakRetained _cancelEnableMicTimer];
        v9 = +[CSShieldManager sharedManager];
        [v9 exitRapportSession];

LABEL_10:
        [WeakRetained updateUI];
      }
    }
  }
}

- (void)_confirmAndTeardown
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__CSShieldViewController__confirmAndTeardown__block_invoke;
  v3[3] = &unk_278E0B398;
  objc_copyWeak(&v4, &location);
  [(CSShieldViewController *)self _presentConfirmationCardType:1 completion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __45__CSShieldViewController__confirmAndTeardown__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _teardown];
  }
}

- (void)_presentOnboardingCardIfNeeded
{
  v3 = +[CSShieldManager sharedManager];
  sessionState = [v3 sessionState];

  if (sessionState)
  {
    v5 = +[CSShieldManager sharedManager];
    hasDisplayedOnboarding = [v5 hasDisplayedOnboarding];

    if (hasDisplayedOnboarding)
    {
      v7 = ContinuitySingLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v20 = "[CSShieldViewController _presentOnboardingCardIfNeeded]";
        v8 = "%s: Onboarding was already presented.";
LABEL_10:
        _os_log_impl(&dword_2441FB000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
      }
    }

    else
    {
      v9 = +[CSShieldManager sharedManager];
      [v9 setDisplayedOnboarding:1];

      v10 = +[CSShieldManager sharedManager];
      sessionState2 = [v10 sessionState];
      participants = [sessionState2 participants];
      v13 = [participants count];

      if (v13 < 2)
      {
        objc_initWeak(buf, self);
        v14 = [CSOnboardingCardViewController alloc];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __56__CSShieldViewController__presentOnboardingCardIfNeeded__block_invoke;
        v17[3] = &unk_278E0B840;
        objc_copyWeak(&v18, buf);
        v15 = [(CSOnboardingCardViewController *)v14 initWithCompletion:v17];
        v16 = [(CSShieldViewController *)self presentProxCardFlowWithDelegate:self initialViewController:v15];

        objc_destroyWeak(&v18);
        objc_destroyWeak(buf);
        goto LABEL_12;
      }

      v7 = ContinuitySingLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v20 = "[CSShieldViewController _presentOnboardingCardIfNeeded]";
        v8 = "%s: Device isn't the only mic. Ditching onboarding.";
        goto LABEL_10;
      }
    }
  }

  else
  {
    v7 = ContinuitySingLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[CSShieldViewController _presentOnboardingCardIfNeeded]";
      v8 = "%s: Cannot present onboarding without sessionState. Skipping onboarding for now.";
      goto LABEL_10;
    }
  }

LABEL_12:
}

void __56__CSShieldViewController__presentOnboardingCardIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = ContinuitySingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSShieldViewController _presentOnboardingCardIfNeeded]_block_invoke";
    v9 = 2048;
    v10 = a2;
    _os_log_impl(&dword_2441FB000, v4, OS_LOG_TYPE_DEFAULT, "%s: Onboarding action:%zu", &v7, 0x16u);
  }

  if (a2 == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _presentHelpCard];
  }

  else
  {
    if (a2)
    {
      return;
    }

    WeakRetained = +[CSShieldManager sharedManager];
    v6 = [WeakRetained requestClient];
    [v6 sendStartSingingEvent];
  }
}

- (void)_presentHelpCard
{
  v3 = [CSHelpPanelViewController alloc];
  v4 = +[CSShieldManager sharedManager];
  requestClient = [v4 requestClient];
  v10 = [(CSHelpPanelViewController *)v3 initWithRequestClient:requestClient];

  v6 = [objc_alloc(MEMORY[0x277D75798]) initWithRootViewController:v10];
  sheetPresentationController = [v6 sheetPresentationController];
  v8 = sheetPresentationController;
  if (sheetPresentationController)
  {
    traitOverrides = [sheetPresentationController traitOverrides];
    [traitOverrides setUserInterfaceStyle:2];

    [v8 setPrefersGrabberVisible:1];
  }

  [(CSShieldViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)_presentConfirmationCardType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  v7 = ContinuitySingLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[CSShieldViewController _presentConfirmationCardType:completion:]";
    v20 = 2112;
    selfCopy = self;
    v22 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_2441FB000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@ Presenting confirmation card for type:%zu", buf, 0x20u);
  }

  v8 = [CSConfirmMicCardViewController alloc];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __66__CSShieldViewController__presentConfirmationCardType_completion___block_invoke;
  v15 = &unk_278E0B970;
  v16 = completionCopy;
  typeCopy2 = type;
  v9 = completionCopy;
  v10 = [(CSConfirmMicCardViewController *)v8 initWithType:type confirmationHandler:&v12];
  v11 = [(CSShieldViewController *)self presentProxCardFlowWithDelegate:self initialViewController:v10, v12, v13, v14, v15];
}

uint64_t __66__CSShieldViewController__presentConfirmationCardType_completion___block_invoke(uint64_t a1, int a2)
{
  v4 = ContinuitySingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7 = 136315650;
    v8 = "[CSShieldViewController _presentConfirmationCardType:completion:]_block_invoke";
    v9 = 1024;
    v10 = a2;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_2441FB000, v4, OS_LOG_TYPE_DEFAULT, "%s: Confirmation flow accepted:%d for type:%zu", &v7, 0x1Cu);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)mediaPicker:(id)picker didPickMediaItems:(id)items
{
  itemsCopy = items;
  v6 = ContinuitySingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v24 = "[CSShieldViewController mediaPicker:didPickMediaItems:]";
    v25 = 2112;
    selfCopy = self;
    v27 = 2080;
    v28 = "[CSShieldViewController mediaPicker:didPickMediaItems:]";
    v29 = 2112;
    v30 = itemsCopy;
    _os_log_impl(&dword_2441FB000, v6, OS_LOG_TYPE_DEFAULT, "%s: %@ %s %@", buf, 0x2Au);
  }

  [(CSShieldViewController *)self dismissViewControllerAnimated:1 completion:0];
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [itemsCopy items];
  v8 = [obj countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = -[CSShieldViewController identifierSetForPersistentID:mediaItem:](self, "identifierSetForPersistentID:mediaItem:", [v12 persistentID], v12);
        v14 = objc_alloc(MEMORY[0x277CD5F60]);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __56__CSShieldViewController_mediaPicker_didPickMediaItems___block_invoke;
        v17[3] = &unk_278E0B998;
        v17[4] = v12;
        v15 = [v14 initWithIdentifiers:v13 block:v17];
        [array addObject:v15];
      }

      v9 = [obj countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v9);
  }

  [(CSShieldViewController *)self insertSongs:array];
}

void __56__CSShieldViewController_mediaPicker_didPickMediaItems___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setHasVideo:0];
  v3 = [*(a1 + 32) title];
  [v4 setTitle:v3];

  [v4 setTrackNumber:{objc_msgSend(*(a1 + 32), "albumTrackNumber")}];
  [v4 setTrackCount:{objc_msgSend(*(a1 + 32), "albumTrackCount")}];
}

- (id)identifierSetForPersistentID:(int64_t)d mediaItem:(id)item
{
  itemCopy = item;
  v6 = objc_alloc(MEMORY[0x277CD5DA8]);
  v7 = [MEMORY[0x277CD5F60] kindWithVariants:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__CSShieldViewController_identifierSetForPersistentID_mediaItem___block_invoke;
  v11[3] = &unk_278E0BA28;
  v12 = itemCopy;
  dCopy = d;
  v8 = itemCopy;
  v9 = [v6 initWithSource:@"ContinuitySingShieldPicker" modelKind:v7 block:v11];

  return v9;
}

void __65__CSShieldViewController_identifierSetForPersistentID_mediaItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CD5E08] defaultMediaLibrary];
  v5 = [v4 uniqueIdentifier];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__CSShieldViewController_identifierSetForPersistentID_mediaItem___block_invoke_2;
  v15[3] = &__block_descriptor_40_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v15[4] = *(a1 + 40);
  [v3 setLibraryIdentifiersWithDatabaseID:v5 block:v15];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __65__CSShieldViewController_identifierSetForPersistentID_mediaItem___block_invoke_3;
  v13 = &unk_278E0B9E0;
  v14 = *(a1 + 32);
  [v3 setUniversalStoreIdentifiersWithBlock:&v10];
  v6 = [MEMORY[0x277D7FCA8] defaultIdentityStore];
  v7 = [MEMORY[0x277D7FCA0] activeAccount];
  v8 = [v6 DSIDForUserIdentity:v7 outError:0];
  v9 = [v8 stringValue];

  if (v9)
  {
    [v3 setPersonalStoreIdentifiersWithPersonID:v9 block:&__block_literal_global_200];
  }
}

void __65__CSShieldViewController_identifierSetForPersistentID_mediaItem___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x277CD5880];
  v5 = a2;
  v6 = [v3 valueForProperty:v4];
  [v5 setAdamID:{objc_msgSend(v6, "longLongValue")}];

  v7 = [*(a1 + 32) valueForProperty:*MEMORY[0x277CD5868]];
  [v5 setUniversalCloudLibraryID:v7];

  v8 = [*(a1 + 32) valueForProperty:*MEMORY[0x277CD58A8]];
  [v5 setSubscriptionAdamID:{objc_msgSend(v8, "longLongValue")}];
}

- (void)shieldManagerDidFinishLoading:(id)loading withPlaybackManager:(id)manager
{
  loadingCopy = loading;
  v6 = ContinuitySingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[CSShieldViewController shieldManagerDidFinishLoading:withPlaybackManager:]";
    v10 = 2112;
    selfCopy = self;
    v12 = 2080;
    v13 = "[CSShieldViewController shieldManagerDidFinishLoading:withPlaybackManager:]";
    _os_log_impl(&dword_2441FB000, v6, OS_LOG_TYPE_DEFAULT, "%s: %@ %s", &v8, 0x20u);
  }

  [(CSShieldViewController *)self _endLoadingScreen];
  sessionState = [loadingCopy sessionState];

  [(CSShieldViewController *)self _updateWithState:sessionState];
}

- (void)shieldManagerDidReceiveDisconnectRequest:(id)request
{
  v4 = ContinuitySingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "[CSShieldViewController shieldManagerDidReceiveDisconnectRequest:]";
    v7 = 2112;
    selfCopy = self;
    v9 = 2080;
    v10 = "[CSShieldViewController shieldManagerDidReceiveDisconnectRequest:]";
    _os_log_impl(&dword_2441FB000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@ %s", &v5, 0x20u);
  }

  [(CSShieldViewController *)self _teardown];
}

- (void)shieldManager:(id)manager didUpdateSessionState:(id)state
{
  stateCopy = state;
  v6 = ContinuitySingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[CSShieldViewController shieldManager:didUpdateSessionState:]";
    v9 = 2112;
    selfCopy = self;
    v11 = 2080;
    v12 = "[CSShieldViewController shieldManager:didUpdateSessionState:]";
    _os_log_impl(&dword_2441FB000, v6, OS_LOG_TYPE_DEFAULT, "%s: %@ %s", &v7, 0x20u);
  }

  [(CSShieldViewController *)self _updateWithState:stateCopy];
}

- (void)playbackManager:(id)manager didUpdateState:(id)state
{
  stateCopy = state;
  v6 = ContinuitySingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[CSShieldViewController playbackManager:didUpdateState:]";
    v9 = 2112;
    selfCopy = self;
    v11 = 2080;
    v12 = "[CSShieldViewController playbackManager:didUpdateState:]";
    _os_log_impl(&dword_2441FB000, v6, OS_LOG_TYPE_DEFAULT, "%s: %@ %s", &v7, 0x20u);
  }

  [(CSShieldViewController *)self _updateMiniPlayerState:stateCopy];
  [(CSShieldViewController *)self _updateVocalAttenuationButtonActiveState];
  [(CSShieldViewController *)self _updateVocalAttenuationButtonLevel];
}

- (void)textViewDidChange:(id)change
{
  text = [change text];
  if ([text length])
  {
    [(CSShieldViewController *)self _showReactionSendingAnimation:text at:self->_emojiMoreButton];
    v4 = +[CSShieldManager sharedManager];
    requestClient = [v4 requestClient];
    [requestClient sendReaction:text];

    [(CSShieldViewController *)self _dismissEmojiKeyboard];
  }
}

- (void)_dismissEmojiKeyboard
{
  [(UITextView *)self->_emojiPickerTextView resignFirstResponder];
  [(UITextView *)self->_emojiPickerTextView removeFromSuperview];
  emojiPickerTextView = self->_emojiPickerTextView;
  self->_emojiPickerTextView = 0;

  [(CSHapticsPlayer *)self->_hapticsPlayer playButtonFeedback];
  emojiTapToDismissGestureRecognizer = self->_emojiTapToDismissGestureRecognizer;

  [(UITapGestureRecognizer *)emojiTapToDismissGestureRecognizer setEnabled:0];
}

- (void)connectionManager:(id)manager didUpdatePresentationError:(id)error
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CSShieldViewController_connectionManager_didUpdatePresentationError___block_invoke;
  block[3] = &unk_278E0ACD8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)connectionManager:(id)manager didRequestTeardownShieldWithError:(id)error
{
  v5 = ContinuitySingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[CSShieldViewController connectionManager:didRequestTeardownShieldWithError:]";
    v8 = 2112;
    selfCopy = self;
    v10 = 2080;
    v11 = "[CSShieldViewController connectionManager:didRequestTeardownShieldWithError:]";
    _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@ %s", &v6, 0x20u);
  }

  (*(self->_disconnectHandler + 2))();
}

- (void)clearAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__CSShieldViewController_clearAlertWithCompletion___block_invoke;
  v6[3] = &unk_278E0AF88;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __51__CSShieldViewController_clearAlertWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1192);
  *(v2 + 1192) = 0;

  v4 = +[CSShieldConnectionManager sharedManager];
  [v4 clearError];

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

- (void)_presentErrorAlertIfNeeded
{
  v3 = +[CSShieldConnectionManager sharedManager];
  presentationErrorDetails = [v3 presentationErrorDetails];

  v5 = ContinuitySingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    errorCode = [presentationErrorDetails errorCode];
    v7 = self->_alertController != 0;
    v11 = 136316162;
    v12 = "[CSShieldViewController _presentErrorAlertIfNeeded]";
    v13 = 2112;
    selfCopy = self;
    v15 = 2080;
    v16 = "[CSShieldViewController _presentErrorAlertIfNeeded]";
    v17 = 2048;
    v18 = errorCode;
    v19 = 1024;
    v20 = v7;
    _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@ %s %zu isShowingAlert:%d", &v11, 0x30u);
  }

  if (presentationErrorDetails && !self->_alertController)
  {
    if ([presentationErrorDetails exitSession])
    {
      v8 = +[CSShieldManager sharedManager];
      [v8 exitSingSession];
    }

    if ([presentationErrorDetails shouldShowInternalErrorDetails])
    {
      [(CSShieldViewController *)self _showInternalErrorAlert:presentationErrorDetails];
    }

    else
    {
      switch([presentationErrorDetails errorCode])
      {
        case -117:
          [(CSShieldViewController *)self _presentContinuityCameraDisabledError];
          break;
        case -116:
          [(CSShieldViewController *)self _teardown];
          break;
        case -112:
          [(CSShieldViewController *)self _presentAccountError];
          break;
        case -111:
        case -106:
        case -102:
          [(CSShieldViewController *)self _presentPairingError];
          break;
        case -110:
          [(CSShieldViewController *)self _handleMusicProfileUpdateNeeded];
          break;
        case -109:
          [(CSShieldViewController *)self _presentEndpointDisconnectedError];
          break;
        case -108:
          selfCopy3 = self;
          v10 = 0;
          goto LABEL_19;
        case -107:
          selfCopy3 = self;
          v10 = 1;
LABEL_19:
          [(CSShieldViewController *)selfCopy3 _presentVersionMismatchError:v10];
          break;
        case -105:
          [(CSShieldViewController *)self _handleInvalidMusicAccountError];
          break;
        case -104:
          [(CSShieldViewController *)self _presentErrorRequestingGroupSession];
          break;
        case -103:
          [(CSShieldViewController *)self _showMusicUpsell];
          break;
        default:
          break;
      }
    }
  }
}

- (void)_presentPairingError
{
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v25 = "[CSShieldViewController _presentPairingError]";
    v26 = 2112;
    selfCopy = self;
    v28 = 2080;
    v29 = "[CSShieldViewController _presentPairingError]";
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@ %s", buf, 0x20u);
  }

  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v5 = [v4 localizedStringForKey:@"ERROR_ALERT_TITLE" value:&stru_285797E10 table:0];

  LODWORD(v4) = MGGetBoolAnswer();
  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v7 = v6;
  if (v4)
  {
    v8 = @"ERROR_ALERT_WLAN_MESSAGE";
  }

  else
  {
    v8 = @"ERROR_ALERT_WIFI_MESSAGE";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_285797E10 table:0];

  if (os_variant_has_internal_diagnostics())
  {
    v10 = WiFiCopyCurrentNetworkInfoEx();
    CFStringGetTypeID();
    v11 = CFDictionaryGetTypedValue();
    lowercaseString = [v11 lowercaseString];
    v13 = [lowercaseString containsString:@"applewifi"];

    if (v13)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n[INTERNAL ONLY]\nReminder: AppleWiFi is not supported.", v9];

      v9 = v14;
    }
  }

  v15 = [CSSecureAlertController alertControllerWithTitle:v5 message:v9 preferredStyle:1];
  _tryBootstrapAgainAction = [(CSShieldViewController *)self _tryBootstrapAgainAction];
  if (_tryBootstrapAgainAction)
  {
    [(UIAlertController *)v15 addAction:_tryBootstrapAgainAction];
  }

  v17 = MEMORY[0x277D75100];
  v18 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v19 = [v18 localizedStringForKey:@"ERROR_ALERT_CANCEL_ACTION" value:&stru_285797E10 table:0];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __46__CSShieldViewController__presentPairingError__block_invoke;
  v23[3] = &unk_278E0BA50;
  v23[4] = self;
  v20 = [v17 actionWithTitle:v19 style:1 handler:v23];

  [(UIAlertController *)v15 addAction:v20];
  [(CSShieldViewController *)self presentViewController:v15 animated:1 completion:0];
  alertController = self->_alertController;
  self->_alertController = v15;
  v22 = v15;
}

uint64_t __46__CSShieldViewController__presentPairingError__block_invoke(uint64_t a1)
{
  v2 = ContinuitySingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v8 = "[CSShieldViewController _presentPairingError]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2080;
    v12 = "[CSShieldViewController _presentPairingError]_block_invoke";
    _os_log_impl(&dword_2441FB000, v2, OS_LOG_TYPE_DEFAULT, "%s: %@ %s Teardown", buf, 0x20u);
  }

  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__CSShieldViewController__presentPairingError__block_invoke_230;
  v6[3] = &unk_278E0ACD8;
  v6[4] = v4;
  return [v4 clearAlertWithCompletion:v6];
}

- (void)_presentErrorRequestingGroupSession
{
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v18 = "[CSShieldViewController _presentErrorRequestingGroupSession]";
    v19 = 2112;
    selfCopy = self;
    v21 = 2080;
    v22 = "[CSShieldViewController _presentErrorRequestingGroupSession]";
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@ %s", buf, 0x20u);
  }

  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v5 = [v4 localizedStringForKey:@"GROUP_SESSION_REQUEST_ERROR_TITLE" value:&stru_285797E10 table:0];

  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v7 = [v6 localizedStringForKey:@"GROUP_SESSION_REQUEST_ERROR_MESSAGE" value:&stru_285797E10 table:0];

  v8 = [CSSecureAlertController alertControllerWithTitle:v5 message:v7 preferredStyle:1];
  _tryBootstrapAgainAction = [(CSShieldViewController *)self _tryBootstrapAgainAction];
  if (_tryBootstrapAgainAction)
  {
    [(UIAlertController *)v8 addAction:_tryBootstrapAgainAction];
  }

  v10 = MEMORY[0x277D75100];
  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v12 = [v11 localizedStringForKey:@"ERROR_ALERT_CANCEL_ACTION" value:&stru_285797E10 table:0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__CSShieldViewController__presentErrorRequestingGroupSession__block_invoke;
  v16[3] = &unk_278E0BA50;
  v16[4] = self;
  v13 = [v10 actionWithTitle:v12 style:1 handler:v16];

  [(UIAlertController *)v8 addAction:v13];
  [(CSShieldViewController *)self presentViewController:v8 animated:1 completion:0];
  alertController = self->_alertController;
  self->_alertController = v8;
  v15 = v8;
}

uint64_t __61__CSShieldViewController__presentErrorRequestingGroupSession__block_invoke(uint64_t a1)
{
  v2 = ContinuitySingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v8 = "[CSShieldViewController _presentErrorRequestingGroupSession]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2080;
    v12 = "[CSShieldViewController _presentErrorRequestingGroupSession]_block_invoke";
    _os_log_impl(&dword_2441FB000, v2, OS_LOG_TYPE_DEFAULT, "%s: %@ %s Teardown", buf, 0x20u);
  }

  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__CSShieldViewController__presentErrorRequestingGroupSession__block_invoke_238;
  v6[3] = &unk_278E0ACD8;
  v6[4] = v4;
  return [v4 clearAlertWithCompletion:v6];
}

- (void)_presentVersionMismatchError:(BOOL)error
{
  errorCopy = error;
  v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v6 = [v5 localizedStringForKey:@"VERSION_MISMATCH_ERROR_ALERT_TITLE" value:&stru_285797E10 table:0];

  v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v8 = v7;
  if (errorCopy)
  {
    v9 = @"VERSION_MISMATCH_ERROR_MESSAGE_UPDATE_IPHONE";
  }

  else
  {
    v9 = @"VERSION_MISMATCH_ERROR_MESSAGE_UPDATE_TV";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_285797E10 table:0];

  v11 = [CSSecureAlertController alertControllerWithTitle:v6 message:v10 preferredStyle:1];
  v12 = MEMORY[0x277D75100];
  v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v14 = [v13 localizedStringForKey:@"ERROR_ALERT_CANCEL_ACTION" value:&stru_285797E10 table:0];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __55__CSShieldViewController__presentVersionMismatchError___block_invoke;
  v18[3] = &unk_278E0BA50;
  v18[4] = self;
  v15 = [v12 actionWithTitle:v14 style:1 handler:v18];
  [(UIAlertController *)v11 addAction:v15];

  [(CSShieldViewController *)self presentViewController:v11 animated:1 completion:0];
  alertController = self->_alertController;
  self->_alertController = v11;
  v17 = v11;
}

uint64_t __55__CSShieldViewController__presentVersionMismatchError___block_invoke(uint64_t a1)
{
  v2 = ContinuitySingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v8 = "[CSShieldViewController _presentVersionMismatchError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2080;
    v12 = "[CSShieldViewController _presentVersionMismatchError:]_block_invoke";
    _os_log_impl(&dword_2441FB000, v2, OS_LOG_TYPE_DEFAULT, "%s: %@ %s Teardown", buf, 0x20u);
  }

  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__CSShieldViewController__presentVersionMismatchError___block_invoke_248;
  v6[3] = &unk_278E0ACD8;
  v6[4] = v4;
  return [v4 clearAlertWithCompletion:v6];
}

- (void)_showMusicUpsell
{
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v6 = "[CSShieldViewController _showMusicUpsell]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@ Music not installed, show alert", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__CSShieldViewController__showMusicUpsell__block_invoke;
  block[3] = &unk_278E0ACD8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __42__CSShieldViewController__showMusicUpsell__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v14 = [v2 localizedStringForKey:@"MUSIC_UPSELL_TITLE" value:&stru_285797E10 table:0];

  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v13 = [v3 localizedStringForKey:@"MUSIC_UPSELL_MESSAGE" value:&stru_285797E10 table:0];

  v4 = [CSSecureAlertController alertControllerWithTitle:v14 message:v13 preferredStyle:1];
  v5 = MEMORY[0x277D75100];
  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v7 = [v6 localizedStringForKey:@"MUSIC_UPSELL_ACTION" value:&stru_285797E10 table:0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__CSShieldViewController__showMusicUpsell__block_invoke_2;
  v16[3] = &unk_278E0BA50;
  v16[4] = *(a1 + 32);
  v8 = [v5 actionWithTitle:v7 style:0 handler:v16];

  v9 = MEMORY[0x277D75100];
  v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v11 = [v10 localizedStringForKey:@"ERROR_ALERT_CANCEL_ACTION" value:&stru_285797E10 table:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __42__CSShieldViewController__showMusicUpsell__block_invoke_4;
  v15[3] = &unk_278E0BA50;
  v15[4] = *(a1 + 32);
  v12 = [v9 actionWithTitle:v11 style:0 handler:v15];

  [v4 addAction:v8];
  [v4 addAction:v12];
  [*(a1 + 32) presentViewController:v4 animated:1 completion:0];
}

void __42__CSShieldViewController__showMusicUpsell__block_invoke_3()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"itms-apps://?bundleIdentifier=%@", @"com.apple.Music"];
  v1 = *MEMORY[0x277D0AC58];
  v5[0] = *MEMORY[0x277D0AC70];
  v5[1] = v1;
  v6[0] = MEMORY[0x277CBEC38];
  v6[1] = MEMORY[0x277CBEC38];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:v0];
  [v3 openURL:v4 withOptions:v2];
}

uint64_t __42__CSShieldViewController__showMusicUpsell__block_invoke_4(uint64_t a1)
{
  v2 = ContinuitySingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __42__CSShieldViewController__showMusicUpsell__block_invoke_4_cold_1(a1);
  }

  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__CSShieldViewController__showMusicUpsell__block_invoke_265;
  v5[3] = &unk_278E0ACD8;
  v5[4] = v3;
  return [v3 clearAlertWithCompletion:v5];
}

- (void)_handleInvalidMusicAccountError
{
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v23 = "[CSShieldViewController _handleInvalidMusicAccountError]";
    v24 = 2112;
    selfCopy = self;
    v26 = 2080;
    v27 = "[CSShieldViewController _handleInvalidMusicAccountError]";
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@ %s", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v5 = [v4 localizedStringForKey:@"MUSIC_PRIVACY_ERROR_TITLE" value:&stru_285797E10 table:0];

  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v7 = [v6 localizedStringForKey:@"MUSIC_PRIVACY_ERROR_MESSAGE" value:&stru_285797E10 table:0];

  v8 = [CSSecureAlertController alertControllerWithTitle:v5 message:v7 preferredStyle:1];
  v9 = MEMORY[0x277D75100];
  v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v11 = [v10 localizedStringForKey:@"MUSIC_ACCOUNT_ERROR_ACTION_LAUNCH_MUSIC" value:&stru_285797E10 table:0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57__CSShieldViewController__handleInvalidMusicAccountError__block_invoke;
  v20[3] = &unk_278E0BA78;
  objc_copyWeak(&v21, buf);
  v12 = [v9 actionWithTitle:v11 style:0 handler:v20];

  v13 = MEMORY[0x277D75100];
  v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v15 = [v14 localizedStringForKey:@"MUSIC_ACCOUNT_ERROR_ACTION_CANCEL" value:&stru_285797E10 table:0];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__CSShieldViewController__handleInvalidMusicAccountError__block_invoke_284;
  v18[3] = &unk_278E0BA78;
  objc_copyWeak(&v19, buf);
  v16 = [v13 actionWithTitle:v15 style:0 handler:v18];

  [(UIAlertController *)v8 addAction:v12];
  [(UIAlertController *)v8 addAction:v16];
  [(CSShieldViewController *)self presentViewController:v8 animated:1 completion:0];
  alertController = self->_alertController;
  self->_alertController = v8;

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);

  objc_destroyWeak(buf);
}

void __57__CSShieldViewController__handleInvalidMusicAccountError__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __57__CSShieldViewController__handleInvalidMusicAccountError__block_invoke_2;
    v3[3] = &unk_278E0ACD8;
    v3[4] = WeakRetained;
    [WeakRetained clearAlertWithCompletion:v3];
  }
}

void __57__CSShieldViewController__handleInvalidMusicAccountError__block_invoke_2(uint64_t a1)
{
  v2 = ContinuitySingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v15 = "[CSShieldViewController _handleInvalidMusicAccountError]_block_invoke_2";
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_2441FB000, v2, OS_LOG_TYPE_DEFAULT, "%s: %@ Launch Music requested", buf, 0x16u);
  }

  v4 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v4 setScheme:@"Music"];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"/%@", @"setupSing"];
  [v4 setPath:v5];

  v6 = MEMORY[0x277D0AD60];
  v7 = *MEMORY[0x277D0AC58];
  v12[0] = *MEMORY[0x277D0AC70];
  v12[1] = v7;
  v13[0] = MEMORY[0x277CBEC38];
  v13[1] = MEMORY[0x277CBEC38];
  v12[2] = *MEMORY[0x277D0AC40];
  v8 = [v4 URL];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v10 = [v6 optionsWithDictionary:v9];

  v11 = SBSCreateOpenApplicationService();
  [v11 openApplication:@"com.apple.Music" withOptions:v10 completion:&__block_literal_global_280];
}

void __57__CSShieldViewController__handleInvalidMusicAccountError__block_invoke_278(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = ContinuitySingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57__CSShieldViewController__handleInvalidMusicAccountError__block_invoke_278_cold_1();
    }
  }
}

void __57__CSShieldViewController__handleInvalidMusicAccountError__block_invoke_284(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = ContinuitySingLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __57__CSShieldViewController__handleInvalidMusicAccountError__block_invoke_284_cold_1();
    }

    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __57__CSShieldViewController__handleInvalidMusicAccountError__block_invoke_285;
    v3[3] = &unk_278E0ACD8;
    v3[4] = WeakRetained;
    [WeakRetained clearAlertWithCompletion:v3];
  }
}

- (void)_handleMusicProfileUpdateNeeded
{
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v35 = "[CSShieldViewController _handleMusicProfileUpdateNeeded]";
    v36 = 2112;
    selfCopy = self;
    v38 = 2080;
    v39 = "[CSShieldViewController _handleMusicProfileUpdateNeeded]";
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@ %s", buf, 0x20u);
  }

  v4 = +[CSShieldConnectionManager sharedManager];
  musicTokenURL = [v4 musicTokenURL];

  if (musicTokenURL)
  {
    objc_initWeak(buf, self);
    v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
    v7 = [v6 localizedStringForKey:@"MUSIC_ACCOUNT_ERROR_TITLE" value:&stru_285797E10 table:0];

    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
    v9 = [v8 localizedStringForKey:@"MUSIC_ACCOUNT_ERROR_MESSAGE" value:&stru_285797E10 table:0];

    v10 = [CSSecureAlertController alertControllerWithTitle:v7 message:v9 preferredStyle:1];
    v11 = MEMORY[0x277D75100];
    v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
    v13 = [v12 localizedStringForKey:@"MUSIC_ACCOUNT_ERROR_ACTION_LAUNCH_MUSIC" value:&stru_285797E10 table:0];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __57__CSShieldViewController__handleMusicProfileUpdateNeeded__block_invoke_2;
    v31[3] = &unk_278E0BAA0;
    objc_copyWeak(&v33, buf);
    v32 = musicTokenURL;
    v14 = [v11 actionWithTitle:v13 style:0 handler:v31];

    v15 = MEMORY[0x277D75100];
    v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
    v17 = [v16 localizedStringForKey:@"MUSIC_ACCOUNT_ERROR_ACTION_CANCEL" value:&stru_285797E10 table:0];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __57__CSShieldViewController__handleMusicProfileUpdateNeeded__block_invoke_294;
    v29[3] = &unk_278E0BA78;
    objc_copyWeak(&v30, buf);
    v18 = [v15 actionWithTitle:v17 style:0 handler:v29];

    [(UIAlertController *)v10 addAction:v14];
    [(UIAlertController *)v10 addAction:v18];
    [(CSShieldViewController *)self presentViewController:v10 animated:1 completion:0];
    alertController = self->_alertController;
    self->_alertController = v10;
    v20 = v10;

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v33);

    objc_destroyWeak(buf);
  }

  else
  {
    v21 = ContinuitySingLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(CSShieldViewController *)v21 _handleMusicProfileUpdateNeeded:v22];
    }

    [(CSShieldViewController *)self clearAlertWithCompletion:&__block_literal_global_287];
  }
}

void __57__CSShieldViewController__handleMusicProfileUpdateNeeded__block_invoke()
{
  v0 = [MEMORY[0x277CF6C50] sharedInstance];
  v1 = [v0 activeConfiguration];
  v3 = [v1 remoteDisplayIdentifier];

  v2 = +[CSShieldConnectionManager sharedManager];
  [v2 requestGroupSessionURL:v3];
}

void __57__CSShieldViewController__handleMusicProfileUpdateNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __57__CSShieldViewController__handleMusicProfileUpdateNeeded__block_invoke_3;
    v4[3] = &unk_278E0AD78;
    v4[4] = WeakRetained;
    v5 = *(a1 + 32);
    [v3 clearAlertWithCompletion:v4];
  }
}

void __57__CSShieldViewController__handleMusicProfileUpdateNeeded__block_invoke_3(uint64_t a1)
{
  v2 = ContinuitySingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v10 = "[CSShieldViewController _handleMusicProfileUpdateNeeded]_block_invoke_3";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2441FB000, v2, OS_LOG_TYPE_DEFAULT, "%s: %@ Launch Music requested", buf, 0x16u);
  }

  v4 = *MEMORY[0x277D0AC58];
  v7[0] = *MEMORY[0x277D0AC70];
  v7[1] = v4;
  v8[0] = MEMORY[0x277CBEC38];
  v8[1] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v6 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v6 openURL:*(a1 + 40) withOptions:v5];
}

void __57__CSShieldViewController__handleMusicProfileUpdateNeeded__block_invoke_294(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = ContinuitySingLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __57__CSShieldViewController__handleMusicProfileUpdateNeeded__block_invoke_294_cold_1();
    }

    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __57__CSShieldViewController__handleMusicProfileUpdateNeeded__block_invoke_295;
    v3[3] = &unk_278E0ACD8;
    v3[4] = WeakRetained;
    [WeakRetained clearAlertWithCompletion:v3];
  }
}

- (void)_presentEndpointDisconnectedError
{
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v18 = "[CSShieldViewController _presentEndpointDisconnectedError]";
    v19 = 2112;
    selfCopy = self;
    v21 = 2080;
    v22 = "[CSShieldViewController _presentEndpointDisconnectedError]";
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@ %s", buf, 0x20u);
  }

  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v5 = [v4 localizedStringForKey:@"CONNECTION_LOST_ERROR_ALERT_TITLE" value:&stru_285797E10 table:0];

  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v7 = [v6 localizedStringForKey:@"CONNECTION_LOST_ERROR_ALERT_MESSAGE" value:&stru_285797E10 table:0];

  v8 = [CSSecureAlertController alertControllerWithTitle:v5 message:v7 preferredStyle:1];
  _tryBootstrapAgainAction = [(CSShieldViewController *)self _tryBootstrapAgainAction];
  if (_tryBootstrapAgainAction)
  {
    [(UIAlertController *)v8 addAction:_tryBootstrapAgainAction];
  }

  v10 = MEMORY[0x277D75100];
  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v12 = [v11 localizedStringForKey:@"CONNECTION_LOST_ERROR_ALERT_CANCEL_ACTION" value:&stru_285797E10 table:0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__CSShieldViewController__presentEndpointDisconnectedError__block_invoke;
  v16[3] = &unk_278E0BA50;
  v16[4] = self;
  v13 = [v10 actionWithTitle:v12 style:1 handler:v16];

  [(UIAlertController *)v8 addAction:v13];
  [(CSShieldViewController *)self presentViewController:v8 animated:1 completion:0];
  alertController = self->_alertController;
  self->_alertController = v8;
  v15 = v8;
}

uint64_t __59__CSShieldViewController__presentEndpointDisconnectedError__block_invoke(uint64_t a1)
{
  v2 = ContinuitySingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v8 = "[CSShieldViewController _presentEndpointDisconnectedError]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2080;
    v12 = "[CSShieldViewController _presentEndpointDisconnectedError]_block_invoke";
    _os_log_impl(&dword_2441FB000, v2, OS_LOG_TYPE_DEFAULT, "%s: %@ %s Teardown", buf, 0x20u);
  }

  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__CSShieldViewController__presentEndpointDisconnectedError__block_invoke_305;
  v6[3] = &unk_278E0ACD8;
  v6[4] = v4;
  return [v4 clearAlertWithCompletion:v6];
}

- (id)_tryBootstrapAgainAction
{
  v3 = +[CSShieldConnectionManager sharedManager];
  singURL = [v3 singURL];

  if (singURL)
  {
    v5 = MEMORY[0x277D75100];
    v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
    v7 = [v6 localizedStringForKey:@"ERROR_ALERT_TRY_AGAIN_ACTION" value:&stru_285797E10 table:0];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __50__CSShieldViewController__tryBootstrapAgainAction__block_invoke;
    v18[3] = &unk_278E0BAC8;
    v18[4] = self;
    v19 = singURL;
    v8 = [v5 actionWithTitle:v7 style:0 handler:v18];
  }

  else
  {
    mEMORY[0x277CF6C50] = [MEMORY[0x277CF6C50] sharedInstance];
    activeConfiguration = [mEMORY[0x277CF6C50] activeConfiguration];
    remoteDisplayIdentifier = [activeConfiguration remoteDisplayIdentifier];

    if (remoteDisplayIdentifier)
    {
      v12 = MEMORY[0x277D75100];
      v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
      v14 = [v13 localizedStringForKey:@"ERROR_ALERT_TRY_AGAIN_ACTION" value:&stru_285797E10 table:0];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __50__CSShieldViewController__tryBootstrapAgainAction__block_invoke_2;
      v16[3] = &unk_278E0BAC8;
      v16[4] = self;
      v17 = remoteDisplayIdentifier;
      v8 = [v12 actionWithTitle:v14 style:0 handler:v16];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

void __50__CSShieldViewController__tryBootstrapAgainAction__block_invoke(uint64_t a1)
{
  v2 = ContinuitySingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 136315650;
    v9 = "[CSShieldViewController _tryBootstrapAgainAction]_block_invoke";
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_2441FB000, v2, OS_LOG_TYPE_DEFAULT, "%s: %@ Try again: %@", buf, 0x20u);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__CSShieldViewController__tryBootstrapAgainAction__block_invoke_309;
  v6[3] = &unk_278E0ACD8;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v5 clearAlertWithCompletion:v6];
}

void __50__CSShieldViewController__tryBootstrapAgainAction__block_invoke_309(uint64_t a1)
{
  v2 = +[CSShieldConnectionManager sharedManager];
  [v2 bootstrapFromSingQRCodeURL:*(a1 + 32)];
}

void __50__CSShieldViewController__tryBootstrapAgainAction__block_invoke_2(uint64_t a1)
{
  v2 = ContinuitySingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 136315650;
    v9 = "[CSShieldViewController _tryBootstrapAgainAction]_block_invoke_2";
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_2441FB000, v2, OS_LOG_TYPE_DEFAULT, "%s: %@ Try again from remote display again %@", buf, 0x20u);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__CSShieldViewController__tryBootstrapAgainAction__block_invoke_310;
  v6[3] = &unk_278E0ACD8;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v5 clearAlertWithCompletion:v6];
}

void __50__CSShieldViewController__tryBootstrapAgainAction__block_invoke_310(uint64_t a1)
{
  v2 = +[CSShieldConnectionManager sharedManager];
  [v2 bootstrapFromRemoteDisplayConnection:*(a1 + 32)];
}

- (void)_presentAccountError
{
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[CSShieldViewController _presentAccountError]";
    v18 = 2112;
    selfCopy = self;
    v20 = 2080;
    v21 = "[CSShieldViewController _presentAccountError]";
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@ %s", buf, 0x20u);
  }

  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v5 = [v4 localizedStringForKey:@"ERROR_ALERT_TITLE" value:&stru_285797E10 table:0];

  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v7 = [v6 localizedStringForKey:@"ACCOUNT_INVALID_ALERT_MESSAGE" value:&stru_285797E10 table:0];

  v8 = [CSSecureAlertController alertControllerWithTitle:v5 message:v7 preferredStyle:1];
  v9 = MEMORY[0x277D75100];
  v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v11 = [v10 localizedStringForKey:@"ACCOUNT_INVALID_ALERT_CANCEL_ACTION" value:&stru_285797E10 table:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__CSShieldViewController__presentAccountError__block_invoke;
  v15[3] = &unk_278E0BA50;
  v15[4] = self;
  v12 = [v9 actionWithTitle:v11 style:1 handler:v15];

  [(UIAlertController *)v8 addAction:v12];
  alertController = self->_alertController;
  self->_alertController = v8;
  v14 = v8;

  [(CSShieldViewController *)self presentViewController:v14 animated:1 completion:0];
}

uint64_t __46__CSShieldViewController__presentAccountError__block_invoke(uint64_t a1)
{
  v2 = ContinuitySingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v8 = "[CSShieldViewController _presentAccountError]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2080;
    v12 = "[CSShieldViewController _presentAccountError]_block_invoke";
    _os_log_impl(&dword_2441FB000, v2, OS_LOG_TYPE_DEFAULT, "%s: %@ %s Teardown", buf, 0x20u);
  }

  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__CSShieldViewController__presentAccountError__block_invoke_317;
  v6[3] = &unk_278E0ACD8;
  v6[4] = v4;
  return [v4 clearAlertWithCompletion:v6];
}

- (void)_presentContinuityCameraDisabledError
{
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v22 = "[CSShieldViewController _presentContinuityCameraDisabledError]";
    v23 = 2112;
    selfCopy = self;
    v25 = 2080;
    v26 = "[CSShieldViewController _presentContinuityCameraDisabledError]";
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@ %s", buf, 0x20u);
  }

  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v18 = [v4 localizedStringForKey:@"CONTINUITY_CAMERA_DISABLED_ALERT_TITLE" value:&stru_285797E10 table:0];

  v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v17 = [v5 localizedStringForKey:@"CONTINUITY_CAMERA_DISABLED_ALERT_MESSAGE" value:&stru_285797E10 table:0];

  v6 = [CSSecureAlertController alertControllerWithTitle:v18 message:v17 preferredStyle:1];
  v7 = MEMORY[0x277D75100];
  v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v9 = [v8 localizedStringForKey:@"CONTINUITY_CAMERA_DISABLED_ALERT_OPEN_SETTINGS_BUTTON" value:&stru_285797E10 table:0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __63__CSShieldViewController__presentContinuityCameraDisabledError__block_invoke;
  v20[3] = &unk_278E0BA50;
  v20[4] = self;
  v10 = [v7 actionWithTitle:v9 style:0 handler:v20];

  v11 = MEMORY[0x277D75100];
  v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v13 = [v12 localizedStringForKey:@"CONTINUITY_CAMERA_DISABLED_ALERT_CANCEL_BUTTON" value:&stru_285797E10 table:0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__CSShieldViewController__presentContinuityCameraDisabledError__block_invoke_334;
  v19[3] = &unk_278E0BA50;
  v19[4] = self;
  v14 = [v11 actionWithTitle:v13 style:1 handler:v19];

  [(UIAlertController *)v6 addAction:v10];
  [(UIAlertController *)v6 addAction:v14];
  [(CSShieldViewController *)self presentViewController:v6 animated:1 completion:0];
  alertController = self->_alertController;
  self->_alertController = v6;
  v16 = v6;
}

uint64_t __63__CSShieldViewController__presentContinuityCameraDisabledError__block_invoke(uint64_t a1)
{
  v2 = ContinuitySingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v8 = "[CSShieldViewController _presentContinuityCameraDisabledError]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2080;
    v12 = "[CSShieldViewController _presentContinuityCameraDisabledError]_block_invoke";
    _os_log_impl(&dword_2441FB000, v2, OS_LOG_TYPE_DEFAULT, "%s: %@ %s open settings", buf, 0x20u);
  }

  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__CSShieldViewController__presentContinuityCameraDisabledError__block_invoke_327;
  v6[3] = &unk_278E0ACD8;
  v6[4] = v4;
  return [v4 clearAlertWithCompletion:v6];
}

void __63__CSShieldViewController__presentContinuityCameraDisabledError__block_invoke_327(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General&path=CONTINUITY_SPEC"];
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v7 = 0;
  v4 = [v3 openSensitiveURL:v2 withOptions:0 error:&v7];
  v5 = v7;

  if ((v4 & 1) == 0)
  {
    v6 = ContinuitySingLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __63__CSShieldViewController__presentContinuityCameraDisabledError__block_invoke_327_cold_1();
    }
  }

  [*(a1 + 32) _teardown];
}

uint64_t __63__CSShieldViewController__presentContinuityCameraDisabledError__block_invoke_334(uint64_t a1)
{
  v2 = ContinuitySingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v8 = "[CSShieldViewController _presentContinuityCameraDisabledError]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2080;
    v12 = "[CSShieldViewController _presentContinuityCameraDisabledError]_block_invoke";
    _os_log_impl(&dword_2441FB000, v2, OS_LOG_TYPE_DEFAULT, "%s: %@ %s Teardown", buf, 0x20u);
  }

  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__CSShieldViewController__presentContinuityCameraDisabledError__block_invoke_335;
  v6[3] = &unk_278E0ACD8;
  v6[4] = v4;
  return [v4 clearAlertWithCompletion:v6];
}

- (void)_showInternalErrorAlert:(id)alert
{
  alertCopy = alert;
  v5 = MEMORY[0x277CCACA8];
  subsystemName = [alertCopy subsystemName];
  v7 = [v5 stringWithFormat:@"%@ Error %ld", subsystemName, objc_msgSend(alertCopy, "errorCode")];

  technicalDescription = [alertCopy technicalDescription];
  v9 = [CSSecureAlertController alertControllerWithTitle:v7 message:technicalDescription preferredStyle:1];
  v10 = MEMORY[0x277D75100];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __50__CSShieldViewController__showInternalErrorAlert___block_invoke;
  v18[3] = &unk_278E0BAC8;
  v11 = alertCopy;
  v19 = v11;
  selfCopy = self;
  v12 = [v10 actionWithTitle:@"Copy and Exit" style:0 handler:v18];
  [v9 addAction:v12];
  if (!-[CSShieldViewController _errorCodeShowsUserFacingAlert:](self, "_errorCodeShowsUserFacingAlert:", [v11 errorCode]))
  {
    v13 = MEMORY[0x277D75100];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __50__CSShieldViewController__showInternalErrorAlert___block_invoke_3;
    v15[3] = &unk_278E0BAC8;
    v16 = v11;
    selfCopy2 = self;
    v14 = [v13 actionWithTitle:@"Copy Only" style:0 handler:v15];
    [v9 addAction:v14];
  }

  [(CSShieldViewController *)self presentViewController:v9 animated:1 completion:0];
}

uint64_t __50__CSShieldViewController__showInternalErrorAlert___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75818] generalPasteboard];
  v3 = [*(a1 + 32) debugDescription];
  [v2 setString:v3];

  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__CSShieldViewController__showInternalErrorAlert___block_invoke_2;
  v6[3] = &unk_278E0ACD8;
  v6[4] = v4;
  return [v4 clearAlertWithCompletion:v6];
}

uint64_t __50__CSShieldViewController__showInternalErrorAlert___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277D75818] generalPasteboard];
  v3 = [*(a1 + 32) debugDescription];
  [v2 setString:v3];

  v4 = *(a1 + 40);

  return [v4 clearAlertWithCompletion:&__block_literal_global_347];
}

- (void)presentMusicPickerWithNotificationSender:(id)sender
{
  v5 = sub_244257868();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = _Block_copy(sender);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D2AE28], v5);
  selfCopy = self;
  sub_244257878();
  presentedViewController = [(CSShieldViewController *)selfCopy presentedViewController];
  if (!presentedViewController)
  {
    presentedViewController = selfCopy;
  }

  type metadata accessor for MusicPickerSheetContainerView();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_24424CF14;
  *(v14 + 24) = v11;

  sub_244237C00(presentedViewController, MEMORY[0x277D84F90], sub_24424D2DC, v14);
}

- (void)presentReactionPickerFrom:(id)from reactionSender:(id)sender
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = _Block_copy(sender);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  fromCopy = from;
  selfCopy = self;
  sub_24424C88C(fromCopy, sub_24424CEBC, v8);
}

void __62__CSShieldViewController_consumeSinglePressDownForButtonKind___block_invoke_2_cold_1(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v2, v3, "%s: Cannot increaseMicrophoneVolume due to error %@", v4, v5, v6, v7, 2u);
}

- (void)micControl:didRequestToTurnOffFromState:.cold.1()
{
  v0 = MEMORY[0x277CCABB0];
  v1 = [MEMORY[0x277CF6C50] sharedInstance];
  v2 = [v0 numberWithInteger:{objc_msgSend(v1, "uiState")}];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_5_0(&dword_2441FB000, v3, v4, "%s: %@ %s unhandled current state %@", v5, v6, v7, v8, 2u);
}

void __49__CSShieldViewController__activateEnableMicTimer__block_invoke_cold_1()
{
  v1[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v2 = 1024;
  v3 = 10;
  _os_log_error_impl(&dword_2441FB000, v0, OS_LOG_TYPE_ERROR, "%s: %@ enable mic timer timed out after %ds", v1, 0x1Cu);
}

void __42__CSShieldViewController__showMusicUpsell__block_invoke_4_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v2, v3, "%s: %@ Cancel pressed - tearing down", v4, v5, v6, v7, 2u);
}

@end