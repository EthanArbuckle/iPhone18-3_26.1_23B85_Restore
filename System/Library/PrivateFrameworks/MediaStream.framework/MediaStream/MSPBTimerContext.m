@interface MSPBTimerContext
+ (id)contextWithDate:(id)a3;
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

+ (id)contextWithDate:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setDate:v4];

  return v5;
}

@end