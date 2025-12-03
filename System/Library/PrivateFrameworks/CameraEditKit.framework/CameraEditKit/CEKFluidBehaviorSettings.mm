@interface CEKFluidBehaviorSettings
- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)state toState:(int)toState;
- (BOOL)isEqual:(id)equal;
- (CAFrameRateRange)frameRateRange;
- (double)_effectiveTrackingDampingRatio;
- (double)_effectiveTrackingResponse;
- (double)_effectiveTrackingRetargetImpulse;
- (double)settlingDuration;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)setDefaultCriticallyDampedValues;
- (void)setDefaultValues;
@end

@implementation CEKFluidBehaviorSettings

- (void)setDefaultValues
{
  [(CEKFluidBehaviorSettings *)self setBehaviorType:2];
  [(CEKFluidBehaviorSettings *)self setDeceleration:0.998];
  [(CEKFluidBehaviorSettings *)self setDampingRatio:0.845];
  [(CEKFluidBehaviorSettings *)self setResponse:0.531];
  [(CEKFluidBehaviorSettings *)self setTrackingDampingRatio:0.86];
  [(CEKFluidBehaviorSettings *)self setTrackingResponse:0.15];
  [(CEKFluidBehaviorSettings *)self setRetargetImpulse:0.0];
  [(CEKFluidBehaviorSettings *)self setTrackingRetargetImpulse:0.0];
  [(CEKFluidBehaviorSettings *)self setDampingRatioSmoothing:0.0];
  [(CEKFluidBehaviorSettings *)self setResponseSmoothing:0.0];
  [(CEKFluidBehaviorSettings *)self setTrackingDampingRatioSmoothing:0.0];
  [(CEKFluidBehaviorSettings *)self setTrackingResponseSmoothing:0.0];

  [(CEKFluidBehaviorSettings *)self setSmoothingAndProjectionEnabled:0];
}

- (void)setDefaultCriticallyDampedValues
{
  [(CEKFluidBehaviorSettings *)self setDefaultValues];
  [(CEKFluidBehaviorSettings *)self setDampingRatio:1.0];

  [(CEKFluidBehaviorSettings *)self setResponse:0.336];
}

- (double)_effectiveTrackingDampingRatio
{
  if ([(CEKFluidBehaviorSettings *)self behaviorType]== 1)
  {

    [(CEKFluidBehaviorSettings *)self dampingRatio];
  }

  else
  {

    [(CEKFluidBehaviorSettings *)self trackingDampingRatio];
  }

  return result;
}

- (double)_effectiveTrackingResponse
{
  if ([(CEKFluidBehaviorSettings *)self behaviorType]== 1)
  {

    [(CEKFluidBehaviorSettings *)self response];
  }

  else
  {

    [(CEKFluidBehaviorSettings *)self trackingResponse];
  }

  return result;
}

- (double)_effectiveTrackingRetargetImpulse
{
  if ([(CEKFluidBehaviorSettings *)self behaviorType]== 1)
  {

    [(CEKFluidBehaviorSettings *)self retargetImpulse];
  }

  else
  {

    [(CEKFluidBehaviorSettings *)self trackingRetargetImpulse];
  }

  return result;
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

- (double)settlingDuration
{
  animation = [MEMORY[0x1E69794A8] animation];
  [animation setMass:1.0];
  [(CEKFluidBehaviorSettings *)self dampingRatio];
  v5 = v4;
  [(CEKFluidBehaviorSettings *)self response];
  v7 = sqrt(6.28318531 / v6 * (6.28318531 / v6));
  v8 = v5 * (v7 + v7);
  [animation setStiffness:?];
  [animation setDamping:v8];
  [animation settlingDuration];
  v10 = v9;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v54 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  behaviorType = self->_behaviorType;
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __36__CEKFluidBehaviorSettings_isEqual___block_invoke;
  v85[3] = &unk_1E7CC65A0;
  v6 = equalCopy;
  v86 = v6;
  v53 = [v54 appendInteger:behaviorType counterpart:v85];
  name = self->_name;
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __36__CEKFluidBehaviorSettings_isEqual___block_invoke_2;
  v83[3] = &unk_1E7CC65C8;
  v8 = v6;
  v84 = v8;
  v52 = [v53 appendString:name counterpart:v83];
  deceleration = self->_deceleration;
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v81[2] = __36__CEKFluidBehaviorSettings_isEqual___block_invoke_3;
  v81[3] = &unk_1E7CC65F0;
  v10 = v8;
  v82 = v10;
  v51 = [v52 appendDouble:v81 counterpart:deceleration];
  dampingRatio = self->_dampingRatio;
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __36__CEKFluidBehaviorSettings_isEqual___block_invoke_4;
  v79[3] = &unk_1E7CC65F0;
  v12 = v10;
  v80 = v12;
  v50 = [v51 appendCGFloat:v79 counterpart:dampingRatio];
  response = self->_response;
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __36__CEKFluidBehaviorSettings_isEqual___block_invoke_5;
  v77[3] = &unk_1E7CC65F0;
  v14 = v12;
  v78 = v14;
  v49 = [v50 appendCGFloat:v77 counterpart:response];
  retargetImpulse = self->_retargetImpulse;
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __36__CEKFluidBehaviorSettings_isEqual___block_invoke_6;
  v75[3] = &unk_1E7CC65F0;
  v16 = v14;
  v76 = v16;
  v48 = [v49 appendCGFloat:v75 counterpart:retargetImpulse];
  trackingDampingRatio = self->_trackingDampingRatio;
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __36__CEKFluidBehaviorSettings_isEqual___block_invoke_7;
  v73[3] = &unk_1E7CC65F0;
  v18 = v16;
  v74 = v18;
  v47 = [v48 appendCGFloat:v73 counterpart:trackingDampingRatio];
  trackingResponse = self->_trackingResponse;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __36__CEKFluidBehaviorSettings_isEqual___block_invoke_8;
  v71[3] = &unk_1E7CC65F0;
  v20 = v18;
  v72 = v20;
  v46 = [v47 appendCGFloat:v71 counterpart:trackingResponse];
  trackingRetargetImpulse = self->_trackingRetargetImpulse;
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __36__CEKFluidBehaviorSettings_isEqual___block_invoke_9;
  v69[3] = &unk_1E7CC65F0;
  v22 = v20;
  v70 = v22;
  v23 = [v46 appendCGFloat:v69 counterpart:trackingRetargetImpulse];
  smoothingAndProjectionEnabled = self->_smoothingAndProjectionEnabled;
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __36__CEKFluidBehaviorSettings_isEqual___block_invoke_10;
  v67[3] = &unk_1E7CC6618;
  v25 = v22;
  v68 = v25;
  v26 = [v23 appendBool:smoothingAndProjectionEnabled counterpart:v67];
  dampingRatioSmoothing = self->_dampingRatioSmoothing;
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __36__CEKFluidBehaviorSettings_isEqual___block_invoke_11;
  v65[3] = &unk_1E7CC65F0;
  v28 = v25;
  v66 = v28;
  v29 = [v26 appendCGFloat:v65 counterpart:dampingRatioSmoothing];
  responseSmoothing = self->_responseSmoothing;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __36__CEKFluidBehaviorSettings_isEqual___block_invoke_12;
  v63[3] = &unk_1E7CC65F0;
  v31 = v28;
  v64 = v31;
  v32 = [v29 appendCGFloat:v63 counterpart:responseSmoothing];
  trackingDampingRatioSmoothing = self->_trackingDampingRatioSmoothing;
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __36__CEKFluidBehaviorSettings_isEqual___block_invoke_13;
  v61[3] = &unk_1E7CC65F0;
  v34 = v31;
  v62 = v34;
  v35 = [v32 appendCGFloat:v61 counterpart:trackingDampingRatioSmoothing];
  trackingResponseSmoothing = self->_trackingResponseSmoothing;
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __36__CEKFluidBehaviorSettings_isEqual___block_invoke_14;
  v59[3] = &unk_1E7CC65F0;
  v37 = v34;
  v60 = v37;
  v38 = [v35 appendCGFloat:v59 counterpart:trackingResponseSmoothing];
  inertialTargetSmoothingRatio = self->_inertialTargetSmoothingRatio;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __36__CEKFluidBehaviorSettings_isEqual___block_invoke_15;
  v57[3] = &unk_1E7CC65F0;
  v40 = v37;
  v58 = v40;
  v41 = [v38 appendCGFloat:v57 counterpart:inertialTargetSmoothingRatio];
  inertialProjectionDeceleration = self->_inertialProjectionDeceleration;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __36__CEKFluidBehaviorSettings_isEqual___block_invoke_16;
  v55[3] = &unk_1E7CC65F0;
  v56 = v40;
  v43 = v40;
  v44 = [v41 appendCGFloat:v55 counterpart:inertialProjectionDeceleration];
  LOBYTE(v40) = [v44 isEqual];

  return v40;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v20 = [builder appendInteger:self->_behaviorType];
  v19 = [v20 appendString:self->_name];
  v18 = [v19 appendDouble:self->_deceleration];
  v17 = [v18 appendCGFloat:self->_dampingRatio];
  v16 = [v17 appendCGFloat:self->_response];
  v15 = [v16 appendCGFloat:self->_retargetImpulse];
  v3 = [v15 appendCGFloat:self->_trackingDampingRatio];
  v4 = [v3 appendCGFloat:self->_trackingResponse];
  v5 = [v4 appendCGFloat:self->_trackingRetargetImpulse];
  v6 = [v5 appendBool:self->_smoothingAndProjectionEnabled];
  v7 = [v6 appendCGFloat:self->_dampingRatioSmoothing];
  v8 = [v7 appendCGFloat:self->_responseSmoothing];
  v9 = [v8 appendCGFloat:self->_trackingDampingRatioSmoothing];
  v10 = [v9 appendCGFloat:self->_trackingResponseSmoothing];
  v11 = [v10 appendCGFloat:self->_inertialTargetSmoothingRatio];
  v12 = [v11 appendCGFloat:self->_inertialProjectionDeceleration];
  v14 = [v12 hash];

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (![(CEKFluidBehaviorSettings *)self isEqual:v4])
  {
    objc_storeStrong((v4 + 144), self->_name);
    *(v4 + 32) = self->_behaviorType;
    *(v4 + 40) = self->_deceleration;
    *(v4 + 48) = self->_dampingRatio;
    *(v4 + 56) = self->_response;
    *(v4 + 72) = self->_trackingDampingRatio;
    *(v4 + 80) = self->_trackingResponse;
    *(v4 + 64) = self->_retargetImpulse;
    *(v4 + 88) = self->_trackingRetargetImpulse;
    *(v4 + 96) = self->_dampingRatioSmoothing;
    *(v4 + 104) = self->_responseSmoothing;
    *(v4 + 112) = self->_trackingDampingRatioSmoothing;
    *(v4 + 120) = self->_trackingResponseSmoothing;
    *(v4 + 24) = self->_smoothingAndProjectionEnabled;
    *(v4 + 128) = self->_inertialTargetSmoothingRatio;
    *(v4 + 136) = self->_inertialProjectionDeceleration;
  }

  return v4;
}

- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)state toState:(int)toState
{
  *&retstr->var7 = 0u;
  *&retstr->var9 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var5 = 0u;
  *&retstr->var0 = 0u;
  if (a5 == 1)
  {
    [(CEKFluidBehaviorSettings *)self _effectiveTrackingDampingRatio];
    retstr->var0 = v8;
    [(CEKFluidBehaviorSettings *)self _effectiveTrackingResponse];
    retstr->var1 = v9;
    [(CEKFluidBehaviorSettings *)self _effectiveTrackingRetargetImpulse];
    retstr->var10 = v10;
    result = [(CEKFluidBehaviorSettings *)self smoothingAndProjectionEnabled];
    if (result)
    {
      *&retstr->var6 = *&self->_trackingDampingRatioSmoothing;
      if (!toState)
      {
        *&retstr->var2 = 257;
        response = self->_response;
        retstr->var4 = self->_dampingRatio;
        v13 = 32;
LABEL_8:
        *(&retstr->var0 + v13) = response;
      }
    }
  }

  else
  {
    *&retstr->var0 = *&self->_dampingRatio;
    retstr->var10 = self->_retargetImpulse;
    result = [(CEKFluidBehaviorSettings *)self smoothingAndProjectionEnabled];
    if (result)
    {
      *&retstr->var6 = *&self->_dampingRatioSmoothing;
      if (toState == 1)
      {
        inertialTargetSmoothingRatio = self->_inertialTargetSmoothingRatio;
        retstr->var9 = self->_inertialProjectionDeceleration;
        response = inertialTargetSmoothingRatio * self->_trackingResponse;
        v13 = 56;
        goto LABEL_8;
      }
    }
  }

  return result;
}

@end