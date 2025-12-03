@interface MSPBTimerContext
+ (id)contextWithDate:(id)date;
- (MSPBTimerContext)init;
@end

@implementation MSPBTimerContext

- (MSPBTimerContext)init
{
  v3.receiver = self;
  v3.super_class = MSPBTimerContext;
  result = [(MSPBTimerContext *)&v3 init];
  if (result)
  {
    result->_isValid = 1;
  }

  return result;
}

+ (id)contextWithDate:(id)date
{
  dateCopy = date;
  v5 = objc_alloc_init(self);
  [v5 setDate:dateCopy];

  return v5;
}

@end