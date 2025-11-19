@interface CCUICASpringAnimationParameters
- (BOOL)isEqual:(id)a3;
- (CAFrameRateRange)frameRateRange;
- (NSString)description;
- (id)_initWithAnimationParameters:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation CCUICASpringAnimationParameters

- (id)_initWithAnimationParameters:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CCUICASpringAnimationParameters;
  v5 = [(CCUICASpringAnimationParameters *)&v17 init];
  if (v5)
  {
    [v4 mass];
    v5->_mass = v6;
    [v4 stiffness];
    v5->_stiffness = v7;
    [v4 damping];
    v5->_damping = v8;
    v9 = [v4 timingFunction];
    v10 = [v9 copyWithZone:0];
    timingFunction = v5->_timingFunction;
    v5->_timingFunction = v10;

    if (v4)
    {
      [v4 frameRateRange];
      v5->_frameRateRange.minimum = v12;
      v5->_frameRateRange.maximum = v13;
      v5->_frameRateRange.preferred = v14;
      v5->_highFrameRateReason = [v4 highFrameRateReason];
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
  v7 = [(CCUICASpringAnimationParameters *)self timingFunction];
  v8 = [v3 appendObject:v7 withName:@"Timing Function"];

  [(CCUICASpringAnimationParameters *)self frameRateRange];
  v12 = CCUIStringFromCAFrameRateRange(v9, v10, v11);
  [v3 appendString:v12 withName:@"FrameRateRange"];

  v13 = [v3 appendInteger:-[CCUICASpringAnimationParameters highFrameRateReason](self withName:{"highFrameRateReason"), @"highFrameRateReason"}];
  v14 = [v3 build];

  return v14;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  [(CCUICASpringAnimationParameters *)self mass];
  v4 = [v3 appendCGFloat:?];
  [(CCUICASpringAnimationParameters *)self stiffness];
  v5 = [v3 appendCGFloat:?];
  [(CCUICASpringAnimationParameters *)self damping];
  v6 = [v3 appendCGFloat:?];
  v7 = [(CCUICASpringAnimationParameters *)self timingFunction];
  v8 = [v3 appendObject:v7];

  [(CCUICASpringAnimationParameters *)self frameRateRange];
  v10 = v9;
  v12 = v11;
  v13 = [v3 appendFloat:?];
  LODWORD(v14) = v10;
  v15 = [v3 appendFloat:v14];
  LODWORD(v16) = v12;
  v17 = [v3 appendFloat:v16];
  v18 = [v3 appendInteger:{-[CCUICASpringAnimationParameters highFrameRateReason](self, "highFrameRateReason")}];
  v19 = [v3 hash];

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
      [(CCUICASpringAnimationParameters *)self mass];
      [(CCUICASpringAnimationParameters *)v5 mass];
      if (BSCompareFloats() || ([(CCUICASpringAnimationParameters *)self stiffness], [(CCUICASpringAnimationParameters *)v5 stiffness], BSCompareFloats()) || ([(CCUICASpringAnimationParameters *)self damping], [(CCUICASpringAnimationParameters *)v5 damping], BSCompareFloats()) || ([(CCUICASpringAnimationParameters *)self timingFunction], v6 = objc_claimAutoreleasedReturnValue(), [(CCUICASpringAnimationParameters *)v5 timingFunction], v7 = objc_claimAutoreleasedReturnValue(), v8 = BSEqualObjects(), v7, v6, !v8) || ([(CCUICASpringAnimationParameters *)self frameRateRange], v10 = v9, v12 = v11, v14 = v13, [(CCUICASpringAnimationParameters *)v5 frameRateRange], v22.minimum = v15, v22.maximum = v16, v22.preferred = v17, v21.minimum = v10, v21.maximum = v12, v21.preferred = v14, !CAFrameRateRangeIsEqualToRange(v21, v22)))
      {
        v19 = 0;
      }

      else
      {
        v18 = [(CCUICASpringAnimationParameters *)self highFrameRateReason];
        v19 = v18 == [(CCUICASpringAnimationParameters *)v5 highFrameRateReason];
      }
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
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