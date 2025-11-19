@interface HPSMovieLoopPlayer
- (CGRect)desiredBounds;
- (HPSMovieLoopPlayer)initWithFrame:(CGRect)a3 urlForResource:(id)a4;
- (void)hideVideoPlayer;
- (void)layoutSubviews;
- (void)load;
- (void)play;
- (void)setAlpha:(double)a3;
- (void)setAlphaHideOnZero:(double)a3;
- (void)showVideoPlayer;
@end

@implementation HPSMovieLoopPlayer

- (HPSMovieLoopPlayer)initWithFrame:(CGRect)a3 urlForResource:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = HPSMovieLoopPlayer;
  v11 = [(HPSMovieLoopPlayer *)&v16 initWithFrame:x, y, width, height];
  if (v11)
  {
    v12 = [MEMORY[0x1E69880E0] playerLayerWithPlayer:0];
    playerLayer = v11->_playerLayer;
    v11->_playerLayer = v12;

    objc_storeStrong(&v11->_url, a4);
    v11->_desiredBounds.origin.x = 0.0;
    v11->_desiredBounds.origin.y = 0.0;
    v11->_desiredBounds.size.width = width;
    v11->_desiredBounds.size.height = height;
    v14 = [(HPSMovieLoopPlayer *)v11 layer];
    [v14 addSublayer:v11->_playerLayer];
  }

  return v11;
}

- (void)load
{
  v3 = [MEMORY[0x1E6958460] sharedInstance];
  [v3 setCategory:*MEMORY[0x1E6958038] withOptions:1 error:0];

  v4 = objc_opt_new();
  videoPlayer = self->_videoPlayer;
  self->_videoPlayer = v4;

  [(AVQueuePlayer *)self->_videoPlayer setMuted:1];
  [(AVQueuePlayer *)self->_videoPlayer setAllowsExternalPlayback:0];
  v6 = self->_videoPlayer;
  v7 = [(HPSMovieLoopPlayer *)self playerLayer];
  [v7 setPlayer:v6];

  [(HPSMovieLoopPlayer *)self showVideoPlayer];
  v8 = MEMORY[0x1E69880E8];
  v9 = self->_videoPlayer;
  v10 = objc_alloc(MEMORY[0x1E69880B0]);
  v11 = [(HPSMovieLoopPlayer *)self url];
  v12 = [v10 initWithURL:v11];
  v13 = [v8 playerLooperWithPlayer:v9 templateItem:v12];
  playerLooper = self->_playerLooper;
  self->_playerLooper = v13;

  v15 = [(HPSMovieLoopPlayer *)self videoPlayer];
  v16 = *MEMORY[0x1E6960CC0];
  v17 = *(MEMORY[0x1E6960CC0] + 16);
  [v15 seekToTime:&v16];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = HPSMovieLoopPlayer;
  [(HPSMovieLoopPlayer *)&v15 layoutSubviews];
  v3 = [(HPSMovieLoopPlayer *)self playerLayer];
  [(HPSMovieLoopPlayer *)self desiredBounds];
  [v3 setBounds:?];

  v4 = [(HPSMovieLoopPlayer *)self layer];
  [v4 setMasksToBounds:0];

  v5 = [(HPSMovieLoopPlayer *)self layer];
  [v5 setCornerRadius:0.0];

  v6 = [(HPSMovieLoopPlayer *)self layer];
  [v6 bounds];
  v8 = v7 * 0.5;
  v9 = [(HPSMovieLoopPlayer *)self layer];
  [v9 bounds];
  v11 = v10 * 0.5;
  v12 = [(HPSMovieLoopPlayer *)self playerLayer];
  [v12 setPosition:{v8, v11}];

  v13 = *MEMORY[0x1E69874F0];
  v14 = [(HPSMovieLoopPlayer *)self playerLayer];
  [v14 setVideoGravity:v13];
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

- (void)setAlphaHideOnZero:(double)a3
{
  [(HPSMovieLoopPlayer *)self setAlpha:?];

  [(HPSMovieLoopPlayer *)self setHidden:a3 == 0.0];
}

- (void)setAlpha:(double)a3
{
  v7.receiver = self;
  v7.super_class = HPSMovieLoopPlayer;
  [(HPSMovieLoopPlayer *)&v7 setAlpha:?];
  v5 = [(HPSMovieLoopPlayer *)self playerLayer];
  *&a3 = a3;
  LODWORD(v6) = LODWORD(a3);
  [v5 setOpacity:v6];
}

- (void)play
{
  NSLog(&cfstr_SpatialProfile.isa, a2);
  v3 = [(HPSMovieLoopPlayer *)self videoPlayer];
  v6 = *MEMORY[0x1E6960CC0];
  v7 = *(MEMORY[0x1E6960CC0] + 16);
  [v3 seekToTime:&v6];

  v4 = [(HPSMovieLoopPlayer *)self videoPlayer];
  LODWORD(v5) = 1.0;
  [v4 playImmediatelyAtRate:v5];
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