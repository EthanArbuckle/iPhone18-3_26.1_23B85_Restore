@interface CRXFLensPresenceResult
- (CRXFLensPresenceResult)initWithLensPresenceStatus:(int64_t)status;
@end

@implementation CRXFLensPresenceResult

- (CRXFLensPresenceResult)initWithLensPresenceStatus:(int64_t)status
{
  v5.receiver = self;
  v5.super_class = CRXFLensPresenceResult;
  result = [(CRXFLensPresenceResult *)&v5 init];
  if (result)
  {
    result->_lensDetectionStatus = status;
  }

  return result;
}

@end