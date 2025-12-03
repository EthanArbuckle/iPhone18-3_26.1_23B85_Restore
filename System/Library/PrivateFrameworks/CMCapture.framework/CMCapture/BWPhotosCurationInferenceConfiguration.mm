@interface BWPhotosCurationInferenceConfiguration
+ (id)configuration;
- (BWPhotosCurationInferenceConfiguration)initWithInferenceType:(int)type;
@end

@implementation BWPhotosCurationInferenceConfiguration

- (BWPhotosCurationInferenceConfiguration)initWithInferenceType:(int)type
{
  v4.receiver = self;
  v4.super_class = BWPhotosCurationInferenceConfiguration;
  result = [(BWInferenceConfiguration *)&v4 initWithInferenceType:*&type];
  if (result)
  {
    *(&result->super._suppressTimeOutFailure + 3) = 0;
  }

  return result;
}

+ (id)configuration
{
  v2 = [objc_alloc(objc_opt_class()) initWithInferenceType:803];

  return v2;
}

@end