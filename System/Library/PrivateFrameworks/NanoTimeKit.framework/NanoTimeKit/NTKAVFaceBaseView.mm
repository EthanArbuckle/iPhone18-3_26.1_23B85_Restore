@interface NTKAVFaceBaseView
- (CLKVideoPlayerView)videoPlayerView;
- (NTKAVFaceBaseView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)_selectedContentView;
- (void)_cleanupAfterTransitionToOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_createVideoPlayerViewIfNeeded;
- (void)_loadSnapshotContentViews;
- (void)_mediaServicesWereReset:(id)reset;
- (void)_prepareForEditing;
- (void)_reset;
- (void)_transitionToPosterView:(id)view;
- (void)_unloadSnapshotContentViews;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation NTKAVFaceBaseView

- (void)dealloc
{
  [(NTKAVFaceBaseView *)self setVideoPlayerView:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = NTKAVFaceBaseView;
  [(NTKFaceView *)&v4 dealloc];
}

- (NTKAVFaceBaseView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = NTKAVFaceBaseView;
  v5 = [(NTKFaceView *)&v8 initWithFaceStyle:style forDevice:device clientIdentifier:identifier];
  if (v5)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__mediaServicesWereReset_ name:*MEMORY[0x277CB80A0] object:0];
  }

  return v5;
}

- (void)_loadSnapshotContentViews
{
  v8.receiver = self;
  v8.super_class = NTKAVFaceBaseView;
  [(NTKBackgroundImageFaceView *)&v8 _loadSnapshotContentViews];
  if (!self->_posterImageView)
  {
    _posterImageView = [(NTKAVFaceBaseView *)self _posterImageView];
    posterImageView = self->_posterImageView;
    self->_posterImageView = _posterImageView;
    v5 = _posterImageView;

    backgroundContainerView = [(NTKBackgroundImageFaceView *)self backgroundContainerView];
    [backgroundContainerView addSubview:self->_posterImageView];

    backgroundContainerView2 = [(NTKBackgroundImageFaceView *)self backgroundContainerView];
    [backgroundContainerView2 sendSubviewToBack:self->_posterImageView];
  }
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKAVFaceBaseView;
  [(NTKBackgroundImageFaceView *)&v3 _unloadSnapshotContentViews];
  [(UIImageView *)self->_posterImageView removeFromSuperview];
}

- (id)_selectedContentView
{
  kdebug_trace();
  posterImageView = self->_posterImageView;

  return posterImageView;
}

- (void)_transitionToPosterView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  if (self->_posterImageView)
  {
    posterImageView = [viewCopy image];
    [(UIImageView *)self->_posterImageView setImage:posterImageView];
  }

  else
  {
    v7 = viewCopy;
    posterImageView = self->_posterImageView;
    self->_posterImageView = v7;
  }

  v8 = objc_alloc(MEMORY[0x277D75D18]);
  [(CLKVideoPlayerView *)self->_videoPlayerView bounds];
  v9 = [v8 initWithFrame:?];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [v9 setBackgroundColor:blackColor];

  [v9 setAlpha:0.0];
  contentView = [(NTKFaceView *)self contentView];
  [contentView insertSubview:v9 aboveSubview:self->_videoPlayerView];

  v12 = MEMORY[0x277D75D18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __45__NTKAVFaceBaseView__transitionToPosterView___block_invoke;
  v16[3] = &unk_27877DB10;
  v17 = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__NTKAVFaceBaseView__transitionToPosterView___block_invoke_2;
  v14[3] = &unk_2787814E8;
  v14[4] = self;
  v15 = v17;
  v13 = v17;
  [v12 animateWithDuration:0x10000 delay:v16 options:v14 animations:0.2 completion:0.0];
}

void __45__NTKAVFaceBaseView__transitionToPosterView___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1072) removeFromSuperview];
  [*(*(a1 + 32) + 1072) pause];
  [*(*(a1 + 32) + 1080) setAlpha:0.0];
  v2 = [*(a1 + 32) backgroundContainerView];
  [v2 addSubview:*(*(a1 + 32) + 1080)];

  v3 = [*(a1 + 32) backgroundContainerView];
  [v3 sendSubviewToBack:*(*(a1 + 32) + 1080)];

  [*(*(a1 + 32) + 1080) setHidden:0];
  v4 = MEMORY[0x277D75D18];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__NTKAVFaceBaseView__transitionToPosterView___block_invoke_3;
  v8[3] = &unk_27877E438;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__NTKAVFaceBaseView__transitionToPosterView___block_invoke_4;
  v6[3] = &unk_2787802F8;
  v7 = *(a1 + 40);
  [v4 animateWithDuration:0x10000 delay:v8 options:v6 animations:0.3 completion:0.0];
}

uint64_t __45__NTKAVFaceBaseView__transitionToPosterView___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) posterImageView];
  [v2 setAlpha:1.0];

  v3 = *(a1 + 40);

  return [v3 setAlpha:0.0];
}

- (void)_prepareForEditing
{
  v4.receiver = self;
  v4.super_class = NTKAVFaceBaseView;
  [(NTKBackgroundImageFaceView *)&v4 _prepareForEditing];
  _posterImageView = [(NTKAVFaceBaseView *)self _posterImageView];
  [(NTKAVFaceBaseView *)self _transitionToPosterView:_posterImageView];
}

- (void)_cleanupAfterTransitionToOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v8.receiver = self;
  v8.super_class = NTKAVFaceBaseView;
  [(NTKBackgroundImageFaceView *)&v8 _cleanupAfterTransitionToOption:option forCustomEditMode:mode slot:slot];
  backgroundContainerView = [(NTKBackgroundImageFaceView *)self backgroundContainerView];
  [backgroundContainerView addSubview:self->_posterImageView];

  backgroundContainerView2 = [(NTKBackgroundImageFaceView *)self backgroundContainerView];
  [backgroundContainerView2 sendSubviewToBack:self->_posterImageView];
}

- (void)_mediaServicesWereReset:(id)reset
{
  kdebug_trace();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__NTKAVFaceBaseView__mediaServicesWereReset___block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = NTKAVFaceBaseView;
  [(NTKDigitalFaceView *)&v11 layoutSubviews];
  [(NTKAVFaceBaseView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIImageView *)self->_posterImageView ntk_setBoundsAndPositionFromFrame:?];
  [(CLKVideoPlayerView *)self->_videoPlayerView ntk_setBoundsAndPositionFromFrame:v4, v6, v8, v10];
}

- (CLKVideoPlayerView)videoPlayerView
{
  [(NTKAVFaceBaseView *)self _createVideoPlayerViewIfNeeded];
  videoPlayerView = self->_videoPlayerView;

  return videoPlayerView;
}

- (void)_createVideoPlayerViewIfNeeded
{
  if (!self->_videoPlayerView)
  {
    kdebug_trace();
    v3 = objc_alloc(MEMORY[0x277CBBBC8]);
    [(NTKAVFaceBaseView *)self bounds];
    v4 = [v3 initWithFrame:?];
    [(NTKAVFaceBaseView *)self setVideoPlayerView:v4];

    videoPlayerView = self->_videoPlayerView;

    [(CLKVideoPlayerView *)videoPlayerView setDelegate:self];
  }
}

- (void)_reset
{
  [(CLKVideoPlayerView *)self->_videoPlayerView setDelegate:0];
  [(CLKVideoPlayerView *)self->_videoPlayerView pause];
  [(CLKVideoPlayerView *)self->_videoPlayerView removeFromSuperview];
  [(NTKAVFaceBaseView *)self setVideoPlayerView:0];
  [(NTKAVFaceBaseView *)self _createVideoPlayerViewIfNeeded];
  if ([(NTKFaceView *)self dataMode]== 1)
  {
    [(UIImageView *)self->_posterImageView removeFromSuperview];
    posterImageView = self->_posterImageView;
    self->_posterImageView = 0;

    [(NTKAVFaceBaseView *)self addSubview:self->_videoPlayerView];
    videoPlayerView = self->_videoPlayerView;

    [(NTKAVFaceBaseView *)self sendSubviewToBack:videoPlayerView];
  }
}

@end