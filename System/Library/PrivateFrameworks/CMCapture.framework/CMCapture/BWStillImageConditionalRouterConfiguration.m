@interface BWStillImageConditionalRouterConfiguration
- (BWStillImageConditionalRouterConfiguration)initWithNumberOfOutputs:(unsigned int)a3;
- (void)dealloc;
@end

@implementation BWStillImageConditionalRouterConfiguration

- (BWStillImageConditionalRouterConfiguration)initWithNumberOfOutputs:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = BWStillImageConditionalRouterConfiguration;
  result = [(BWStillImageConditionalRouterConfiguration *)&v5 init];
  if (result)
  {
    result->_numberOfOutputs = a3;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageConditionalRouterConfiguration;
  [(BWStillImageConditionalRouterConfiguration *)&v3 dealloc];
}

@end