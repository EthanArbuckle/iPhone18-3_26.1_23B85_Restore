@interface BKUIPearlMovieLoopView
- (BKUIPearlMovieLoopView)initWithFrame:(CGRect)a3 player:(id)a4 asset:(id)a5;
- (BOOL)landscape;
- (BOOL)portrait;
- (id)selfPortrait;
- (void)addAnimatedSelfPotraitIfNeeded;
- (void)hideAVPlayerReplaceWithSnapshot;
- (void)selfPortrait;
- (void)setAlphaHideOnZero:(double)a3;
- (void)unhideAVPlayerRemoveSnapshot;
@end

@implementation BKUIPearlMovieLoopView

- (BKUIPearlMovieLoopView)initWithFrame:(CGRect)a3 player:(id)a4 asset:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = BKUIPearlMovieLoopView;
  v14 = [(BKUIPearlMovieLoopView *)&v21 initWithFrame:x, y, width, height];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_player, a4);
    objc_storeStrong(&v15->_assets, a5);
    v16 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{x, y, width, height}];
    imageView = v15->_imageView;
    v15->_imageView = v16;

    v18 = [(BKUIPearlMovieLoopView *)v15 selfPortrait];
    [(UIImageView *)v15->_imageView setImage:v18];

    v19 = [(BKUIPearlMovieLoopView *)v15 playerLayer];
    [v19 setPlayer:v12];

    [(BKUIPearlMovieLoopView *)v15 addAnimatedSelfPotraitIfNeeded];
  }

  return v15;
}

- (void)addAnimatedSelfPotraitIfNeeded
{
  v3 = +[BKUIDevice sharedInstance];
  v4 = [v3 isRestrictedToLandscapeEnrollment];

  if (v4)
  {
    if ([(BKUIPearlMovieLoopView *)self landscape])
    {
      return;
    }
  }

  else if ([(BKUIPearlMovieLoopView *)self portrait])
  {
    return;
  }

  v5 = _BKUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [(BKUIPearlMovieLoopView *)v5 addAnimatedSelfPotraitIfNeeded];
  }

  [(BKUIPearlMovieLoopView *)self addSubview:self->_imageView];
}

- (void)unhideAVPlayerRemoveSnapshot
{
  v2 = [(BKUIPearlMovieLoopView *)self imageView];
  [v2 removeFromSuperview];
}

- (void)hideAVPlayerReplaceWithSnapshot
{
  v3 = [(BKUIPearlMovieLoopView *)self imageView];
  [(BKUIPearlMovieLoopView *)self addSubview:v3];
}

- (BOOL)portrait
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  if ([v3 userInterfaceIdiom])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(BKUIPearlMovieLoopView *)self traitCollection];
    v4 = [v5 horizontalSizeClass] == 1;
  }

  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 orientation] == 1 || +[BKUIUtils activeInterfaceOrientationForView:](BKUIUtils, "activeInterfaceOrientationForView:", self) == 1 || v4;

  return v7 & 1;
}

- (BOOL)landscape
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 orientation] == 3 || +[BKUIUtils activeInterfaceOrientationForView:](BKUIUtils, "activeInterfaceOrientationForView:", self) == 3;

  return v4;
}

- (void)setAlphaHideOnZero:(double)a3
{
  [(BKUIPearlMovieLoopView *)self setAlpha:?];

  [(BKUIPearlMovieLoopView *)self setHidden:a3 == 0.0];
}

- (id)selfPortrait
{
  selfPortraite = self->_selfPortraite;
  if (!selfPortraite)
  {
    v4 = [(BKUIPearlMovieLoopView *)self player];
    CMTimeMake(&v12, 0, 1);
    v5 = [(BKUIPearlMovieLoopView *)self assets];
    v11 = 0;
    v6 = [v4 bkui_snapshotImageAt:&v12 asset:v5 error:&v11];
    v7 = v11;
    v8 = self->_selfPortraite;
    self->_selfPortraite = v6;

    if (v7)
    {
      v10 = _BKUILoggingFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [(BKUIPearlMovieLoopView *)v7 selfPortrait];
      }

      __assert_rtn("[BKUIPearlMovieLoopView selfPortrait]", "BKUIPearlMovieLoopView.m", 105, "false");
    }

    selfPortraite = self->_selfPortraite;
  }

  return selfPortraite;
}

- (void)selfPortrait
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a1 localizedDescription];
  v6 = 138412546;
  v7 = v4;
  v8 = 2048;
  v9 = [a1 code];
  _os_log_fault_impl(&dword_241B0A000, a2, OS_LOG_TYPE_FAULT, "error could not grab image clip of the av clip description:/n%@ code: %li", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end