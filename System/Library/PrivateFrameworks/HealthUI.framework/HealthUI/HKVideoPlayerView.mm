@interface HKVideoPlayerView
+ (id)playerViewWithURL:(id)a3 looping:(BOOL)a4;
- (BOOL)preventsDisplaySleepDuringVideoPlayback;
- (HKVideoPlayerView)initWithItems:(id)a3 thumbnail:(id)a4 looping:(BOOL)a5;
- (id)player;
- (void)_setUpNotifications;
- (void)_setUpUI;
- (void)dealloc;
- (void)pause;
- (void)play;
- (void)setPlayer:(id)a3;
- (void)setPreventsDisplaySleepDuringVideoPlayback:(BOOL)a3;
@end

@implementation HKVideoPlayerView

- (HKVideoPlayerView)initWithItems:(id)a3 thumbnail:(id)a4 looping:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = HKVideoPlayerView;
  v11 = [(HKVideoPlayerView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_items, a3);
    objc_storeStrong(&v12->_thumbnail, a4);
    v12->_looping = a5;
    [(HKVideoPlayerView *)v12 _setUpUI];
    [(HKVideoPlayerView *)v12 _setUpNotifications];
  }

  return v12;
}

+ (id)playerViewWithURL:(id)a3 looping:(BOOL)a4
{
  v4 = a4;
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6988168];
  v6 = a3;
  v7 = [[v5 alloc] initWithURL:v6 options:0];
  v8 = [MEMORY[0x1E69880B0] playerItemWithURL:v6];

  [v7 hk_assetSize];
  v10 = v9;
  v12 = v11;
  v13 = [v7 hk_thumbnailImage];
  v14 = objc_alloc(objc_opt_class());
  v19[0] = v8;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v16 = [v14 initWithItems:v15 thumbnail:v13 looping:v4];

  [v16 hk_constraintAspectRatioFromSize:{v10, v12}];
  v17 = [v16 layer];
  [v17 setNeedsDisplayOnBoundsChange:1];

  return v16;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [(HKVideoPlayerView *)self applicationActiveNotificationStub];
  [v3 removeObserver:v4];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = [(HKVideoPlayerView *)self applicationInactiveNotificationStub];
  [v5 removeObserver:v6];

  v7.receiver = self;
  v7.super_class = HKVideoPlayerView;
  [(HKVideoPlayerView *)&v7 dealloc];
}

- (void)setPreventsDisplaySleepDuringVideoPlayback:(BOOL)a3
{
  v3 = a3;
  v4 = [(HKVideoPlayerView *)self queuePlayer];
  [v4 setPreventsDisplaySleepDuringVideoPlayback:v3];
}

- (BOOL)preventsDisplaySleepDuringVideoPlayback
{
  v2 = [(HKVideoPlayerView *)self queuePlayer];
  v3 = [v2 preventsDisplaySleepDuringVideoPlayback];

  return v3;
}

- (void)play
{
  v3 = [(HKVideoPlayerView *)self queuePlayer];
  [v3 play];

  [(HKVideoPlayerView *)self setShouldBePlaying:1];
}

- (void)pause
{
  v3 = [(HKVideoPlayerView *)self queuePlayer];
  [v3 pause];

  [(HKVideoPlayerView *)self setShouldBePlaying:0];
}

- (id)player
{
  v2 = [(HKVideoPlayerView *)self layer];
  v3 = [v2 player];

  return v3;
}

- (void)setPlayer:(id)a3
{
  v4 = a3;
  v5 = [(HKVideoPlayerView *)self layer];
  [v5 setPlayer:v4];
}

- (void)_setUpUI
{
  v3 = MEMORY[0x1E6988100];
  v4 = [(HKVideoPlayerView *)self items];
  v5 = [v3 queuePlayerWithItems:v4];
  [(HKVideoPlayerView *)self setQueuePlayer:v5];

  v6 = [(HKVideoPlayerView *)self queuePlayer];
  [v6 setPreventsDisplaySleepDuringVideoPlayback:0];

  v7 = MEMORY[0x1E69880E8];
  v8 = [(HKVideoPlayerView *)self queuePlayer];
  v9 = [(HKVideoPlayerView *)self items];
  v10 = [v9 firstObject];
  v11 = [v7 playerLooperWithPlayer:v8 templateItem:v10];
  [(HKVideoPlayerView *)self setPlayerLooper:v11];

  v12 = [(HKVideoPlayerView *)self layer];
  [v12 setShouldRasterize:1];

  v13 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v13 scale];
  v15 = v14;
  v16 = [(HKVideoPlayerView *)self layer];
  [v16 setRasterizationScale:v15];

  v17 = [(HKVideoPlayerView *)self thumbnail];

  if (v17)
  {
    v18 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v19 = [(HKVideoPlayerView *)self thumbnail];
    v20 = [v18 initWithImage:v19];
    [(HKVideoPlayerView *)self setThumbnailImageView:v20];

    v21 = [(HKVideoPlayerView *)self thumbnailImageView];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

    v22 = [(HKVideoPlayerView *)self thumbnailImageView];
    [(HKVideoPlayerView *)self insertSubview:v22 atIndex:0];

    v23 = [(HKVideoPlayerView *)self thumbnailImageView];
    [v23 hk_alignConstraintsWithView:self];
  }

  if (![(HKVideoPlayerView *)self looping])
  {
    v24 = [(HKVideoPlayerView *)self playerLooper];
    [v24 disableLooping];
  }

  v25 = [(HKVideoPlayerView *)self queuePlayer];
  [(HKVideoPlayerView *)self setPlayer:v25];
}

- (void)_setUpNotifications
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [MEMORY[0x1E696ADC8] mainQueue];
  v5 = *MEMORY[0x1E69DDAB0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __40__HKVideoPlayerView__setUpNotifications__block_invoke;
  v13[3] = &unk_1E81B7A10;
  objc_copyWeak(&v14, &location);
  v6 = [v3 addObserverForName:v5 object:0 queue:v4 usingBlock:v13];
  [(HKVideoPlayerView *)self setApplicationActiveNotificationStub:v6];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = [MEMORY[0x1E696ADC8] mainQueue];
  v9 = *MEMORY[0x1E69DDBC8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__HKVideoPlayerView__setUpNotifications__block_invoke_2;
  v11[3] = &unk_1E81B7A10;
  objc_copyWeak(&v12, &location);
  v10 = [v7 addObserverForName:v9 object:0 queue:v8 usingBlock:v11];
  [(HKVideoPlayerView *)self setApplicationInactiveNotificationStub:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

uint64_t __40__HKVideoPlayerView__setUpNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    WeakRetained = [WeakRetained shouldBePlaying];
    v2 = v8;
    if (WeakRetained)
    {
      v3 = [v8 queuePlayer];
      [v3 rate];
      v5 = v4;

      v2 = v8;
      if (v5 < 1.0)
      {
        v6 = [v8 queuePlayer];
        [v6 play];

        v2 = v8;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v2);
}

void __40__HKVideoPlayerView__setUpNotifications__block_invoke_2(uint64_t a1)
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

@end