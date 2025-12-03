@interface HPSMovieLoopPlayer
- (CGRect)desiredBounds;
- (HPSMovieLoopPlayer)initWithFrame:(CGRect)frame urlForResource:(id)resource;
- (void)hideVideoPlayer;
- (void)layoutSubviews;
- (void)load;
- (void)play;
- (void)setAlpha:(double)alpha;
- (void)setAlphaHideOnZero:(double)zero;
- (void)showVideoPlayer;
@end

@implementation HPSMovieLoopPlayer

- (HPSMovieLoopPlayer)initWithFrame:(CGRect)frame urlForResource:(id)resource
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  resourceCopy = resource;
  v16.receiver = self;
  v16.super_class = HPSMovieLoopPlayer;
  height = [(HPSMovieLoopPlayer *)&v16 initWithFrame:x, y, width, height];
  if (height)
  {
    v12 = [MEMORY[0x1E69880E0] playerLayerWithPlayer:0];
    playerLayer = height->_playerLayer;
    height->_playerLayer = v12;

    objc_storeStrong(&height->_url, resource);
    height->_desiredBounds.origin.x = 0.0;
    height->_desiredBounds.origin.y = 0.0;
    height->_desiredBounds.size.width = width;
    height->_desiredBounds.size.height = height;
    layer = [(HPSMovieLoopPlayer *)height layer];
    [layer addSublayer:height->_playerLayer];
  }

  return height;
}

- (void)load
{
  mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
  [mEMORY[0x1E6958460] setCategory:*MEMORY[0x1E6958038] withOptions:1 error:0];

  v4 = objc_opt_new();
  videoPlayer = self->_videoPlayer;
  self->_videoPlayer = v4;

  [(AVQueuePlayer *)self->_videoPlayer setMuted:1];
  [(AVQueuePlayer *)self->_videoPlayer setAllowsExternalPlayback:0];
  v6 = self->_videoPlayer;
  playerLayer = [(HPSMovieLoopPlayer *)self playerLayer];
  [playerLayer setPlayer:v6];

  [(HPSMovieLoopPlayer *)self showVideoPlayer];
  v8 = MEMORY[0x1E69880E8];
  v9 = self->_videoPlayer;
  v10 = objc_alloc(MEMORY[0x1E69880B0]);
  v11 = [(HPSMovieLoopPlayer *)self url];
  v12 = [v10 initWithURL:v11];
  v13 = [v8 playerLooperWithPlayer:v9 templateItem:v12];
  playerLooper = self->_playerLooper;
  self->_playerLooper = v13;

  videoPlayer = [(HPSMovieLoopPlayer *)self videoPlayer];
  v16 = *MEMORY[0x1E6960CC0];
  v17 = *(MEMORY[0x1E6960CC0] + 16);
  [videoPlayer seekToTime:&v16];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = HPSMovieLoopPlayer;
  [(HPSMovieLoopPlayer *)&v15 layoutSubviews];
  playerLayer = [(HPSMovieLoopPlayer *)self playerLayer];
  [(HPSMovieLoopPlayer *)self desiredBounds];
  [playerLayer setBounds:?];

  layer = [(HPSMovieLoopPlayer *)self layer];
  [layer setMasksToBounds:0];

  layer2 = [(HPSMovieLoopPlayer *)self layer];
  [layer2 setCornerRadius:0.0];

  layer3 = [(HPSMovieLoopPlayer *)self layer];
  [layer3 bounds];
  v8 = v7 * 0.5;
  layer4 = [(HPSMovieLoopPlayer *)self layer];
  [layer4 bounds];
  v11 = v10 * 0.5;
  playerLayer2 = [(HPSMovieLoopPlayer *)self playerLayer];
  [playerLayer2 setPosition:{v8, v11}];

  v13 = *MEMORY[0x1E69874F0];
  playerLayer3 = [(HPSMovieLoopPlayer *)self playerLayer];
  [playerLayer3 setVideoGravity:v13];
}

- (void)showVideoPlayer
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __37__HPSMovieLoopPlayer_showVideoPlayer__block_invoke;
  v2[3] = &unk_1E7970208;
  v2[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v2 animations:0.15];
}

void __37__HPSMovieLoopPlayer_showVideoPlayer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playerLayer];
  LODWORD(v1) = 1.0;
  [v2 setOpacity:v1];
}

- (void)hideVideoPlayer
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __37__HPSMovieLoopPlayer_hideVideoPlayer__block_invoke;
  v2[3] = &unk_1E7970208;
  v2[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v2 animations:0.15];
}

void __37__HPSMovieLoopPlayer_hideVideoPlayer__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) playerLayer];
  [v1 setOpacity:0.0];
}

- (void)setAlphaHideOnZero:(double)zero
{
  [(HPSMovieLoopPlayer *)self setAlpha:?];

  [(HPSMovieLoopPlayer *)self setHidden:zero == 0.0];
}

- (void)setAlpha:(double)alpha
{
  v7.receiver = self;
  v7.super_class = HPSMovieLoopPlayer;
  [(HPSMovieLoopPlayer *)&v7 setAlpha:?];
  playerLayer = [(HPSMovieLoopPlayer *)self playerLayer];
  *&alpha = alpha;
  LODWORD(v6) = LODWORD(alpha);
  [playerLayer setOpacity:v6];
}

- (void)play
{
  NSLog(&cfstr_SpatialProfile.isa, a2);
  videoPlayer = [(HPSMovieLoopPlayer *)self videoPlayer];
  v6 = *MEMORY[0x1E6960CC0];
  v7 = *(MEMORY[0x1E6960CC0] + 16);
  [videoPlayer seekToTime:&v6];

  videoPlayer2 = [(HPSMovieLoopPlayer *)self videoPlayer];
  LODWORD(v5) = 1.0;
  [videoPlayer2 playImmediatelyAtRate:v5];
}

- (CGRect)desiredBounds
{
  x = self->_desiredBounds.origin.x;
  y = self->_desiredBounds.origin.y;
  width = self->_desiredBounds.size.width;
  height = self->_desiredBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end