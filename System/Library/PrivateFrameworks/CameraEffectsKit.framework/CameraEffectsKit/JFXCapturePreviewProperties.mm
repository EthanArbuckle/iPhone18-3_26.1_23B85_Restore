@interface JFXCapturePreviewProperties
- (BOOL)renderRequiresCrop;
- (CGSize)frameSize;
- (CGSize)renderOutputSize;
- (JFXCapturePreviewProperties)initWithCameraFrameSet:(id)a3 renderCameraMode:(int64_t)a4 renderTime:(id *)a5 renderOutputSize:(CGSize)a6 frameSize:(CGSize)a7;
- (JFXCapturePreviewProperties)initWithCameraFrameSet:(id)a3 renderCameraMode:(int64_t)a4 renderTime:(id *)a5 renderOutputSize:(CGSize)a6 frameSize:(CGSize)a7 signPostToken:(id)a8 displayTimestamp:(double)a9 frameStats:(id)a10 startFrameTimer:(id)a11;
@end

@implementation JFXCapturePreviewProperties

- (JFXCapturePreviewProperties)initWithCameraFrameSet:(id)a3 renderCameraMode:(int64_t)a4 renderTime:(id *)a5 renderOutputSize:(CGSize)a6 frameSize:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v9 = a6.height;
  v10 = a6.width;
  v14 = a3;
  v15 = CACurrentMediaTime();
  v18 = *a5;
  v16 = [(JFXCapturePreviewProperties *)self initWithCameraFrameSet:v14 renderCameraMode:a4 renderTime:&v18 renderOutputSize:0 frameSize:0 signPostToken:0 displayTimestamp:v10 frameStats:v9 startFrameTimer:width, height, v15];

  return v16;
}

- (JFXCapturePreviewProperties)initWithCameraFrameSet:(id)a3 renderCameraMode:(int64_t)a4 renderTime:(id *)a5 renderOutputSize:(CGSize)a6 frameSize:(CGSize)a7 signPostToken:(id)a8 displayTimestamp:(double)a9 frameStats:(id)a10 startFrameTimer:(id)a11
{
  height = a7.height;
  width = a7.width;
  v17 = a6.height;
  v18 = a6.width;
  v22 = a3;
  v23 = a8;
  v24 = a10;
  v25 = a11;
  v39.receiver = self;
  v39.super_class = JFXCapturePreviewProperties;
  v26 = [(JFXCapturePreviewProperties *)&v39 init];
  v27 = *(v26 + 1);
  *(v26 + 1) = v22;
  v28 = v22;

  *(v26 + 2) = a4;
  v29 = *&a5->var0;
  *(v26 + 15) = a5->var3;
  *(v26 + 104) = v29;
  *(v26 + 9) = v18;
  *(v26 + 10) = v17;
  *(v26 + 11) = width;
  *(v26 + 12) = height;
  *(v26 + 3) = a9;
  v30 = *(v26 + 4);
  *(v26 + 4) = v23;
  v31 = v23;

  v32 = *(v26 + 5);
  *(v26 + 5) = v24;
  v33 = v24;

  v34 = *(v26 + 6);
  *(v26 + 6) = v25;
  v35 = v25;

  *(v26 + 3) = a9;
  v36 = *(v26 + 8);
  *(v26 + 8) = 0;

  v37 = *(v26 + 7);
  *(v26 + 7) = 0;

  return v26;
}

- (BOOL)renderRequiresCrop
{
  v3 = JFXIsCTMCroppedCameraMode([(JFXCapturePreviewProperties *)self renderCameraMode]);
  [(JFXCapturePreviewProperties *)self frameSize];
  v5 = v4;
  [(JFXCapturePreviewProperties *)self frameSize];
  v7 = v6;
  [(JFXCapturePreviewProperties *)self renderOutputSize];
  v9 = v8;
  [(JFXCapturePreviewProperties *)self renderOutputSize];
  if (v3)
  {
    return 1;
  }

  else
  {
    return (v5 > v7) ^ (v9 > v10);
  }
}

- (CGSize)renderOutputSize
{
  width = self->_renderOutputSize.width;
  height = self->_renderOutputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)frameSize
{
  width = self->_frameSize.width;
  height = self->_frameSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end