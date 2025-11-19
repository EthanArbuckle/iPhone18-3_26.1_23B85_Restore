@interface BKUIPearlEnrollAnimationManager
+ (id)sharedManager;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)runBasicAnimationOnLayer:(id)a3 withDuration:(double)a4 keyPath:(id)a5 fromValue:(id)a6 toValue:(id)a7 removedOnCompletion:(BOOL)a8 timingFunction:(id)a9 completion:(id)a10;
- (void)transitionTo:(id)a3 completion:(id)a4;
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

- (void)runBasicAnimationOnLayer:(id)a3 withDuration:(double)a4 keyPath:(id)a5 fromValue:(id)a6 toValue:(id)a7 removedOnCompletion:(BOOL)a8 timingFunction:(id)a9 completion:(id)a10
{
  v16 = a3;
  v17 = a9;
  v18 = a10;
  v19 = MEMORY[0x277CCAD78];
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = [v19 UUID];
  v24 = [v23 UUIDString];

  v25 = [MEMORY[0x277CD9E10] animationWithKeyPath:v22];

  [(CADisplayLink *)v25 bkui_enableHighFrameRate];
  [v25 setDuration:a4];
  [v25 setFromValue:v21];

  [v25 setToValue:v20];
  [v25 setRemovedOnCompletion:0];
  [v25 setFillMode:*MEMORY[0x277CDA238]];
  [v25 setDelegate:self];
  if (v17)
  {
    v26 = [MEMORY[0x277CD9EF8] functionWithName:v17];
    [v25 setTimingFunction:v26];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __145__BKUIPearlEnrollAnimationManager_runBasicAnimationOnLayer_withDuration_keyPath_fromValue_toValue_removedOnCompletion_timingFunction_completion___block_invoke;
  aBlock[3] = &unk_278D0A198;
  v35 = v24;
  v36 = v18;
  v37 = a8;
  v34 = v16;
  v27 = v24;
  v28 = v16;
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

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = a3;
  v4 = [v5 valueForKey:@"PSAnimationCompletion"];
  if (v4)
  {
    [v5 setValue:0 forKey:@"PSAnimationCompletion"];
    v4[2](v4);
  }
}

- (void)transitionTo:(id)a3 completion:(id)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setCompletionBlock:v6];
  v7 = [MEMORY[0x277CDA000] animation];
  v8 = [v5 view];
  v29[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];

  v10 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
  [v7 setTimingFunction:v10];

  [v7 setType:@"push"];
  v11 = [MEMORY[0x277D75128] sharedApplication];
  v12 = [v11 userInterfaceLayoutDirection];

  [v7 setDuration:0.400000006];
  if (v12 == 1)
  {
    v13 = @"fromLeft";
  }

  else
  {
    v13 = @"fromRight";
  }

  [v7 setSubtype:v13];
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
        v21 = [v20 layer];
        [v21 removeAllAnimations];

        v22 = [v20 layer];
        [v22 addAnimation:v7 forKey:v18];
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  [MEMORY[0x277CD9FF0] commit];
  v23 = *MEMORY[0x277D85DE8];
}

@end