@interface CAMVideoPreviewView
- (BOOL)previewViewWindowIsFullScreen;
- (CAMVideoPreviewView)initWithFrame:(CGRect)a3;
- (int64_t)_modeForCurrentWindowSize;
- (void)_updateAspectModeForSublayers;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setPreviewViewAspectMode:(int64_t)a3;
- (void)setPreviewViewAspectModeWindowed:(int64_t)a3;
- (void)setSquare:(BOOL)a3 animated:(BOOL)a4;
- (void)setVideoPreviewLayer:(id)a3;
@end

@implementation CAMVideoPreviewView

- (void)_updateAspectModeForSublayers
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v4 = [CAMCaptureConversions previewLayerVideoGravityForPreviewViewAspectMode:[(CAMVideoPreviewView *)self _modeForCurrentWindowSize]];
  v3 = [(CAMVideoPreviewView *)self videoPreviewLayer];
  [v3 setVideoGravity:v4];
  [MEMORY[0x1E6979518] commit];
}

- (void)layoutSubviews
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CAMVideoPreviewView *)self _updateAspectModeForSublayers];
  [(CAMVideoPreviewView *)self _frameForSubviewsAccountForSquare:1];
  [(UIView *)self->_previewLayerView setFrame:?];
  videoPreviewLayer = self->_videoPreviewLayer;
  [(UIView *)self->_previewLayerView bounds];
  [(AVCaptureVideoPreviewLayer *)videoPreviewLayer setFrame:?];
  v4 = MEMORY[0x1E6979518];

  [v4 commit];
}

- (CAMVideoPreviewView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CAMVideoPreviewView;
  v3 = [(CAMVideoPreviewView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    [(CAMVideoPreviewView *)v3 _frameForSubviewsAccountForSquare:1];
    v5 = [v4 initWithFrame:?];
    previewLayerView = v3->_previewLayerView;
    v3->_previewLayerView = v5;

    [(CAMVideoPreviewView *)v3 addSubview:v3->_previewLayerView];
    v3->_previewViewAspectMode = 0;
    v3->_previewViewAspectModeWindowed = 1;
  }

  return v3;
}

- (void)dealloc
{
  v3 = [(UIView *)self->_previewLayerView layer];
  v4 = [(AVCaptureVideoPreviewLayer *)self->_videoPreviewLayer superlayer];

  if (v3 == v4)
  {
    [(AVCaptureVideoPreviewLayer *)self->_videoPreviewLayer removeFromSuperlayer];
  }

  v5.receiver = self;
  v5.super_class = CAMVideoPreviewView;
  [(CAMVideoPreviewView *)&v5 dealloc];
}

- (void)setSquare:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_square != a3)
  {
    self->_square = a3;
    if (a4)
    {
      [(CAMVideoPreviewView *)self _frameForSubviewsAccountForSquare:1];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = *MEMORY[0x1E695EFF8];
      v14 = *(MEMORY[0x1E695EFF8] + 8);
      v15 = [(UIView *)self->_previewLayerView layer];
      [CAMAnimationHelper animateLayer:v15 toFrame:1 fromCurrentState:v6, v8, v10, v12];

      videoPreviewLayer = self->_videoPreviewLayer;

      [CAMAnimationHelper animateLayer:videoPreviewLayer toFrame:1 fromCurrentState:v13, v14, v10, v12];
    }

    else
    {

      [(CAMVideoPreviewView *)self setNeedsLayout];
    }
  }
}

- (void)setVideoPreviewLayer:(id)a3
{
  v5 = a3;
  videoPreviewLayer = self->_videoPreviewLayer;
  if (videoPreviewLayer != v5)
  {
    v9 = v5;
    [(AVCaptureVideoPreviewLayer *)videoPreviewLayer removeFromSuperlayer];
    objc_storeStrong(&self->_videoPreviewLayer, a3);
    v7 = self->_videoPreviewLayer;
    [(UIView *)self->_previewLayerView bounds];
    [(AVCaptureVideoPreviewLayer *)v7 setFrame:?];
    v8 = [(UIView *)self->_previewLayerView layer];
    [v8 addSublayer:self->_videoPreviewLayer];

    [(CAMVideoPreviewView *)self _updateAspectModeForSublayers];
    videoPreviewLayer = [(CAMVideoPreviewView *)self setNeedsLayout];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](videoPreviewLayer, v5);
}

- (void)setPreviewViewAspectMode:(int64_t)a3
{
  if (self->_previewViewAspectMode != a3)
  {
    self->_previewViewAspectMode = a3;
    [(CAMVideoPreviewView *)self _updateAspectModeForSublayers];
  }
}

- (void)setPreviewViewAspectModeWindowed:(int64_t)a3
{
  if (self->_previewViewAspectModeWindowed != a3)
  {
    self->_previewViewAspectModeWindowed = a3;
    [(CAMVideoPreviewView *)self _updateAspectModeForSublayers];
  }
}

- (BOOL)previewViewWindowIsFullScreen
{
  v3 = [(CAMVideoPreviewView *)self window];
  v4 = [v3 screen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  v9 = [(CAMVideoPreviewView *)self window];
  [v9 bounds];
  v11 = v10;
  v13 = v12;

  return v13 >= v8 && v11 >= v6;
}

- (int64_t)_modeForCurrentWindowSize
{
  if ([(CAMVideoPreviewView *)self previewViewWindowIsFullScreen])
  {

    return [(CAMVideoPreviewView *)self previewViewAspectMode];
  }

  else
  {

    return [(CAMVideoPreviewView *)self previewViewAspectModeWindowed];
  }
}

@end