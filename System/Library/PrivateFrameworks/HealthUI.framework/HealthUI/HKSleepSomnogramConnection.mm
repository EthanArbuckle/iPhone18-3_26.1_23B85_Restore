@interface HKSleepSomnogramConnection
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (HKSleepSomnogramConnection)initWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4;
@end

@implementation HKSleepSomnogramConnection

- (HKSleepSomnogramConnection)initWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
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