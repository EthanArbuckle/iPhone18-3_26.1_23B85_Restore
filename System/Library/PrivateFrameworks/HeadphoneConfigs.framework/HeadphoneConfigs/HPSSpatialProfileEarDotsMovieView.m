@interface HPSSpatialProfileEarDotsMovieView
- (HPSSpatialProfileEarDotsMovieView)initWithFrame:(CGRect)a3;
- (void)addBoundaryTimeObserver;
- (void)dealloc;
- (void)hideDots;
- (void)removeBoundaryTimeObserver;
- (void)showDots;
@end

@implementation HPSSpatialProfileEarDotsMovieView

- (HPSSpatialProfileEarDotsMovieView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = HPSSpatialProfileEarDotsMovieView;
  v3 = [(HPSSpatialProfileEarDotsMovieView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"HRTF_Ear_Dots_Video" ofType:@"mov"];

    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v7 = [MEMORY[0x277CE65B0] playerItemWithURL:v6];
    playerItem = v3->_playerItem;
    v3->_playerItem = v7;

    v9 = [objc_alloc(MEMORY[0x277CE6598]) initWithPlayerItem:v3->_playerItem];
    player = v3->_player;
    v3->_player = v9;

    v11 = [MEMORY[0x277CE65D8] playerLayerWithPlayer:v3->_player];
    playerLayer = v3->_playerLayer;
    v3->_playerLayer = v11;

    [(AVPlayerLayer *)v3->_playerLayer setVideoGravity:*MEMORY[0x277CE5DD8]];
    [(HPSSpatialProfileEarDotsMovieView *)v3 bounds];
    [(AVPlayerLayer *)v3->_playerLayer setFrame:?];
    v13 = [(HPSSpatialProfileEarDotsMovieView *)v3 layer];
    [v13 addSublayer:v3->_playerLayer];

    [(HPSSpatialProfileEarDotsMovieView *)v3 addBoundaryTimeObserver];
  }

  return v3;
}

- (void)dealloc
{
  [(HPSSpatialProfileEarDotsMovieView *)self removeBoundaryTimeObserver];
  v3.receiver = self;
  v3.super_class = HPSSpatialProfileEarDotsMovieView;
  [(HPSSpatialProfileEarDotsMovieView *)&v3 dealloc];
}

- (void)addBoundaryTimeObserver
{
  v3 = [MEMORY[0x277CBEB18] array];
  v15 = **&MEMORY[0x277CC08F0];
  v10 = *&v15.value;
  epoch = v15.epoch;
  CMTimeMakeWithSeconds(&rhs, 1.0, 1);
  *&lhs.value = v10;
  lhs.epoch = epoch;
  CMTimeAdd(&v15, &lhs, &rhs);
  rhs = v15;
  v5 = [MEMORY[0x277CCAE60] valueWithCMTime:&rhs];
  [v3 addObject:v5];

  objc_initWeak(&rhs, self);
  v6 = [(HPSSpatialProfileEarDotsMovieView *)self player];
  v7 = MEMORY[0x277D85CD0];
  v8 = MEMORY[0x277D85CD0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__HPSSpatialProfileEarDotsMovieView_addBoundaryTimeObserver__block_invoke;
  v11[3] = &unk_2796AD668;
  objc_copyWeak(&v12, &rhs);
  v9 = [v6 addBoundaryTimeObserverForTimes:v3 queue:v7 usingBlock:v11];
  [(HPSSpatialProfileEarDotsMovieView *)self setTimeObserverToken:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&rhs);
}

void __60__HPSSpatialProfileEarDotsMovieView_addBoundaryTimeObserver__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained player];
  [v1 pause];
}

- (void)removeBoundaryTimeObserver
{
  v3 = [(HPSSpatialProfileEarDotsMovieView *)self timeObserverToken];

  if (v3)
  {
    v4 = [(HPSSpatialProfileEarDotsMovieView *)self player];
    v5 = [(HPSSpatialProfileEarDotsMovieView *)self timeObserverToken];
    [v4 removeTimeObserver:v5];

    [(HPSSpatialProfileEarDotsMovieView *)self setTimeObserverToken:0];
  }
}

- (void)showDots
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Dots: Show Dots", &v5, 2u);
  }

  player = self->_player;
  v5 = *MEMORY[0x277CC08F0];
  v6 = *(MEMORY[0x277CC08F0] + 16);
  [(AVPlayer *)player seekToTime:&v5];
  [(AVPlayer *)self->_player play];
}

- (void)hideDots
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.value) = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Dots: Hide Dots", &buf, 2u);
  }

  memset(&buf, 0, sizeof(buf));
  CMTimeMakeWithSeconds(&rhs, 6.0, 1000);
  v5 = **&MEMORY[0x277CC08F0];
  CMTimeAdd(&buf, &v5, &rhs);
  player = self->_player;
  rhs = buf;
  [(AVPlayer *)player seekToTime:&rhs];
  [(AVPlayer *)self->_player play];
}

@end