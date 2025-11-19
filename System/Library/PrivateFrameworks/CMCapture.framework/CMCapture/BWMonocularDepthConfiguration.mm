@interface BWMonocularDepthConfiguration
- (BWMonocularDepthConfiguration)initWithInferenceType:(int)a3 monocularDepthType:(unsigned int)a4;
- (id)description;
@end

@implementation BWMonocularDepthConfiguration

- (BWMonocularDepthConfiguration)initWithInferenceType:(int)a3 monocularDepthType:(unsigned int)a4
{
  if (a3 != 106)
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

  if (a4 == 2)
  {
    v8 = 3;
  }

  else
  {
    if (a4 != 1)
    {
      return result;
    }

    v8 = 2;
  }

  result->_monocularDepthType = a4;
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