@interface CCUICABasicAnimationParameters
- (BOOL)isEqual:(id)a3;
- (CAFrameRateRange)frameRateRange;
- (NSString)description;
- (id)_initWithAnimationParameters:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation CCUICABasicAnimationParameters

- (id)_initWithAnimationParameters:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CCUICABasicAnimationParameters;
  v5 = [(CCUICABasicAnimationParameters *)&v15 init];
  if (v5)
  {
    [v4 duration];
    v5->_duration = v6;
    v7 = [v4 timingFunction];
    v8 = [v7 copyWithZone:0];
    timingFunction = v5->_timingFunction;
    v5->_timingFunction = v8;

    if (v4)
    {
      [v4 frameRateRange];
      v5->_frameRateRange.minimum = v10;
      v5->_frameRateRange.maximum = v11;
      v5->_frameRateRange.preferred = v12;
      v5->_highFrameRateReason = [v4 highFrameRateReason];
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
  v5 = [(CCUICABasicAnimationParameters *)self timingFunction];
  v6 = [v3 appendObject:v5 withName:@"Timing Function"];

  [(CCUICABasicAnimationParameters *)self frameRateRange];
  v10 = CCUIStringFromCAFrameRateRange(v7, v8, v9);
  [v3 appendString:v10 withName:@"FrameRateRange"];

  v11 = [v3 appendInteger:-[CCUICABasicAnimationParameters highFrameRateReason](self withName:{"highFrameRateReason"), @"highFrameRateReason"}];
  v12 = [v3 build];

  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  [(CCUICABasicAnimationParameters *)self duration];
  v4 = [v3 appendDouble:?];
  v5 = [(CCUICABasicAnimationParameters *)self timingFunction];
  v6 = [v3 appendObject:v5];

  [(CCUICABasicAnimationParameters *)self frameRateRange];
  v8 = v7;
  v10 = v9;
  v11 = [v3 appendFloat:?];
  LODWORD(v12) = v8;
  v13 = [v3 appendFloat:v12];
  LODWORD(v14) = v10;
  v15 = [v3 appendFloat:v14];
  v16 = [v3 appendInteger:{-[CCUICABasicAnimationParameters highFrameRateReason](self, "highFrameRateReason")}];
  v17 = [v3 hash];

  return v17;
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
      [(CCUICABasicAnimationParameters *)self duration];
      [(CCUICABasicAnimationParameters *)v5 duration];
      if (!BSCompareFloats() && ([(CCUICABasicAnimationParameters *)self timingFunction], v6 = objc_claimAutoreleasedReturnValue(), [(CCUICABasicAnimationParameters *)v5 timingFunction], v7 = objc_claimAutoreleasedReturnValue(), v8 = BSEqualObjects(), v7, v6, v8) && ([(CCUICABasicAnimationParameters *)self frameRateRange], v10 = v9, v12 = v11, v14 = v13, [(CCUICABasicAnimationParameters *)v5 frameRateRange], v22.minimum = v15, v22.maximum = v16, v22.preferred = v17, v21.minimum = v10, v21.maximum = v12, v21.preferred = v14, CAFrameRateRangeIsEqualToRange(v21, v22)))
      {
        v18 = [(CCUICABasicAnimationParameters *)self highFrameRateReason];
        v19 = v18 == [(CCUICABasicAnimationParameters *)v5 highFrameRateReason];
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

- (id)mutableCopyWithZone:(_NSZone *)a3
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