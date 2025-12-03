@interface HAPCharacteristicValueLinearDerivedTransitionPoint(NaturalLighting)
+ (id)transitionPointWithMinimumBrightness:()NaturalLighting minimumBrightnessColorTemperature:maximumBrightness:maximumBrightnessColorTemperature:targetCompletionDuration:;
+ (uint64_t)transitionPointWithPreviousTransitionPoint:()NaturalLighting nextTransitionPoint:timeElapsedSincePreviousTransitionPoint:minimumBrightness:maximumBrightness:;
- (unint64_t)colorTemperatureForBrightness:()NaturalLighting;
@end

@implementation HAPCharacteristicValueLinearDerivedTransitionPoint(NaturalLighting)

- (unint64_t)colorTemperatureForBrightness:()NaturalLighting
{
  scale = [self scale];
  value = [scale value];
  [value floatValue];
  v8 = v7;
  v9 = a3;
  offset = [self offset];
  value2 = [offset value];
  [value2 floatValue];
  v13 = llroundf(v12 + (v8 * v9));

  return v13;
}

+ (uint64_t)transitionPointWithPreviousTransitionPoint:()NaturalLighting nextTransitionPoint:timeElapsedSincePreviousTransitionPoint:minimumBrightness:maximumBrightness:
{
  v11 = a4;
  v12 = a3;
  scale = [v12 scale];
  value = [scale value];
  [value floatValue];
  v16 = v15;
  offset = [v12 offset];
  value2 = [offset value];
  [value2 floatValue];
  v20 = v19 + (v16 * a6);

  scale2 = [v12 scale];
  value3 = [scale2 value];
  [value3 floatValue];
  v24 = v23;
  offset2 = [v12 offset];

  value4 = [offset2 value];
  [value4 floatValue];
  v28 = v27 + (v24 * a7);

  scale3 = [v11 scale];
  value5 = [scale3 value];
  [value5 floatValue];
  v32 = v31;
  offset3 = [v11 offset];
  value6 = [offset3 value];
  [value6 floatValue];
  v36 = v35 + (v32 * a6);

  scale4 = [v11 scale];
  value7 = [scale4 value];
  [value7 floatValue];
  v40 = v39;
  offset4 = [v11 offset];
  value8 = [offset4 value];
  [value8 floatValue];
  v44 = v43 + (v40 * a7);

  targetCompletionDuration = [v11 targetCompletionDuration];

  value9 = [targetCompletionDuration value];
  unsignedLongLongValue = [value9 unsignedLongLongValue];

  v48 = MEMORY[0x277CFEAA0];

  return [v48 transitionPointWithMinimumBrightness:a6 minimumBrightnessColorTemperature:(v20 + (((v36 - v20) / unsignedLongLongValue) * a5)) maximumBrightness:a7 maximumBrightnessColorTemperature:(v28 + (((v44 - v28) / unsignedLongLongValue) * a5)) targetCompletionDuration:0];
}

+ (id)transitionPointWithMinimumBrightness:()NaturalLighting minimumBrightnessColorTemperature:maximumBrightness:maximumBrightnessColorTemperature:targetCompletionDuration:
{
  if (a5 <= a3)
  {
    v23 = _HMFPreconditionFailure();
    return [(HMDCameraRecordingManagerDependencyFactory *)v23 createRecordingSessionRetryContextWithWorkQueue:v24, v25];
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