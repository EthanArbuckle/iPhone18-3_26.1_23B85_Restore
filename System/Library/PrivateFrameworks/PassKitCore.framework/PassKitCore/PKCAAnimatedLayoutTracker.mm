@interface PKCAAnimatedLayoutTracker
+ (PKCAAnimatedLayoutTracker)_create;
- (id)beginTrackingAnimation;
- (void)_addAbsoluteCompletion:(uint64_t)completion;
- (void)_beginTrackingAbsoluteAnimation;
- (void)_effectiveTracker;
- (void)_executeAbsoluteCompletionsIfPossible;
- (void)_performAbsoluteTransactionWithBlock:(void *)block completion:;
- (void)_performIsolatedAbsoluteTransactionWithBlock:(void *)block completion:;
- (void)_resume;
- (void)_suspend;
- (void)addCompletion:(id)completion;
- (void)dealloc;
- (void)performIsolatedTransactionWithBlock:(id)block completion:(id)completion;
- (void)performTransactionWithBlock:(id)block completion:(id)completion;
- (void)trackAnimation:(id)animation;
@end

@implementation PKCAAnimatedLayoutTracker

+ (PKCAAnimatedLayoutTracker)_create
{
  objc_opt_self();
  result = [PKCAAnimatedLayoutTracker alloc];
  if (result)
  {
    v1.receiver = result;
    v1.super_class = PKCAAnimatedLayoutTracker;
    return objc_msgSendSuper2(&v1, sel_init);
  }

  return result;
}

- (void)dealloc
{
  if (self->_completions)
  {
    __break(1u);
  }

  else
  {
    v2.receiver = self;
    v2.super_class = PKCAAnimatedLayoutTracker;
    [(PKCAAnimatedLayoutTracker *)&v2 dealloc];
  }
}

- (id)beginTrackingAnimation
{
  _effectiveTracker = [(PKCAAnimatedLayoutTracker *)self _effectiveTracker];
  _beginTrackingAbsoluteAnimation = [(PKCAAnimatedLayoutTracker *)_effectiveTracker _beginTrackingAbsoluteAnimation];

  return _beginTrackingAbsoluteAnimation;
}

- (void)_effectiveTracker
{
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  v2 = selfCopy;
  v3 = *(selfCopy + 5);
  if (!v3)
  {
    return selfCopy;
  }

  do
  {
    v4 = v3;

    v3 = v4[5];
    v2 = v4;
  }

  while (v3);
  return v4;
}

- (void)_beginTrackingAbsoluteAnimation
{
  v1 = result;
  if (!result)
  {
    return v1;
  }

  v2 = result[1];
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  v5 = v3;
  result[1] = v4;
  if (v5 << 63 >> 63 == v5)
  {
    v6 = [PKDeallocationGuard alloc];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__PKCAAnimatedLayoutTracker__beginTrackingAbsoluteAnimation__block_invoke;
    v12[3] = &unk_1E79C4E28;
    v12[4] = v1;
    v7 = [(PKDeallocationGuard *)v6 initWithBlock:v12];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__PKCAAnimatedLayoutTracker__beginTrackingAbsoluteAnimation__block_invoke_3;
    aBlock[3] = &unk_1E79D59F8;
    v10 = v7;
    v11 = v1;
    v8 = v7;
    v1 = _Block_copy(aBlock);

    return v1;
  }

  __break(1u);
  return result;
}

- (void)addCompletion:(id)completion
{
  completionCopy = completion;
  _effectiveTracker = [(PKCAAnimatedLayoutTracker *)self _effectiveTracker];
  [(PKCAAnimatedLayoutTracker *)_effectiveTracker _addAbsoluteCompletion:completionCopy];
}

- (void)_addAbsoluteCompletion:(uint64_t)completion
{
  v3 = a2;
  if (completion)
  {
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = *(completion + 48);
    aBlock = v3;
    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v6 = *(completion + 48);
      *(completion + 48) = v5;

      v4 = *(completion + 48);
    }

    v7 = _Block_copy(aBlock);
    [v4 addObject:v7];

    [(PKCAAnimatedLayoutTracker *)completion _executeAbsoluteCompletionsIfPossible];
    v3 = aBlock;
  }
}

- (void)performTransactionWithBlock:(id)block completion:(id)completion
{
  completionCopy = completion;
  blockCopy = block;
  _effectiveTracker = [(PKCAAnimatedLayoutTracker *)self _effectiveTracker];
  [(PKCAAnimatedLayoutTracker *)_effectiveTracker _performAbsoluteTransactionWithBlock:blockCopy completion:completionCopy];
}

- (void)_performAbsoluteTransactionWithBlock:(void *)block completion:
{
  v5 = a2;
  blockCopy = block;
  if (!self)
  {
    goto LABEL_4;
  }

  if (v5)
  {
    _beginTrackingAbsoluteAnimation = [(PKCAAnimatedLayoutTracker *)self _beginTrackingAbsoluteAnimation];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __77__PKCAAnimatedLayoutTracker__performAbsoluteTransactionWithBlock_completion___block_invoke;
    v9[3] = &unk_1E79CD0E0;
    v10 = blockCopy;
    v11 = _beginTrackingAbsoluteAnimation;
    v8 = _beginTrackingAbsoluteAnimation;
    [(PKCAAnimatedLayoutTracker *)self _performIsolatedAbsoluteTransactionWithBlock:v5 completion:v9];

LABEL_4:
    return;
  }

  __break(1u);
}

- (void)performIsolatedTransactionWithBlock:(id)block completion:(id)completion
{
  completionCopy = completion;
  blockCopy = block;
  _effectiveTracker = [(PKCAAnimatedLayoutTracker *)self _effectiveTracker];
  [(PKCAAnimatedLayoutTracker *)_effectiveTracker _performIsolatedAbsoluteTransactionWithBlock:blockCopy completion:completionCopy];
}

- (void)_performIsolatedAbsoluteTransactionWithBlock:(void *)block completion:
{
  v18 = a2;
  blockCopy = block;
  if (self)
  {
    if (v18)
    {
      v6 = +[PKCAAnimatedLayoutTracker _create];
      v7 = v6;
      if (!v6 || ((v8 = v6->_suspended, v9 = __CFADD__(v8, 1), v10 = v8 + 1, !v9) ? (v11 = 0) : (v11 = 1), v6->_suspended = v10, v11 << 63 >> 63 == v11))
      {
        v12 = objc_autoreleasePoolPush();
        v14 = *(self + 40);
        v13 = (self + 40);
        v15 = v14;
        objc_storeStrong(v13, v7);
        v18[2]();
        v16 = *v13;
        *v13 = v15;

        objc_autoreleasePoolPop(v12);
        if (blockCopy)
        {
          [(PKCAAnimatedLayoutTracker *)v7 addCompletion:blockCopy];
        }

        if (!v7)
        {
          goto LABEL_13;
        }

        suspended = v7->_suspended;
        v7->_suspended = suspended - 1;
        if (suspended)
        {
          [(PKCAAnimatedLayoutTracker *)v7 _executeAbsoluteCompletionsIfPossible];
LABEL_13:

          goto LABEL_14;
        }
      }
    }

    __break(1u);
    return;
  }

LABEL_14:
}

- (void)trackAnimation:(id)animation
{
  animationCopy = animation;
  if (!animationCopy || (v5 = animationCopy, [animationCopy delegate], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    __break(1u);
  }

  else
  {
    _effectiveTracker = [(PKCAAnimatedLayoutTracker *)self _effectiveTracker];
    _beginTrackingAbsoluteAnimation = [(PKCAAnimatedLayoutTracker *)_effectiveTracker _beginTrackingAbsoluteAnimation];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__PKCAAnimatedLayoutTracker_trackAnimation___block_invoke;
    v10[3] = &unk_1E79C5268;
    v11 = _beginTrackingAbsoluteAnimation;
    v9 = _beginTrackingAbsoluteAnimation;
    [v5 pkui_setCompletionHandler:v10];
  }
}

void __60__PKCAAnimatedLayoutTracker__beginTrackingAbsoluteAnimation__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PKCAAnimatedLayoutTracker__beginTrackingAbsoluteAnimation__block_invoke_2;
  block[3] = &unk_1E79C4E28;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_executeAbsoluteCompletionsIfPossible
{
  v15 = *MEMORY[0x1E69E9840];
  if (self && !*(self + 32) && *(self + 8) <= *(self + 24) + *(self + 16))
  {
    v2 = *(self + 48);
    v3 = *(self + 48);
    *(self + 48) = 0;

    if ([v2 count])
    {
      v4 = objc_autoreleasePoolPush();
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = v2;
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }

      objc_autoreleasePoolPop(v4);
    }
  }
}

void __60__PKCAAnimatedLayoutTracker__beginTrackingAbsoluteAnimation__block_invoke_3(uint64_t a1, int a2)
{
  if ([*(a1 + 32) invalidate])
  {
    __break(1u);
  }

  else
  {
    v4 = 16;
    if (a2)
    {
      v4 = 24;
    }

    ++*(*(a1 + 40) + v4);
    v5 = *(a1 + 40);

    [(PKCAAnimatedLayoutTracker *)v5 _executeAbsoluteCompletionsIfPossible];
  }
}

uint64_t __77__PKCAAnimatedLayoutTracker__performAbsoluteTransactionWithBlock_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)_suspend
{
  if (self)
  {
    _effectiveTracker = [(PKCAAnimatedLayoutTracker *)self _effectiveTracker];
    if (_effectiveTracker && ((v2 = _effectiveTracker[4], v3 = __CFADD__(v2, 1), v4 = v2 + 1, !v3) ? (v5 = 0) : (v5 = 1), _effectiveTracker[4] = v4, (v5 << 63 >> 63) ^ v5))
    {
      __break(1u);
    }

    else
    {
    }
  }
}

- (void)_resume
{
  if (self)
  {
    _effectiveTracker = [(PKCAAnimatedLayoutTracker *)self _effectiveTracker];
    if (_effectiveTracker)
    {
      v2 = _effectiveTracker[4];
      _effectiveTracker[4] = v2 - 1;
      if (!v2)
      {
        __break(1u);
        return;
      }

      v3 = _effectiveTracker;
      [(PKCAAnimatedLayoutTracker *)_effectiveTracker _executeAbsoluteCompletionsIfPossible];
      _effectiveTracker = v3;
    }
  }
}

@end