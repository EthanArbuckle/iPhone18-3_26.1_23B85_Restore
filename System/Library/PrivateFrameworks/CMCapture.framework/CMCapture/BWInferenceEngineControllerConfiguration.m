@interface BWInferenceEngineControllerConfiguration
- (BWInferenceEngineControllerConfiguration)init;
- (void)dealloc;
@end

@implementation BWInferenceEngineControllerConfiguration

- (BWInferenceEngineControllerConfiguration)init
{
  v3.receiver = self;
  v3.super_class = BWInferenceEngineControllerConfiguration;
  result = [(BWInferenceEngineControllerConfiguration *)&v3 init];
  if (result)
  {
    result->_fastMattingEnabled = 1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceEngineControllerConfiguration;
  [(BWStillImageProcessorControllerConfiguration *)&v3 dealloc];
}

@end