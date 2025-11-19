@interface LipMovementSignalData
- (LipMovementSignalData)initWithLipMovement:(BOOL)a3 from:(unint64_t)a4 to:(unint64_t)a5;
@end

@implementation LipMovementSignalData

- (LipMovementSignalData)initWithLipMovement:(BOOL)a3 from:(unint64_t)a4 to:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = LipMovementSignalData;
  result = [(LipMovementSignalData *)&v9 init];
  if (result)
  {
    result->_hadLipMovement = a3;
    result->_startTime = a4;
    result->_endTime = a5;
  }

  return result;
}

@end