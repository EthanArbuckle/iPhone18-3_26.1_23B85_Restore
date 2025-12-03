@interface FigHumanBodyObservation
- (BOOL)isEqual:(id)equal;
- (FigHumanBodyObservation)initWithHumanObservation:(id)observation humanBodyID:(unint64_t)d time:(unint64_t)time;
- (void)dealloc;
@end

@implementation FigHumanBodyObservation

- (FigHumanBodyObservation)initWithHumanObservation:(id)observation humanBodyID:(unint64_t)d time:(unint64_t)time
{
  if (!observation)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"humanObservation must not be nil" userInfo:0]);
  }

  v10.receiver = self;
  v10.super_class = FigHumanBodyObservation;
  v8 = [(FigHumanBodyObservation *)&v10 init];
  if (v8)
  {
    v8->_humanObservation = observation;
    v8->_humanBodyID = d;
    v8->_humanTrackingRequest = [objc_alloc(getVNTrackObjectRequestClass()) initWithDetectedObjectObservation:v8->_humanObservation];
    v8->_lastUpdatedTime = time;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigHumanBodyObservation;
  [(FigHumanBodyObservation *)&v3 dealloc];
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

  humanBodyID = [(FigHumanBodyObservation *)self humanBodyID];
  return humanBodyID == [equal humanBodyID];
}

@end