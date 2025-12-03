@interface CalLocationAuthorizationStatus
- (CalLocationAuthorizationStatus)initWithStatus:(int)status precision:(unint64_t)precision;
@end

@implementation CalLocationAuthorizationStatus

- (CalLocationAuthorizationStatus)initWithStatus:(int)status precision:(unint64_t)precision
{
  v7.receiver = self;
  v7.super_class = CalLocationAuthorizationStatus;
  result = [(CalLocationAuthorizationStatus *)&v7 init];
  if (result)
  {
    result->_status = status;
    result->_precision = precision;
  }

  return result;
}

@end