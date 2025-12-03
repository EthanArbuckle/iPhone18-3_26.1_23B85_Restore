@interface CBAppliedCompensations
- (CBAppliedCompensations)initWithRampManager:(id)manager maxHarmony:(double)harmony maxBLR:(double)r;
- (double)compensationFor:(double)for andMax:(double)max;
- (id)copyStatusInfo;
- (void)dealloc;
- (void)setBlrEnabled:(BOOL)enabled;
- (void)setHarmonyEnabled:(BOOL)enabled;
@end

@implementation CBAppliedCompensations

- (CBAppliedCompensations)initWithRampManager:(id)manager maxHarmony:(double)harmony maxBLR:(double)r
{
  selfCopy = self;
  v11 = a2;
  managerCopy = manager;
  harmonyCopy = harmony;
  rCopy = r;
  v7.receiver = self;
  v7.super_class = CBAppliedCompensations;
  selfCopy = [(CBAppliedCompensations *)&v7 init];
  v5 = MEMORY[0x1E69E5928](managerCopy);
  selfCopy->_rampManager = v5;
  selfCopy->_blrComp = 1.0;
  selfCopy->_harmonyComp = 1.0;
  selfCopy->_maxHarmony = harmonyCopy;
  selfCopy->_maxBLR = rCopy;
  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](self->_rampManager).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBAppliedCompensations;
  [(CBAppliedCompensations *)&v3 dealloc];
}

- (double)compensationFor:(double)for andMax:(double)max
{
  blrComp = self->_blrComp;
  harmonyComp = self->_harmonyComp;
  v8 = fmaxf(blrComp, harmonyComp);
  if (for <= 0.0 || max <= 0.0)
  {
    return 1.0;
  }

  v6 = max / for;
  return clamp(v6, 1.0, v8);
}

- (void)setHarmonyEnabled:(BOOL)enabled
{
  selfCopy = self;
  v22 = a2;
  enabledCopy = enabled;
  if (enabled != self->_harmonyEnabled)
  {
    selfCopy->_harmonyEnabled = enabledCopy;
    harmonyComp = selfCopy->_harmonyComp;
    v20 = harmonyComp;
    if (selfCopy->_harmonyEnabled)
    {
      maxHarmony = selfCopy->_maxHarmony;
    }

    else
    {
      maxHarmony = 1.0;
    }

    HIDWORD(v7) = HIDWORD(maxHarmony);
    v8 = maxHarmony;
    v19 = v8;
    *&v7 = v20;
    *&v3 = v19;
    LODWORD(v4) = 2.0;
    LODWORD(v5) = 1114636288;
    v18 = [CBRamp newLinearRampWithWithOrigin:HARMONY_COMPENSATION_RAMP target:v7 length:v3 frequency:v4 identifier:v5];
    v10 = MEMORY[0x1E69E9820];
    v11 = -1073741824;
    v12 = 0;
    v13 = __44__CBAppliedCompensations_setHarmonyEnabled___block_invoke;
    v14 = &unk_1E867BAA8;
    v15 = selfCopy;
    v16 = v20;
    v17 = v19;
    [v18 setRampProgressCallback:?];
    [(CBRampManagerI *)selfCopy->_rampManager insertRamp:v18];
    MEMORY[0x1E69E5920](v18);
  }
}

- (void)setBlrEnabled:(BOOL)enabled
{
  selfCopy = self;
  v22 = a2;
  enabledCopy = enabled;
  if (enabled != self->_blrEnabled)
  {
    selfCopy->_blrEnabled = enabledCopy;
    blrComp = selfCopy->_blrComp;
    v20 = blrComp;
    if (selfCopy->_blrEnabled)
    {
      maxBLR = selfCopy->_maxBLR;
    }

    else
    {
      maxBLR = 1.0;
    }

    HIDWORD(v7) = HIDWORD(maxBLR);
    v8 = maxBLR;
    v19 = v8;
    *&v7 = v20;
    *&v3 = v19;
    LODWORD(v4) = 2.0;
    LODWORD(v5) = 1114636288;
    v18 = [CBRamp newLinearRampWithWithOrigin:BLR_COMPENSATION_RAMP target:v7 length:v3 frequency:v4 identifier:v5];
    v10 = MEMORY[0x1E69E9820];
    v11 = -1073741824;
    v12 = 0;
    v13 = __40__CBAppliedCompensations_setBlrEnabled___block_invoke;
    v14 = &unk_1E867BAA8;
    v15 = selfCopy;
    v16 = v20;
    v17 = v19;
    [v18 setRampProgressCallback:?];
    [(CBRampManagerI *)selfCopy->_rampManager insertRamp:v18];
    MEMORY[0x1E69E5920](v18);
  }
}

- (id)copyStatusInfo
{
  v10[6] = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v9[0] = @"BLREnabled";
  v10[0] = [MEMORY[0x1E696AD98] numberWithBool:{-[CBAppliedCompensations blrEnabled](self, "blrEnabled")}];
  v9[1] = @"HarmonyEnabled";
  v10[1] = [MEMORY[0x1E696AD98] numberWithBool:{-[CBAppliedCompensations harmonyEnabled](self, "harmonyEnabled")}];
  v9[2] = @"BLRComp";
  v4 = MEMORY[0x1E696AD98];
  [(CBAppliedCompensations *)self blrComp];
  v10[2] = [v4 numberWithDouble:?];
  v9[3] = @"MaxBLRComp";
  v10[3] = [MEMORY[0x1E696AD98] numberWithDouble:self->_maxBLR];
  v9[4] = @"HarmonyComp";
  v5 = MEMORY[0x1E696AD98];
  [(CBAppliedCompensations *)self harmonyComp];
  v10[4] = [v5 numberWithDouble:?];
  v9[5] = @"MaxHarmonyComp";
  v10[5] = [MEMORY[0x1E696AD98] numberWithDouble:self->_maxHarmony];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v7 = MEMORY[0x1E69E5928](v2);
  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
  return v7;
}

@end