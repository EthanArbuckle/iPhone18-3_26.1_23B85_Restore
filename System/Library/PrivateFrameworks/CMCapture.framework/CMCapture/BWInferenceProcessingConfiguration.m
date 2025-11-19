@interface BWInferenceProcessingConfiguration
- (BWInferenceProcessingConfiguration)init;
- (__CFString)_stringForScalingStrategy:(__CFString *)result;
- (id)description;
@end

@implementation BWInferenceProcessingConfiguration

- (BWInferenceProcessingConfiguration)init
{
  v3.receiver = self;
  v3.super_class = BWInferenceProcessingConfiguration;
  result = [(BWInferenceProcessingConfiguration *)&v3 init];
  if (result)
  {
    *&result->_scalingStrategy = 0x300000001;
    result->_scalingAppliesCropOnInputResolution = 0;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(BWInferenceProcessingConfiguration *)self _stringForScalingStrategy:?];
  filterType = self->_filterType;
  if (filterType > 3)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_1E799CC10[filterType];
  }

  return [v3 stringWithFormat:@"<%@: %p; scalingStrategy = %@; filterType = %@; scalingAppliesCropOnInputResolution = %d>", v5, self, v6, v8, self->_scalingAppliesCropOnInputResolution];
}

- (__CFString)_stringForScalingStrategy:(__CFString *)result
{
  if (!result)
  {
    return result;
  }

  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (a2)
  {
    [v3 addObject:@"MemoryOptimized"];
    if ((a2 & 2) == 0)
    {
LABEL_4:
      if ((a2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((a2 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v4 addObject:@"PrioritizeChromaPreservation"];
  if ((a2 & 4) == 0)
  {
LABEL_5:
    if ((a2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  [v4 addObject:@"PreventPixelFormatConversionDeferral"];
  if ((a2 & 8) != 0)
  {
LABEL_6:
    [v4 addObject:@"PrioritizeBGRAFormat"];
  }

LABEL_7:
  if (![v4 count])
  {
    return @"Unknown";
  }

  return [v4 componentsJoinedByString:@" | "];
}

@end