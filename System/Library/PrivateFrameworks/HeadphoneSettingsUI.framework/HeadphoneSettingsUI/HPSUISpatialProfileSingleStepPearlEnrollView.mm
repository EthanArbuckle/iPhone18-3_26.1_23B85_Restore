@interface HPSUISpatialProfileSingleStepPearlEnrollView
- (HPSUISpatialProfileSingleStepPearlEnrollView)initWithVideoCaptureSession:(id)session inSheet:(BOOL)sheet squareNeedsPositionLayout:(BOOL)layout;
- (id)crossHairs;
- (void)layoutSubviews;
- (void)setAlpha:(double)alpha;
- (void)setCameraBlurAmount:(double)amount useShade:(BOOL)shade duration:(double)duration completion:(id)completion;
@end

@implementation HPSUISpatialProfileSingleStepPearlEnrollView

- (id)crossHairs
{
  enrollmentCustomCrossHairs = self->_enrollmentCustomCrossHairs;
  if (!enrollmentCustomCrossHairs)
  {
    v4 = [HPSUISpatialProfileSingleStepCrossHairs alloc];
    v5 = [(HPSUISpatialProfileSingleStepCrossHairs *)v4 initWithView:self view:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_enrollmentCustomCrossHairs;
    self->_enrollmentCustomCrossHairs = v5;

    enrollmentCustomCrossHairs = self->_enrollmentCustomCrossHairs;
  }

  return enrollmentCustomCrossHairs;
}

- (HPSUISpatialProfileSingleStepPearlEnrollView)initWithVideoCaptureSession:(id)session inSheet:(BOOL)sheet squareNeedsPositionLayout:(BOOL)layout
{
  v8.receiver = self;
  v8.super_class = HPSUISpatialProfileSingleStepPearlEnrollView;
  v5 = [(BKUIPearlEnrollView *)&v8 initWithVideoCaptureSession:session inSheet:sheet squareNeedsPositionLayout:layout];
  v6 = v5;
  if (v5)
  {
    [(HPSUISpatialProfileSingleStepPearlEnrollView *)v5 setPauseBlur:0];
  }

  return v6;
}

- (void)setCameraBlurAmount:(double)amount useShade:(BOOL)shade duration:(double)duration completion:(id)completion
{
  shadeCopy = shade;
  v22 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v11 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    pauseBlur = [(HPSUISpatialProfileSingleStepPearlEnrollView *)self pauseBlur];
    v16 = 1024;
    forceBlur = [(HPSUISpatialProfileSingleStepPearlEnrollView *)self forceBlur];
    v18 = 2048;
    amountCopy = amount;
    v20 = 2048;
    durationCopy = duration;
    _os_log_impl(&dword_1AC1C3000, v11, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Set Camera Blur Blurring paused %d, Blurring forced %d, Requested Blur %f duration = %f ", buf, 0x22u);
  }

  if (amount == 0.0 && [(HPSUISpatialProfileSingleStepPearlEnrollView *)self forceBlur])
  {
    LODWORD(shadeCopy) = 0;
    amount = 15.0;
  }

  else if (amount == 0.0)
  {
    goto LABEL_9;
  }

  pauseBlur2 = [(HPSUISpatialProfileSingleStepPearlEnrollView *)self pauseBlur];
  shadeCopy = shadeCopy & !pauseBlur2;
  if (pauseBlur2)
  {
    amount = 0.0;
  }

LABEL_9:
  v13.receiver = self;
  v13.super_class = HPSUISpatialProfileSingleStepPearlEnrollView;
  [(BKUIPearlEnrollView *)&v13 setCameraBlurAmount:shadeCopy useShade:completionCopy duration:amount completion:duration];
}

- (void)layoutSubviews
{
  if (_os_feature_enabled_impl())
  {
    tutorialMovieView = [(BKUIPearlEnrollView *)self tutorialMovieView];

    if (!tutorialMovieView)
    {
      tutorialMovieView2 = [(BKUIPearlEnrollView *)self tutorialMovieView];
      [tutorialMovieView2 removeFromSuperview];

      v5 = [HPSUISpatialProfileSingleStepPearlMovieLoopView alloc];
      v6 = [(HPSUISpatialProfileSingleStepPearlMovieLoopView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(BKUIPearlEnrollView *)self setTutorialMovieView:v6];

      tutorialMovieView3 = [(BKUIPearlEnrollView *)self tutorialMovieView];
      [(BKUIPearlEnrollView *)self setTutorialMovieView:tutorialMovieView3];

      tutorialMovieView4 = [(BKUIPearlEnrollView *)self tutorialMovieView];
      [(HPSUISpatialProfileSingleStepPearlEnrollView *)self addSubview:tutorialMovieView4];

      tutorialMovieView5 = [(BKUIPearlEnrollView *)self tutorialMovieView];
      [tutorialMovieView5 load];
    }
  }

  tutorialMovieView6 = [(BKUIPearlEnrollView *)self tutorialMovieView];
  layer = [tutorialMovieView6 layer];
  [layer setMasksToBounds:0];

  tutorialMovieView7 = [(BKUIPearlEnrollView *)self tutorialMovieView];
  layer2 = [tutorialMovieView7 layer];
  [layer2 setCornerRadius:0.0];

  v14.receiver = self;
  v14.super_class = HPSUISpatialProfileSingleStepPearlEnrollView;
  [(BKUIPearlEnrollView *)&v14 layoutSubviews];
}

- (void)setAlpha:(double)alpha
{
  v6.receiver = self;
  v6.super_class = HPSUISpatialProfileSingleStepPearlEnrollView;
  [(HPSUISpatialProfileSingleStepPearlEnrollView *)&v6 setAlpha:?];
  tutorialMovieView = [(BKUIPearlEnrollView *)self tutorialMovieView];
  [tutorialMovieView setAlpha:alpha];
}

@end