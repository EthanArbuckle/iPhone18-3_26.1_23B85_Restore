@interface BWStillImageConditionalRouterConfiguration
- (BWStillImageConditionalRouterConfiguration)initWithNumberOfOutputs:(unsigned int)outputs;
- (void)dealloc;
@end

@implementation BWStillImageConditionalRouterConfiguration

- (BWStillImageConditionalRouterConfiguration)initWithNumberOfOutputs:(unsigned int)outputs
{
  v5.receiver = self;
  v5.super_class = BWStillImageConditionalRouterConfiguration;
  result = [(BWStillImageConditionalRouterConfiguration *)&v5 init];
  if (result)
  {
    result->_numberOfOutputs = outputs;
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