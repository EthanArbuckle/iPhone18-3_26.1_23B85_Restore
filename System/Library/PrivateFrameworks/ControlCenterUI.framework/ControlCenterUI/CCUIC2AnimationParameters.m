@interface CCUIC2AnimationParameters
- (BOOL)isEqual:(id)a3;
- (CAFrameRateRange)frameRateRange;
- (NSString)description;
- (id)_initWithAnimationParameters:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation CCUIC2AnimationParameters

- (id)_initWithAnimationParameters:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CCUIC2AnimationParameters;
  v5 = [(CCUIC2AnimationParameters *)&v13 init];
  if (v5)
  {
    v5->_interactive = [v4 isInteractive];
    [v4 tension];
    v5->_tension = v6;
    [v4 friction];
    v5->_friction = v7;
    if (v4)
    {
      [v4 frameRateRange];
      v5->_frameRateRange.minimum = v8;
      v5->_frameRateRange.maximum = v9;
      v5->_frameRateRange.preferred = v10;
      v5->_highFrameRateReason = [v4 highFrameRateReason];
    }

    else
    {
      v11 = MEMORY[0x277CD9DD0];
      *&v5->_frameRateRange.minimum = *MEMORY[0x277CD9DD0];
      v5->_frameRateRange.preferred = *(v11 + 8);
    }
  }

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[CCUIC2AnimationParameters isInteractive](self withName:{"isInteractive"), @"Interactive"}];
  [(CCUIC2AnimationParameters *)self tension];
  v5 = [v3 appendFloat:@"Tension" withName:?];
  [(CCUIC2AnimationParameters *)self friction];
  v6 = [v3 appendFloat:@"Friction" withName:?];
  [(CCUIC2AnimationParameters *)self frameRateRange];
  v10 = CCUIStringFromCAFrameRateRange(v7, v8, v9);
  [v3 appendString:v10 withName:@"FrameRateRange"];

  v11 = [v3 appendInteger:-[CCUIC2AnimationParameters highFrameRateReason](self withName:{"highFrameRateReason"), @"highFrameRateReason"}];
  v12 = [v3 build];

  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendBool:{-[CCUIC2AnimationParameters isInteractive](self, "isInteractive")}];
  [(CCUIC2AnimationParameters *)self tension];
  v5 = [v3 appendCGFloat:?];
  [(CCUIC2AnimationParameters *)self friction];
  v6 = [v3 appendCGFloat:?];
  [(CCUIC2AnimationParameters *)self frameRateRange];
  v8 = v7;
  v10 = v9;
  v11 = [v3 appendFloat:?];
  LODWORD(v12) = v8;
  v13 = [v3 appendFloat:v12];
  LODWORD(v14) = v10;
  v15 = [v3 appendFloat:v14];
  v16 = [v3 appendInteger:{-[CCUIC2AnimationParameters highFrameRateReason](self, "highFrameRateReason")}];
  v17 = [v3 hash];

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
      v6 = [(CCUIC2AnimationParameters *)self isInteractive];
      if (v6 != [(CCUIC2AnimationParameters *)v5 isInteractive]|| ([(CCUIC2AnimationParameters *)self tension], [(CCUIC2AnimationParameters *)v5 tension], BSCompareFloats()) || ([(CCUIC2AnimationParameters *)self friction], [(CCUIC2AnimationParameters *)v5 friction], BSCompareFloats()) || ([(CCUIC2AnimationParameters *)self frameRateRange], v8 = v7, v10 = v9, v12 = v11, [(CCUIC2AnimationParameters *)v5 frameRateRange], v20.minimum = v13, v20.maximum = v14, v20.preferred = v15, v19.minimum = v8, v19.maximum = v10, v19.preferred = v12, !CAFrameRateRangeIsEqualToRange(v19, v20)))
      {
        v17 = 0;
      }

      else
      {
        v16 = [(CCUIC2AnimationParameters *)self highFrameRateReason];
        v17 = v16 == [(CCUIC2AnimationParameters *)v5 highFrameRateReason];
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CCUIMutableC2AnimationParameters alloc];

  return [(CCUIC2AnimationParameters *)v4 _initWithAnimationParameters:self];
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