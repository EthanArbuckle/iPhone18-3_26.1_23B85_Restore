@interface CAMPanoramaOutput
- (CAMCaptureEngine)_engine;
- (CAMPanoramaOutput)initWithEngine:(id)a3;
- (void)changeToDirection:(int64_t)a3;
- (void)changeToEncodingBehavior:(int64_t)a3;
@end

@implementation CAMPanoramaOutput

- (CAMPanoramaOutput)initWithEngine:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CAMPanoramaOutput;
  v5 = [(AVCaptureVideoDataOutput *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->__engine, v4);
    v7 = v6;
  }

  return v6;
}

- (void)changeToDirection:(int64_t)a3
{
  v4 = [(CAMPanoramaOutput *)self _engine];
  [v4 changeToPanoramaDirection:a3];
}

- (void)changeToEncodingBehavior:(int64_t)a3
{
  self->_photoEncodingBehavior = a3;
  v4 = [(CAMPanoramaOutput *)self _engine];
  [v4 changePanoramaEncodingBehaviorIfNeeded:a3];
}

- (CAMCaptureEngine)_engine
{
  WeakRetained = objc_loadWeakRetained(&self->__engine);

  return WeakRetained;
}

@end