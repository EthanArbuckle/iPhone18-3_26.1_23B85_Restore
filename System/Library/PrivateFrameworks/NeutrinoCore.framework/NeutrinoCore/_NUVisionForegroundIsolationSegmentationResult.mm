@interface _NUVisionForegroundIsolationSegmentationResult
- (_NUVisionForegroundIsolationSegmentationResult)initWithMaskBuffer:(id)buffer;
@end

@implementation _NUVisionForegroundIsolationSegmentationResult

- (_NUVisionForegroundIsolationSegmentationResult)initWithMaskBuffer:(id)buffer
{
  bufferCopy = buffer;
  v9.receiver = self;
  v9.super_class = _NUVisionForegroundIsolationSegmentationResult;
  v6 = [(_NUVisionForegroundIsolationSegmentationResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_maskBuffer, buffer);
  }

  return v7;
}

@end