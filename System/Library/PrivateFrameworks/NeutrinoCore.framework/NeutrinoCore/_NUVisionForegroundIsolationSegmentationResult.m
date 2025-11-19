@interface _NUVisionForegroundIsolationSegmentationResult
- (_NUVisionForegroundIsolationSegmentationResult)initWithMaskBuffer:(id)a3;
@end

@implementation _NUVisionForegroundIsolationSegmentationResult

- (_NUVisionForegroundIsolationSegmentationResult)initWithMaskBuffer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _NUVisionForegroundIsolationSegmentationResult;
  v6 = [(_NUVisionForegroundIsolationSegmentationResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_maskBuffer, a3);
  }

  return v7;
}

@end