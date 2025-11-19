@interface CRXFLensPresenceResult
- (CRXFLensPresenceResult)initWithLensPresenceStatus:(int64_t)a3;
@end

@implementation CRXFLensPresenceResult

- (CRXFLensPresenceResult)initWithLensPresenceStatus:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CRXFLensPresenceResult;
  result = [(CRXFLensPresenceResult *)&v5 init];
  if (result)
  {
    result->_lensDetectionStatus = a3;
  }

  return result;
}

@end