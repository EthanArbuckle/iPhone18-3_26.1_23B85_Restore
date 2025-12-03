@interface HKVideoPlayerView
+ (id)playerViewWithURL:(id)l looping:(BOOL)looping;
- (BOOL)preventsDisplaySleepDuringVideoPlayback;
- (HKVideoPlayerView)initWithItems:(id)items thumbnail:(id)thumbnail looping:(BOOL)looping;
- (id)player;
- (void)_setUpNotifications;
- (void)_setUpUI;
- (void)dealloc;
- (void)pause;
- (void)play;
- (void)setPlayer:(id)player;
- (void)setPreventsDisplaySleepDuringVideoPlayback:(BOOL)playback;
@end

@implementation HKVideoPlayerView

- (HKVideoPlayerView)initWithItems:(id)items thumbnail:(id)thumbnail looping:(BOOL)looping
{
  itemsCopy = items;
  thumbnailCopy = thumbnail;
  v14.receiver = self;
  v14.super_class = HKVideoPlayerView;
  v11 = [(HKVideoPlayerView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_items, items);
    objc_storeStrong(&v12->_thumbnail, thumbnail);
    v12->_looping = looping;
    [(HKVideoPlayerView *)v12 _setUpUI];
    [(HKVideoPlayerView *)v12 _setUpNotifications];
  }

  return v12;
}

+ (id)playerViewWithURL:(id)l looping:(BOOL)looping
{
  loopingCopy = looping;
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6988168];
  lCopy = l;
  v7 = [[v5 alloc] initWithURL:lCopy options:0];
  v8 = [MEMORY[0x1E69880B0] playerItemWithURL:lCopy];

  [v7 hk_assetSize];
  v10 = v9;
  v12 = v11;
  hk_thumbnailImage = [v7 hk_thumbnailImage];
  v14 = objc_alloc(objc_opt_class());
  v19[0] = v8;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v16 = [v14 initWithItems:v15 thumbnail:hk_thumbnailImage looping:loopingCopy];

  [v16 hk_constraintAspectRatioFromSize:{v10, v12}];
  layer = [v16 layer];
  [layer setNeedsDisplayOnBoundsChange:1];

  return v16;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  applicationActiveNotificationStub = [(HKVideoPlayerView *)self applicationActiveNotificationStub];
  [defaultCenter removeObserver:applicationActiveNotificationStub];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  applicationInactiveNotificationStub = [(HKVideoPlayerView *)self applicationInactiveNotificationStub];
  [defaultCenter2 removeObserver:applicationInactiveNotificationStub];

  v7.receiver = self;
  v7.super_class = HKVideoPlayerView;
  [(HKVideoPlayerView *)&v7 dealloc];
}

- (void)setPreventsDisplaySleepDuringVideoPlayback:(BOOL)playback
{
  playbackCopy = playback;
  queuePlayer = [(HKVideoPlayerView *)self queuePlayer];
  [queuePlayer setPreventsDisplaySleepDuringVideoPlayback:playbackCopy];
}

- (BOOL)preventsDisplaySleepDuringVideoPlayback
{
  queuePlayer = [(HKVideoPlayerView *)self queuePlayer];
  preventsDisplaySleepDuringVideoPlayback = [queuePlayer preventsDisplaySleepDuringVideoPlayback];

  return preventsDisplaySleepDuringVideoPlayback;
}

- (void)play
{
  queuePlayer = [(HKVideoPlayerView *)self queuePlayer];
  [queuePlayer play];

  [(HKVideoPlayerView *)self setShouldBePlaying:1];
}

- (void)pause
{
  queuePlayer = [(HKVideoPlayerView *)self queuePlayer];
  [queuePlayer pause];

  [(HKVideoPlayerView *)self setShouldBePlaying:0];
}

- (id)player
{
  layer = [(HKVideoPlayerView *)self layer];
  player = [layer player];

  return player;
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  layer = [(HKVideoPlayerView *)self layer];
  [layer setPlayer:playerCopy];
}

- (void)_setUpUI
{
  v3 = MEMORY[0x1E6988100];
  items = [(HKVideoPlayerView *)self items];
  v5 = [v3 queuePlayerWithItems:items];
  [(HKVideoPlayerView *)self setQueuePlayer:v5];

  queuePlayer = [(HKVideoPlayerView *)self queuePlayer];
  [queuePlayer setPreventsDisplaySleepDuringVideoPlayback:0];

  v7 = MEMORY[0x1E69880E8];
  queuePlayer2 = [(HKVideoPlayerView *)self queuePlayer];
  items2 = [(HKVideoPlayerView *)self items];
  firstObject = [items2 firstObject];
  v11 = [v7 playerLooperWithPlayer:queuePlayer2 templateItem:firstObject];
  [(HKVideoPlayerView *)self setPlayerLooper:v11];

  layer = [(HKVideoPlayerView *)self layer];
  [layer setShouldRasterize:1];

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v15 = v14;
  layer2 = [(HKVideoPlayerView *)self layer];
  [layer2 setRasterizationScale:v15];

  thumbnail = [(HKVideoPlayerView *)self thumbnail];

  if (thumbnail)
  {
    v18 = objc_alloc(MEMORY[0x1E69DCAE0]);
    thumbnail2 = [(HKVideoPlayerView *)self thumbnail];
    v20 = [v18 initWithImage:thumbnail2];
    [(HKVideoPlayerView *)self setThumbnailImageView:v20];

    thumbnailImageView = [(HKVideoPlayerView *)self thumbnailImageView];
    [thumbnailImageView setTranslatesAutoresizingMaskIntoConstraints:0];

    thumbnailImageView2 = [(HKVideoPlayerView *)self thumbnailImageView];
    [(HKVideoPlayerView *)self insertSubview:thumbnailImageView2 atIndex:0];

    thumbnailImageView3 = [(HKVideoPlayerView *)self thumbnailImageView];
    [thumbnailImageView3 hk_alignConstraintsWithView:self];
  }

  if (![(HKVideoPlayerView *)self looping])
  {
    playerLooper = [(HKVideoPlayerView *)self playerLooper];
    [playerLooper disableLooping];
  }

  queuePlayer3 = [(HKVideoPlayerView *)self queuePlayer];
  [(HKVideoPlayerView *)self setPlayer:queuePlayer3];
}

- (void)_setUpNotifications
{
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  v5 = *MEMORY[0x1E69DDAB0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __40__HKVideoPlayerView__setUpNotifications__block_invoke;
  v13[3] = &unk_1E81B7A10;
  objc_copyWeak(&v14, &location);
  v6 = [defaultCenter addObserverForName:v5 object:0 queue:mainQueue usingBlock:v13];
  [(HKVideoPlayerView *)self setApplicationActiveNotificationStub:v6];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  mainQueue2 = [MEMORY[0x1E696ADC8] mainQueue];
  v9 = *MEMORY[0x1E69DDBC8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__HKVideoPlayerView__setUpNotifications__block_invoke_2;
  v11[3] = &unk_1E81B7A10;
  objc_copyWeak(&v12, &location);
  v10 = [defaultCenter2 addObserverForName:v9 object:0 queue:mainQueue2 usingBlock:v11];
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