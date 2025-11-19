@interface SFTransitionCoordinator
- (SFTransitionCoordinator)initWithAnimations:(id)a3 completion:(id)a4;
- (SFTransitionCoordinator)initWithDuration:(double)a3 delay:(double)a4 options:(unint64_t)a5 animations:(id)a6 completion:(id)a7;
- (UIViewSpringAnimationBehaviorDescribing)springAnimationBehavior;
- (void)addAnimation:(uint64_t)a1;
- (void)addAnimations:(id)a3;
- (void)addCompletion:(id)a3;
- (void)addKeyframeWithRelativeStartTime:(double)a3 relativeDuration:(double)a4 animations:(id)a5;
- (void)addRetargetableAnimations:(id)a3;
- (void)invokeAnimations;
- (void)invokeCompletion;
- (void)performTransitionWithAnimation:(BOOL)a3 inContextOfContainerView:(id)a4;
@end

@implementation SFTransitionCoordinator

- (void)invokeAnimations
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = self->_animations;
  animations = self->_animations;
  self->_animations = 0;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v3;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) invokeInContext:{self, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)invokeCompletion
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = self->_completionBlocks;
  completionBlocks = self->_completionBlocks;
  self->_completionBlocks = 0;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v3;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (SFTransitionCoordinator)initWithDuration:(double)a3 delay:(double)a4 options:(unint64_t)a5 animations:(id)a6 completion:(id)a7
{
  v10 = [(SFTransitionCoordinator *)self initWithAnimations:a6 completion:a7];
  if (v10)
  {
    v11 = [[SFTransitionBasicAnimation alloc] initWithDuration:a5 delay:a3 options:a4];
    basicAnimation = v10->_basicAnimation;
    v10->_basicAnimation = v11;

    v13 = v10;
  }

  return v10;
}

- (SFTransitionCoordinator)initWithAnimations:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = SFTransitionCoordinator;
  v8 = [(SFTransitionCoordinator *)&v18 init];
  if (v8)
  {
    if (v6)
    {
      v9 = [[SFTransitionCoordinatorBasicAnimation alloc] initWithAnimations:v6];
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v9, 0}];
      animations = v8->_animations;
      v8->_animations = v10;
    }

    if (v7)
    {
      v12 = objc_alloc(MEMORY[0x1E695DF70]);
      v13 = _Block_copy(v7);
      v14 = [v12 initWithObjects:{v13, 0}];
      completionBlocks = v8->_completionBlocks;
      v8->_completionBlocks = v14;
    }

    v16 = v8;
  }

  return v8;
}

- (void)performTransitionWithAnimation:(BOOL)a3 inContextOfContainerView:(id)a4
{
  if (a3)
  {
    v5 = dispatch_group_create();
    v6 = [(NSMutableArray *)self->_animations mutableCopy];
    animations = self->_animations;
    self->_animations = 0;

    if ([v6 count])
    {
      v20 = &v25;
      v21 = v24;
      do
      {
        v8 = [v6 firstObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __83__SFTransitionCoordinator_performTransitionWithAnimation_inContextOfContainerView___block_invoke;
        v40[3] = &__block_descriptor_33_e51_B32__0___SFTransitionCoordinatorAnimation__8Q16_B24l;
        v41 = isKindOfClass & 1;
        v10 = [v6 indexOfObjectPassingTest:v40];
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = [v6 count];
        }

        v11 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v10}];
        v12 = [v6 objectsAtIndexes:v11];
        [v6 removeObjectsAtIndexes:v11];
        dispatch_group_enter(v5);
        if (isKindOfClass)
        {
          v13 = MEMORY[0x1E69DD250];
          v14 = [(SFTransitionCoordinator *)self springAnimationBehavior];
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __83__SFTransitionCoordinator_performTransitionWithAnimation_inContextOfContainerView___block_invoke_2;
          v38[3] = &unk_1E721B400;
          v39[0] = v12;
          v39[1] = self;
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __83__SFTransitionCoordinator_performTransitionWithAnimation_inContextOfContainerView___block_invoke_3;
          v36[3] = &unk_1E721EEB0;
          v37 = v5;
          [v13 _animateUsingSpringBehavior:v14 tracking:0 animations:v38 completion:v36];

          v15 = &v37;
          v16 = v39;
        }

        else if ([(SFTransitionCoordinator *)self requiresKeyframeAnimations])
        {
          v17 = MEMORY[0x1E69DD250];
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __83__SFTransitionCoordinator_performTransitionWithAnimation_inContextOfContainerView___block_invoke_4;
          v34[3] = &unk_1E721B400;
          v35[0] = v12;
          v35[1] = self;
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __83__SFTransitionCoordinator_performTransitionWithAnimation_inContextOfContainerView___block_invoke_5;
          v32[3] = &unk_1E721B510;
          v33 = v5;
          [v17 animateKeyframesWithDuration:327682 delay:v34 options:v32 animations:0.33 completion:0.0];
          v15 = &v33;
          v16 = v35;
        }

        else
        {
          basicAnimation = self->_basicAnimation;
          if (basicAnimation)
          {
            v30[0] = MEMORY[0x1E69E9820];
            v30[1] = 3221225472;
            v30[2] = __83__SFTransitionCoordinator_performTransitionWithAnimation_inContextOfContainerView___block_invoke_6;
            v30[3] = &unk_1E721B400;
            v31[0] = v12;
            v31[1] = self;
            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = __83__SFTransitionCoordinator_performTransitionWithAnimation_inContextOfContainerView___block_invoke_7;
            v28[3] = &unk_1E721B510;
            v29 = v5;
            [(SFTransitionBasicAnimation *)basicAnimation performAnimations:v30 completion:v28];
            v15 = &v29;
            v16 = v31;
          }

          else
          {
            v19 = MEMORY[0x1E69DD250];
            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __83__SFTransitionCoordinator_performTransitionWithAnimation_inContextOfContainerView___block_invoke_8;
            v26[3] = &unk_1E721B400;
            v27[0] = v12;
            v27[1] = self;
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v24[0] = __83__SFTransitionCoordinator_performTransitionWithAnimation_inContextOfContainerView___block_invoke_9;
            v24[1] = &unk_1E721B510;
            v25 = v5;
            [v19 sf_animate:1 usingDefaultMotionWithOptions:2 animations:v26 completion:v23];
            v15 = v20;
            v16 = v27;
          }
        }
      }

      while ([v6 count]);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__SFTransitionCoordinator_performTransitionWithAnimation_inContextOfContainerView___block_invoke_10;
    block[3] = &unk_1E721B360;
    block[4] = self;
    dispatch_group_notify(v5, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    self->_keyframeAnimationMode = 2;
    [(SFTransitionCoordinator *)self invokeAnimations];

    [(SFTransitionCoordinator *)self invokeCompletion];
  }
}

BOOL __83__SFTransitionCoordinator_performTransitionWithAnimation_inContextOfContainerView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return *(a1 + 32) != (isKindOfClass & 1);
}

void __83__SFTransitionCoordinator_performTransitionWithAnimation_inContextOfContainerView___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) invokeInContext:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __83__SFTransitionCoordinator_performTransitionWithAnimation_inContextOfContainerView___block_invoke_4(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) invokeInContext:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __83__SFTransitionCoordinator_performTransitionWithAnimation_inContextOfContainerView___block_invoke_6(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) invokeInContext:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __83__SFTransitionCoordinator_performTransitionWithAnimation_inContextOfContainerView___block_invoke_8(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) invokeInContext:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (UIViewSpringAnimationBehaviorDescribing)springAnimationBehavior
{
  overrideSpringAnimationBehavior = self->_overrideSpringAnimationBehavior;
  if (overrideSpringAnimationBehavior)
  {
    v3 = overrideSpringAnimationBehavior;
  }

  else
  {
    if ([(SFTransitionCoordinator *)self requiresKeyframeAnimations])
    {
      v4 = 0.28;
    }

    else
    {
      v4 = 0.34;
    }

    v3 = [MEMORY[0x1E69DD280] behaviorWithDampingRatio:1.0 response:v4];
  }

  return v3;
}

- (void)addCompletion:(id)a3
{
  v4 = a3;
  completionBlocks = self->_completionBlocks;
  aBlock = v4;
  if (!completionBlocks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_completionBlocks;
    self->_completionBlocks = v6;

    v4 = aBlock;
    completionBlocks = self->_completionBlocks;
  }

  v8 = _Block_copy(v4);
  [(NSMutableArray *)completionBlocks addObject:v8];
}

- (void)addAnimation:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    v7 = v3;
    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v6 = *(a1 + 8);
      *(a1 + 8) = v5;

      v4 = *(a1 + 8);
    }

    [v4 addObject:v7];
    v3 = v7;
  }
}

- (void)addAnimations:(id)a3
{
  v4 = off_1E7218ED8;
  if (self->_overrideSpringAnimationBehavior)
  {
    v4 = off_1E7218EE0;
  }

  v5 = *v4;
  v6 = a3;
  v7 = [(SFTransitionCoordinatorBasicAnimation *)[v5 alloc] initWithAnimations:v6];

  [(SFTransitionCoordinator *)self addAnimation:v7];
}

- (void)addKeyframeWithRelativeStartTime:(double)a3 relativeDuration:(double)a4 animations:(id)a5
{
  if (!self->_keyframeAnimationMode)
  {
    self->_keyframeAnimationMode = 1;
  }

  v8 = a5;
  v9 = [[SFTransitionCoordinatorKeyframeAnimation alloc] initWithStartTime:v8 duration:a3 animations:a4];

  [(SFTransitionCoordinator *)self addAnimation:v9];
}

- (void)addRetargetableAnimations:(id)a3
{
  v4 = a3;
  v5 = [(SFTransitionCoordinatorBasicAnimation *)[SFTransitionCoordinatorRetargetableAnimation alloc] initWithAnimations:v4];

  [(SFTransitionCoordinator *)self addAnimation:v5];
}

@end