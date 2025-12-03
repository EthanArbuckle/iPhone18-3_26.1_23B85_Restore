@interface CAMPanoramaOutput
- (CAMCaptureEngine)_engine;
- (CAMPanoramaOutput)initWithEngine:(id)engine;
- (void)changeToDirection:(int64_t)direction;
- (void)changeToEncodingBehavior:(int64_t)behavior;
@end

@implementation CAMPanoramaOutput

- (CAMPanoramaOutput)initWithEngine:(id)engine
{
  engineCopy = engine;
  v9.receiver = self;
  v9.super_class = CAMPanoramaOutput;
  v5 = [(AVCaptureVideoDataOutput *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->__engine, engineCopy);
    v7 = v6;
  }

  return v6;
}

- (void)changeToDirection:(int64_t)direction
{
  _engine = [(CAMPanoramaOutput *)self _engine];
  [_engine changeToPanoramaDirection:direction];
}

- (void)changeToEncodingBehavior:(int64_t)behavior
{
  self->_photoEncodingBehavior = behavior;
  _engine = [(CAMPanoramaOutput *)self _engine];
  [_engine changePanoramaEncodingBehaviorIfNeeded:behavior];
}

- (CAMCaptureEngine)_engine
{
  WeakRetained = objc_loadWeakRetained(&self->__engine);

  return WeakRetained;
}

@end