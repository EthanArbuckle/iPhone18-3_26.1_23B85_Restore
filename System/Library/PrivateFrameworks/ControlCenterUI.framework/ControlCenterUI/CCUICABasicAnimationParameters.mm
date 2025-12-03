@interface CCUICABasicAnimationParameters
- (BOOL)isEqual:(id)equal;
- (CAFrameRateRange)frameRateRange;
- (NSString)description;
- (id)_initWithAnimationParameters:(id)parameters;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation CCUICABasicAnimationParameters

- (id)_initWithAnimationParameters:(id)parameters
{
  parametersCopy = parameters;
  v15.receiver = self;
  v15.super_class = CCUICABasicAnimationParameters;
  v5 = [(CCUICABasicAnimationParameters *)&v15 init];
  if (v5)
  {
    [parametersCopy duration];
    v5->_duration = v6;
    timingFunction = [parametersCopy timingFunction];
    v8 = [timingFunction copyWithZone:0];
    timingFunction = v5->_timingFunction;
    v5->_timingFunction = v8;

    if (parametersCopy)
    {
      [parametersCopy frameRateRange];
      v5->_frameRateRange.minimum = v10;
      v5->_frameRateRange.maximum = v11;
      v5->_frameRateRange.preferred = v12;
      v5->_highFrameRateReason = [parametersCopy highFrameRateReason];
    }

    else
    {
      v13 = MEMORY[0x277CD9DD0];
      *&v5->_frameRateRange.minimum = *MEMORY[0x277CD9DD0];
      v5->_frameRateRange.preferred = *(v13 + 8);
    }
  }

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [(CCUICABasicAnimationParameters *)self duration];
  v4 = [v3 appendTimeInterval:@"Duration" withName:1 decomposeUnits:?];
  timingFunction = [(CCUICABasicAnimationParameters *)self timingFunction];
  v6 = [v3 appendObject:timingFunction withName:@"Timing Function"];

  [(CCUICABasicAnimationParameters *)self frameRateRange];
  v10 = CCUIStringFromCAFrameRateRange(v7, v8, v9);
  [v3 appendString:v10 withName:@"FrameRateRange"];

  v11 = [v3 appendInteger:-[CCUICABasicAnimationParameters highFrameRateReason](self withName:{"highFrameRateReason"), @"highFrameRateReason"}];
  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  [(CCUICABasicAnimationParameters *)self duration];
  v4 = [builder appendDouble:?];
  timingFunction = [(CCUICABasicAnimationParameters *)self timingFunction];
  v6 = [builder appendObject:timingFunction];

  [(CCUICABasicAnimationParameters *)self frameRateRange];
  v8 = v7;
  v10 = v9;
  v11 = [builder appendFloat:?];
  LODWORD(v12) = v8;
  v13 = [builder appendFloat:v12];
  LODWORD(v14) = v10;
  v15 = [builder appendFloat:v14];
  v16 = [builder appendInteger:{-[CCUICABasicAnimationParameters highFrameRateReason](self, "highFrameRateReason")}];
  v17 = [builder hash];

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      [(CCUICABasicAnimationParameters *)self duration];
      [(CCUICABasicAnimationParameters *)v5 duration];
      if (!BSCompareFloats() && ([(CCUICABasicAnimationParameters *)self timingFunction], v6 = objc_claimAutoreleasedReturnValue(), [(CCUICABasicAnimationParameters *)v5 timingFunction], v7 = objc_claimAutoreleasedReturnValue(), v8 = BSEqualObjects(), v7, v6, v8) && ([(CCUICABasicAnimationParameters *)self frameRateRange], v10 = v9, v12 = v11, v14 = v13, [(CCUICABasicAnimationParameters *)v5 frameRateRange], v22.minimum = v15, v22.maximum = v16, v22.preferred = v17, v21.minimum = v10, v21.maximum = v12, v21.preferred = v14, CAFrameRateRangeIsEqualToRange(v21, v22)))
      {
        highFrameRateReason = [(CCUICABasicAnimationParameters *)self highFrameRateReason];
        v19 = highFrameRateReason == [(CCUICABasicAnimationParameters *)v5 highFrameRateReason];
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CCUIMutableCABasicAnimationParameters alloc];

  return [(CCUICABasicAnimationParameters *)v4 _initWithAnimationParameters:self];
}

- (CAFrameRateRange)frameRateRange
{
  minimum = self->_frameRateRange.minimum;
  maximum = self->_frameRateRange.maximum;
  preferred = self->_frameRateRange.preferred;
  result.preferred = preferred;
  result.maximum = maximum;
  result.minimum = minimum;
  return result;
}

@end