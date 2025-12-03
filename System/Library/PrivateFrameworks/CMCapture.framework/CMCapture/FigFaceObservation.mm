@interface FigFaceObservation
- (BOOL)isEqual:(id)equal;
- (FigFaceObservation)initWithFaceObservation:(id)observation faceID:(unint64_t)d time:(unint64_t)time;
- (void)dealloc;
@end

@implementation FigFaceObservation

- (FigFaceObservation)initWithFaceObservation:(id)observation faceID:(unint64_t)d time:(unint64_t)time
{
  if (!observation)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"faceObservation must not be nil" userInfo:0]);
  }

  v10.receiver = self;
  v10.super_class = FigFaceObservation;
  v8 = [(FigFaceObservation *)&v10 init];
  if (v8)
  {
    v8->_faceObservation = observation;
    v8->_faceID = d;
    v8->_faceTrackingRequest = [objc_alloc(getVNTrackObjectRequestClass()) initWithDetectedObjectObservation:v8->_faceObservation];
    v8->_lastUpdatedTime = time;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigFaceObservation;
  [(FigFaceObservation *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  faceID = [(FigFaceObservation *)self faceID];
  return faceID == [equal faceID];
}

@end