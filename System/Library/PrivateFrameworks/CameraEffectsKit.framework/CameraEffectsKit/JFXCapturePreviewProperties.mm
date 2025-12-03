@interface JFXCapturePreviewProperties
- (BOOL)renderRequiresCrop;
- (CGSize)frameSize;
- (CGSize)renderOutputSize;
- (JFXCapturePreviewProperties)initWithCameraFrameSet:(id)set renderCameraMode:(int64_t)mode renderTime:(id *)time renderOutputSize:(CGSize)size frameSize:(CGSize)frameSize;
- (JFXCapturePreviewProperties)initWithCameraFrameSet:(id)set renderCameraMode:(int64_t)mode renderTime:(id *)time renderOutputSize:(CGSize)size frameSize:(CGSize)frameSize signPostToken:(id)token displayTimestamp:(double)timestamp frameStats:(id)self0 startFrameTimer:(id)self1;
@end

@implementation JFXCapturePreviewProperties

- (JFXCapturePreviewProperties)initWithCameraFrameSet:(id)set renderCameraMode:(int64_t)mode renderTime:(id *)time renderOutputSize:(CGSize)size frameSize:(CGSize)frameSize
{
  height = frameSize.height;
  width = frameSize.width;
  v9 = size.height;
  v10 = size.width;
  setCopy = set;
  v15 = CACurrentMediaTime();
  v18 = *time;
  v16 = [(JFXCapturePreviewProperties *)self initWithCameraFrameSet:setCopy renderCameraMode:mode renderTime:&v18 renderOutputSize:0 frameSize:0 signPostToken:0 displayTimestamp:v10 frameStats:v9 startFrameTimer:width, height, v15];

  return v16;
}

- (JFXCapturePreviewProperties)initWithCameraFrameSet:(id)set renderCameraMode:(int64_t)mode renderTime:(id *)time renderOutputSize:(CGSize)size frameSize:(CGSize)frameSize signPostToken:(id)token displayTimestamp:(double)timestamp frameStats:(id)self0 startFrameTimer:(id)self1
{
  height = frameSize.height;
  width = frameSize.width;
  v17 = size.height;
  v18 = size.width;
  setCopy = set;
  tokenCopy = token;
  statsCopy = stats;
  timerCopy = timer;
  v39.receiver = self;
  v39.super_class = JFXCapturePreviewProperties;
  v26 = [(JFXCapturePreviewProperties *)&v39 init];
  v27 = *(v26 + 1);
  *(v26 + 1) = setCopy;
  v28 = setCopy;

  *(v26 + 2) = mode;
  v29 = *&time->var0;
  *(v26 + 15) = time->var3;
  *(v26 + 104) = v29;
  *(v26 + 9) = v18;
  *(v26 + 10) = v17;
  *(v26 + 11) = width;
  *(v26 + 12) = height;
  *(v26 + 3) = timestamp;
  v30 = *(v26 + 4);
  *(v26 + 4) = tokenCopy;
  v31 = tokenCopy;

  v32 = *(v26 + 5);
  *(v26 + 5) = statsCopy;
  v33 = statsCopy;

  v34 = *(v26 + 6);
  *(v26 + 6) = timerCopy;
  v35 = timerCopy;

  *(v26 + 3) = timestamp;
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