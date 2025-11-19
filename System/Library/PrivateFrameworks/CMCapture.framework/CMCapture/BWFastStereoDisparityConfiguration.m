@interface BWFastStereoDisparityConfiguration
- (BWFastStereoDisparityConfiguration)initWithInferenceType:(int)a3 fsdNetStereoImagesAlignment:(int)a4 disparityType:(unsigned int)a5;
@end

@implementation BWFastStereoDisparityConfiguration

- (BWFastStereoDisparityConfiguration)initWithInferenceType:(int)a3 fsdNetStereoImagesAlignment:(int)a4 disparityType:(unsigned int)a5
{
  if (a3 != 108)
  {
    return 0;
  }

  v12 = v5;
  v13 = v6;
  v11.receiver = self;
  v11.super_class = BWFastStereoDisparityConfiguration;
  result = [(BWInferenceConfiguration *)&v11 initWithInferenceType:?];
  if (!result)
  {
    return result;
  }

  result->_disparityType = a5;
  result->_fsdNetStereoImagesAlignment = a4;
  if (a5 == 2)
  {
    v10 = 3;
  }

  else
  {
    if (a5 != 1)
    {
      return result;
    }

    v10 = 2;
  }

  result->_disparityPrioritization = v10;
  return result;
}

@end