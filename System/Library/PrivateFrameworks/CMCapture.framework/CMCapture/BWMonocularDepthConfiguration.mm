@interface BWMonocularDepthConfiguration
- (BWMonocularDepthConfiguration)initWithInferenceType:(int)type monocularDepthType:(unsigned int)depthType;
- (id)description;
@end

@implementation BWMonocularDepthConfiguration

- (BWMonocularDepthConfiguration)initWithInferenceType:(int)type monocularDepthType:(unsigned int)depthType
{
  if (type != 106)
  {
    return 0;
  }

  v10 = v4;
  v11 = v5;
  v9.receiver = self;
  v9.super_class = BWMonocularDepthConfiguration;
  result = [(BWInferenceConfiguration *)&v9 initWithInferenceType:?];
  if (!result)
  {
    return result;
  }

  if (depthType == 2)
  {
    v8 = 3;
  }

  else
  {
    if (depthType != 1)
    {
      return result;
    }

    v8 = 2;
  }

  result->_monocularDepthType = depthType;
  result->_depthPrioritization = v8;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v6.receiver = self;
  v6.super_class = BWMonocularDepthConfiguration;
  v4 = [(BWInferenceConfiguration *)&v6 description];
  return [v3 stringWithFormat:@"%@ monocularDepthType:%d, depthPrioritization:%ld, depthDataDimensions:%@, appliesFinalCropRect:%d", v4, self->_monocularDepthType, self->_depthPrioritization, BWStringFromDimensions(), self->_appliesFinalCropRect];
}

@end