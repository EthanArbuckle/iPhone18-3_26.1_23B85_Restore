@interface HPSUISpatialProfileUIPearlEnrollView
- (HPSUISpatialProfileUIPearlEnrollView)initWithVideoCaptureSession:(id)session inSheet:(BOOL)sheet squareNeedsPositionLayout:(BOOL)layout;
- (id)crossHairs;
- (void)setCameraBlurAmount:(double)amount useShade:(BOOL)shade duration:(double)duration completion:(id)completion;
@end

@implementation HPSUISpatialProfileUIPearlEnrollView

- (id)crossHairs
{
  enrollmentCustomCrossHairs = self->_enrollmentCustomCrossHairs;
  if (!enrollmentCustomCrossHairs)
  {
    v4 = [HPSUISpatialProfileCrossHairs alloc];
    v5 = [(HPSUISpatialProfileCrossHairs *)v4 initWithView:self view:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_enrollmentCustomCrossHairs;
    self->_enrollmentCustomCrossHairs = v5;

    enrollmentCustomCrossHairs = self->_enrollmentCustomCrossHairs;
  }

  return enrollmentCustomCrossHairs;
}

- (HPSUISpatialProfileUIPearlEnrollView)initWithVideoCaptureSession:(id)session inSheet:(BOOL)sheet squareNeedsPositionLayout:(BOOL)layout
{
  v8.receiver = self;
  v8.super_class = HPSUISpatialProfileUIPearlEnrollView;
  v5 = [(BKUIPearlEnrollView *)&v8 initWithVideoCaptureSession:session inSheet:sheet squareNeedsPositionLayout:layout];
  v6 = v5;
  if (v5)
  {
    [(HPSUISpatialProfileUIPearlEnrollView *)v5 setPauseBlur:0];
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
    pauseBlur = [(HPSUISpatialProfileUIPearlEnrollView *)self pauseBlur];
    v16 = 1024;
    forceBlur = [(HPSUISpatialProfileUIPearlEnrollView *)self forceBlur];
    v18 = 2048;
    amountCopy = amount;
    v20 = 2048;
    durationCopy = duration;
    _os_log_impl(&dword_1AC1C3000, v11, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Set Camera Blur Blurring paused %d, Blurring forced %d, Requested Blur %f duration = %f ", buf, 0x22u);
  }

  if (amount == 0.0 && [(HPSUISpatialProfileUIPearlEnrollView *)self forceBlur])
  {
    LODWORD(shadeCopy) = 0;
    amount = 15.0;
  }

  else if (amount == 0.0)
  {
    goto LABEL_9;
  }

  pauseBlur2 = [(HPSUISpatialProfileUIPearlEnrollView *)self pauseBlur];
  shadeCopy = shadeCopy & !pauseBlur2;
  if (pauseBlur2)
  {
    amount = 0.0;
  }

LABEL_9:
  v13.receiver = self;
  v13.super_class = HPSUISpatialProfileUIPearlEnrollView;
  [(BKUIPearlEnrollView *)&v13 setCameraBlurAmount:shadeCopy useShade:completionCopy duration:amount completion:duration];
}

@end