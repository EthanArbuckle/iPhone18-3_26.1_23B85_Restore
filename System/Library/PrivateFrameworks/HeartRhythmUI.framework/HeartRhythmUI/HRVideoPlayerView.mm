@interface HRVideoPlayerView
+ (HRVideoPlayerView)playerViewWithURL:(id)a3 looping:(BOOL)a4;
- (BOOL)preventsDisplaySleepDuringVideoPlayback;
- (HRVideoPlayerView)initWithItems:(id)a3 thumbnail:(id)a4 looping:(BOOL)a5;
- (id)player;
- (void)_didReceivePlayerNotification:(id)a3;
- (void)_setUpNotifications;
- (void)_setUpUI;
- (void)dealloc;
- (void)pause;
- (void)play;
- (void)setPlayer:(id)a3;
- (void)setPreventsDisplaySleepDuringVideoPlayback:(BOOL)a3;
@end

@implementation HRVideoPlayerView

- (HRVideoPlayerView)initWithItems:(id)a3 thumbnail:(id)a4 looping:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = HRVideoPlayerView;
  v11 = [(HRVideoPlayerView *)&v14 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_items, a3);
    objc_storeStrong(&v12->_thumbnail, a4);
    v12->_looping = a5;
    [(HRVideoPlayerView *)v12 _setUpUI];
    [(HRVideoPlayerView *)v12 _setUpNotifications];
  }

  return v12;
}

+ (HRVideoPlayerView)playerViewWithURL:(id)a3 looping:(BOOL)a4
{
  v4 = a4;
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CE6650];
  v6 = a3;
  v7 = [[v5 alloc] initWithURL:v6 options:0];
  v8 = [MEMORY[0x277CE65B0] playerItemWithURL:v6];

  [v7 hrui_assetSize];
  v10 = v9;
  v12 = v11;
  v13 = [v7 hrui_thumbnailImage];
  v14 = objc_alloc(objc_opt_class());
  v19[0] = v8;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v16 = [v14 initWithItems:v15 thumbnail:v13 looping:v4];

  [v16 hrui_constraintAspectRatioFromSize:{v10, v12}];
  v17 = [v16 layer];
  [v17 setNeedsDisplayOnBoundsChange:1];

  return v16;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = [(HRVideoPlayerView *)self applicationActiveNotificationStub];
  [v3 removeObserver:v4];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = [(HRVideoPlayerView *)self applicationInactiveNotificationStub];
  [v5 removeObserver:v6];

  v7.receiver = self;
  v7.super_class = HRVideoPlayerView;
  [(HRVideoPlayerView *)&v7 dealloc];
}

- (void)setPreventsDisplaySleepDuringVideoPlayback:(BOOL)a3
{
  v3 = a3;
  v4 = [(HRVideoPlayerView *)self queuePlayer];
  [v4 setPreventsDisplaySleepDuringVideoPlayback:v3];
}

- (BOOL)preventsDisplaySleepDuringVideoPlayback
{
  v2 = [(HRVideoPlayerView *)self queuePlayer];
  v3 = [v2 preventsDisplaySleepDuringVideoPlayback];

  return v3;
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
    v9 = self;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_2521E7000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] Playing content", &v8, 0x16u);
  }

  v7 = [(HRVideoPlayerView *)self queuePlayer];
  [v7 play];

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
    v9 = self;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_2521E7000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] Pausing content", &v8, 0x16u);
  }

  v7 = [(HRVideoPlayerView *)self queuePlayer];
  [v7 pause];

  [(HRVideoPlayerView *)self setShouldBePlaying:0];
}

- (id)player
{
  v2 = [(HRVideoPlayerView *)self layer];
  v3 = [v2 player];

  return v3;
}

- (void)setPlayer:(id)a3
{
  v4 = a3;
  v5 = [(HRVideoPlayerView *)self layer];
  [v5 setPlayer:v4];
}

- (void)_setUpUI
{
  v3 = MEMORY[0x277CE65F8];
  v4 = [(HRVideoPlayerView *)self items];
  v5 = [v3 queuePlayerWithItems:v4];
  [(HRVideoPlayerView *)self setQueuePlayer:v5];

  v6 = [(HRVideoPlayerView *)self queuePlayer];
  [v6 setPreventsDisplaySleepDuringVideoPlayback:0];

  v7 = MEMORY[0x277CE65E0];
  v8 = [(HRVideoPlayerView *)self queuePlayer];
  v9 = [(HRVideoPlayerView *)self items];
  v10 = [v9 firstObject];
  v11 = [v7 playerLooperWithPlayer:v8 templateItem:v10];
  [(HRVideoPlayerView *)self setPlayerLooper:v11];

  v12 = [(HRVideoPlayerView *)self layer];
  [v12 setShouldRasterize:1];

  v13 = [MEMORY[0x277D759A0] mainScreen];
  [v13 scale];
  v15 = v14;
  v16 = [(HRVideoPlayerView *)self layer];
  [v16 setRasterizationScale:v15];

  v17 = [(HRVideoPlayerView *)self thumbnail];

  if (v17)
  {
    v18 = objc_alloc(MEMORY[0x277D755E8]);
    v19 = [(HRVideoPlayerView *)self thumbnail];
    v20 = [v18 initWithImage:v19];
    [(HRVideoPlayerView *)self setThumbnailImageView:v20];

    v21 = [(HRVideoPlayerView *)self thumbnailImageView];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

    v22 = [(HRVideoPlayerView *)self thumbnailImageView];
    [(HRVideoPlayerView *)self addSubview:v22];

    v23 = [(HRVideoPlayerView *)self layer];
    v24 = [(HRVideoPlayerView *)self thumbnailImageView];
    v25 = [v24 layer];
    [v23 insertSublayer:v25 atIndex:0];

    v26 = [(HRVideoPlayerView *)self thumbnailImageView];
    [v26 hk_alignConstraintsWithView:self];
  }

  if (![(HRVideoPlayerView *)self looping])
  {
    v27 = [(HRVideoPlayerView *)self playerLooper];
    [v27 disableLooping];
  }

  v28 = [(HRVideoPlayerView *)self queuePlayer];
  [(HRVideoPlayerView *)self setPlayer:v28];
}

- (void)_setUpNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  objc_initWeak(&location, self);
  v4 = [MEMORY[0x277CCABD8] mainQueue];
  v5 = *MEMORY[0x277D76648];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __40__HRVideoPlayerView__setUpNotifications__block_invoke;
  v18[3] = &unk_2796FBAF8;
  objc_copyWeak(&v19, &location);
  v6 = [v3 addObserverForName:v5 object:0 queue:v4 usingBlock:v18];
  [(HRVideoPlayerView *)self setApplicationActiveNotificationStub:v6];

  v7 = [MEMORY[0x277CCABD8] mainQueue];
  v8 = *MEMORY[0x277D76768];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __40__HRVideoPlayerView__setUpNotifications__block_invoke_2;
  v16[3] = &unk_2796FBAF8;
  objc_copyWeak(&v17, &location);
  v9 = [v3 addObserverForName:v8 object:0 queue:v7 usingBlock:v16];
  [(HRVideoPlayerView *)self setApplicationInactiveNotificationStub:v9];

  v10 = [(HRVideoPlayerView *)self queuePlayer];
  v11 = [v10 currentItem];
  [v3 addObserver:self selector:sel__didReceivePlayerNotification_ name:*MEMORY[0x277CE6110] object:v11];

  v12 = [(HRVideoPlayerView *)self queuePlayer];
  v13 = [v12 currentItem];
  [v3 addObserver:self selector:sel__didReceivePlayerNotification_ name:*MEMORY[0x277CE6118] object:v13];

  v14 = [(HRVideoPlayerView *)self queuePlayer];
  v15 = [v14 currentItem];
  [v3 addObserver:self selector:sel__didReceivePlayerNotification_ name:*MEMORY[0x277CE6140] object:v15];

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

- (void)_didReceivePlayerNotification:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v5 object];
    v9 = [v8 error];
    if (v9)
    {
    }

    else
    {
      v10 = [v8 errorLog];

      if (!v10)
      {
        goto LABEL_16;
      }
    }

    v11 = [v5 name];
    v12 = [v11 isEqualToString:*MEMORY[0x277CE6110]];

    if (!v12)
    {
      v18 = [v5 name];
      v19 = [v18 isEqualToString:*MEMORY[0x277CE6118]];

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
        v16 = [v8 error];
        v25 = 138543874;
        v26 = self;
        v27 = 2114;
        v28 = v15;
        v29 = 2112;
        v30 = v16;
        v21 = "[%{public}@ %{public}@] Playback stalled while playing content with error: %@";
      }

      else
      {
        v22 = [v5 name];
        v23 = [v22 isEqualToString:*MEMORY[0x277CE6140]];

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
        v16 = [v8 error];
        v25 = 138543874;
        v26 = self;
        v27 = 2114;
        v28 = v15;
        v29 = 2112;
        v30 = v16;
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
      v16 = [v8 errorLog];
      v17 = [v8 error];
      v25 = 138544130;
      v26 = self;
      v27 = 2114;
      v28 = v15;
      v29 = 2112;
      v30 = v16;
      v31 = 2112;
      v32 = v17;
      _os_log_error_impl(&dword_2521E7000, v14, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] Failed to play content, new error log entry %@ with error: %@", &v25, 0x2Au);

LABEL_15:
    }

LABEL_16:
  }
}

@end