@interface CEKFluidBehaviorUtilities
+ (id)animatablePropertyWithFunctionalCompletion:(id)a3;
+ (id)animatablePropertyWithMilestonePassingTest:(id)a3 passedBlock:(id)a4;
+ (id)animatablePropertyWithProgressMilestones:(id)a3 block:(id)a4;
+ (id)floatAnimatablePropertyWithInitialValue:(double)a3 cancelableFrameCallback:(id)a4;
+ (id)rectAnimatablePropertyWithInitialValue:(CGRect)a3 cancelableFrameCallback:(id)a4;
+ (id)vector2DAnimatablePropertyWithInitialValue:(CGPoint)a3 cancelableFrameCallback:(id)a4;
+ (void)_createTransformerWithAnimatableProperty:(id)a3 cancelableFrameCallback:(id)a4;
@end

@implementation CEKFluidBehaviorUtilities

+ (id)animatablePropertyWithProgressMilestones:(id)a3 block:(id)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  v8 = 0;
  if (v6 && v7)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DD268]);
    v10 = [v5 mutableCopy];
    [v9 setValue:0.0];
    objc_initWeak(&location, v9);
    v11 = MEMORY[0x1E69DD250];
    v25[0] = v9;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __76__CEKFluidBehaviorUtilities_animatablePropertyWithProgressMilestones_block___block_invoke;
    v20 = &unk_1E7CC6A08;
    objc_copyWeak(&v23, &location);
    v13 = v10;
    v21 = v13;
    v14 = v6;
    v22 = v14;
    [v11 _createTransformerWithInputAnimatableProperties:v12 presentationValueChangedCallback:&v17];

    if ([v13 containsObject:{&unk_1F2FDFAE8, v17, v18, v19, v20}])
    {
      v14[2](v14, 0.0, 0.0);
      [v13 removeObject:&unk_1F2FDFAE8];
    }

    v15 = v22;
    v8 = v9;

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __76__CEKFluidBehaviorUtilities_animatablePropertyWithProgressMilestones_block___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained isInvalidated] & 1) == 0)
  {
    [v3 presentationValue];
    v5 = v4;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          [v12 doubleValue];
          v14 = v13;
          if (BSFloatLessThanOrEqualToFloat())
          {
            (*(*(a1 + 40) + 16))(v14, v5);
            if (!v9)
            {
              v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            }

            [v9 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(a1 + 32) removeObject:{*(*(&v20 + 1) + 8 * j), v20}];
        }

        v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v17);
    }

    if (![*(a1 + 32) count])
    {
      [v3 invalidate];
    }
  }
}

+ (id)animatablePropertyWithMilestonePassingTest:(id)a3 passedBlock:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (v5[2](v5, 0.0))
    {
      v7[2](v7, 0.0);
      v8 = 0;
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E69DD268]);
      [v9 setValue:0.0];
      objc_initWeak(&location, v9);
      v10 = MEMORY[0x1E69DD250];
      v19[0] = v9;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __84__CEKFluidBehaviorUtilities_animatablePropertyWithMilestonePassingTest_passedBlock___block_invoke;
      v14[3] = &unk_1E7CC6A30;
      objc_copyWeak(&v17, &location);
      v15 = v5;
      v16 = v7;
      [v10 _createTransformerWithInputAnimatableProperties:v11 presentationValueChangedCallback:v14];

      v12 = v16;
      v8 = v9;

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }

  return v8;
}

uint64_t __84__CEKFluidBehaviorUtilities_animatablePropertyWithMilestonePassingTest_passedBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    WeakRetained = [WeakRetained isInvalidated];
    v3 = v7;
    if ((WeakRetained & 1) == 0)
    {
      [v7 presentationValue];
      v5 = v4;
      WeakRetained = (*(*(a1 + 32) + 16))();
      v3 = v7;
      if (WeakRetained)
      {
        (*(*(a1 + 40) + 16))(v5);
        WeakRetained = [v7 invalidate];
        v3 = v7;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v3);
}

+ (id)animatablePropertyWithFunctionalCompletion:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD268]);
    [v4 setValue:0.0];
    objc_initWeak(&location, v4);
    v5 = MEMORY[0x1E69DD250];
    v12[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__CEKFluidBehaviorUtilities_animatablePropertyWithFunctionalCompletion___block_invoke;
    v8[3] = &unk_1E7CC6A58;
    objc_copyWeak(&v10, &location);
    v9 = v3;
    [v5 _createTransformerWithInputAnimatableProperties:v6 presentationValueChangedCallback:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __72__CEKFluidBehaviorUtilities_animatablePropertyWithFunctionalCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = [WeakRetained isInvalidated];
    v3 = v5;
    if ((WeakRetained & 1) == 0)
    {
      [v5 presentationValue];
      WeakRetained = BSFloatLessThanOrEqualToFloat();
      v3 = v5;
      if (WeakRetained)
      {
        (*(*(a1 + 32) + 16))();
        WeakRetained = [v5 invalidate];
        v3 = v5;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v3);
}

+ (id)floatAnimatablePropertyWithInitialValue:(double)a3 cancelableFrameCallback:(id)a4
{
  if (a4)
  {
    v6 = MEMORY[0x1E69DD268];
    v7 = a4;
    v8 = objc_alloc_init(v6);
    [v8 setValue:a3];
    [a1 _createTransformerWithAnimatableProperty:v8 cancelableFrameCallback:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)vector2DAnimatablePropertyWithInitialValue:(CGPoint)a3 cancelableFrameCallback:(id)a4
{
  if (a4)
  {
    y = a3.y;
    x = a3.x;
    v7 = MEMORY[0x1E69DD288];
    v8 = a4;
    v9 = [[v7 alloc] initWithLength:2];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __96__CEKFluidBehaviorUtilities_vector2DAnimatablePropertyWithInitialValue_cancelableFrameCallback___block_invoke;
    v11[3] = &__block_descriptor_48_e9_v16__0_d8l;
    *&v11[4] = x;
    *&v11[5] = y;
    [v9 _mutateValue:v11];
    [a1 _createTransformerWithAnimatableProperty:v9 cancelableFrameCallback:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

double __96__CEKFluidBehaviorUtilities_vector2DAnimatablePropertyWithInitialValue_cancelableFrameCallback___block_invoke(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 8) = result;
  return result;
}

+ (id)rectAnimatablePropertyWithInitialValue:(CGRect)a3 cancelableFrameCallback:(id)a4
{
  if (a4)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v9 = MEMORY[0x1E69DD288];
    v10 = a4;
    v11 = [[v9 alloc] initWithLength:5];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __92__CEKFluidBehaviorUtilities_rectAnimatablePropertyWithInitialValue_cancelableFrameCallback___block_invoke;
    v13[3] = &__block_descriptor_64_e9_v16__0_d8l;
    *&v13[4] = x;
    *&v13[5] = y;
    *&v13[6] = width;
    *&v13[7] = height;
    [v11 _mutateValue:v13];
    [a1 _createTransformerWithAnimatableProperty:v11 cancelableFrameCallback:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

double __92__CEKFluidBehaviorUtilities_rectAnimatablePropertyWithInitialValue_cancelableFrameCallback___block_invoke(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 32);
  *(a2 + 8) = *(a1 + 40);
  *(a2 + 16) = *(a1 + 48);
  result = *(a1 + 56);
  *(a2 + 24) = result;
  *(a2 + 32) = 0;
  return result;
}

+ (void)_createTransformerWithAnimatableProperty:(id)a3 cancelableFrameCallback:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  objc_initWeak(&location, v5);
  v7 = MEMORY[0x1E69DD250];
  v14[0] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __94__CEKFluidBehaviorUtilities__createTransformerWithAnimatableProperty_cancelableFrameCallback___block_invoke;
  v10[3] = &unk_1E7CC6A58;
  objc_copyWeak(&v12, &location);
  v9 = v6;
  v11 = v9;
  [v7 _createTransformerWithInputAnimatableProperties:v8 presentationValueChangedCallback:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

uint64_t __94__CEKFluidBehaviorUtilities__createTransformerWithAnimatableProperty_cancelableFrameCallback___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = [WeakRetained isInvalidated];
    v3 = v5;
    if ((WeakRetained & 1) == 0)
    {
      WeakRetained = (*(*(a1 + 32) + 16))();
      v3 = v5;
      if (WeakRetained)
      {
        WeakRetained = [v5 invalidate];
        v3 = v5;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v3);
}

@end