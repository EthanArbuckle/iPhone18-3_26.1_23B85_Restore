@interface BWFastStereoDisparityConfiguration
- (BWFastStereoDisparityConfiguration)initWithInferenceType:(int)type fsdNetStereoImagesAlignment:(int)alignment disparityType:(unsigned int)disparityType;
@end

@implementation BWFastStereoDisparityConfiguration

- (BWFastStereoDisparityConfiguration)initWithInferenceType:(int)type fsdNetStereoImagesAlignment:(int)alignment disparityType:(unsigned int)disparityType
{
  if (type != 108)
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

  result->_disparityType = disparityType;
  result->_fsdNetStereoImagesAlignment = alignment;
  if (disparityType == 2)
  {
    v10 = 3;
  }

  else
  {
    if (disparityType != 1)
    {
      return result;
    }

    v10 = 2;
  }

  result->_disparityPrioritization = v10;
  return result;
}

@end