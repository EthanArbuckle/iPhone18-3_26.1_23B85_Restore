@interface FigHumanBodyObservation
- (BOOL)isEqual:(id)a3;
- (FigHumanBodyObservation)initWithHumanObservation:(id)a3 humanBodyID:(unint64_t)a4 time:(unint64_t)a5;
- (void)dealloc;
@end

@implementation FigHumanBodyObservation

- (FigHumanBodyObservation)initWithHumanObservation:(id)a3 humanBodyID:(unint64_t)a4 time:(unint64_t)a5
{
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"humanObservation must not be nil" userInfo:0]);
  }

  v10.receiver = self;
  v10.super_class = FigHumanBodyObservation;
  v8 = [(FigHumanBodyObservation *)&v10 init];
  if (v8)
  {
    v8->_humanObservation = a3;
    v8->_humanBodyID = a4;
    v8->_humanTrackingRequest = [objc_alloc(getVNTrackObjectRequestClass()) initWithDetectedObjectObservation:v8->_humanObservation];
    v8->_lastUpdatedTime = a5;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigHumanBodyObservation;
  [(FigHumanBodyObservation *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(FigHumanBodyObservation *)self humanBodyID];
  return v5 == [a3 humanBodyID];
}

@end