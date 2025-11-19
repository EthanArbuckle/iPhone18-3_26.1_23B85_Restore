@interface CalLocationAuthorizationStatus
- (CalLocationAuthorizationStatus)initWithStatus:(int)a3 precision:(unint64_t)a4;
@end

@implementation CalLocationAuthorizationStatus

- (CalLocationAuthorizationStatus)initWithStatus:(int)a3 precision:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = CalLocationAuthorizationStatus;
  result = [(CalLocationAuthorizationStatus *)&v7 init];
  if (result)
  {
    result->_status = a3;
    result->_precision = a4;
  }

  return result;
}

@end