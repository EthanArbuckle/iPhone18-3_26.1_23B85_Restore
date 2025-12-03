@interface CBAnalytics
+ (void)aliasingMitigationsCount:(unint64_t)count;
+ (void)alsOcclusionsByProx:(int64_t)prox andByTouch:(int64_t)touch touchProx:(int64_t)touchProx none:(int64_t)none;
+ (void)alsSelectionDeltas:(const double *)deltas count:(unint64_t)count;
+ (void)alsSelectionLuxTimeHistogram:(id)histogram forALSIndex:(int64_t)index;
+ (void)alsSelectionSwaps:(unint64_t)swaps;
+ (void)alsSelectionTimes:(const double *)times count:(unint64_t)count;
+ (void)autoBrightnessEnabled:(BOOL)enabled byUser:(BOOL)user;
+ (void)autoBrightnessUserChange:(BOOL)change lowPower:(BOOL)power;
+ (void)autoDimLeave:(double)leave;
+ (void)cltmBudgetUpdated:(float)updated currentSDRBrightness:(float)brightness;
+ (void)harmonyColor:(const ColorReport *)color;
+ (void)harmonyEnabled:(BOOL)enabled byUser:(BOOL)user;
+ (void)hdrSession:(BOOL)session;
+ (void)illuminanceHistogram:(id)histogram;
+ (void)luminanceHistogram:(id)histogram withName:(id)name;
+ (void)nightShiftEnabled:(BOOL)enabled withOption:(int)option;
+ (void)rtplcTriggeredWithLength:(unint64_t)length maxAPCE:(float)e durationInSeconds:(float)seconds sdrBrightness:(float)brightness referenceModeEnabled:(BOOL)enabled;
+ (void)sbimMitigationTriggeredWithBrightness:(float)brightness;
+ (void)send:(id)send withBlock:(id)block;
+ (void)sendBool:(id)bool withField:(const char *)field andValue:(BOOL)value;
+ (void)sendInt:(id)int withField:(const char *)field andValue:(int64_t)value;
+ (void)sendSparseBins:(const double *)bins count:(int64_t)count withName:(id)name;
+ (void)touchOcclusionElapsedDelay:(float)delay;
+ (void)userBrightnessChangeAfterSnapping:(float)snapping;
+ (void)userSliderCommit:(const CBSliderCommitInfo *)commit;
@end

@implementation CBAnalytics

+ (void)send:(id)send withBlock:(id)block
{
  context = objc_autoreleasePoolPush();
  [@"com.apple.CoreBrightness" stringByAppendingString:send];
  AnalyticsSendEventLazy();
  objc_autoreleasePoolPop(context);
}

+ (void)sendInt:(id)int withField:(const char *)field andValue:(int64_t)value
{
  selfCopy = self;
  v16 = a2;
  intCopy = int;
  fieldCopy = field;
  valueCopy = value;
  context = objc_autoreleasePoolPush();
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __42__CBAnalytics_sendInt_withField_andValue___block_invoke;
  v10 = &__block_descriptor_48_e19___NSDictionary_8__0l;
  v11 = fieldCopy;
  v12 = valueCopy;
  [selfCopy send:intCopy withBlock:?];
  objc_autoreleasePoolPop(context);
}

uint64_t __42__CBAnalytics_sendInt_withField_andValue___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1 + 32)];
  v5[0] = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  *MEMORY[0x1E69E9840];
  return v3;
}

+ (void)sendBool:(id)bool withField:(const char *)field andValue:(BOOL)value
{
  selfCopy = self;
  v16 = a2;
  boolCopy = bool;
  fieldCopy = field;
  valueCopy = value;
  context = objc_autoreleasePoolPush();
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __43__CBAnalytics_sendBool_withField_andValue___block_invoke;
  v10 = &__block_descriptor_41_e19___NSDictionary_8__0l;
  v11 = fieldCopy;
  v12 = valueCopy;
  [selfCopy send:boolCopy withBlock:?];
  objc_autoreleasePoolPop(context);
}

uint64_t __43__CBAnalytics_sendBool_withField_andValue___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1 + 32)];
  v5[0] = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40) & 1];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  *MEMORY[0x1E69E9840];
  return v3;
}

+ (void)sendSparseBins:(const double *)bins count:(int64_t)count withName:(id)name
{
  context = objc_autoreleasePoolPush();
  for (i = 0; i < count; ++i)
  {
    if (bins[i] != 0.0)
    {
      [self send:name withBlock:?];
    }
  }

  objc_autoreleasePoolPop(context);
}

uint64_t __45__CBAnalytics_sendSparseBins_count_withName___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"bin";
  v5[0] = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  v4[1] = @"time";
  v5[1] = [MEMORY[0x1E696AD98] numberWithDouble:*(*(a1 + 40) + 8 * *(a1 + 32)) * 1000.0];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
  *MEMORY[0x1E69E9840];
  return v3;
}

+ (void)alsSelectionSwaps:(unint64_t)swaps
{
  if (swaps <= 0x7FFFFFFFFFFFFFFFLL)
  {
    swapsCopy = swaps;
  }

  else
  {
    swapsCopy = 0x7FFFFFFFFFFFFFFFLL;
  }

  [self sendInt:@".ALS.Swaps" withField:"swaps" andValue:swapsCopy];
}

+ (void)alsSelectionTimes:(const double *)times count:(unint64_t)count
{
  context = objc_autoreleasePoolPush();
  for (i = 0; i < count; ++i)
  {
    if (times[i] > 0.0)
    {
      [self send:@".ALS.Times" withBlock:?];
    }
  }

  objc_autoreleasePoolPop(context);
}

uint64_t __39__CBAnalytics_alsSelectionTimes_count___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"index";
  v5[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v4[1] = @"time";
  v5[1] = [MEMORY[0x1E696AD98] numberWithDouble:*(*(a1 + 40) + 8 * *(a1 + 32)) * 1000.0];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
  *MEMORY[0x1E69E9840];
  return v3;
}

+ (void)alsSelectionDeltas:(const double *)deltas count:(unint64_t)count
{
  selfCopy = self;
  v20 = a2;
  deltasCopy = deltas;
  countCopy = count;
  context = objc_autoreleasePoolPush();
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __40__CBAnalytics_alsSelectionDeltas_count___block_invoke;
  v15 = &__block_descriptor_40_e18___NSNumber_16__0Q8l;
  v16 = deltasCopy;
  v17 = dumpCArrayIntoDictionary(countCopy, &v11);
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __40__CBAnalytics_alsSelectionDeltas_count___block_invoke_2;
  v9 = &unk_1E867B058;
  v10 = v17;
  [selfCopy send:@".ALS.Deltas" withBlock:?];
  objc_autoreleasePoolPop(context);
}

+ (void)alsSelectionLuxTimeHistogram:(id)histogram forALSIndex:(int64_t)index
{
  selfCopy = self;
  v14 = a2;
  histogramCopy = histogram;
  indexCopy = index;
  context = objc_autoreleasePoolPush();
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __56__CBAnalytics_alsSelectionLuxTimeHistogram_forALSIndex___block_invoke;
  v9 = &unk_1E867B0A8;
  v10 = selfCopy;
  v11 = indexCopy;
  [histogramCopy enumerateBinsUsingBlock:?];
  objc_autoreleasePoolPop(context);
}

uint64_t __56__CBAnalytics_alsSelectionLuxTimeHistogram_forALSIndex___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a1;
  result = [a4 doubleValue];
  if (v5 > 0.0)
  {
    v6 = *(a1 + 32);
    v8 = MEMORY[0x1E69E9820];
    v9 = -1073741824;
    v10 = 0;
    v11 = __56__CBAnalytics_alsSelectionLuxTimeHistogram_forALSIndex___block_invoke_2;
    v12 = &unk_1E867B080;
    v15 = *(a1 + 40);
    v16 = v20;
    v13 = v19;
    v14 = v18;
    return [v6 send:@".ALS.LuxTime" withBlock:?];
  }

  return result;
}

uint64_t __56__CBAnalytics_alsSelectionLuxTimeHistogram_forALSIndex___block_invoke_2(uint64_t a1)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"alsIndex";
  v7[0] = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  v6[1] = @"luxBin";
  v7[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  v6[2] = @"luxEdge";
  v7[2] = *(a1 + 32);
  v6[3] = @"time";
  v4 = MEMORY[0x1E696AD98];
  [*(a1 + 40) doubleValue];
  v7[3] = [v4 numberWithDouble:v1 * 1000.0];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
  *MEMORY[0x1E69E9840];
  return v5;
}

+ (void)autoBrightnessEnabled:(BOOL)enabled byUser:(BOOL)user
{
  selfCopy = self;
  v14 = a2;
  enabledCopy = enabled;
  userCopy = user;
  context = objc_autoreleasePoolPush();
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __44__CBAnalytics_autoBrightnessEnabled_byUser___block_invoke;
  v9 = &__block_descriptor_34_e19___NSDictionary_8__0l;
  v10 = enabledCopy;
  v11 = userCopy;
  [selfCopy send:@".Auto.Enabled" withBlock:?];
  objc_autoreleasePoolPop(context);
}

uint64_t __44__CBAnalytics_autoBrightnessEnabled_byUser___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"enabled";
  v5[0] = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32) & 1];
  v4[1] = @"userChange";
  v5[1] = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 33) & 1];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
  *MEMORY[0x1E69E9840];
  return v3;
}

+ (void)hdrSession:(BOOL)session
{
  selfCopy = self;
  v11 = a2;
  sessionCopy = session;
  context = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __26__CBAnalytics_hdrSession___block_invoke;
  v8 = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v9 = sessionCopy;
  [selfCopy send:@".HDR.CPMSConstrained" withBlock:?];
  objc_autoreleasePoolPop(context);
}

uint64_t __26__CBAnalytics_hdrSession___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"constrained";
  v4[0] = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32) & 1];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  *MEMORY[0x1E69E9840];
  return v2;
}

+ (void)autoBrightnessUserChange:(BOOL)change lowPower:(BOOL)power
{
  selfCopy = self;
  v14 = a2;
  changeCopy = change;
  powerCopy = power;
  context = objc_autoreleasePoolPush();
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __49__CBAnalytics_autoBrightnessUserChange_lowPower___block_invoke;
  v9 = &__block_descriptor_34_e19___NSDictionary_8__0l;
  v10 = changeCopy;
  v11 = powerCopy;
  [selfCopy send:@".Auto.UserChange" withBlock:?];
  objc_autoreleasePoolPop(context);
}

uint64_t __49__CBAnalytics_autoBrightnessUserChange_lowPower___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"isBrighter";
  v5[0] = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32) & 1];
  v4[1] = @"lowPowerModeEnabled";
  v5[1] = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 33) & 1];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
  *MEMORY[0x1E69E9840];
  return v3;
}

+ (void)nightShiftEnabled:(BOOL)enabled withOption:(int)option
{
  selfCopy = self;
  v14 = a2;
  enabledCopy = enabled;
  optionCopy = option;
  context = objc_autoreleasePoolPush();
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __44__CBAnalytics_nightShiftEnabled_withOption___block_invoke;
  v9 = &__block_descriptor_37_e19___NSDictionary_8__0l;
  v11 = enabledCopy;
  v10 = optionCopy;
  [selfCopy send:@".NightShift.Enabled" withBlock:?];
  objc_autoreleasePoolPop(context);
}

uint64_t __44__CBAnalytics_nightShiftEnabled_withOption___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"enabled";
  v5[0] = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 36) & 1];
  v4[1] = @"option";
  v5[1] = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
  *MEMORY[0x1E69E9840];
  return v3;
}

+ (void)harmonyColor:(const ColorReport *)color
{
  selfCopy = self;
  v5 = a2;
  colorCopy = color;
  bzero(v3, 0x200uLL);
  memcpy(v3, colorCopy, sizeof(v3));
  [selfCopy sendSparseBins:&v3[848] count:10 withName:@".Harmony.Strength"];
  [selfCopy sendSparseBins:&v3[432] count:46 withName:@".Harmony.Ambient"];
  [selfCopy sendSparseBins:&v3[216] count:17 withName:@".Harmony.Display"];
}

+ (void)harmonyEnabled:(BOOL)enabled byUser:(BOOL)user
{
  selfCopy = self;
  v14 = a2;
  enabledCopy = enabled;
  userCopy = user;
  context = objc_autoreleasePoolPush();
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __37__CBAnalytics_harmonyEnabled_byUser___block_invoke;
  v9 = &__block_descriptor_34_e19___NSDictionary_8__0l;
  v10 = enabledCopy;
  v11 = userCopy;
  [selfCopy send:@".Harmony.Enabled" withBlock:?];
  objc_autoreleasePoolPop(context);
}

uint64_t __37__CBAnalytics_harmonyEnabled_byUser___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"enabled";
  v5[0] = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32) & 1];
  v4[1] = @"userChange";
  v5[1] = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 33) & 1];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
  *MEMORY[0x1E69E9840];
  return v3;
}

+ (void)autoDimLeave:(double)leave
{
  selfCopy = self;
  v11 = a2;
  leaveCopy = leave;
  context = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __28__CBAnalytics_autoDimLeave___block_invoke;
  v8 = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v9 = leaveCopy;
  [selfCopy send:@".AutoDim.Leave" withBlock:?];
  objc_autoreleasePoolPop(context);
}

uint64_t __28__CBAnalytics_autoDimLeave___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"duration";
  v4[0] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 32)];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  *MEMORY[0x1E69E9840];
  return v2;
}

+ (void)sbimMitigationTriggeredWithBrightness:(float)brightness
{
  selfCopy = self;
  v11 = a2;
  brightnessCopy = brightness;
  context = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __53__CBAnalytics_sbimMitigationTriggeredWithBrightness___block_invoke;
  v8 = &__block_descriptor_36_e19___NSDictionary_8__0l;
  v9 = brightnessCopy;
  [selfCopy send:@".SBIM.CapsHeadroom" withBlock:?];
  objc_autoreleasePoolPop(context);
}

uint64_t __53__CBAnalytics_sbimMitigationTriggeredWithBrightness___block_invoke(uint64_t a1, double a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"sdrBrightness";
  LODWORD(a2) = *(a1 + 32);
  v5[0] = [MEMORY[0x1E696AD98] numberWithFloat:a2];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  *MEMORY[0x1E69E9840];
  return v3;
}

+ (void)cltmBudgetUpdated:(float)updated currentSDRBrightness:(float)brightness
{
  selfCopy = self;
  v14 = a2;
  updatedCopy = updated;
  brightnessCopy = brightness;
  context = objc_autoreleasePoolPush();
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __54__CBAnalytics_cltmBudgetUpdated_currentSDRBrightness___block_invoke;
  v9 = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v10 = brightnessCopy;
  v11 = updatedCopy;
  [selfCopy send:@".cltm.capsBrightness" withBlock:?];
  objc_autoreleasePoolPop(context);
}

uint64_t __54__CBAnalytics_cltmBudgetUpdated_currentSDRBrightness___block_invoke(uint64_t a1, double a2)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"brightnessDrop";
  *&a2 = *(a1 + 32) - *(a1 + 36);
  v7[0] = [MEMORY[0x1E696AD98] numberWithFloat:a2];
  v6[1] = @"nitsBeforeCap";
  LODWORD(v2) = *(a1 + 32);
  v7[1] = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  *MEMORY[0x1E69E9840];
  return v5;
}

+ (void)illuminanceHistogram:(id)histogram
{
  selfCopy = self;
  v11 = a2;
  histogramCopy = histogram;
  context = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __36__CBAnalytics_illuminanceHistogram___block_invoke;
  v8 = &unk_1E867B198;
  v9 = selfCopy;
  [histogramCopy enumerateBinsUsingBlock:?];
  objc_autoreleasePoolPop(context);
}

uint64_t __36__CBAnalytics_illuminanceHistogram___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a1;
  result = [a4 doubleValue];
  if (v5 != 0.0)
  {
    v6 = *(a1 + 32);
    v8 = MEMORY[0x1E69E9820];
    v9 = -1073741824;
    v10 = 0;
    v11 = __36__CBAnalytics_illuminanceHistogram___block_invoke_2;
    v12 = &unk_1E867B170;
    v15 = v19;
    v13 = v18;
    v14 = v17;
    return [v6 send:@".Illuminance" withBlock:?];
  }

  return result;
}

uint64_t __36__CBAnalytics_illuminanceHistogram___block_invoke_2(uint64_t a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6[0] = @"index";
  v7[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  v6[1] = @"edge";
  v7[1] = *(a1 + 32);
  v6[2] = @"value";
  v4 = MEMORY[0x1E696AD98];
  [*(a1 + 40) doubleValue];
  v7[2] = [v4 numberWithDouble:v1 * 1000.0];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
  *MEMORY[0x1E69E9840];
  return v5;
}

+ (void)rtplcTriggeredWithLength:(unint64_t)length maxAPCE:(float)e durationInSeconds:(float)seconds sdrBrightness:(float)brightness referenceModeEnabled:(BOOL)enabled
{
  *&v7 = brightness;
  BYTE4(v7) = enabled;
  [self send:@".rtplc.Burst" withBlock:{MEMORY[0x1E69E9820], 3221225472, __101__CBAnalytics_rtplcTriggeredWithLength_maxAPCE_durationInSeconds_sdrBrightness_referenceModeEnabled___block_invoke, &__block_descriptor_53_e19___NSDictionary_8__0l, length, __PAIR64__(LODWORD(seconds), LODWORD(e)), v7}];
}

uint64_t __101__CBAnalytics_rtplcTriggeredWithLength_maxAPCE_durationInSeconds_sdrBrightness_referenceModeEnabled___block_invoke(uint64_t a1)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v7[0] = @"frameCount";
  v8[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(a1 + 32)];
  v7[1] = @"maxApce";
  LODWORD(v1) = *(a1 + 40);
  v8[1] = [MEMORY[0x1E696AD98] numberWithFloat:v1];
  v7[2] = @"durationInSeconds";
  LODWORD(v2) = *(a1 + 44);
  v8[2] = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  v7[3] = @"brightness";
  LODWORD(v3) = *(a1 + 48);
  v8[3] = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  v7[4] = @"referenceModeEnabled";
  v8[4] = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 52) & 1];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  *MEMORY[0x1E69E9840];
  return v6;
}

+ (void)luminanceHistogram:(id)histogram withName:(id)name
{
  selfCopy = self;
  v14 = a2;
  histogramCopy = histogram;
  nameCopy = name;
  context = objc_autoreleasePoolPush();
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __43__CBAnalytics_luminanceHistogram_withName___block_invoke;
  v9 = &unk_1E867B208;
  v10 = selfCopy;
  v11 = nameCopy;
  [histogramCopy enumerateBinsUsingBlock:?];
  objc_autoreleasePoolPop(context);
}

uint64_t __43__CBAnalytics_luminanceHistogram_withName___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a1;
  result = [a4 doubleValue];
  if (v5 != 0.0)
  {
    v6 = *(a1 + 32);
    v8 = MEMORY[0x1E69E9820];
    v9 = -1073741824;
    v10 = 0;
    v11 = __43__CBAnalytics_luminanceHistogram_withName___block_invoke_2;
    v12 = &unk_1E867B1E0;
    v13 = *(a1 + 40);
    v16 = v20;
    v14 = v19;
    v15 = v18;
    return [v6 send:@".Luminance" withBlock:?];
  }

  return result;
}

uint64_t __43__CBAnalytics_luminanceHistogram_withName___block_invoke_2(uint64_t a1)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"name";
  v7[0] = *(a1 + 32);
  v6[1] = @"index";
  v7[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  v6[2] = @"edge";
  v7[2] = *(a1 + 40);
  v6[3] = @"value";
  v4 = MEMORY[0x1E696AD98];
  [*(a1 + 48) doubleValue];
  v7[3] = [v4 numberWithDouble:v1 * 1000.0];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
  *MEMORY[0x1E69E9840];
  return v5;
}

+ (void)userSliderCommit:(const CBSliderCommitInfo *)commit
{
  selfCopy = self;
  v11 = a2;
  commitCopy = commit;
  context = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __32__CBAnalytics_userSliderCommit___block_invoke;
  v8 = &__block_descriptor_40_e26___NSMutableDictionary_8__0l;
  v9 = commitCopy;
  [selfCopy send:@".UserSliderCommit_v4" withBlock:?];
  objc_autoreleasePoolPop(context);
}

void *__32__CBAnalytics_userSliderCommit___block_invoke(uint64_t a1)
{
  v38[46] = *MEMORY[0x1E69E9840];
  v34 = MEMORY[0x1E695DF90];
  v37[0] = @"aabParamsUpdateOnly";
  v38[0] = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 140) & 1];
  v37[1] = @"autoBrightnessEnabled";
  v38[1] = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 52) & 1];
  v37[2] = @"apce";
  LODWORD(v1) = *(*(a1 + 32) + 40);
  v38[2] = [MEMORY[0x1E696AD98] numberWithFloat:v1];
  v37[3] = @"colorAdaptationMode";
  v38[3] = [MEMORY[0x1E696AD98] numberWithInt:*(*(a1 + 32) + 200)];
  v37[4] = @"colorAdaptationStrength";
  *&v2 = *(*(a1 + 32) + 196) * 100.0;
  v38[4] = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  v37[5] = @"darkAppearanceApplied";
  v38[5] = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 204) & 1];
  v37[6] = @"delayedAPCE";
  LODWORD(v3) = *(*(a1 + 32) + 44);
  v38[6] = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  v37[7] = @"delayedAPCEStatus";
  v38[7] = [MEMORY[0x1E696AD98] numberWithInt:*(*(a1 + 32) + 48)];
  v37[8] = @"e0a";
  LODWORD(v4) = *(*(a1 + 32) + 60);
  v38[8] = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v37[9] = @"e0b";
  LODWORD(v5) = *(*(a1 + 32) + 64);
  v38[9] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v37[10] = @"e1";
  LODWORD(v6) = *(*(a1 + 32) + 68);
  v38[10] = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v37[11] = @"e2";
  LODWORD(v7) = *(*(a1 + 32) + 72);
  v38[11] = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v37[12] = @"ecoModeFactor";
  *&v8 = *(*(a1 + 32) + 56) * 100.0;
  v38[12] = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v37[13] = @"EDRHeadroom";
  LODWORD(v9) = *(*(a1 + 32) + 192);
  v38[13] = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  v37[14] = @"frontLux";
  LODWORD(v10) = *(*(a1 + 32) + 20);
  v38[14] = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  v37[15] = @"l0a";
  LODWORD(v11) = *(*(a1 + 32) + 76);
  v38[15] = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v37[16] = @"l0b";
  LODWORD(v12) = *(*(a1 + 32) + 80);
  v38[16] = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v37[17] = @"l1";
  LODWORD(v13) = *(*(a1 + 32) + 84);
  v38[17] = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  v37[18] = @"l2";
  LODWORD(v14) = *(*(a1 + 32) + 88);
  v38[18] = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  v37[19] = @"landscapeOrientation";
  v38[19] = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 205) & 1];
  v37[20] = @"nits";
  LODWORD(v15) = *(*(a1 + 32) + 32);
  v38[20] = [MEMORY[0x1E696AD98] numberWithFloat:v15];
  v37[21] = @"slider";
  LODWORD(v16) = *(*(a1 + 32) + 36);
  v38[21] = [MEMORY[0x1E696AD98] numberWithFloat:v16];
  v37[22] = @"outdoorBrightnessBoostFactor";
  LODWORD(v17) = *(*(a1 + 32) + 188);
  v38[22] = [MEMORY[0x1E696AD98] numberWithFloat:v17];
  v37[23] = @"proxMitigationTriggered";
  v38[23] = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 186) & 1];
  v37[24] = @"rearLux";
  LODWORD(v18) = *(*(a1 + 32) + 24);
  v38[24] = [MEMORY[0x1E696AD98] numberWithFloat:v18];
  v37[25] = @"rearLuxInUse";
  v38[25] = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 28) & 1];
  v37[26] = @"thermalMitigationLimitingBrightness";
  v38[26] = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 184) & 1];
  v37[27] = @"thirdSlope";
  LODWORD(v19) = *(*(a1 + 32) + 92);
  v38[27] = [MEMORY[0x1E696AD98] numberWithFloat:v19];
  v37[28] = @"timestamp";
  v38[28] = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(a1 + 32) + 8)];
  v37[29] = @"touchMitigationTriggered";
  v38[29] = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 185) & 1];
  v37[30] = @"trustedLux";
  v38[30] = [MEMORY[0x1E696AD98] numberWithInt:*(*(a1 + 32) + 16)];
  v37[31] = @"alternativeE0a";
  LODWORD(v20) = *(*(a1 + 32) + 100);
  v38[31] = [MEMORY[0x1E696AD98] numberWithFloat:v20];
  v37[32] = @"alternativeE0b";
  LODWORD(v21) = *(*(a1 + 32) + 104);
  v38[32] = [MEMORY[0x1E696AD98] numberWithFloat:v21];
  v37[33] = @"alternativeE1";
  LODWORD(v22) = *(*(a1 + 32) + 108);
  v38[33] = [MEMORY[0x1E696AD98] numberWithFloat:v22];
  v37[34] = @"alternativeE2";
  LODWORD(v23) = *(*(a1 + 32) + 112);
  v38[34] = [MEMORY[0x1E696AD98] numberWithFloat:v23];
  v37[35] = @"alternativeL0a";
  LODWORD(v24) = *(*(a1 + 32) + 116);
  v38[35] = [MEMORY[0x1E696AD98] numberWithFloat:v24];
  v37[36] = @"alternativeL0b";
  LODWORD(v25) = *(*(a1 + 32) + 120);
  v38[36] = [MEMORY[0x1E696AD98] numberWithFloat:v25];
  v37[37] = @"alternativeL1";
  LODWORD(v26) = *(*(a1 + 32) + 124);
  v38[37] = [MEMORY[0x1E696AD98] numberWithFloat:v26];
  v37[38] = @"alternativeL2";
  LODWORD(v27) = *(*(a1 + 32) + 128);
  v38[38] = [MEMORY[0x1E696AD98] numberWithFloat:v27];
  v37[39] = @"alternativeThirdSlope";
  LODWORD(v28) = *(*(a1 + 32) + 132);
  v38[39] = [MEMORY[0x1E696AD98] numberWithFloat:v28];
  v37[40] = @"aabParamsUpdateReason";
  v38[40] = [MEMORY[0x1E696AD98] numberWithInt:*(*(a1 + 32) + 144)];
  v37[41] = @"nitsDelta";
  LODWORD(v29) = *(*(a1 + 32) + 148);
  v38[41] = [MEMORY[0x1E696AD98] numberWithFloat:v29];
  v37[42] = @"nitsDeltaAlternative";
  LODWORD(v30) = *(*(a1 + 32) + 152);
  v38[42] = [MEMORY[0x1E696AD98] numberWithFloat:v30];
  v37[43] = @"restoreTimeTarget";
  v38[43] = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(a1 + 32) + 160)];
  v37[44] = @"inactiveLength";
  LODWORD(v31) = *(*(a1 + 32) + 168);
  v38[44] = [MEMORY[0x1E696AD98] numberWithFloat:v31];
  v37[45] = @"inactiveStart";
  v38[45] = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(a1 + 32) + 176)];
  v32 = [v34 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v38, v37, 46)}];
  v36 = v32;
  if (*(*(a1 + 32) + 224))
  {
    [v32 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", *(*(a1 + 32) + 216)), @"trialDeploymentId"}];
    [v36 setObject:*(*(a1 + 32) + 208) forKey:@"trialExperimentId"];
    [v36 setObject:*(*(a1 + 32) + 224) forKey:@"trialTreatmentId"];
  }

  *MEMORY[0x1E69E9840];
  return v36;
}

+ (void)alsOcclusionsByProx:(int64_t)prox andByTouch:(int64_t)touch touchProx:(int64_t)touchProx none:(int64_t)none
{
  selfCopy = self;
  v20 = a2;
  proxCopy = prox;
  touchCopy = touch;
  touchProxCopy = touchProx;
  noneCopy = none;
  context = objc_autoreleasePoolPush();
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __61__CBAnalytics_alsOcclusionsByProx_andByTouch_touchProx_none___block_invoke;
  v11 = &__block_descriptor_64_e19___NSDictionary_8__0l;
  v12 = proxCopy;
  v13 = touchCopy;
  v14 = touchProxCopy;
  v15 = noneCopy;
  [selfCopy send:@".ALSOcclusion" withBlock:?];
  objc_autoreleasePoolPop(context);
}

uint64_t __61__CBAnalytics_alsOcclusionsByProx_andByTouch_touchProx_none___block_invoke(void *a1)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4[0] = @"prox";
  v5[0] = [MEMORY[0x1E696AD98] numberWithInteger:a1[4]];
  v4[1] = @"touch";
  v5[1] = [MEMORY[0x1E696AD98] numberWithInteger:a1[5]];
  v4[2] = @"touchProx";
  v5[2] = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
  v4[3] = @"none";
  v5[3] = [MEMORY[0x1E696AD98] numberWithInteger:a1[7]];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:4];
  *MEMORY[0x1E69E9840];
  return v3;
}

+ (void)touchOcclusionElapsedDelay:(float)delay
{
  selfCopy = self;
  v11 = a2;
  delayCopy = delay;
  context = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __42__CBAnalytics_touchOcclusionElapsedDelay___block_invoke;
  v8 = &__block_descriptor_36_e19___NSDictionary_8__0l;
  v9 = delayCopy;
  [selfCopy send:@".TouchOcclusionDelay" withBlock:?];
  objc_autoreleasePoolPop(context);
}

uint64_t __42__CBAnalytics_touchOcclusionElapsedDelay___block_invoke(uint64_t a1, double a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"time";
  LODWORD(a2) = *(a1 + 32);
  v5[0] = [MEMORY[0x1E696AD98] numberWithFloat:a2];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  *MEMORY[0x1E69E9840];
  return v3;
}

+ (void)aliasingMitigationsCount:(unint64_t)count
{
  if (count <= 0x7FFFFFFFFFFFFFFFLL)
  {
    countCopy = count;
  }

  else
  {
    countCopy = 0x7FFFFFFFFFFFFFFFLL;
  }

  [self sendInt:@".AliasingMitigationsCount" withField:"mitigations" andValue:countCopy];
}

+ (void)userBrightnessChangeAfterSnapping:(float)snapping
{
  selfCopy = self;
  v11 = a2;
  snappingCopy = snapping;
  context = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __49__CBAnalytics_userBrightnessChangeAfterSnapping___block_invoke;
  v8 = &__block_descriptor_36_e19___NSDictionary_8__0l;
  v9 = snappingCopy;
  [selfCopy send:@".UserBrightnessAfterSnapping" withBlock:?];
  objc_autoreleasePoolPop(context);
}

uint64_t __49__CBAnalytics_userBrightnessChangeAfterSnapping___block_invoke(uint64_t a1, double a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"nits";
  LODWORD(a2) = *(a1 + 32);
  v5[0] = [MEMORY[0x1E696AD98] numberWithFloat:a2];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  *MEMORY[0x1E69E9840];
  return v3;
}

@end