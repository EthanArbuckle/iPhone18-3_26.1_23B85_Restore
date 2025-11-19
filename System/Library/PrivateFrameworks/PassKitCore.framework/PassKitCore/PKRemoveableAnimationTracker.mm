@interface PKRemoveableAnimationTracker
+ (id)createForAnimation:(id)a3 inLayer:(id)a4 store:(id)a5 withPreemptAction:(id)a6 completionAction:(id)a7;
- (CALayer)layer;
- (void)_preempt;
- (void)_remove;
- (void)_removeWithLayer:(uint64_t)a1;
@end

@implementation PKRemoveableAnimationTracker

- (void)_preempt
{
  if (!a1 || (*(a1 + 11) & 1) != 0)
  {
    return;
  }

  *(a1 + 11) = 1;
  v9 = _Block_copy(*(a1 + 16));
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;

  if ((*(a1 + 8) & 1) == 0 && (*(a1 + 9) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = WeakRetained;
    if (!WeakRetained)
    {
      [(PKRemoveableAnimationTracker *)a1 _removeWithLayer:?];
LABEL_16:

      goto LABEL_17;
    }

    v5 = [WeakRetained animationForKey:*(a1 + 40)];
    if (v5)
    {
      [v4 pkui_elapsedDurationForAnimation:v5];
      if (v6 > 0.0)
      {
LABEL_15:

        goto LABEL_16;
      }

      *(a1 + 24) = 1;
      if (v9)
      {
        v9[2]();
      }

      v7 = a1;
      v8 = v4;
    }

    else
    {
      v7 = a1;
      v8 = 0;
    }

    [(PKRemoveableAnimationTracker *)v7 _removeWithLayer:v8];
    goto LABEL_15;
  }

LABEL_17:
}

- (void)_remove
{
  if (a1 && (*(a1 + 8) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [(PKRemoveableAnimationTracker *)a1 _removeWithLayer:?];
  }
}

+ (id)createForAnimation:(id)a3 inLayer:(id)a4 store:(id)a5 withPreemptAction:(id)a6 completionAction:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = v15;
  if (v11 && v12)
  {
    v17 = [v11 delegate];

    if (v17)
    {
      __break(1u);
    }

    else
    {
      v18 = [PKRemoveableAnimationTracker alloc];
      if (v18)
      {
        v32.receiver = v18;
        v32.super_class = PKRemoveableAnimationTracker;
        v19 = objc_msgSendSuper2(&v32, sel_init);
LABEL_6:
        objc_storeWeak(v19 + 4, v12);
        v20 = _Block_copy(v14);
        v21 = v19[2];
        v19[2] = v20;

        if (v13)
        {
          *(v19 + 10) = 1;
          [v13[1] addObject:v19];
        }

        objc_initWeak(&v32.receiver, v13);
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __100__PKRemoveableAnimationTracker_createForAnimation_inLayer_store_withPreemptAction_completionAction___block_invoke;
        v28[3] = &unk_1E79E2270;
        v22 = v19;
        v29 = v22;
        objc_copyWeak(&v31, &v32.receiver);
        v30 = v16;
        [v11 pkui_setCompletionHandler:v28];
        v23 = [v12 pkui_addAdditiveAnimation:v11];
        v24 = v22[5];
        v22[5] = v23;

        *(v22 + 8) = v22[5] == 0;
        v25 = v30;
        v26 = v22;

        objc_destroyWeak(&v31);
        objc_destroyWeak(&v32.receiver);
        goto LABEL_12;
      }
    }

    v19 = 0;
    goto LABEL_6;
  }

  if (v15)
  {
    (*(v15 + 2))(v15, v11 == 0);
  }

  v26 = 0;
LABEL_12:

  return v26;
}

uint64_t __100__PKRemoveableAnimationTracker_createForAnimation_inLayer_store_withPreemptAction_completionAction___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 9) = 1;
  if (*(*(a1 + 32) + 10) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v3 = *(a1 + 32);
      v4 = v3;
      if (v3)
      {
        *(v3 + 10) = 0;
      }

      v5 = [WeakRetained[1] indexOfObjectIdenticalTo:v3];
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [WeakRetained[1] removeObjectAtIndex:v5];
      }
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (void)_removeWithLayer:(uint64_t)a1
{
  v3 = a2;
  if ((*(a1 + 8) & 1) == 0 && (*(a1 + 9) & 1) == 0)
  {
    v4 = v3;
    if ((*(a1 + 11) & 1) != 0 || ([(PKRemoveableAnimationTracker *)a1 _preempt], v3 = v4, (*(a1 + 8) & 1) == 0))
    {
      *(a1 + 8) = 1;
      if (v3)
      {
        [v4 removeAnimationForKey:*(a1 + 40)];
        v3 = v4;
      }
    }
  }
}

- (CALayer)layer
{
  WeakRetained = objc_loadWeakRetained(&self->_layer);

  return WeakRetained;
}

@end