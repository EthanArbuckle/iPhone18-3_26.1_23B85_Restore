@interface CCUIAnimationRunner
+ (id)runner;
+ (void)_runC2AnimationsInBatch:(id)a3 animationGroup:(id)a4 completionHandler:(id)a5;
+ (void)_runCAAnimationsInBatch:(id)a3 animationGroup:(id)a4 completionHandler:(id)a5;
- (void)additivelyRunAnimationBatch:(id)a3 withCompletionBlock:(id)a4;
- (void)runAnimationBatch:(id)a3 withCompletionBlock:(id)a4;
@end

@implementation CCUIAnimationRunner

+ (id)runner
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (void)runAnimationBatch:(id)a3 withCompletionBlock:(id)a4
{
  previousAnimationGroup = self->_previousAnimationGroup;
  self->_previousAnimationGroup = 0;
  v7 = a4;
  v8 = a3;

  [(CCUIAnimationRunner *)self additivelyRunAnimationBatch:v8 withCompletionBlock:v7];
}

- (void)additivelyRunAnimationBatch:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = [MEMORY[0x277D75D18] areAnimationsEnabled];
  v9 = *MEMORY[0x277CFC8E0];
  v10 = os_log_type_enabled(*MEMORY[0x277CFC8E0], OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v10)
    {
      [CCUIAnimationRunner additivelyRunAnimationBatch:v9 withCompletionBlock:v6];
    }

    v11 = dispatch_group_create();
    v12 = v11;
    if (self->_previousAnimationGroup)
    {
      dispatch_group_enter(v11);
      previousAnimationGroup = self->_previousAnimationGroup;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__CCUIAnimationRunner_additivelyRunAnimationBatch_withCompletionBlock___block_invoke;
      block[3] = &unk_278381DF0;
      v36 = v12;
      v14 = MEMORY[0x277D85CD0];
      dispatch_group_notify(previousAnimationGroup, MEMORY[0x277D85CD0], block);
    }

    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v34 = 1;
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2020000000;
    v32 = 0;
    v15 = objc_opt_class();
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __71__CCUIAnimationRunner_additivelyRunAnimationBatch_withCompletionBlock___block_invoke_2;
    v30[3] = &unk_278382950;
    v30[4] = v33;
    [v15 _runCAAnimationsInBatch:v6 animationGroup:v12 completionHandler:v30];
    v16 = objc_opt_class();
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __71__CCUIAnimationRunner_additivelyRunAnimationBatch_withCompletionBlock___block_invoke_3;
    v29[3] = &unk_278382978;
    v29[4] = v33;
    v29[5] = v31;
    [v16 _runC2AnimationsInBatch:v6 animationGroup:v12 completionHandler:v29];
    objc_initWeak(&location, self);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __71__CCUIAnimationRunner_additivelyRunAnimationBatch_withCompletionBlock___block_invoke_4;
    v21[3] = &unk_2783829A0;
    v22 = v6;
    v25 = v33;
    v26 = v31;
    objc_copyWeak(&v27, &location);
    v17 = v12;
    v23 = v17;
    v24 = v7;
    v18 = MEMORY[0x277D85CD0];
    dispatch_group_notify(v17, MEMORY[0x277D85CD0], v21);

    v19 = self->_previousAnimationGroup;
    self->_previousAnimationGroup = v17;
    v20 = v17;

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    _Block_object_dispose(v31, 8);
    _Block_object_dispose(v33, 8);
  }

  else
  {
    if (v10)
    {
      [CCUIAnimationRunner additivelyRunAnimationBatch:v9 withCompletionBlock:v6];
    }

    [v6 iterateAnimationsWithBlock:&__block_literal_global_7];
    if (v7)
    {
      (*(v7 + 2))(v7, 1, 0);
    }
  }
}

uint64_t __71__CCUIAnimationRunner_additivelyRunAnimationBatch_withCompletionBlock___block_invoke_3(uint64_t result, char a2, char a3)
{
  *(*(*(result + 32) + 8) + 24) &= a2;
  *(*(*(result + 40) + 8) + 24) |= a3;
  return result;
}

void __71__CCUIAnimationRunner_additivelyRunAnimationBatch_withCompletionBlock___block_invoke_4(uint64_t a1)
{
  v2 = *MEMORY[0x277CFC8E0];
  if (os_log_type_enabled(*MEMORY[0x277CFC8E0], OS_LOG_TYPE_DEBUG))
  {
    __71__CCUIAnimationRunner_additivelyRunAnimationBatch_withCompletionBlock___block_invoke_4_cold_1(a1, v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 1);
    if (v5 == *(a1 + 40))
    {
      *(WeakRetained + 1) = 0;
    }
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, *(*(*(a1 + 56) + 8) + 24), *(*(*(a1 + 64) + 8) + 24));
  }
}

void __71__CCUIAnimationRunner_additivelyRunAnimationBatch_withCompletionBlock___block_invoke_81(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) animations];
        v8[2]();

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

+ (void)_runCAAnimationsInBatch:(id)a3 animationGroup:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_opt_class();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __80__CCUIAnimationRunner__runCAAnimationsInBatch_animationGroup_completionHandler___block_invoke;
  v19[3] = &unk_278382A10;
  v11 = v7;
  v20 = v11;
  v12 = v8;
  v21 = v12;
  [v9 iterateAnimationsOfType:v10 withBlock:v19];
  v13 = objc_opt_class();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__CCUIAnimationRunner__runCAAnimationsInBatch_animationGroup_completionHandler___block_invoke_3;
  v16[3] = &unk_278382A10;
  v17 = v11;
  v18 = v12;
  v14 = v12;
  v15 = v11;
  [v9 iterateAnimationsOfType:v13 withBlock:v16];
}

void __80__CCUIAnimationRunner__runCAAnimationsInBatch_animationGroup_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        v11 = objc_opt_class();
        v12 = v5;
        if (v11)
        {
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        v15 = [CCUICABasicAnimationFactory alloc];
        [v10 speed];
        v16 = [(CCUICABasicAnimationFactory *)v15 initWithParameters:v14 speed:?];

        [(CCUICABasicAnimationFactory *)v16 animationDuration];
        v18 = v17;
        [MEMORY[0x277CF0D38] globalSlowDownFactor];
        v20 = v18 * v19;
        [v10 delay];
        v22 = v21;
        [MEMORY[0x277CF0D38] globalSlowDownFactor];
        v24 = v22 * v23;
        dispatch_group_enter(*(a1 + 32));
        v25 = MEMORY[0x277D75D18];
        v26 = [v10 animations];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __80__CCUIAnimationRunner__runCAAnimationsInBatch_animationGroup_completionHandler___block_invoke_2;
        v28[3] = &unk_2783829E8;
        v30 = *(a1 + 40);
        v29 = *(a1 + 32);
        [v25 _animateWithDuration:393222 delay:v16 options:v26 factory:v28 animations:v20 completion:v24];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v7);
  }
}

void __80__CCUIAnimationRunner__runCAAnimationsInBatch_animationGroup_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void __80__CCUIAnimationRunner__runCAAnimationsInBatch_animationGroup_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v34 = a2;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = a3;
  v5 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v45;
    v32 = *(MEMORY[0x277CD9DD0] + 4);
    v33 = *MEMORY[0x277CD9DD0];
    other = *(MEMORY[0x277CD9DD0] + 8);
    do
    {
      v8 = 0;
      do
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v44 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = v34;
        if (v10)
        {
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        v14 = [CCUICASpringAnimationFactory alloc];
        [v9 speed];
        v15 = [(CCUICASpringAnimationFactory *)v14 initWithParameters:v13 speed:?];
        [(CCUICASpringAnimationFactory *)v15 animationDuration];
        v17 = v16;
        [MEMORY[0x277CF0D38] globalSlowDownFactor];
        v19 = v18;
        [v9 delay];
        v21 = v20;
        [MEMORY[0x277CF0D38] globalSlowDownFactor];
        v23 = v22;
        v24 = [v9 animations];
        [v13 frameRateRange];
        minimum = v50.minimum;
        maximum = v50.maximum;
        preferred = v50.preferred;
        v51.maximum = v32;
        v51.minimum = v33;
        v51.preferred = other;
        if (!CAFrameRateRangeIsEqualToRange(v50, v51))
        {
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __80__CCUIAnimationRunner__runCAAnimationsInBatch_animationGroup_completionHandler___block_invoke_4;
          aBlock[3] = &unk_278382A38;
          v41 = minimum;
          v42 = maximum;
          v43 = preferred;
          v39 = v13;
          v40 = v9;
          v28 = _Block_copy(aBlock);

          v24 = v28;
        }

        dispatch_group_enter(*(a1 + 32));
        v29 = MEMORY[0x277D75D18];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __80__CCUIAnimationRunner__runCAAnimationsInBatch_animationGroup_completionHandler___block_invoke_5;
        v35[3] = &unk_2783829E8;
        v37 = *(a1 + 40);
        v36 = *(a1 + 32);
        [v29 _animateWithDuration:393222 delay:v15 options:v24 factory:v35 animations:v17 * v19 completion:v21 * v23];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v6);
  }
}

void __80__CCUIAnimationRunner__runCAAnimationsInBatch_animationGroup_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v3 = [*(a1 + 32) highFrameRateReason];
  v7 = [*(a1 + 40) animations];
  LODWORD(v4) = *(a1 + 48);
  LODWORD(v5) = *(a1 + 52);
  LODWORD(v6) = *(a1 + 56);
  [v2 _modifyAnimationsWithPreferredFrameRateRange:v3 updateReason:v7 animations:{v4, v5, v6}];
}

void __80__CCUIAnimationRunner__runCAAnimationsInBatch_animationGroup_completionHandler___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

+ (void)_runC2AnimationsInBatch:(id)a3 animationGroup:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_opt_class();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__CCUIAnimationRunner__runC2AnimationsInBatch_animationGroup_completionHandler___block_invoke;
  v13[3] = &unk_278382A10;
  v14 = v7;
  v15 = v8;
  v11 = v8;
  v12 = v7;
  [v9 iterateAnimationsOfType:v10 withBlock:v13];
}

void __80__CCUIAnimationRunner__runC2AnimationsInBatch_animationGroup_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_group_enter(*(a1 + 32));
  v7 = objc_opt_class();
  v8 = v5;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = MEMORY[0x277D75D18];
  [v10 tension];
  v13 = v12;
  [v10 friction];
  v15 = v14;
  v16 = [v10 isInteractive];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __80__CCUIAnimationRunner__runC2AnimationsInBatch_animationGroup_completionHandler___block_invoke_2;
  v22[3] = &unk_278381DC8;
  v23 = v10;
  v24 = v6;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __80__CCUIAnimationRunner__runC2AnimationsInBatch_animationGroup_completionHandler___block_invoke_4;
  v19[3] = &unk_278382A60;
  v21 = *(a1 + 40);
  v20 = *(a1 + 32);
  v17 = v6;
  v18 = v10;
  [v11 _animateUsingSpringWithTension:v16 friction:v22 interactive:v19 animations:v13 completion:v15];
}

void __80__CCUIAnimationRunner__runC2AnimationsInBatch_animationGroup_completionHandler___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) frameRateRange];
  minimum = v24.minimum;
  maximum = v24.maximum;
  preferred = v24.preferred;
  if (CAFrameRateRangeIsEqualToRange(v24, *MEMORY[0x277CD9DD0]))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = *(a1 + 40);
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v16 + 1) + 8 * i) animations];
          v10[2]();
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v11 = MEMORY[0x277D75D18];
    v12 = [*(a1 + 32) highFrameRateReason];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __80__CCUIAnimationRunner__runC2AnimationsInBatch_animationGroup_completionHandler___block_invoke_3;
    v20[3] = &unk_278381DF0;
    v21 = *(a1 + 40);
    *&v13 = minimum;
    *&v14 = maximum;
    *&v15 = preferred;
    [v11 _modifyAnimationsWithPreferredFrameRateRange:v12 updateReason:v20 animations:{v13, v14, v15}];
    v5 = v21;
  }
}

void __80__CCUIAnimationRunner__runC2AnimationsInBatch_animationGroup_completionHandler___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v7 + 1) + 8 * v5) animations];
        v6[2]();

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void __80__CCUIAnimationRunner__runC2AnimationsInBatch_animationGroup_completionHandler___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

- (void)additivelyRunAnimationBatch:(void *)a1 withCompletionBlock:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 UUID];
  OUTLINED_FUNCTION_0_1(&dword_21E9F5000, v5, v6, "[%{public}@] Will execute batch animation", v7, v8, v9, v10, 2u);
}

- (void)additivelyRunAnimationBatch:(void *)a1 withCompletionBlock:(void *)a2 .cold.2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 UUID];
  OUTLINED_FUNCTION_0_1(&dword_21E9F5000, v5, v6, "[%{public}@] Will animate batch", v7, v8, v9, v10, 2u);
}

void __71__CCUIAnimationRunner_additivelyRunAnimationBatch_withCompletionBlock___block_invoke_4_cold_1(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 UUID];
  v6 = *(*(a1[7] + 8) + 24);
  v7 = *(*(a1[8] + 8) + 24);
  v8 = 138543874;
  v9 = v5;
  v10 = 1024;
  v11 = v6;
  v12 = 1024;
  v13 = v7;
  _os_log_debug_impl(&dword_21E9F5000, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] Animation batch complete: finished=%{BOOL}d, retargeted=%{BOOL}d", &v8, 0x18u);
}

@end