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
- (void)setActiveMovieAttachmentView:(id)a3;
- (void)stopIfPlaying;
- (void)updatePlayer;
@end

@implementation ICMovieController

+ (void)stopIfPlaying
{
  if (sDidCreateSharedController == 1)
  {
    v3 = [a1 sharedController];
    [v3 stopIfPlaying];
  }
}

+ (void)pauseIfPlaying
{
  if (sDidCreateSharedController == 1)
  {
    v3 = [a1 sharedController];
    [v3 pauseIfPlaying];
  }
}

+ (BOOL)isFullScreen
{
  if (sDidCreateSharedController != 1)
  {
    return 0;
  }

  v2 = [a1 sharedController];
  v3 = [v2 isFullScreen];

  return v3;
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
  v2 = [(ICMovieController *)self activeMovieAttachmentView];
  v3 = [v2 ic_viewControllerManager];

  return v3;
}

- (void)updatePlayer
{
  v3 = MEMORY[0x277CE65B0];
  v4 = [(ICMovieController *)self activeAsset];
  v14 = [v3 playerItemWithAsset:v4];

  v5 = [MEMORY[0x277CE6598] playerWithPlayerItem:v14];
  v6 = [(ICMovieController *)self moviePlayerController];
  if (v6)
  {
    v7 = v6;
    v8 = [(ICMovieController *)self moviePlayerController];
    v9 = [v8 player];
    v10 = [v9 currentItem];
    v11 = [v10 asset];
    v12 = [(ICMovieController *)self activeAsset];

    if (v11 != v12)
    {
      v13 = [(ICMovieController *)self moviePlayerController];
      [v13 setPlayer:v5];
    }
  }
}

- (BOOL)prepareForPlayback
{
  v3 = [(ICMovieController *)self activeMovieAttachmentView];
  v4 = [v3 attachment];
  v5 = [v4 attachmentModel];
  v6 = [v5 isReadyToPresent];

  if (v6)
  {
    v7 = objc_opt_new();
    v8 = v7;
    if (v7)
    {
      [v7 setDelegate:self];
      v9 = [(ICMovieController *)self activeMovieAttachmentView];
      [v8 setAllowsPictureInPicturePlayback:{objc_msgSend(v9, "allowsPictureInPicture")}];

      [v8 setAllowsEnteringFullScreen:{objc_msgSend(MEMORY[0x277D75418], "ic_isVision") ^ 1}];
      [(ICMovieController *)self setMoviePlayerController:v8];
      v10 = [(ICMovieController *)self activeMovieAttachmentView];
      v11 = [v10 shouldPlayFullscreenOnly];

      if ((v11 & 1) == 0)
      {
        v12 = [v8 view];
        v13 = [(ICMovieController *)self activeMovieAttachmentView];
        [v13 bounds];
        [v12 setFrame:?];

        v14 = [(ICMovieController *)self activeMovieAttachmentView];
        v15 = [v8 view];
        [v14 addSubview:v15];
      }

      v16 = [(ICMovieController *)self activeMovieAttachmentView];
      [v16 setIcaxIsShowingPlayer:1];

      LODWORD(v16) = *MEMORY[0x277D76488];
      v17 = [v8 view];
      UIAccessibilityPostNotification(v16, v17);
    }

    v18 = [MEMORY[0x277CB83F8] sharedInstance];
    v19 = *MEMORY[0x277CB8030];
    v22 = 0;
    if (([v18 setCategory:v19 error:&v22] & 1) == 0)
    {
      v20 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(ICMovieController *)v20 prepareForPlayback];
      }
    }

    [(ICMovieController *)self updatePlayer];
  }

  return v6;
}

- (void)play
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = [(ICMovieController *)self activeMovieAttachmentView];
  v5 = [v4 attachment];
  [v3 postNotificationName:@"ICMovieAttachmentViewWillPlayMovieNotification" object:v5];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = *MEMORY[0x277D35D78];
  v23 = *MEMORY[0x277D35D70];
  v8 = [(ICMovieController *)self activeMovieAttachmentView];
  v9 = [v8 attachment];
  v24[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  [v6 postNotificationName:v7 object:0 userInfo:v10];

  v11 = [(ICMovieController *)self moviePlayerController];
  v12 = [v11 player];

  [v12 setUsesExternalPlaybackWhileExternalScreenIsActive:1];
  v13 = [(ICMovieController *)self playbackForPreview];
  v14 = [(ICMovieController *)self activeMovieAttachmentView];
  LODWORD(v9) = [v14 shouldPlayFullscreenOnly];

  if (!v9 || v13)
  {
    [v12 play];
  }

  else
  {
    v15 = [(ICMovieController *)self activeMovieAttachmentView];
    [v15 setUserInteractionEnabled:0];

    v16 = [(ICMovieController *)self activeMovieAttachmentView];
    v17 = [v16 window];
    v18 = [v17 rootViewController];
    v19 = [(ICMovieController *)self moviePlayerController];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __25__ICMovieController_play__block_invoke;
    v20[3] = &unk_2781ABEB8;
    v21 = v12;
    v22 = self;
    [v18 presentViewController:v19 animated:1 completion:v20];
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
  v2 = [(ICMovieController *)self moviePlayerController];
  v3 = [v2 player];

  [v3 pause];
}

- (void)stopIfPlaying
{
  v2 = [(ICMovieController *)self moviePlayerController];
  v3 = [v2 player];

  [v3 pause];
  v4 = *MEMORY[0x277CC08F0];
  v5 = *(MEMORY[0x277CC08F0] + 16);
  [v3 seekToTime:&v4];
}

- (void)moviePlayerTapped
{
  v3 = [(ICMovieController *)self moviePlayerController];
  v4 = [v3 player];
  v5 = [v4 currentItem];
  v6 = [v5 asset];
  v7 = [(ICMovieController *)self activeAsset];

  v8 = [(ICMovieController *)self moviePlayerController];
  v9 = v8;
  if (v6 != v7)
  {
    v10 = [v8 player];
    [v10 rate];
    v12 = v11;

    if (v12 != 0.0)
    {
      [(ICMovieController *)self stopIfPlaying];
    }

    v13 = self;
LABEL_5:
    if (![(ICMovieController *)v13 prepareForPlayback])
    {
      return;
    }

    goto LABEL_9;
  }

  v13 = self;
  if (!v9)
  {
    goto LABEL_5;
  }

  v14 = [(ICMovieController *)self moviePlayerController];
  v15 = [v14 player];
  [v15 rate];
  v17 = v16;

  if (v17 == 0.0)
  {
LABEL_9:

    [(ICMovieController *)self play];
    return;
  }

  [(ICMovieController *)self pauseIfPlaying];
}

- (void)setActiveMovieAttachmentView:(id)a3
{
  v5 = a3;
  if (self->_activeMovieAttachmentView != v5)
  {
    v11 = v5;
    [(ICMovieController *)self stopIfPlaying];
    [(ICMovieController *)self setPlaybackForPreview:0];
    v6 = [(ICMovieController *)self moviePlayerController];
    v7 = [v6 view];
    [v7 removeFromSuperview];

    [(ICMovieController *)self setMoviePlayerController:0];
    objc_storeStrong(&self->_activeMovieAttachmentView, a3);
    v8 = [(ICMovieAttachmentView *)v11 attachment];
    v9 = [v8 attachmentModel];
    v10 = [v9 asset];
    [(ICMovieController *)self setActiveAsset:v10];

    v5 = v11;
  }
}

@end