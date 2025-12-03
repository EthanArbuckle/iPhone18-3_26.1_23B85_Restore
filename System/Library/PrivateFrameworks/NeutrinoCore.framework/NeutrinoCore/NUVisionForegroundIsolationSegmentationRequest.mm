@interface NUVisionForegroundIsolationSegmentationRequest
- (id)copyWithZone:(_NSZone *)zone;
- (id)newRenderJob;
- (void)_commonInit;
@end

@implementation NUVisionForegroundIsolationSegmentationRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = NUVisionForegroundIsolationSegmentationRequest;
  return [(NURenderRequest *)&v4 copyWithZone:zone];
}

- (id)newRenderJob
{
  v3 = [NUVisionForegroundIsolationSegmentationJob alloc];

  return [(NURenderJob *)v3 initWithRequest:self];
}

- (void)_commonInit
{
  v3.receiver = self;
  v3.super_class = NUVisionForegroundIsolationSegmentationRequest;
  [(NURenderRequest *)&v3 _commonInit];
  [(NURenderRequest *)self setSampleMode:2];
}

@end