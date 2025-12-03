@interface CCUICASpringAnimationParameters
- (BOOL)isEqual:(id)equal;
- (CAFrameRateRange)frameRateRange;
- (NSString)description;
- (id)_initWithAnimationParameters:(id)parameters;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation CCUICASpringAnimationParameters

- (id)_initWithAnimationParameters:(id)parameters
{
  parametersCopy = parameters;
  v17.receiver = self;
  v17.super_class = CCUICASpringAnimationParameters;
  v5 = [(CCUICASpringAnimationParameters *)&v17 init];
  if (v5)
  {
    [parametersCopy mass];
    v5->_mass = v6;
    [parametersCopy stiffness];
    v5->_stiffness = v7;
    [parametersCopy damping];
    v5->_damping = v8;
    timingFunction = [parametersCopy timingFunction];
    v10 = [timingFunction copyWithZone:0];
    timingFunction = v5->_timingFunction;
    v5->_timingFunction = v10;

    if (parametersCopy)
    {
      [parametersCopy frameRateRange];
      v5->_frameRateRange.minimum = v12;
      v5->_frameRateRange.maximum = v13;
      v5->_frameRateRange.preferred = v14;
      v5->_highFrameRateReason = [parametersCopy highFrameRateReason];
    }

    else
    {
      v15 = MEMORY[0x277CD9DD0];
      *&v5->_frameRateRange.minimum = *MEMORY[0x277CD9DD0];
      v5->_frameRateRange.preferred = *(v15 + 8);
    }
  }

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [(CCUICASpringAnimationParameters *)self mass];
  v4 = [v3 appendFloat:@"Mass" withName:?];
  [(CCUICASpringAnimationParameters *)self stiffness];
  v5 = [v3 appendFloat:@"Stiffness" withName:?];
  [(CCUICASpringAnimationParameters *)self damping];
  v6 = [v3 appendFloat:@"Damping" withName:?];
  timingFunction = [(CCUICASpringAnimationParameters *)self timingFunction];
  v8 = [v3 appendObject:timingFunction withName:@"Timing Function"];

  [(CCUICASpringAnimationParameters *)self frameRateRange];
  v12 = CCUIStringFromCAFrameRateRange(v9, v10, v11);
  [v3 appendString:v12 withName:@"FrameRateRange"];

  v13 = [v3 appendInteger:-[CCUICASpringAnimationParameters highFrameRateReason](self withName:{"highFrameRateReason"), @"highFrameRateReason"}];
  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  [(CCUICASpringAnimationParameters *)self mass];
  v4 = [builder appendCGFloat:?];
  [(CCUICASpringAnimationParameters *)self stiffness];
  v5 = [builder appendCGFloat:?];
  [(CCUICASpringAnimationParameters *)self damping];
  v6 = [builder appendCGFloat:?];
  timingFunction = [(CCUICASpringAnimationParameters *)self timingFunction];
  v8 = [builder appendObject:timingFunction];

  [(CCUICASpringAnimationParameters *)self frameRateRange];
  v10 = v9;
  v12 = v11;
  v13 = [builder appendFloat:?];
  LODWORD(v14) = v10;
  v15 = [builder appendFloat:v14];
  LODWORD(v16) = v12;
  v17 = [builder appendFloat:v16];
  v18 = [builder appendInteger:{-[CCUICASpringAnimationParameters highFrameRateReason](self, "highFrameRateReason")}];
  v19 = [builder hash];

  return v19;
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
      [(CCUICASpringAnimationParameters *)self mass];
      [(CCUICASpringAnimationParameters *)v5 mass];
      if (BSCompareFloats() || ([(CCUICASpringAnimationParameters *)self stiffness], [(CCUICASpringAnimationParameters *)v5 stiffness], BSCompareFloats()) || ([(CCUICASpringAnimationParameters *)self damping], [(CCUICASpringAnimationParameters *)v5 damping], BSCompareFloats()) || ([(CCUICASpringAnimationParameters *)self timingFunction], v6 = objc_claimAutoreleasedReturnValue(), [(CCUICASpringAnimationParameters *)v5 timingFunction], v7 = objc_claimAutoreleasedReturnValue(), v8 = BSEqualObjects(), v7, v6, !v8) || ([(CCUICASpringAnimationParameters *)self frameRateRange], v10 = v9, v12 = v11, v14 = v13, [(CCUICASpringAnimationParameters *)v5 frameRateRange], v22.minimum = v15, v22.maximum = v16, v22.preferred = v17, v21.minimum = v10, v21.maximum = v12, v21.preferred = v14, !CAFrameRateRangeIsEqualToRange(v21, v22)))
      {
        v19 = 0;
      }

      else
      {
        highFrameRateReason = [(CCUICASpringAnimationParameters *)self highFrameRateReason];
        v19 = highFrameRateReason == [(CCUICASpringAnimationParameters *)v5 highFrameRateReason];
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
  v4 = [CCUIMutableCASpringAnimationParameters alloc];

  return [(CCUICASpringAnimationParameters *)v4 _initWithAnimationParameters:self];
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