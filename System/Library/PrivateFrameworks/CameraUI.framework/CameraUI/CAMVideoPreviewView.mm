@interface CAMVideoPreviewView
- (BOOL)previewViewWindowIsFullScreen;
- (CAMVideoPreviewView)initWithFrame:(CGRect)frame;
- (int64_t)_modeForCurrentWindowSize;
- (void)_updateAspectModeForSublayers;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setPreviewViewAspectMode:(int64_t)mode;
- (void)setPreviewViewAspectModeWindowed:(int64_t)windowed;
- (void)setSquare:(BOOL)square animated:(BOOL)animated;
- (void)setVideoPreviewLayer:(id)layer;
@end

@implementation CAMVideoPreviewView

- (void)_updateAspectModeForSublayers
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v4 = [CAMCaptureConversions previewLayerVideoGravityForPreviewViewAspectMode:[(CAMVideoPreviewView *)self _modeForCurrentWindowSize]];
  videoPreviewLayer = [(CAMVideoPreviewView *)self videoPreviewLayer];
  [videoPreviewLayer setVideoGravity:v4];
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

- (CAMVideoPreviewView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CAMVideoPreviewView;
  v3 = [(CAMVideoPreviewView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  layer = [(UIView *)self->_previewLayerView layer];
  superlayer = [(AVCaptureVideoPreviewLayer *)self->_videoPreviewLayer superlayer];

  if (layer == superlayer)
  {
    [(AVCaptureVideoPreviewLayer *)self->_videoPreviewLayer removeFromSuperlayer];
  }

  v5.receiver = self;
  v5.super_class = CAMVideoPreviewView;
  [(CAMVideoPreviewView *)&v5 dealloc];
}

- (void)setSquare:(BOOL)square animated:(BOOL)animated
{
  if (self->_square != square)
  {
    self->_square = square;
    if (animated)
    {
      [(CAMVideoPreviewView *)self _frameForSubviewsAccountForSquare:1];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = *MEMORY[0x1E695EFF8];
      v14 = *(MEMORY[0x1E695EFF8] + 8);
      layer = [(UIView *)self->_previewLayerView layer];
      [CAMAnimationHelper animateLayer:layer toFrame:1 fromCurrentState:v6, v8, v10, v12];

      videoPreviewLayer = self->_videoPreviewLayer;

      [CAMAnimationHelper animateLayer:videoPreviewLayer toFrame:1 fromCurrentState:v13, v14, v10, v12];
    }

    else
    {

      [(CAMVideoPreviewView *)self setNeedsLayout];
    }
  }
}

- (void)setVideoPreviewLayer:(id)layer
{
  layerCopy = layer;
  videoPreviewLayer = self->_videoPreviewLayer;
  if (videoPreviewLayer != layerCopy)
  {
    v9 = layerCopy;
    [(AVCaptureVideoPreviewLayer *)videoPreviewLayer removeFromSuperlayer];
    objc_storeStrong(&self->_videoPreviewLayer, layer);
    v7 = self->_videoPreviewLayer;
    [(UIView *)self->_previewLayerView bounds];
    [(AVCaptureVideoPreviewLayer *)v7 setFrame:?];
    layer = [(UIView *)self->_previewLayerView layer];
    [layer addSublayer:self->_videoPreviewLayer];

    [(CAMVideoPreviewView *)self _updateAspectModeForSublayers];
    videoPreviewLayer = [(CAMVideoPreviewView *)self setNeedsLayout];
    layerCopy = v9;
  }

  MEMORY[0x1EEE66BB8](videoPreviewLayer, layerCopy);
}

- (void)setPreviewViewAspectMode:(int64_t)mode
{
  if (self->_previewViewAspectMode != mode)
  {
    self->_previewViewAspectMode = mode;
    [(CAMVideoPreviewView *)self _updateAspectModeForSublayers];
  }
}

- (void)setPreviewViewAspectModeWindowed:(int64_t)windowed
{
  if (self->_previewViewAspectModeWindowed != windowed)
  {
    self->_previewViewAspectModeWindowed = windowed;
    [(CAMVideoPreviewView *)self _updateAspectModeForSublayers];
  }
}

- (BOOL)previewViewWindowIsFullScreen
{
  window = [(CAMVideoPreviewView *)self window];
  screen = [window screen];
  [screen bounds];
  v6 = v5;
  v8 = v7;

  window2 = [(CAMVideoPreviewView *)self window];
  [window2 bounds];
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