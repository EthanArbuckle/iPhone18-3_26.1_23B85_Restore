@interface HKSleepSomnogramConnection
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (HKSleepSomnogramConnection)initWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint;
@end

@implementation HKSleepSomnogramConnection

- (HKSleepSomnogramConnection)initWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint
{
  y = endPoint.y;
  x = endPoint.x;
  v6 = point.y;
  v7 = point.x;
  v9.receiver = self;
  v9.super_class = HKSleepSomnogramConnection;
  result = [(HKSleepSomnogramConnection *)&v9 init];
  if (result)
  {
    result->_startPoint.x = v7;
    result->_startPoint.y = v6;
    result->_endPoint.x = x;
    result->_endPoint.y = y;
  }

  return result;
}

- (CGPoint)startPoint
{
  x = self->_startPoint.x;
  y = self->_startPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)endPoint
{
  x = self->_endPoint.x;
  y = self->_endPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end