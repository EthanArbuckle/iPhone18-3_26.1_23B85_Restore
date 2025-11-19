@interface DTSCanvasViewController
+ (id)audioToggleOffImage;
+ (id)audioToggleOnImage;
- (BOOL)_canStartMessagePlaybackLoop;
- (BOOL)_isVisible;
- (BOOL)_shouldDimColorPicker;
- (BOOL)_shouldShowSkipButton;
- (BOOL)_usingDemoHook;
- (BOOL)canReplay;
- (BOOL)canShowReplayButton;
- (BOOL)dataSource:(id)a3 addDemoHookToMessage:(id *)a4;
- (BOOL)dataSourceViewIsMostlyVisible:(id)a3;
- (DTSCanvasViewController)init;
- (DTSCanvasViewControllerSendDelegate)sendDelegate;
- (ETBalloonPluginDataSource)dataSource;
- (double)_cornerButtonInset;
- (void)_applicationDidBecomeActive;
- (void)_applicationDidEnterBackground;
- (void)_applicationWillResignActive;
- (void)_audioToggleButtonTapped;
- (void)_cancelButtonTapped;
- (void)_clearComposeSessionEndTimer;
- (void)_composeSessionEndTimerFired;
- (void)_continueMessagePlaybackLoopWithDelay:(BOOL)a3;
- (void)_exportDemoHookMessage;
- (void)_hideVideoPlayer;
- (void)_playMessage:(id)a3;
- (void)_playNextMessage;
- (void)_relinquishAudio;
- (void)_reloadUnplayedMessages;
- (void)_schedulePlaybackOfCompositeMessageContent:(id)a3;
- (void)_sendAutosendingComposition;
- (void)_sendDemoHookMessage;
- (void)_setCachedMessageForReplay:(id)a3;
- (void)_setShowingReplayButton:(BOOL)a3;
- (void)_showDemoHookAlertWithTitle:(id)a3 message:(id)a4;
- (void)_skipButtonTapped;
- (void)_startComposeSessionEndTimer;
- (void)_startVideoPlayerWithMessage:(id)a3;
- (void)_stopPlaybackAnimated:(BOOL)a3;
- (void)_updateAudioOnOffButton;
- (void)_updateAudioOnOffButtonImage;
- (void)_updateCanvasInteractionEnabled;
- (void)_updateColorPickerEnabled;
- (void)_updatePlaybackControls;
- (void)_updateSkipButtonFrame;
- (void)_updateVideoPlayerUI;
- (void)_videoMessageDidFinishPlaying:(id)a3;
- (void)addUnplayedMessage:(id)a3;
- (void)canvasView:(id)a3 didBeginComposingMessageType:(unsigned __int16)a4;
- (void)canvasView:(id)a3 didBeginPlayingMessage:(id)a4;
- (void)canvasView:(id)a3 didEndComposingMessageType:(unsigned __int16)a4;
- (void)canvasView:(id)a3 didEndPlayingMessage:(id)a4;
- (void)canvasView:(id)a3 sendMessage:(id)a4;
- (void)canvasView:(id)a3 willEndPlayingMessage:(id)a4;
- (void)canvasViewWillReachComposingSizeLimit:(id)a3;
- (void)colorPickerSelectedColorDidChange:(id)a3;
- (void)colorPickerTapped:(id)a3;
- (void)dataSource:(id)a3 didUpdateAttachmentURL:(id)a4 forMessageWithIdentifier:(id)a5;
- (void)dataSource:(id)a3 startPlaybackWithCompletion:(id)a4;
- (void)dataSourceStopPlayback:(id)a3;
- (void)replay;
- (void)setComposeDisabled:(BOOL)a3;
- (void)setComposingCompositeMessage:(BOOL)a3;
- (void)setDataSource:(id)a3;
- (void)setPlaybackEnabled:(BOOL)a3;
- (void)setPlayingCompositeMessage:(BOOL)a3;
- (void)setPlayingMessage:(id)a3;
- (void)setPlayingMessages:(BOOL)a3;
- (void)startMessagePlaybackLoop;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation DTSCanvasViewController

+ (id)audioToggleOnImage
{
  if (audioToggleOnImage_onceToken != -1)
  {
    +[DTSCanvasViewController audioToggleOnImage];
  }

  v3 = audioToggleOnImage_image;

  return v3;
}

void __45__DTSCanvasViewController_audioToggleOnImage__block_invoke()
{
  v0 = MEMORY[0x277D755B8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = [v0 imageNamed:@"AudioOn" inBundle:v3];
  v2 = audioToggleOnImage_image;
  audioToggleOnImage_image = v1;
}

+ (id)audioToggleOffImage
{
  if (audioToggleOffImage_onceToken != -1)
  {
    +[DTSCanvasViewController audioToggleOffImage];
  }

  v3 = audioToggleOffImage_image;

  return v3;
}

void __46__DTSCanvasViewController_audioToggleOffImage__block_invoke()
{
  v0 = MEMORY[0x277D755B8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = [v0 imageNamed:@"AudioOff" inBundle:v3];
  v2 = audioToggleOffImage_image;
  audioToggleOffImage_image = v1;
}

- (DTSCanvasViewController)init
{
  v30.receiver = self;
  v30.super_class = DTSCanvasViewController;
  v2 = [(DTSCanvasViewController *)&v30 init];
  if (v2)
  {
    v3 = objc_alloc_init(ETCanvasView);
    canvasView = v2->_canvasView;
    v2->_canvasView = v3;

    v5 = [MEMORY[0x277CBEB18] array];
    unplayedMessages = v2->_unplayedMessages;
    v2->_unplayedMessages = v5;

    [(DTSCanvasViewController *)v2 setComposingMessageType:0xFFFFLL];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [MEMORY[0x277D75220] buttonWithType:1];
    replayButton = v2->_replayButton;
    v2->_replayButton = v8;

    [(UIButton *)v2->_replayButton addTarget:v2 action:sel_replay forControlEvents:64];
    v10 = v2->_replayButton;
    v11 = [MEMORY[0x277D755B8] imageNamed:@"Replay" inBundle:v7];
    [(UIButton *)v10 setBackgroundImage:v11 forState:0];

    [(UIButton *)v2->_replayButton sizeToFit];
    [(UIButton *)v2->_replayButton setAlpha:0.0];
    LODWORD(v12) = -1093874483;
    [(UIButton *)v2->_replayButton setCharge:v12];
    v13 = [MEMORY[0x277D75220] buttonWithType:1];
    audioToggleButton = v2->_audioToggleButton;
    v2->_audioToggleButton = v13;

    v15 = v2->_audioToggleButton;
    v16 = +[DTSCanvasViewController audioToggleOffImage];
    [(UIButton *)v15 setBackgroundImage:v16 forState:0];

    [(UIButton *)v2->_audioToggleButton addTarget:v2 action:sel__audioToggleButtonTapped forControlEvents:64];
    LODWORD(v17) = -1093874483;
    [(UIButton *)v2->_audioToggleButton setCharge:v17];
    [(UIButton *)v2->_audioToggleButton setAlpha:0.0];
    [(UIButton *)v2->_audioToggleButton sizeToFit];
    v18 = [MEMORY[0x277D75220] buttonWithType:1];
    cancelButton = v2->_cancelButton;
    v2->_cancelButton = v18;

    [(UIButton *)v2->_cancelButton addTarget:v2 action:sel__cancelButtonTapped forControlEvents:64];
    v20 = v2->_cancelButton;
    v21 = [MEMORY[0x277D755B8] imageNamed:@"Cancel" inBundle:v7];
    [(UIButton *)v20 setBackgroundImage:v21 forState:0];

    [(UIButton *)v2->_cancelButton sizeToFit];
    [(UIButton *)v2->_cancelButton setAlpha:0.0];
    LODWORD(v22) = -1093874483;
    [(UIButton *)v2->_cancelButton setCharge:v22];
    v23 = [MEMORY[0x277D75220] buttonWithType:1];
    skipButton = v2->_skipButton;
    v2->_skipButton = v23;

    [(UIButton *)v2->_skipButton addTarget:v2 action:sel__skipButtonTapped forControlEvents:64];
    v25 = v2->_skipButton;
    v26 = [MEMORY[0x277D755B8] imageNamed:@"Skip" inBundle:v7];
    [(UIButton *)v25 setBackgroundImage:v26 forState:0];

    [(UIButton *)v2->_skipButton sizeToFit];
    [(UIButton *)v2->_skipButton setAlpha:0.0];
    LODWORD(v27) = -1093874483;
    [(UIButton *)v2->_skipButton setCharge:v27];
    v28 = v2;
  }

  return v2;
}

- (void)setDataSource:(id)a3
{
  objc_storeWeak(&self->_dataSource, a3);
  if (!a3)
  {
    [(DTSCanvasViewController *)self _sendAutosendingComposition];
    [(DTSCanvasViewController *)self setPlaybackEnabled:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained setDelegate:self];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = DTSCanvasViewController;
  [(DTSCanvasViewController *)&v9 viewDidLoad];
  v3 = [(DTSCanvasViewController *)self view];
  [v3 setAccessibilityIgnoresInvertColors:1];
  [v3 addSubview:self->_canvasView];
  [(ETCanvasView *)self->_canvasView setCanvasDelegate:self];
  v4 = [(DTSCanvasViewController *)self colorPicker];
  colorPicker = self->_colorPicker;
  self->_colorPicker = v4;

  v6 = self->_colorPicker;
  if (v6)
  {
    [(DTSColorPicker *)v6 setDelegate:self];
    [v3 addSubview:self->_colorPicker];
    canvasView = self->_canvasView;
    v8 = [(DTSColorPicker *)self->_colorPicker selectedColor];
    [(ETCanvasView *)canvasView setDrawingColor:v8];
  }

  [v3 insertSubview:self->_audioToggleButton above:self->_canvasView];
  [v3 addSubview:self->_cancelButton];
  [v3 addSubview:self->_skipButton];
}

- (void)viewDidAppear:(BOOL)a3
{
  if (!self->_ignoreAppearanceCallbacks)
  {
    v7.receiver = self;
    v7.super_class = DTSCanvasViewController;
    [(DTSCanvasViewController *)&v7 viewDidAppear:a3];
    if ([(DTSCanvasViewController *)self _canComposeAfterMediaPlayback])
    {
      v4 = [MEMORY[0x277D75128] sharedApplication];
      v5 = [v4 applicationState];

      if (!v5)
      {
        +[ETGLSketchRenderer warmupShaders];
      }
    }

    [(DTSCanvasViewController *)self setComposingMessageType:0xFFFFLL];
    if (!self->_autoPlayOnAppearanceDisabled && ![(DTSCanvasViewController *)self usesCompactKeyboardLayout])
    {
      [(DTSCanvasViewController *)self setPlaybackEnabled:1];
      [(DTSCanvasViewController *)self startMessagePlaybackLoop];
    }

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:self selector:sel__applicationWillResignActive name:*MEMORY[0x277D76768] object:0];
    [v6 addObserver:self selector:sel__applicationDidBecomeActive name:*MEMORY[0x277D76648] object:0];
    [v6 addObserver:self selector:sel__applicationDidEnterBackground name:*MEMORY[0x277D76660] object:0];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  if (!self->_ignoreAppearanceCallbacks)
  {
    v5.receiver = self;
    v5.super_class = DTSCanvasViewController;
    [(DTSCanvasViewController *)&v5 viewWillDisappear:a3];
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self];

    [(DTSCanvasViewController *)self setPlaybackEnabled:0];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = DTSCanvasViewController;
  [(DTSCanvasViewController *)&v4 viewDidDisappear:a3];
  [(DTSCanvasViewController *)self _sendAutosendingComposition];
  [(ETCanvasView *)self->_canvasView clearCanvasAnimated:0];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = DTSCanvasViewController;
  [(DTSCanvasViewController *)&v5 viewWillLayoutSubviews];
  v3 = [(DTSCanvasViewController *)self canvasView];
  v4 = [(DTSCanvasViewController *)self view];
  [v4 bounds];
  [v3 setFrame:?];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = DTSCanvasViewController;
  [(DTSCanvasViewController *)&v3 viewDidLayoutSubviews];
  [(DTSCanvasViewController *)self _updateVideoPlayerUI];
}

- (void)_updateVideoPlayerUI
{
  [(DTSCanvasViewController *)self _updatePlaybackControls];

  [(DTSCanvasViewController *)self _updateAudioOnOffButton];
}

- (BOOL)_shouldShowSkipButton
{
  if (!self->_playingMessages || self->_composingCompositeMessage || self->_playingCompositeMessage)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained sessionHasMultipleMessages];

  return v4;
}

- (double)_cornerButtonInset
{
  v2 = [(ETCanvasView *)self->_canvasView layer];
  [v2 cornerRadius];
  v4 = v3 * 0.5;

  return v4;
}

- (void)_updateSkipButtonFrame
{
  skipButton = self->_skipButton;
  v4 = [(DTSCanvasViewController *)self _cancelButton];
  [v4 frame];
  [(UIButton *)skipButton setFrame:?];

  v5 = self->_skipButton;
  [(DTSColorPicker *)self->_colorPicker center];

  [(UIButton *)v5 setCenter:?];
}

- (void)_updatePlaybackControls
{
  [(ETCanvasView *)self->_canvasView frame];
  v4 = v3;
  v6 = v5;
  v18 = [(DTSCanvasViewController *)self _cancelButton];
  [v18 frame];
  v8 = v7;
  v10 = v9;
  [(DTSCanvasViewController *)self _cornerButtonInset];
  v12 = v4 + v11;
  [(DTSCanvasViewController *)self _cornerButtonInset];
  [v18 setFrame:{v12, v6 + v13, v8, v10}];
  v14 = [(DTSCanvasViewController *)self _shouldShowCancelButton];
  v15 = [(ETCanvasView *)self->_canvasView usesMediaAppearance];
  v16 = 0.4;
  if (v15)
  {
    v16 = 1.0;
  }

  if (!v14)
  {
    v16 = 0.0;
  }

  [v18 setAlpha:v16];
  [(UIButton *)self->_skipButton setAlpha:[(DTSCanvasViewController *)self _shouldShowSkipButton]];
  [(DTSCanvasViewController *)self _updateSkipButtonFrame];
  v17 = [(DTSCanvasViewController *)self _replayButton];
  [v17 setEnabled:{-[DTSCanvasViewController canReplay](self, "canReplay")}];

  [(DTSCanvasViewController *)self _setShowingReplayButton:[(DTSCanvasViewController *)self canShowReplayButton]];
}

- (void)_updateAudioOnOffButton
{
  [(ETCanvasView *)self->_canvasView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIButton *)self->_audioToggleButton frame];
  v12 = v11;
  v14 = v13;
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  v15 = CGRectGetMaxX(v25) - v12;
  [(DTSCanvasViewController *)self _rightButtonInset];
  v17 = v15 - v16;
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  MinY = CGRectGetMinY(v26);
  [(DTSCanvasViewController *)self _cornerButtonInset];
  [(UIButton *)self->_audioToggleButton setFrame:v17, MinY + v19, v12, v14];
  if (self->_composingCompositeMessage || !self->_videoPlayer)
  {
    v20 = 0;
    v21 = 0;
  }

  else
  {
    [(DTSCanvasViewController *)self _updateAudioOnOffButtonImage];
    v20 = 1;
    v21 = 1;
  }

  [(UIButton *)self->_audioToggleButton alpha];
  if (((v21 ^ (v22 == 0.0)) & 1) == 0)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __50__DTSCanvasViewController__updateAudioOnOffButton__block_invoke;
    v23[3] = &unk_278F7A6E8;
    v23[4] = self;
    v24 = v20;
    [MEMORY[0x277D75D18] animateWithDuration:v23 animations:0.25];
  }
}

- (void)_updateAudioOnOffButtonImage
{
  videoPlayer = self->_videoPlayer;
  if (videoPlayer && ![(AVPlayer *)videoPlayer isMuted])
  {
    v4 = +[DTSCanvasViewController audioToggleOnImage];
  }

  else
  {
    v4 = +[DTSCanvasViewController audioToggleOffImage];
  }

  v5 = v4;
  [(UIButton *)self->_audioToggleButton setBackgroundImage:v4 forState:0];
}

- (void)_relinquishAudio
{
  v2 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v2, &__block_literal_global_104);
}

void __43__DTSCanvasViewController__relinquishAudio__block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CB83F8] sharedInstance];
  v3 = 0;
  [v0 setActive:0 withOptions:1 error:&v3];
  v1 = v3;

  if (v1 && IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v5 = v1;
      _os_log_impl(&dword_248D00000, v2, OS_LOG_TYPE_INFO, "Failed to deactivate audio and notify others of deactivation with error: %@", buf, 0xCu);
    }
  }
}

- (void)_audioToggleButtonTapped
{
  v3 = [(AVPlayer *)self->_videoPlayer isMuted];
  [(AVPlayer *)self->_videoPlayer setMuted:!v3];
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:!v3];
  [v4 setValue:v5 forKey:@"ETVideoAudioOffPreference"];

  [(DTSCanvasViewController *)self _updateAudioOnOffButtonImage];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__DTSCanvasViewController__audioToggleButtonTapped__block_invoke;
  block[3] = &unk_278F79ED0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __51__DTSCanvasViewController__audioToggleButtonTapped__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 1040) isMuted];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _relinquishAudio];
  }

  return result;
}

- (void)_applicationWillResignActive
{
  [(DTSCanvasViewController *)self _sendAutosendingComposition];
  canvasView = self->_canvasView;

  [(ETCanvasView *)canvasView setPaused:1];
}

- (void)_sendAutosendingComposition
{
  if ([(ETCanvasView *)self->_canvasView isComposing]&& [(DTSCanvasViewController *)self _shouldAutoSend])
  {
    canvasView = self->_canvasView;

    [(ETCanvasView *)canvasView sendCurrentMessage];
  }
}

- (void)_applicationDidBecomeActive
{
  v2 = [(DTSCanvasViewController *)self canvasView];
  [v2 setAlwaysPaused:0];
}

- (void)_applicationDidEnterBackground
{
  [(DTSCanvasViewController *)self setPlaybackEnabled:0];
  [(ETCanvasView *)self->_canvasView setAlwaysPaused:1];
  [(ETCanvasView *)self->_canvasView setPaused:1];
  [(DTSCanvasViewController *)self _sendAutosendingComposition];
  canvasView = self->_canvasView;

  [(ETCanvasView *)canvasView clearCanvasAnimated:0];
}

- (void)addUnplayedMessage:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = IMOSLoggingEnabled();
  if (v4)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [v4 identifier];
        v8 = [(NSMutableArray *)self->_unplayedMessages count];
        v10 = 138412546;
        v11 = v7;
        v12 = 2048;
        v13 = v8;
        _os_log_impl(&dword_248D00000, v6, OS_LOG_TYPE_INFO, "Adding to session unplayed message ID: %@, total count: %lu", &v10, 0x16u);
      }
    }

    [(NSMutableArray *)self->_unplayedMessages addObject:v4];
    [(DTSCanvasViewController *)self startMessagePlaybackLoop];
  }

  else if (v5)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_248D00000, v9, OS_LOG_TYPE_INFO, "Not adding nil message", &v10, 2u);
    }
  }
}

- (void)replay
{
  if (self->_playingCompositeMessage)
  {
    messageForReplay = self->_messageForReplay;

    [(DTSCanvasViewController *)self setPlayingMessage:messageForReplay];
  }

  else
  {
    [(DTSCanvasViewController *)self _reloadUnplayedMessages];

    [(DTSCanvasViewController *)self startMessagePlaybackLoop];
  }
}

- (BOOL)canReplay
{
  if (self->_messageForReplay && !self->_isPlayingMessage)
  {
    v4 = [(DTSCanvasViewController *)self canvasView];
    if ([v4 isComposing])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v3 = ![(DTSCanvasViewController *)self isPlayingMessages];
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_setCachedMessageForReplay:(id)a3
{
  v4 = a3;
  [(ETMessage *)self->_messageForReplay wispChildren];
  messageForReplay = self->_messageForReplay;
  self->_messageForReplay = v4;

  [(DTSCanvasViewController *)self _updatePlaybackControls];
}

- (void)setComposingCompositeMessage:(BOOL)a3
{
  if (self->_composingCompositeMessage != a3)
  {
    self->_composingCompositeMessage = a3;
    if (!a3)
    {
      v4 = [(DTSCanvasViewController *)self canvasView];
      [v4 endMessageComposition];
      [v4 clearCanvasAnimated:0];
      [(NSMutableArray *)self->_unplayedMessages removeAllObjects];
      [(ETMessage *)self->_playingMessage stopPlaying];
      [(DTSCanvasViewController *)self _hideVideoPlayer];
      [(ETCanvasView *)self->_canvasView hidePhoto];
      [(DTSCanvasViewController *)self _updateColorPickerEnabled];
      [(DTSCanvasViewController *)self _updatePlaybackControls];
      [(DTSCanvasViewController *)self updateVideoUI];
      [(DTSCanvasViewController *)self _setCachedMessageForReplay:0];
    }
  }
}

- (void)setPlayingMessage:(id)a3
{
  v4 = a3;
  [v4 setMissedDuringPlayback:0];
  [(DTSCanvasViewController *)self _setCachedMessageForReplay:v4];
  if (!v4 || [v4 messageType] != 8)
  {
    [(DTSCanvasViewController *)self _hideVideoPlayer];
    v5 = 0;
LABEL_8:
    [(ETCanvasView *)self->_canvasView hidePhoto];
    goto LABEL_9;
  }

  if ([v4 mediaType] != 1)
  {
    [(DTSCanvasViewController *)self _hideVideoPlayer];
  }

  v5 = 1;
  if ([v4 mediaType] != 2)
  {
    goto LABEL_8;
  }

LABEL_9:
  v6 = [(DTSCanvasViewController *)self canvasView];
  [v6 setUsesMediaAppearance:v5];
  if (v5)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  [v6 setParentMessage:v7];
  if (v4)
  {
    [(DTSCanvasViewController *)self _playMessage:v4];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__DTSCanvasViewController_setPlayingMessage___block_invoke;
  v8[3] = &unk_278F79ED0;
  v8[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v8];
}

- (void)_playMessage:(id)a3
{
  v5 = a3;
  if (self->_playingMessage != v5 && self->_playbackEnabled && [(DTSCanvasViewController *)self _isVisible])
  {
    [(ETMessage *)v5 setMissedDuringPlayback:0];
    if ([(ETMessage *)v5 messageType]== 8)
    {
      [(DTSCanvasViewController *)self setPlayingCompositeMessage:1];
      [(DTSCanvasViewController *)self _setCachedMessageForReplay:v5];
    }

    objc_storeStrong(&self->_playingMessage, a3);
    if (self->_playingMessage)
    {
      if ([(DTSCanvasViewController *)self _isVisible])
      {
        if (!self->_isPlayingMessage || (messageForReplay = self->_messageForReplay, [(ETMessage *)v5 parentMessage], v7 = objc_claimAutoreleasedReturnValue(), v7, messageForReplay == v7))
        {
          if ([(ETMessage *)v5 messageType]== 8)
          {
            [(ETCanvasView *)self->_canvasView setUsesMediaAppearance:1];
            v8 = v5;
            if ([(ETMessage *)v8 mediaType]== 1)
            {
              [(DTSCanvasViewController *)self _startVideoPlayerWithMessage:v8];
            }

            else if ([(ETMessage *)v8 mediaType]== 2)
            {
              canvasView = self->_canvasView;
              v10 = [(ETMessage *)v8 stillImage];
              [(ETCanvasView *)canvasView showPhotoForImage:v10];

              [(DTSCanvasViewController *)self _schedulePlaybackOfCompositeMessageContent:v8];
            }
          }

          self->_isPlayingMessage = 1;
          [(DTSCanvasViewController *)self _updateColorPickerEnabled];
          [(ETCanvasView *)self->_canvasView playMessage:self->_playingMessage];
          if (![(ETMessage *)v5 isAnimated])
          {
            v11 = self->_playingMessage;
            objc_initWeak(&location, self);
            [(DTSCanvasViewController *)self _nonAnimatedMessagePlaybackDuration];
            v13 = dispatch_time(0, (v12 * 1000000000.0));
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __40__DTSCanvasViewController__playMessage___block_invoke;
            block[3] = &unk_278F7A710;
            objc_copyWeak(&v17, &location);
            v16 = v11;
            v14 = v11;
            dispatch_after(v13, MEMORY[0x277D85CD0], block);

            objc_destroyWeak(&v17);
            objc_destroyWeak(&location);
          }
        }
      }
    }

    else if ([(NSMutableArray *)self->_unplayedMessages count])
    {
      [(DTSCanvasViewController *)self startMessagePlaybackLoop];
    }
  }
}

void __40__DTSCanvasViewController__playMessage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained messageForReplay];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    v5 = *(a1 + 32);

    [v5 stopPlaying];
  }
}

- (void)setPlayingMessages:(BOOL)a3
{
  if (self->_playingMessages != a3)
  {
    self->_playingMessages = a3;
    [(DTSCanvasViewController *)self _updateCanvasInteractionEnabled];
  }
}

- (void)_schedulePlaybackOfCompositeMessageContent:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  self->_mediaMessagePlayTrackerTime = Current;
  if ([v4 messageType] == 8)
  {
    v6 = [v4 introMessage];
    if (v6)
    {
      v7 = dispatch_time(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__DTSCanvasViewController__schedulePlaybackOfCompositeMessageContent___block_invoke;
      block[3] = &unk_278F7A2C0;
      block[4] = self;
      v31 = Current;
      v30 = v6;
      dispatch_after(v7, MEMORY[0x277D85CD0], block);
    }
  }

  v8 = MEMORY[0x277CBEB18];
  v9 = [v4 playingMessages];
  v10 = [v8 arrayWithArray:v9];
  unplayedMessages = self->_unplayedMessages;
  self->_unplayedMessages = v10;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = v4;
  v12 = [v4 playingMessages];
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    v16 = MEMORY[0x277D85CD0];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        [v18 startDelay];
        v20 = dispatch_time(0, (v19 * 1000000000.0));
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __70__DTSCanvasViewController__schedulePlaybackOfCompositeMessageContent___block_invoke_2;
        v24[3] = &unk_278F7A2C0;
        *&v24[6] = Current;
        v24[4] = self;
        v24[5] = v18;
        dispatch_after(v20, v16, v24);
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v14);
  }

  v21 = dispatch_time(0, 0);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __70__DTSCanvasViewController__schedulePlaybackOfCompositeMessageContent___block_invoke_3;
  v23[3] = &unk_278F7A738;
  v23[4] = self;
  *&v23[5] = Current;
  dispatch_after(v21, MEMORY[0x277D85CD0], v23);
}

double *__70__DTSCanvasViewController__schedulePlaybackOfCompositeMessageContent___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[137] == *(a1 + 48))
  {
    return [result _playMessage:*(a1 + 40)];
  }

  return result;
}

double *__70__DTSCanvasViewController__schedulePlaybackOfCompositeMessageContent___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[137] == *(a1 + 48))
  {
    return [result _playMessage:*(a1 + 40)];
  }

  return result;
}

double *__70__DTSCanvasViewController__schedulePlaybackOfCompositeMessageContent___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[137] == *(a1 + 40))
  {
    return [result willBeginSessionPlayback];
  }

  return result;
}

- (BOOL)_isVisible
{
  if (![(DTSCanvasViewController *)self isViewLoaded])
  {
    return 0;
  }

  v3 = [(DTSCanvasViewController *)self view];
  v4 = [v3 window];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)_shouldDimColorPicker
{
  if ([(DTSCanvasViewController *)self isPlayingCompositeMessage]|| self->_isPlayingMessage)
  {
    return 1;
  }

  return [(DTSCanvasViewController *)self isPlayingMessages];
}

- (void)_updateColorPickerEnabled
{
  v3 = [(DTSCanvasViewController *)self colorPicker];
  [v3 setDimmed:{-[DTSCanvasViewController _shouldDimColorPicker](self, "_shouldDimColorPicker")}];
}

- (void)setComposeDisabled:(BOOL)a3
{
  if (self->_composeDisabled != a3)
  {
    self->_composeDisabled = a3;
    [(DTSCanvasViewController *)self _updateCanvasInteractionEnabled];
  }
}

- (void)colorPickerSelectedColorDidChange:(id)a3
{
  v4 = a3;
  v5 = [(DTSCanvasViewController *)self canvasView];
  v6 = [v4 selectedColor];

  [v5 setDrawingColor:v6];

  [(DTSCanvasViewController *)self didChangeColorPickerColor];
}

- (void)colorPickerTapped:(id)a3
{
  v9 = a3;
  if ([(DTSCanvasViewController *)self _usingDemoHook])
  {
    v4 = [v9 selectedCircle];
    v5 = [v9 paletteCircles];
    v6 = [v5 firstObject];

    if (v6 == v4)
    {
      [(DTSCanvasViewController *)self _exportDemoHookMessage];
    }

    else
    {
      v7 = [v9 paletteCircles];
      v8 = [v7 lastObject];

      if (v8 == v4)
      {
        [(DTSCanvasViewController *)self _sendDemoHookMessage];
      }
    }
  }
}

- (BOOL)_usingDemoHook
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"DigitalTouchDemoHook"];

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

- (void)_sendDemoHookMessage
{
  v7 = objc_alloc_init(ETHeartbeatMessage);
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ETMessage *)v7 identifier];
  v5 = [v3 stringWithFormat:@"%@%@", @"DemoHook-", v4];
  [(ETMessage *)v7 setIdentifier:v5];

  WeakRetained = objc_loadWeakRetained(&self->_sendDelegate);
  [WeakRetained canvasViewController:self sendMessage:v7];
}

- (void)_exportDemoHookMessage
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 objectForKey:@"DigitalTouchDemoHookExportDirectory"];

  if (!v4)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ preference isn't set", @"DigitalTouchDemoHookExportDirectory"];
    [(DTSCanvasViewController *)self _showDemoHookAlertWithTitle:@"Can't Export" message:v9];
LABEL_9:

    goto LABEL_10;
  }

  messageForReplay = self->_messageForReplay;
  if (messageForReplay)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [(ETMessage *)messageForReplay identifier];
    v8 = [v6 stringWithFormat:@"%@%@", @"DemoHook-", v7];
    v9 = [v4 stringByAppendingPathComponent:v8];

    v10 = [(ETMessage *)self->_messageForReplay archive];
    v15 = 0;
    v11 = [v10 writeToFile:v9 options:1 error:&v15];
    v12 = v15;

    if (v11)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Path: %@", v9];
      v14 = @"Wrote Message";
    }

    else
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: %@, at path: %@", v12, v9];
      v14 = @"Failed to write message";
    }

    [(DTSCanvasViewController *)self _showDemoHookAlertWithTitle:v14 message:v13];

    goto LABEL_9;
  }

  [(DTSCanvasViewController *)self _showDemoHookAlertWithTitle:@"No Replay Message" message:@"You can only export messages that have just played in full-screen."];
LABEL_10:
}

- (void)_showDemoHookAlertWithTitle:(id)a3 message:(id)a4
{
  v6 = [MEMORY[0x277D75110] alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v5 = [MEMORY[0x277D750F8] actionWithTitle:@"Done" style:0 handler:0];
  [v6 addAction:v5];
  [(DTSCanvasViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)_updateCanvasInteractionEnabled
{
  v4 = [(DTSCanvasViewController *)self canvasView];
  if (self->_composeDisabled || [(DTSCanvasViewController *)self isPlayingMessages])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(DTSCanvasViewController *)self isPlayingCompositeMessage]^ 1;
  }

  [v4 setUserInteractionEnabled:v3];
}

- (void)canvasView:(id)a3 didBeginPlayingMessage:(id)a4
{
  [(DTSCanvasViewController *)self updateVideoUI:a3];

  [(DTSCanvasViewController *)self _updateCanvasInteractionEnabled];
}

- (void)canvasView:(id)a3 willEndPlayingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0x7FFFFFFFFFFFFFFFLL;
  unplayedMessages = self->_unplayedMessages;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __60__DTSCanvasViewController_canvasView_willEndPlayingMessage___block_invoke;
  v27 = &unk_278F7A760;
  v9 = v7;
  v28 = v9;
  v29 = &v30;
  [(NSMutableArray *)unplayedMessages enumerateObjectsUsingBlock:&v24];
  v10 = v31[3];
  v11 = [v9 parentMessage];
  if ([v11 messageType] == 1)
  {
    v12 = [v11 introMessage];
    v13 = v12 != v9;
  }

  else
  {
    v13 = 1;
  }

  v14 = [v9 messageType];
  v16 = v10 == 0x7FFFFFFFFFFFFFFFLL && v14 != 8;
  if (!v16 || !v13)
  {
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_unplayedMessages removeObjectAtIndex:v31[3]];
    }

    v17 = [v9 parentMessage];
    if (v17 && (v18 = -[NSMutableArray count](self->_unplayedMessages, "count"), v17, !v18) && (-[AVPlayer rate](self->_videoPlayer, "rate"), v19 == 0.0) || [v9 messageType] == 8)
    {
      v20 = [(DTSCanvasViewController *)self canvasView];
      [v20 wispVisibleSketchViewsWithCompletion:0];

      v21 = 1;
    }

    else
    {
      v21 = 0;
    }

    v22 = [v9 parentMessage];
    if (v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = [(NSMutableArray *)self->_unplayedMessages count]== 0;
    }

    if ((v21 | v23))
    {
      -[DTSCanvasViewController willEndSessionPlaybackInterrupted:](self, "willEndSessionPlaybackInterrupted:", [v9 missedDuringPlayback]);
      [(ETMessage *)self->_messageForReplay wispChildren];
    }
  }

  _Block_object_dispose(&v30, 8);
}

void __60__DTSCanvasViewController_canvasView_willEndPlayingMessage___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 identifier];
  v10 = [v8 identifier];

  LODWORD(v8) = [v9 isEqualToString:v10];
  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (void)canvasView:(id)a3 didEndPlayingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  self->_isPlayingMessage = 0;
  playingMessage = self->_playingMessage;
  self->_playingMessage = 0;

  v9 = [(NSMutableArray *)self->_unplayedMessages count];
  if (v9)
  {
    [(DTSCanvasViewController *)self setPlayingMessages:self->_playbackEnabled];
    v10 = [v7 parentMessage];
    [v10 childMessageDidCompleteWisp:v7];

    playbackEnabled = self->_playbackEnabled;
  }

  else
  {
    [(DTSCanvasViewController *)self setPlayingMessages:0];
    v12 = [v7 parentMessage];
    [v12 childMessageDidCompleteWisp:v7];

    playbackEnabled = 0;
  }

  if ([(DTSCanvasViewController *)self _canLoopMessageDuringPlayback:v7]&& [(ETMessage *)self->_messageForReplay shouldLoopDuringPlayback]&& self->_playbackEnabled)
  {
    v13 = [v7 missedDuringPlayback] ^ 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(ETMessage *)self->_messageForReplay hasWispingChildren];
  if (playbackEnabled)
  {
    if (!self->_playingCompositeMessage)
    {
      [(DTSCanvasViewController *)self _continueMessagePlaybackLoopWithDelay:1];
    }
  }

  else if (v13)
  {
    if ([(ETMessage *)self->_messageForReplay messageType]!= 8 || ![(ETMessage *)self->_messageForReplay hasWispingChildren]&& ([(AVPlayer *)self->_videoPlayer rate], v15 == 0.0))
    {
      [(DTSCanvasViewController *)self replay];
    }
  }

  else if (v14)
  {
    [(ETMessage *)self->_messageForReplay wispChildren];
  }

  else
  {
    [(AVPlayer *)self->_videoPlayer rate];
    if (v16 == 0.0)
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *v20 = 0;
          _os_log_impl(&dword_248D00000, v17, OS_LOG_TYPE_INFO, "Ending all playback", v20, 2u);
        }
      }

      v18 = [(DTSCanvasViewController *)self canExpireMessages];
      if (!v9 && v18 && ([v7 missedDuringPlayback] & 1) == 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_dataSource);
        [WeakRetained markAsPlayed];
      }

      [(DTSCanvasViewController *)self didEndSessionPlayback];
      [(DTSCanvasViewController *)self setPlayingCompositeMessage:0];
      [(DTSCanvasViewController *)self _hideVideoPlayer];
      [(ETCanvasView *)self->_canvasView hidePhoto];
      [(DTSCanvasViewController *)self _updateColorPickerEnabled];
      [(DTSCanvasViewController *)self _updatePlaybackControls];
      [(DTSCanvasViewController *)self updateVideoUI];
      [v7 setMissedDuringPlayback:0];
    }
  }

  [(DTSCanvasViewController *)self _updateCanvasInteractionEnabled];
}

- (void)_videoMessageDidFinishPlaying:(id)a3
{
  videoPlayer = self->_videoPlayer;
  v5 = a3;
  v9 = [(AVPlayer *)videoPlayer currentItem];
  v6 = [v5 object];

  if (v9 == v6)
  {
    v7 = [(ETMessage *)self->_messageForReplay messageType];

    if (v7 == 8)
    {
      messageForReplay = self->_messageForReplay;

      [(ETMessage *)messageForReplay stopPlaying];
    }
  }

  else
  {
  }
}

- (void)_startVideoPlayerWithMessage:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mediaURL];
  videoPlayer = self->_videoPlayer;
  if (videoPlayer)
  {
    buf = **&MEMORY[0x277CC08F0];
    [(AVPlayer *)videoPlayer seekToTime:&buf];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CE6598]) initWithURL:v5];
    v8 = self->_videoPlayer;
    self->_videoPlayer = v7;

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = [(AVPlayer *)self->_videoPlayer currentItem];
    [v9 addObserver:self selector:sel__videoMessageDidFinishPlaying_ name:*MEMORY[0x277CE60C0] object:v10];

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.value) = 138412290;
        *(&buf.value + 4) = v5;
        _os_log_impl(&dword_248D00000, v11, OS_LOG_TYPE_INFO, "Setting video player URL: %@", &buf, 0xCu);
      }
    }

    if (!self->_composingCompositeMessage)
    {
      v12 = self->_videoPlayer;
      if (self->_overrideAudioDefaultToOff)
      {
        [(AVPlayer *)self->_videoPlayer setMuted:1];
      }

      else
      {
        v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v14 = [v13 valueForKey:@"ETVideoAudioOffPreference"];
        -[AVPlayer setMuted:](v12, "setMuted:", [v14 BOOLValue]);
      }
    }

    v15 = self->_videoPlayer;
    objc_initWeak(&location, self);
    memset(&buf, 0, sizeof(buf));
    CMTimeMake(&buf, 1, 20);
    v16 = self->_videoPlayer;
    v25 = buf;
    v17 = [MEMORY[0x277CCAE60] valueWithCMTime:&v25];
    v27 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __56__DTSCanvasViewController__startVideoPlayerWithMessage___block_invoke;
    v21[3] = &unk_278F7A788;
    objc_copyWeak(&v24, &location);
    v22 = v4;
    v19 = v15;
    v23 = v19;
    v20 = [(AVPlayer *)v16 addBoundaryTimeObserverForTimes:v18 queue:0 usingBlock:v21];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  [(AVPlayer *)self->_videoPlayer play];
}

void __56__DTSCanvasViewController__startVideoPlayerWithMessage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _playingParentMessage];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    v5 = objc_loadWeakRetained((a1 + 48));
    v8 = [v5 canvasView];

    [v8 setUsesMediaAppearance:1];
    [v8 showVideoForPlayer:*(a1 + 40)];
    v6 = objc_loadWeakRetained((a1 + 48));
    [v6 _updateVideoPlayerUI];

    v7 = objc_loadWeakRetained((a1 + 48));
    [v7 _schedulePlaybackOfCompositeMessageContent:*(a1 + 32)];
  }
}

- (void)_hideVideoPlayer
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277CE60C0];
  v5 = [(AVPlayer *)self->_videoPlayer currentItem];
  [v3 removeObserver:self name:v4 object:v5];

  [(ETCanvasView *)self->_canvasView hideVideo];
  [(AVPlayer *)self->_videoPlayer pause];
  videoPlayer = self->_videoPlayer;
  self->_videoPlayer = 0;

  [(DTSCanvasViewController *)self _relinquishAudio];
  [(DTSCanvasViewController *)self _updateAudioOnOffButton];
  if ([(DTSCanvasViewController *)self _canComposeAfterMediaPlayback])
  {
    canvasView = self->_canvasView;

    [(ETCanvasView *)canvasView setUsesMediaAppearance:0];
  }
}

- (void)canvasView:(id)a3 didBeginComposingMessageType:(unsigned __int16)a4
{
  v4 = a4;
  [(DTSCanvasViewController *)self didBeginComposingMessage];
  [(DTSCanvasViewController *)self setComposingMessageType:v4];
  [(DTSCanvasViewController *)self _setCachedMessageForReplay:0];
  [(DTSCanvasViewController *)self _updateColorPickerEnabled];
  [(DTSCanvasViewController *)self _updatePlaybackControls];

  [(DTSCanvasViewController *)self updateVideoUI];
}

- (void)canvasView:(id)a3 didEndComposingMessageType:(unsigned __int16)a4
{
  [(DTSCanvasViewController *)self setComposingMessageType:0xFFFFLL, a4];
  [(DTSCanvasViewController *)self _updateColorPickerEnabled];
  if ([(DTSCanvasViewController *)self _shouldAutoSend])
  {
    [(DTSCanvasViewController *)self _startComposeSessionEndTimer];
  }

  [(DTSCanvasViewController *)self didEndComposingMessage];
}

- (void)canvasView:(id)a3 sendMessage:(id)a4
{
  v8 = a4;
  if ([(DTSCanvasViewController *)self deferMessageSend])
  {
    if (!self->_deferredMessages)
    {
      v5 = [MEMORY[0x277CBEB18] array];
      deferredMessages = self->_deferredMessages;
      self->_deferredMessages = v5;
    }

    if (v8)
    {
      [(NSMutableArray *)self->_deferredMessages addObject:?];
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_sendDelegate);
    [WeakRetained canvasViewController:self sendMessage:v8];

    [(DTSCanvasViewController *)self _updateSendButton];
  }

  MEMORY[0x2821F9730]();
}

- (void)canvasViewWillReachComposingSizeLimit:(id)a3
{
  v3 = [(DTSCanvasViewController *)self colorPicker];
  [v3 setDimmed:1];
}

- (BOOL)_canStartMessagePlaybackLoop
{
  if (!self->_playbackEnabled || ![(DTSCanvasViewController *)self _isVisible]|| self->_isPlayingMessage)
  {
    return 0;
  }

  v5 = [(DTSCanvasViewController *)self playingMessage];
  if (v5 || ![(NSMutableArray *)self->_unplayedMessages count])
  {
    v3 = 0;
  }

  else
  {
    v6 = [(DTSCanvasViewController *)self canvasView];
    if (([v6 isComposing] & 1) != 0 || self->_composeSessionEndTimer)
    {
      v3 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277D75128] sharedApplication];
      v3 = [v7 applicationState] == 0;
    }
  }

  return v3;
}

- (void)startMessagePlaybackLoop
{
  if ([(DTSCanvasViewController *)self _canStartMessagePlaybackLoop])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v4 = [WeakRetained mediaURL];

    if (!v4)
    {
      [(DTSCanvasViewController *)self willBeginSessionPlayback];
    }

    [(DTSCanvasViewController *)self setPlayingMessages:1];

    [(DTSCanvasViewController *)self _playNextMessage];
  }
}

- (void)_stopPlaybackAnimated:(BOOL)a3
{
  v3 = a3;
  isPlayingMessage = self->_isPlayingMessage;
  if (isPlayingMessage)
  {
    [(DTSCanvasViewController *)self willEndSessionPlaybackInterrupted:1];
  }

  [(ETMessage *)self->_playingMessage setMissedDuringPlayback:1];
  [(ETMessage *)self->_playingMessage stopPlaying];
  [(ETCanvasView *)self->_canvasView clearCanvasAnimated:v3];
  playingMessage = self->_playingMessage;
  self->_playingMessage = 0;

  self->_isPlayingMessage = 0;
  messageForReplay = self->_messageForReplay;
  self->_messageForReplay = 0;

  [(DTSCanvasViewController *)self _hideVideoPlayer];
  [(ETCanvasView *)self->_canvasView hidePhoto];
  [(DTSCanvasViewController *)self setPlayingCompositeMessage:0];
  [(DTSCanvasViewController *)self setPlayingMessages:0];
  [(ETCanvasView *)self->_canvasView setParentMessage:0];
  if (isPlayingMessage)
  {

    [(DTSCanvasViewController *)self didEndSessionPlayback];
  }
}

- (void)_reloadUnplayedMessages
{
  v3 = MEMORY[0x277CBEB18];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained createSessionMessages];
  v5 = [v3 arrayWithArray:v4];
  unplayedMessages = self->_unplayedMessages;
  self->_unplayedMessages = v5;
}

- (void)setPlaybackEnabled:(BOOL)a3
{
  if (self->_playbackEnabled != a3)
  {
    self->_playbackEnabled = a3;
    if (a3)
    {
      [(DTSCanvasViewController *)self _reloadUnplayedMessages];
    }

    else
    {
      [(DTSCanvasViewController *)self _setCachedMessageForReplay:0];
      [(NSMutableArray *)self->_unplayedMessages removeAllObjects];
      [(DTSCanvasViewController *)self _stopPlaybackAnimated:0];
      [(DTSCanvasViewController *)self _updatePlaybackControls];
    }

    [(DTSCanvasViewController *)self _updateCanvasInteractionEnabled];
  }
}

- (void)setPlayingCompositeMessage:(BOOL)a3
{
  if (self->_playingCompositeMessage != a3)
  {
    v9 = v4;
    v10 = v3;
    self->_playingCompositeMessage = a3;
    if (!a3)
    {
      self->_mediaMessagePlayTrackerTime = 0.0;
      [(NSMutableArray *)self->_unplayedMessages removeAllObjects];
      v8 = [(DTSCanvasViewController *)self canvasView];
      [v8 clearCanvasAnimated:0];

      [(ETMessage *)self->_playingMessage stopPlaying];
    }

    [(DTSCanvasViewController *)self _updateColorPickerEnabled:v9];

    [(DTSCanvasViewController *)self _updateCanvasInteractionEnabled];
  }
}

- (void)_playNextMessage
{
  if (self->_playbackEnabled && [(NSMutableArray *)self->_unplayedMessages count])
  {
    v3 = [(DTSCanvasViewController *)self playingMessage];
    if (!v3)
    {
      v4 = [MEMORY[0x277D75128] sharedApplication];
      v5 = [v4 applicationState];

      if (v5)
      {
        return;
      }

      v6 = [(NSMutableArray *)self->_unplayedMessages objectAtIndex:0];
      [v6 setMissedDuringPlayback:0];
      if (self->_playingCompositeMessage)
      {
        [(DTSCanvasViewController *)self _playMessage:v6];
      }

      else
      {
        [(DTSCanvasViewController *)self setPlayingMessage:v6];
      }

      v3 = v6;
    }
  }
}

- (void)_continueMessagePlaybackLoopWithDelay:(BOOL)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__DTSCanvasViewController__continueMessagePlaybackLoopWithDelay___block_invoke;
  v7[3] = &unk_278F79ED0;
  v7[4] = self;
  v4 = MEMORY[0x24C1E9BB0](v7, a2);
  v5 = v4;
  if (v3)
  {
    v6 = dispatch_time(0, 1000000000);
    dispatch_after(v6, MEMORY[0x277D85CD0], v5);
  }

  else
  {
    (*(v4 + 16))(v4);
  }
}

uint64_t __65__DTSCanvasViewController__continueMessagePlaybackLoopWithDelay___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isPlayingMessages];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _playNextMessage];
  }

  return result;
}

- (void)_startComposeSessionEndTimer
{
  [(NSTimer *)self->_composeSessionEndTimer invalidate];
  self->_composeSessionEndTimer = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__composeSessionEndTimerFired selector:0 userInfo:0 repeats:5.0];

  MEMORY[0x2821F96F8]();
}

- (void)_clearComposeSessionEndTimer
{
  [(NSTimer *)self->_composeSessionEndTimer invalidate];
  composeSessionEndTimer = self->_composeSessionEndTimer;
  self->_composeSessionEndTimer = 0;
}

- (void)_composeSessionEndTimerFired
{
  composeSessionEndTimer = self->_composeSessionEndTimer;
  self->_composeSessionEndTimer = 0;

  [(DTSCanvasViewController *)self startMessagePlaybackLoop];

  [(DTSCanvasViewController *)self updateVideoUI];
}

- (void)_skipButtonTapped
{
  playingMessage = self->_playingMessage;
  if (playingMessage)
  {
    v4 = playingMessage;
    [(DTSCanvasViewController *)self _stopPlaybackAnimated:1];
    [(NSMutableArray *)self->_unplayedMessages removeObject:v4];
  }

  [(DTSCanvasViewController *)self startMessagePlaybackLoop];
}

- (void)_cancelButtonTapped
{
  [(DTSCanvasViewController *)self _stopPlaybackAnimated:1];

  [(DTSCanvasViewController *)self didEndComposingMessage];
}

- (BOOL)canShowReplayButton
{
  if (self->_playingMessages || !self->_playbackEnabled || ![(DTSCanvasViewController *)self hasMessageForReplay]|| [(DTSCanvasViewController *)self usesCompactKeyboardLayout]|| [(ETCanvasView *)self->_canvasView usesMediaAppearance])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v5 = [(DTSCanvasViewController *)self playingMessage];
    if (v5 || [(DTSCanvasViewController *)self _shouldShowSkipButton])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v3 = ![(DTSCanvasViewController *)self _shouldShowCancelButton];
    }
  }

  return v3;
}

- (void)_setShowingReplayButton:(BOOL)a3
{
  if (self->_showingReplayButton != a3)
  {
    v12 = v3;
    v13 = v4;
    self->_showingReplayButton = a3;
    if (a3)
    {
      [(UIButton *)self->_replayButton setAlpha:0.0];
      v7 = [(DTSCanvasViewController *)self view];
      [v7 addSubview:self->_replayButton];
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__DTSCanvasViewController__setShowingReplayButton___block_invoke;
    v10[3] = &unk_278F7A6E8;
    v10[4] = self;
    v11 = a3;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__DTSCanvasViewController__setShowingReplayButton___block_invoke_2;
    v8[3] = &unk_278F7A7B0;
    v9 = a3;
    v8[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v10 animations:v8 completion:0.25];
  }
}

uint64_t __51__DTSCanvasViewController__setShowingReplayButton___block_invoke_2(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    return [*(*(result + 32) + 1008) removeFromSuperview];
  }

  return result;
}

- (void)dataSource:(id)a3 startPlaybackWithCompletion:(id)a4
{
  v5 = MEMORY[0x24C1E9BB0](a4, a2, a3);
  balloonPlaybackCompletion = self->_balloonPlaybackCompletion;
  self->_balloonPlaybackCompletion = v5;

  [(DTSCanvasViewController *)self setAutoPlayOnAppearanceDisabled:0];
  if (self->_playingMessages && ([MEMORY[0x277D75128] sharedApplication], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "applicationState"), v7, !v8))
  {
    v9 = [(DTSCanvasViewController *)self canvasView];
    [v9 setPaused:0];
  }

  else
  {
    [(DTSCanvasViewController *)self setPlaybackEnabled:1];

    [(DTSCanvasViewController *)self startMessagePlaybackLoop];
  }
}

- (BOOL)dataSource:(id)a3 addDemoHookToMessage:(id *)a4
{
  if ([(DTSCanvasViewController *)self _usingDemoHook])
  {
    v6 = [*a4 identifier];
    v7 = [v6 hasPrefix:@"DemoHook-"];

    if (v7)
    {
      v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v9 = [v8 objectForKey:@"DigitalTouchDemoHookMessageDataPath"];

      v10 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v9];
      v11 = v10;
      if (v9 && v10)
      {
        v12 = [ETMessage unarchive:v10];
        v13 = v12;
        if (v12)
        {
          if ([v12 messageType] != 8)
          {
LABEL_10:
            v19 = v13;
            *a4 = v13;
            v20 = 1;
LABEL_18:

            return v20;
          }

          v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
          v15 = [v14 objectForKey:@"DigitalTouchDemoHookAssetPath"];

          if (v15)
          {
            v16 = [MEMORY[0x277CCAA00] defaultManager];
            v17 = [v16 fileExistsAtPath:v15];

            if (v17)
            {
              v18 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15];
              [v13 setMediaURL:v18];

              goto LABEL_10;
            }

            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Couldn't find path: %@", v15];
            [(DTSCanvasViewController *)self _showDemoHookAlertWithTitle:@"Movie File Not Found" message:v22];
          }

          else
          {
            [(DTSCanvasViewController *)self _showDemoHookAlertWithTitle:@"Movie Path Not Specified" message:@"Please set DigitalTouchDemoHookAssetPath preference."];
          }
        }

        else
        {
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not changing incoming message to demo message. Data at path: %@", v9];
          [(DTSCanvasViewController *)self _showDemoHookAlertWithTitle:@"Couldn't Unarchive Demo Message" message:v21];
        }
      }

      else
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid data at path %@. Not changing incoming message to demo message.", v9];
        [(DTSCanvasViewController *)self _showDemoHookAlertWithTitle:@"Missing Demo Message Data" message:v13];
      }

      v20 = 0;
      goto LABEL_18;
    }
  }

  return 0;
}

- (void)dataSourceStopPlayback:(id)a3
{
  if (self->_playingMessages)
  {
    v4 = [(DTSCanvasViewController *)self canvasView];
    [v4 setPaused:1];
  }

  else
  {
    [(DTSCanvasViewController *)self setPlaybackEnabled:0];
  }

  [(DTSCanvasViewController *)self setAutoPlayOnAppearanceDisabled:1];
}

- (BOOL)dataSourceViewIsMostlyVisible:(id)a3
{
  if (![(DTSCanvasViewController *)self isViewLoaded])
  {
    return 0;
  }

  v4 = [(DTSCanvasViewController *)self view];
  v5 = [v4 window];
  [v4 bounds];
  v7 = v6;
  [v4 convertRect:v5 toView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v5 bounds];
  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  v19 = CGRectIntersection(v18, v20);
  v16 = v19.size.height / v7 >= 0.5;

  return v16;
}

- (void)dataSource:(id)a3 didUpdateAttachmentURL:(id)a4 forMessageWithIdentifier:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(ETMessage *)self->_messageForReplay identifier];
  v11 = [v10 isEqualToString:v9];

  if (v11)
  {
    v12 = self->_messageForReplay;
  }

  else
  {
    v12 = 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = self->_unplayedMessages;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v14)
  {
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        v18 = [v17 identifier];
        v19 = [v18 isEqualToString:v9];

        if (v19)
        {
          v20 = v17;

          v12 = v20;
        }
      }

      v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v14);
  }

  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ETMessage *)v12 setMediaURL:v8];
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = [MEMORY[0x277CCAA00] defaultManager];
          v23 = [v8 path];
          v24 = [v22 fileExistsAtPath:v23];
          *buf = 138412546;
          v31 = v8;
          v32 = 1024;
          v33 = v24;
          _os_log_impl(&dword_248D00000, v21, OS_LOG_TYPE_INFO, "Setting media URL: %@, URL exists on disk: %d", buf, 0x12u);
        }
      }
    }
  }
}

- (DTSCanvasViewControllerSendDelegate)sendDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sendDelegate);

  return WeakRetained;
}

- (ETBalloonPluginDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end