@interface ICMovieController
+ (BOOL)isFullScreen;
+ (ICMovieController)sharedController;
+ (void)pauseIfPlaying;
+ (void)stopIfPlaying;
- (BOOL)prepareForPlayback;
- (id)ic_viewControllerManager;
- (void)dealloc;
- (void)moviePlayerTapped;
- (void)pauseIfPlaying;
- (void)play;
- (void)setActiveMovieAttachmentView:(id)view;
- (void)stopIfPlaying;
- (void)updatePlayer;
@end

@implementation ICMovieController

+ (void)stopIfPlaying
{
  if (sDidCreateSharedController == 1)
  {
    sharedController = [self sharedController];
    [sharedController stopIfPlaying];
  }
}

+ (void)pauseIfPlaying
{
  if (sDidCreateSharedController == 1)
  {
    sharedController = [self sharedController];
    [sharedController pauseIfPlaying];
  }
}

+ (BOOL)isFullScreen
{
  if (sDidCreateSharedController != 1)
  {
    return 0;
  }

  sharedController = [self sharedController];
  isFullScreen = [sharedController isFullScreen];

  return isFullScreen;
}

+ (ICMovieController)sharedController
{
  if (s_onceToken != -1)
  {
    +[ICMovieController sharedController];
  }

  v3 = sharedController_s_instance;

  return v3;
}

void __37__ICMovieController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(ICMovieController);
  v1 = sharedController_s_instance;
  sharedController_s_instance = v0;

  sDidCreateSharedController = 1;
}

- (void)dealloc
{
  [(ICMovieController *)self stopIfPlaying];
  [(ICMovieController *)self setMoviePlayerController:0];
  v3.receiver = self;
  v3.super_class = ICMovieController;
  [(ICMovieController *)&v3 dealloc];
}

- (id)ic_viewControllerManager
{
  activeMovieAttachmentView = [(ICMovieController *)self activeMovieAttachmentView];
  ic_viewControllerManager = [activeMovieAttachmentView ic_viewControllerManager];

  return ic_viewControllerManager;
}

- (void)updatePlayer
{
  v3 = MEMORY[0x277CE65B0];
  activeAsset = [(ICMovieController *)self activeAsset];
  v14 = [v3 playerItemWithAsset:activeAsset];

  v5 = [MEMORY[0x277CE6598] playerWithPlayerItem:v14];
  moviePlayerController = [(ICMovieController *)self moviePlayerController];
  if (moviePlayerController)
  {
    v7 = moviePlayerController;
    moviePlayerController2 = [(ICMovieController *)self moviePlayerController];
    player = [moviePlayerController2 player];
    currentItem = [player currentItem];
    asset = [currentItem asset];
    activeAsset2 = [(ICMovieController *)self activeAsset];

    if (asset != activeAsset2)
    {
      moviePlayerController3 = [(ICMovieController *)self moviePlayerController];
      [moviePlayerController3 setPlayer:v5];
    }
  }
}

- (BOOL)prepareForPlayback
{
  activeMovieAttachmentView = [(ICMovieController *)self activeMovieAttachmentView];
  attachment = [activeMovieAttachmentView attachment];
  attachmentModel = [attachment attachmentModel];
  isReadyToPresent = [attachmentModel isReadyToPresent];

  if (isReadyToPresent)
  {
    v7 = objc_opt_new();
    v8 = v7;
    if (v7)
    {
      [v7 setDelegate:self];
      activeMovieAttachmentView2 = [(ICMovieController *)self activeMovieAttachmentView];
      [v8 setAllowsPictureInPicturePlayback:{objc_msgSend(activeMovieAttachmentView2, "allowsPictureInPicture")}];

      [v8 setAllowsEnteringFullScreen:{objc_msgSend(MEMORY[0x277D75418], "ic_isVision") ^ 1}];
      [(ICMovieController *)self setMoviePlayerController:v8];
      activeMovieAttachmentView3 = [(ICMovieController *)self activeMovieAttachmentView];
      shouldPlayFullscreenOnly = [activeMovieAttachmentView3 shouldPlayFullscreenOnly];

      if ((shouldPlayFullscreenOnly & 1) == 0)
      {
        view = [v8 view];
        activeMovieAttachmentView4 = [(ICMovieController *)self activeMovieAttachmentView];
        [activeMovieAttachmentView4 bounds];
        [view setFrame:?];

        activeMovieAttachmentView5 = [(ICMovieController *)self activeMovieAttachmentView];
        view2 = [v8 view];
        [activeMovieAttachmentView5 addSubview:view2];
      }

      activeMovieAttachmentView6 = [(ICMovieController *)self activeMovieAttachmentView];
      [activeMovieAttachmentView6 setIcaxIsShowingPlayer:1];

      LODWORD(activeMovieAttachmentView6) = *MEMORY[0x277D76488];
      view3 = [v8 view];
      UIAccessibilityPostNotification(activeMovieAttachmentView6, view3);
    }

    mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
    v19 = *MEMORY[0x277CB8030];
    v22 = 0;
    if (([mEMORY[0x277CB83F8] setCategory:v19 error:&v22] & 1) == 0)
    {
      v20 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(ICMovieController *)v20 prepareForPlayback];
      }
    }

    [(ICMovieController *)self updatePlayer];
  }

  return isReadyToPresent;
}

- (void)play
{
  v24[1] = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  activeMovieAttachmentView = [(ICMovieController *)self activeMovieAttachmentView];
  attachment = [activeMovieAttachmentView attachment];
  [defaultCenter postNotificationName:@"ICMovieAttachmentViewWillPlayMovieNotification" object:attachment];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = *MEMORY[0x277D35D78];
  v23 = *MEMORY[0x277D35D70];
  activeMovieAttachmentView2 = [(ICMovieController *)self activeMovieAttachmentView];
  attachment2 = [activeMovieAttachmentView2 attachment];
  v24[0] = attachment2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  [defaultCenter2 postNotificationName:v7 object:0 userInfo:v10];

  moviePlayerController = [(ICMovieController *)self moviePlayerController];
  player = [moviePlayerController player];

  [player setUsesExternalPlaybackWhileExternalScreenIsActive:1];
  playbackForPreview = [(ICMovieController *)self playbackForPreview];
  activeMovieAttachmentView3 = [(ICMovieController *)self activeMovieAttachmentView];
  LODWORD(attachment2) = [activeMovieAttachmentView3 shouldPlayFullscreenOnly];

  if (!attachment2 || playbackForPreview)
  {
    [player play];
  }

  else
  {
    activeMovieAttachmentView4 = [(ICMovieController *)self activeMovieAttachmentView];
    [activeMovieAttachmentView4 setUserInteractionEnabled:0];

    activeMovieAttachmentView5 = [(ICMovieController *)self activeMovieAttachmentView];
    window = [activeMovieAttachmentView5 window];
    rootViewController = [window rootViewController];
    moviePlayerController2 = [(ICMovieController *)self moviePlayerController];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __25__ICMovieController_play__block_invoke;
    v20[3] = &unk_2781ABEB8;
    v21 = player;
    selfCopy = self;
    [rootViewController presentViewController:moviePlayerController2 animated:1 completion:v20];
  }
}

void __25__ICMovieController_play__block_invoke(uint64_t a1)
{
  [*(a1 + 32) play];
  v2 = [*(a1 + 40) activeMovieAttachmentView];
  [v2 setUserInteractionEnabled:1];
}

- (void)pauseIfPlaying
{
  moviePlayerController = [(ICMovieController *)self moviePlayerController];
  player = [moviePlayerController player];

  [player pause];
}

- (void)stopIfPlaying
{
  moviePlayerController = [(ICMovieController *)self moviePlayerController];
  player = [moviePlayerController player];

  [player pause];
  v4 = *MEMORY[0x277CC08F0];
  v5 = *(MEMORY[0x277CC08F0] + 16);
  [player seekToTime:&v4];
}

- (void)moviePlayerTapped
{
  moviePlayerController = [(ICMovieController *)self moviePlayerController];
  player = [moviePlayerController player];
  currentItem = [player currentItem];
  asset = [currentItem asset];
  activeAsset = [(ICMovieController *)self activeAsset];

  moviePlayerController2 = [(ICMovieController *)self moviePlayerController];
  v9 = moviePlayerController2;
  if (asset != activeAsset)
  {
    player2 = [moviePlayerController2 player];
    [player2 rate];
    v12 = v11;

    if (v12 != 0.0)
    {
      [(ICMovieController *)self stopIfPlaying];
    }

    selfCopy2 = self;
LABEL_5:
    if (![(ICMovieController *)selfCopy2 prepareForPlayback])
    {
      return;
    }

    goto LABEL_9;
  }

  selfCopy2 = self;
  if (!v9)
  {
    goto LABEL_5;
  }

  moviePlayerController3 = [(ICMovieController *)self moviePlayerController];
  player3 = [moviePlayerController3 player];
  [player3 rate];
  v17 = v16;

  if (v17 == 0.0)
  {
LABEL_9:

    [(ICMovieController *)self play];
    return;
  }

  [(ICMovieController *)self pauseIfPlaying];
}

- (void)setActiveMovieAttachmentView:(id)view
{
  viewCopy = view;
  if (self->_activeMovieAttachmentView != viewCopy)
  {
    v11 = viewCopy;
    [(ICMovieController *)self stopIfPlaying];
    [(ICMovieController *)self setPlaybackForPreview:0];
    moviePlayerController = [(ICMovieController *)self moviePlayerController];
    view = [moviePlayerController view];
    [view removeFromSuperview];

    [(ICMovieController *)self setMoviePlayerController:0];
    objc_storeStrong(&self->_activeMovieAttachmentView, view);
    attachment = [(ICMovieAttachmentView *)v11 attachment];
    attachmentModel = [attachment attachmentModel];
    asset = [attachmentModel asset];
    [(ICMovieController *)self setActiveAsset:asset];

    viewCopy = v11;
  }
}

@end