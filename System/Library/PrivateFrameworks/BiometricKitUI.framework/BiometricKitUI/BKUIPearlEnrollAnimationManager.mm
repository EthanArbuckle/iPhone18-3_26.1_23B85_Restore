@interface BKUIPearlEnrollAnimationManager
+ (id)sharedManager;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)runBasicAnimationOnLayer:(id)layer withDuration:(double)duration keyPath:(id)path fromValue:(id)value toValue:(id)toValue removedOnCompletion:(BOOL)completion timingFunction:(id)function completion:(id)self0;
- (void)transitionTo:(id)to completion:(id)completion;
@end

@implementation BKUIPearlEnrollAnimationManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[BKUIPearlEnrollAnimationManager sharedManager];
  }

  v3 = sharedManager_instance;

  return v3;
}

uint64_t __48__BKUIPearlEnrollAnimationManager_sharedManager__block_invoke()
{
  sharedManager_instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)runBasicAnimationOnLayer:(id)layer withDuration:(double)duration keyPath:(id)path fromValue:(id)value toValue:(id)toValue removedOnCompletion:(BOOL)completion timingFunction:(id)function completion:(id)self0
{
  layerCopy = layer;
  functionCopy = function;
  v18 = a10;
  v19 = MEMORY[0x277CCAD78];
  toValueCopy = toValue;
  valueCopy = value;
  pathCopy = path;
  uUID = [v19 UUID];
  uUIDString = [uUID UUIDString];

  v25 = [MEMORY[0x277CD9E10] animationWithKeyPath:pathCopy];

  [(CADisplayLink *)v25 bkui_enableHighFrameRate];
  [v25 setDuration:duration];
  [v25 setFromValue:valueCopy];

  [v25 setToValue:toValueCopy];
  [v25 setRemovedOnCompletion:0];
  [v25 setFillMode:*MEMORY[0x277CDA238]];
  [v25 setDelegate:self];
  if (functionCopy)
  {
    v26 = [MEMORY[0x277CD9EF8] functionWithName:functionCopy];
    [v25 setTimingFunction:v26];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __145__BKUIPearlEnrollAnimationManager_runBasicAnimationOnLayer_withDuration_keyPath_fromValue_toValue_removedOnCompletion_timingFunction_completion___block_invoke;
  aBlock[3] = &unk_278D0A198;
  v35 = uUIDString;
  v36 = v18;
  completionCopy = completion;
  v34 = layerCopy;
  v27 = uUIDString;
  v28 = layerCopy;
  v29 = v18;
  v30 = _Block_copy(aBlock);
  v31 = _Block_copy(v30);
  [v25 setValue:v31 forKey:@"PSAnimationCompletion"];

  [v28 addAnimation:v25 forKey:v27];
}

uint64_t __145__BKUIPearlEnrollAnimationManager_runBasicAnimationOnLayer_withDuration_keyPath_fromValue_toValue_removedOnCompletion_timingFunction_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 removeAnimationForKey:v4];
  }

  return result;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  v4 = [stopCopy valueForKey:@"PSAnimationCompletion"];
  if (v4)
  {
    [stopCopy setValue:0 forKey:@"PSAnimationCompletion"];
    v4[2](v4);
  }
}

- (void)transitionTo:(id)to completion:(id)completion
{
  v29[1] = *MEMORY[0x277D85DE8];
  toCopy = to;
  completionCopy = completion;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setCompletionBlock:completionCopy];
  animation = [MEMORY[0x277CDA000] animation];
  view = [toCopy view];
  v29[0] = view;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];

  v10 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
  [animation setTimingFunction:v10];

  [animation setType:@"push"];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

  [animation setDuration:0.400000006];
  if (userInterfaceLayoutDirection == 1)
  {
    v13 = @"fromLeft";
  }

  else
  {
    v13 = @"fromRight";
  }

  [animation setSubtype:v13];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    v18 = *MEMORY[0x277CDA920];
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v24 + 1) + 8 * i);
        layer = [v20 layer];
        [layer removeAllAnimations];

        layer2 = [v20 layer];
        [layer2 addAnimation:animation forKey:v18];
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  [MEMORY[0x277CD9FF0] commit];
  v23 = *MEMORY[0x277D85DE8];
}

@end