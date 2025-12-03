@interface HRVideoPlayerView
+ (HRVideoPlayerView)playerViewWithURL:(id)l looping:(BOOL)looping;
- (BOOL)preventsDisplaySleepDuringVideoPlayback;
- (HRVideoPlayerView)initWithItems:(id)items thumbnail:(id)thumbnail looping:(BOOL)looping;
- (id)player;
- (void)_didReceivePlayerNotification:(id)notification;
- (void)_setUpNotifications;
- (void)_setUpUI;
- (void)dealloc;
- (void)pause;
- (void)play;
- (void)setPlayer:(id)player;
- (void)setPreventsDisplaySleepDuringVideoPlayback:(BOOL)playback;
@end

@implementation HRVideoPlayerView

- (HRVideoPlayerView)initWithItems:(id)items thumbnail:(id)thumbnail looping:(BOOL)looping
{
  itemsCopy = items;
  thumbnailCopy = thumbnail;
  v14.receiver = self;
  v14.super_class = HRVideoPlayerView;
  v11 = [(HRVideoPlayerView *)&v14 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_items, items);
    objc_storeStrong(&v12->_thumbnail, thumbnail);
    v12->_looping = looping;
    [(HRVideoPlayerView *)v12 _setUpUI];
    [(HRVideoPlayerView *)v12 _setUpNotifications];
  }

  return v12;
}

+ (HRVideoPlayerView)playerViewWithURL:(id)l looping:(BOOL)looping
{
  loopingCopy = looping;
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CE6650];
  lCopy = l;
  v7 = [[v5 alloc] initWithURL:lCopy options:0];
  v8 = [MEMORY[0x277CE65B0] playerItemWithURL:lCopy];

  [v7 hrui_assetSize];
  v10 = v9;
  v12 = v11;
  hrui_thumbnailImage = [v7 hrui_thumbnailImage];
  v14 = objc_alloc(objc_opt_class());
  v19[0] = v8;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v16 = [v14 initWithItems:v15 thumbnail:hrui_thumbnailImage looping:loopingCopy];

  [v16 hrui_constraintAspectRatioFromSize:{v10, v12}];
  layer = [v16 layer];
  [layer setNeedsDisplayOnBoundsChange:1];

  return v16;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  applicationActiveNotificationStub = [(HRVideoPlayerView *)self applicationActiveNotificationStub];
  [defaultCenter removeObserver:applicationActiveNotificationStub];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  applicationInactiveNotificationStub = [(HRVideoPlayerView *)self applicationInactiveNotificationStub];
  [defaultCenter2 removeObserver:applicationInactiveNotificationStub];

  v7.receiver = self;
  v7.super_class = HRVideoPlayerView;
  [(HRVideoPlayerView *)&v7 dealloc];
}

- (void)setPreventsDisplaySleepDuringVideoPlayback:(BOOL)playback
{
  playbackCopy = playback;
  queuePlayer = [(HRVideoPlayerView *)self queuePlayer];
  [queuePlayer setPreventsDisplaySleepDuringVideoPlayback:playbackCopy];
}

- (BOOL)preventsDisplaySleepDuringVideoPlayback
{
  queuePlayer = [(HRVideoPlayerView *)self queuePlayer];
  preventsDisplaySleepDuringVideoPlayback = [queuePlayer preventsDisplaySleepDuringVideoPlayback];

  return preventsDisplaySleepDuringVideoPlayback;
}

- (void)play
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = NSStringFromSelector(a2);
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_2521E7000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] Playing content", &v8, 0x16u);
  }

  queuePlayer = [(HRVideoPlayerView *)self queuePlayer];
  [queuePlayer play];

  [(HRVideoPlayerView *)self setShouldBePlaying:1];
}

- (void)pause
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = NSStringFromSelector(a2);
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_2521E7000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] Pausing content", &v8, 0x16u);
  }

  queuePlayer = [(HRVideoPlayerView *)self queuePlayer];
  [queuePlayer pause];

  [(HRVideoPlayerView *)self setShouldBePlaying:0];
}

- (id)player
{
  layer = [(HRVideoPlayerView *)self layer];
  player = [layer player];

  return player;
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  layer = [(HRVideoPlayerView *)self layer];
  [layer setPlayer:playerCopy];
}

- (void)_setUpUI
{
  v3 = MEMORY[0x277CE65F8];
  items = [(HRVideoPlayerView *)self items];
  v5 = [v3 queuePlayerWithItems:items];
  [(HRVideoPlayerView *)self setQueuePlayer:v5];

  queuePlayer = [(HRVideoPlayerView *)self queuePlayer];
  [queuePlayer setPreventsDisplaySleepDuringVideoPlayback:0];

  v7 = MEMORY[0x277CE65E0];
  queuePlayer2 = [(HRVideoPlayerView *)self queuePlayer];
  items2 = [(HRVideoPlayerView *)self items];
  firstObject = [items2 firstObject];
  v11 = [v7 playerLooperWithPlayer:queuePlayer2 templateItem:firstObject];
  [(HRVideoPlayerView *)self setPlayerLooper:v11];

  layer = [(HRVideoPlayerView *)self layer];
  [layer setShouldRasterize:1];

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v15 = v14;
  layer2 = [(HRVideoPlayerView *)self layer];
  [layer2 setRasterizationScale:v15];

  thumbnail = [(HRVideoPlayerView *)self thumbnail];

  if (thumbnail)
  {
    v18 = objc_alloc(MEMORY[0x277D755E8]);
    thumbnail2 = [(HRVideoPlayerView *)self thumbnail];
    v20 = [v18 initWithImage:thumbnail2];
    [(HRVideoPlayerView *)self setThumbnailImageView:v20];

    thumbnailImageView = [(HRVideoPlayerView *)self thumbnailImageView];
    [thumbnailImageView setTranslatesAutoresizingMaskIntoConstraints:0];

    thumbnailImageView2 = [(HRVideoPlayerView *)self thumbnailImageView];
    [(HRVideoPlayerView *)self addSubview:thumbnailImageView2];

    layer3 = [(HRVideoPlayerView *)self layer];
    thumbnailImageView3 = [(HRVideoPlayerView *)self thumbnailImageView];
    layer4 = [thumbnailImageView3 layer];
    [layer3 insertSublayer:layer4 atIndex:0];

    thumbnailImageView4 = [(HRVideoPlayerView *)self thumbnailImageView];
    [thumbnailImageView4 hk_alignConstraintsWithView:self];
  }

  if (![(HRVideoPlayerView *)self looping])
  {
    playerLooper = [(HRVideoPlayerView *)self playerLooper];
    [playerLooper disableLooping];
  }

  queuePlayer3 = [(HRVideoPlayerView *)self queuePlayer];
  [(HRVideoPlayerView *)self setPlayer:queuePlayer3];
}

- (void)_setUpNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  objc_initWeak(&location, self);
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v5 = *MEMORY[0x277D76648];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __40__HRVideoPlayerView__setUpNotifications__block_invoke;
  v18[3] = &unk_2796FBAF8;
  objc_copyWeak(&v19, &location);
  v6 = [defaultCenter addObserverForName:v5 object:0 queue:mainQueue usingBlock:v18];
  [(HRVideoPlayerView *)self setApplicationActiveNotificationStub:v6];

  mainQueue2 = [MEMORY[0x277CCABD8] mainQueue];
  v8 = *MEMORY[0x277D76768];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __40__HRVideoPlayerView__setUpNotifications__block_invoke_2;
  v16[3] = &unk_2796FBAF8;
  objc_copyWeak(&v17, &location);
  v9 = [defaultCenter addObserverForName:v8 object:0 queue:mainQueue2 usingBlock:v16];
  [(HRVideoPlayerView *)self setApplicationInactiveNotificationStub:v9];

  queuePlayer = [(HRVideoPlayerView *)self queuePlayer];
  currentItem = [queuePlayer currentItem];
  [defaultCenter addObserver:self selector:sel__didReceivePlayerNotification_ name:*MEMORY[0x277CE6110] object:currentItem];

  queuePlayer2 = [(HRVideoPlayerView *)self queuePlayer];
  currentItem2 = [queuePlayer2 currentItem];
  [defaultCenter addObserver:self selector:sel__didReceivePlayerNotification_ name:*MEMORY[0x277CE6118] object:currentItem2];

  queuePlayer3 = [(HRVideoPlayerView *)self queuePlayer];
  currentItem3 = [queuePlayer3 currentItem];
  [defaultCenter addObserver:self selector:sel__didReceivePlayerNotification_ name:*MEMORY[0x277CE6140] object:currentItem3];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

uint64_t __40__HRVideoPlayerView__setUpNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    if ([WeakRetained shouldBePlaying])
    {
      v2 = [v7 queuePlayer];
      [v2 rate];
      v4 = v3;

      if (v4 < 1.0)
      {
        v5 = [v7 queuePlayer];
        [v5 play];
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

void __40__HRVideoPlayerView__setUpNotifications__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained queuePlayer];
  [v1 rate];
  v3 = v2;

  if (v3 > 0.0)
  {
    v4 = [WeakRetained queuePlayer];
    [v4 pause];
  }
}

- (void)_didReceivePlayerNotification:(id)notification
{
  v33 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [notificationCopy object];
    error = [object2 error];
    if (error)
    {
    }

    else
    {
      errorLog = [object2 errorLog];

      if (!errorLog)
      {
        goto LABEL_16;
      }
    }

    name = [notificationCopy name];
    v12 = [name isEqualToString:*MEMORY[0x277CE6110]];

    if (!v12)
    {
      name2 = [notificationCopy name];
      v19 = [name2 isEqualToString:*MEMORY[0x277CE6118]];

      if (v19)
      {
        _HKInitializeLogging();
        v20 = *MEMORY[0x277CCC2D8];
        if (!os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        v14 = v20;
        v15 = NSStringFromSelector(a2);
        error2 = [object2 error];
        v25 = 138543874;
        selfCopy3 = self;
        v27 = 2114;
        v28 = v15;
        v29 = 2112;
        v30 = error2;
        v21 = "[%{public}@ %{public}@] Playback stalled while playing content with error: %@";
      }

      else
      {
        name3 = [notificationCopy name];
        v23 = [name3 isEqualToString:*MEMORY[0x277CE6140]];

        if (!v23)
        {
          goto LABEL_16;
        }

        _HKInitializeLogging();
        v24 = *MEMORY[0x277CCC2D8];
        if (!os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        v14 = v24;
        v15 = NSStringFromSelector(a2);
        error2 = [object2 error];
        v25 = 138543874;
        selfCopy3 = self;
        v27 = 2114;
        v28 = v15;
        v29 = 2112;
        v30 = error2;
        v21 = "[%{public}@ %{public}@] Time jumped while playing content with error: %@";
      }

      _os_log_error_impl(&dword_2521E7000, v14, OS_LOG_TYPE_ERROR, v21, &v25, 0x20u);
      goto LABEL_15;
    }

    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v15 = NSStringFromSelector(a2);
      error2 = [object2 errorLog];
      error3 = [object2 error];
      v25 = 138544130;
      selfCopy3 = self;
      v27 = 2114;
      v28 = v15;
      v29 = 2112;
      v30 = error2;
      v31 = 2112;
      v32 = error3;
      _os_log_error_impl(&dword_2521E7000, v14, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] Failed to play content, new error log entry %@ with error: %@", &v25, 0x2Au);

LABEL_15:
    }

LABEL_16:
  }
}

@end