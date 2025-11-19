@interface HPSUISpatialProfileEarDotsMovieView
- (HPSUISpatialProfileEarDotsMovieView)initWithFrame:(CGRect)a3;
- (void)addBoundaryTimeObserver;
- (void)dealloc;
- (void)hideDots;
- (void)removeBoundaryTimeObserver;
- (void)showDots;
@end

@implementation HPSUISpatialProfileEarDotsMovieView

- (HPSUISpatialProfileEarDotsMovieView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = HPSUISpatialProfileEarDotsMovieView;
  v3 = [(HPSUISpatialProfileEarDotsMovieView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"HRTF_Ear_Dots_Video" ofType:@"mov"];

    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
    v7 = [MEMORY[0x1E69880B0] playerItemWithURL:v6];
    playerItem = v3->_playerItem;
    v3->_playerItem = v7;

    v9 = [objc_alloc(MEMORY[0x1E6988098]) initWithPlayerItem:v3->_playerItem];
    player = v3->_player;
    v3->_player = v9;

    v11 = [MEMORY[0x1E69880E0] playerLayerWithPlayer:v3->_player];
    playerLayer = v3->_playerLayer;
    v3->_playerLayer = v11;

    [(AVPlayerLayer *)v3->_playerLayer setVideoGravity:*MEMORY[0x1E69874F0]];
    [(HPSUISpatialProfileEarDotsMovieView *)v3 bounds];
    [(AVPlayerLayer *)v3->_playerLayer setFrame:?];
    v13 = [(HPSUISpatialProfileEarDotsMovieView *)v3 layer];
    [v13 addSublayer:v3->_playerLayer];

    [(HPSUISpatialProfileEarDotsMovieView *)v3 addBoundaryTimeObserver];
  }

  return v3;
}

- (void)dealloc
{
  [(HPSUISpatialProfileEarDotsMovieView *)self removeBoundaryTimeObserver];
  v3.receiver = self;
  v3.super_class = HPSUISpatialProfileEarDotsMovieView;
  [(HPSUISpatialProfileEarDotsMovieView *)&v3 dealloc];
}

- (void)addBoundaryTimeObserver
{
  v3 = [MEMORY[0x1E695DF70] array];
  v15 = **&MEMORY[0x1E6960CC0];
  v10 = *&v15.value;
  epoch = v15.epoch;
  CMTimeMakeWithSeconds(&rhs, 1.0, 1);
  *&lhs.value = v10;
  lhs.epoch = epoch;
  CMTimeAdd(&v15, &lhs, &rhs);
  rhs = v15;
  v5 = [MEMORY[0x1E696B098] valueWithCMTime:&rhs];
  [v3 addObject:v5];

  objc_initWeak(&rhs, self);
  v6 = [(HPSUISpatialProfileEarDotsMovieView *)self player];
  v7 = MEMORY[0x1E69E96A0];
  v8 = MEMORY[0x1E69E96A0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__HPSUISpatialProfileEarDotsMovieView_addBoundaryTimeObserver__block_invoke;
  v11[3] = &unk_1E7970BF8;
  objc_copyWeak(&v12, &rhs);
  v9 = [v6 addBoundaryTimeObserverForTimes:v3 queue:v7 usingBlock:v11];
  [(HPSUISpatialProfileEarDotsMovieView *)self setTimeObserverToken:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&rhs);
}

void __62__HPSUISpatialProfileEarDotsMovieView_addBoundaryTimeObserver__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained player];
  [v1 pause];
}

- (void)removeBoundaryTimeObserver
{
  v3 = [(HPSUISpatialProfileEarDotsMovieView *)self timeObserverToken];

  if (v3)
  {
    v4 = [(HPSUISpatialProfileEarDotsMovieView *)self player];
    v5 = [(HPSUISpatialProfileEarDotsMovieView *)self timeObserverToken];
    [v4 removeTimeObserver:v5];

    [(HPSUISpatialProfileEarDotsMovieView *)self setTimeObserverToken:0];
  }
}

- (void)showDots
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Dots: Show Dots", &v5, 2u);
  }

  player = self->_player;
  v5 = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 16);
  [(AVPlayer *)player seekToTime:&v5];
  [(AVPlayer *)self->_player play];
}

- (void)hideDots
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.value) = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Dots: Hide Dots", &buf, 2u);
  }

  memset(&buf, 0, sizeof(buf));
  CMTimeMakeWithSeconds(&rhs, 6.0, 1000);
  v5 = **&MEMORY[0x1E6960CC0];
  CMTimeAdd(&buf, &v5, &rhs);
  player = self->_player;
  rhs = buf;
  [(AVPlayer *)player seekToTime:&rhs];
  [(AVPlayer *)self->_player play];
}

@end