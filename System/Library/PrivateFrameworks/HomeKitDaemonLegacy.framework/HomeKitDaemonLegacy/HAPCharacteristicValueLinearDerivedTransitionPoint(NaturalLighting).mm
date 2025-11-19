@interface HAPCharacteristicValueLinearDerivedTransitionPoint(NaturalLighting)
+ (id)transitionPointWithMinimumBrightness:()NaturalLighting minimumBrightnessColorTemperature:maximumBrightness:maximumBrightnessColorTemperature:targetCompletionDuration:;
+ (uint64_t)transitionPointWithPreviousTransitionPoint:()NaturalLighting nextTransitionPoint:timeElapsedSincePreviousTransitionPoint:minimumBrightness:maximumBrightness:;
- (unint64_t)colorTemperatureForBrightness:()NaturalLighting;
@end

@implementation HAPCharacteristicValueLinearDerivedTransitionPoint(NaturalLighting)

- (unint64_t)colorTemperatureForBrightness:()NaturalLighting
{
  v5 = [a1 scale];
  v6 = [v5 value];
  [v6 floatValue];
  v8 = v7;
  v9 = a3;
  v10 = [a1 offset];
  v11 = [v10 value];
  [v11 floatValue];
  v13 = llroundf(v12 + (v8 * v9));

  return v13;
}

+ (uint64_t)transitionPointWithPreviousTransitionPoint:()NaturalLighting nextTransitionPoint:timeElapsedSincePreviousTransitionPoint:minimumBrightness:maximumBrightness:
{
  v11 = a4;
  v12 = a3;
  v13 = [v12 scale];
  v14 = [v13 value];
  [v14 floatValue];
  v16 = v15;
  v17 = [v12 offset];
  v18 = [v17 value];
  [v18 floatValue];
  v20 = v19 + (v16 * a6);

  v21 = [v12 scale];
  v22 = [v21 value];
  [v22 floatValue];
  v24 = v23;
  v25 = [v12 offset];

  v26 = [v25 value];
  [v26 floatValue];
  v28 = v27 + (v24 * a7);

  v29 = [v11 scale];
  v30 = [v29 value];
  [v30 floatValue];
  v32 = v31;
  v33 = [v11 offset];
  v34 = [v33 value];
  [v34 floatValue];
  v36 = v35 + (v32 * a6);

  v37 = [v11 scale];
  v38 = [v37 value];
  [v38 floatValue];
  v40 = v39;
  v41 = [v11 offset];
  v42 = [v41 value];
  [v42 floatValue];
  v44 = v43 + (v40 * a7);

  v45 = [v11 targetCompletionDuration];

  v46 = [v45 value];
  v47 = [v46 unsignedLongLongValue];

  v48 = MEMORY[0x277CFEAA0];

  return [v48 transitionPointWithMinimumBrightness:a6 minimumBrightnessColorTemperature:(v20 + (((v36 - v20) / v47) * a5)) maximumBrightness:a7 maximumBrightnessColorTemperature:(v28 + (((v44 - v28) / v47) * a5)) targetCompletionDuration:0];
}

+ (id)transitionPointWithMinimumBrightness:()NaturalLighting minimumBrightnessColorTemperature:maximumBrightness:maximumBrightnessColorTemperature:targetCompletionDuration:
{
  if (a5 <= a3)
  {
    v23 = _HMFPreconditionFailure();
    return [(HMDCameraRecordingManagerDependencyFactory *)v23 createRecordingSessionRetryContextWithWorkQueue:v24 homePresenceByPairingIdentity:v25, v26];
  }

  else
  {
    v8 = (a6 - a4) / (a5 - a3);
    v9 = a4 - (v8 * a3);
    v10 = objc_alloc(MEMORY[0x277CFEC88]);
    *&v11 = v8;
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
    v13 = [v10 initWithValue:v12];

    v14 = objc_alloc(MEMORY[0x277CFEC88]);
    *&v15 = v9;
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
    v17 = [v14 initWithValue:v16];

    v18 = objc_alloc(MEMORY[0x277CFEC98]);
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a7];
    v20 = [v18 initWithValue:v19];

    v21 = [objc_alloc(MEMORY[0x277CFEAA0]) initWithScale:v13 offset:v17 targetCompletionDuration:v20 startDelayDuration:0];

    return v21;
  }
}

@end