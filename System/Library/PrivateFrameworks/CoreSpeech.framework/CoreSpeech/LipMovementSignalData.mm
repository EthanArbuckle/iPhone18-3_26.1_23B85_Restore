@interface LipMovementSignalData
- (LipMovementSignalData)initWithLipMovement:(BOOL)movement from:(unint64_t)from to:(unint64_t)to;
@end

@implementation LipMovementSignalData

- (LipMovementSignalData)initWithLipMovement:(BOOL)movement from:(unint64_t)from to:(unint64_t)to
{
  v9.receiver = self;
  v9.super_class = LipMovementSignalData;
  result = [(LipMovementSignalData *)&v9 init];
  if (result)
  {
    result->_hadLipMovement = movement;
    result->_startTime = from;
    result->_endTime = to;
  }

  return result;
}

@end