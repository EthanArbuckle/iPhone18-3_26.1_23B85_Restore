@interface HPSUISpatialProfileUIPearlEnrollView
- (HPSUISpatialProfileUIPearlEnrollView)initWithVideoCaptureSession:(id)a3 inSheet:(BOOL)a4 squareNeedsPositionLayout:(BOOL)a5;
- (id)crossHairs;
- (void)setCameraBlurAmount:(double)a3 useShade:(BOOL)a4 duration:(double)a5 completion:(id)a6;
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

- (HPSUISpatialProfileUIPearlEnrollView)initWithVideoCaptureSession:(id)a3 inSheet:(BOOL)a4 squareNeedsPositionLayout:(BOOL)a5
{
  v8.receiver = self;
  v8.super_class = HPSUISpatialProfileUIPearlEnrollView;
  v5 = [(BKUIPearlEnrollView *)&v8 initWithVideoCaptureSession:a3 inSheet:a4 squareNeedsPositionLayout:a5];
  v6 = v5;
  if (v5)
  {
    [(HPSUISpatialProfileUIPearlEnrollView *)v5 setPauseBlur:0];
  }

  return v6;
}

- (void)setCameraBlurAmount:(double)a3 useShade:(BOOL)a4 duration:(double)a5 completion:(id)a6
{
  v7 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    v15 = [(HPSUISpatialProfileUIPearlEnrollView *)self pauseBlur];
    v16 = 1024;
    v17 = [(HPSUISpatialProfileUIPearlEnrollView *)self forceBlur];
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = a5;
    _os_log_impl(&dword_1AC1C3000, v11, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Set Camera Blur Blurring paused %d, Blurring forced %d, Requested Blur %f duration = %f ", buf, 0x22u);
  }

  if (a3 == 0.0 && [(HPSUISpatialProfileUIPearlEnrollView *)self forceBlur])
  {
    LODWORD(v7) = 0;
    a3 = 15.0;
  }

  else if (a3 == 0.0)
  {
    goto LABEL_9;
  }

  v12 = [(HPSUISpatialProfileUIPearlEnrollView *)self pauseBlur];
  v7 = v7 & !v12;
  if (v12)
  {
    a3 = 0.0;
  }

LABEL_9:
  v13.receiver = self;
  v13.super_class = HPSUISpatialProfileUIPearlEnrollView;
  [(BKUIPearlEnrollView *)&v13 setCameraBlurAmount:v7 useShade:v10 duration:a3 completion:a5];
}

@end