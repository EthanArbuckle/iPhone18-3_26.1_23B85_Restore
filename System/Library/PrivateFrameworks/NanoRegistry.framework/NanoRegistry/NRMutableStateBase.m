@interface NRMutableStateBase
+ (id)classTypes;
- (BOOL)isEqual:(id)a3;
- (NRMutableStateBase)init;
- (id)addObserverQueue:(id)a3 withBlock:(id)a4;
- (id)applyDiff:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)parentDelegate;
- (void)invalidate;
- (void)notifyObserversWithDiff:(id)a3;
- (void)notifyParentWithDiff:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation NRMutableStateBase

- (NRMutableStateBase)init
{
  v3.receiver = self;
  v3.super_class = NRMutableStateBase;
  result = [(NRMutableStateBase *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (id)parentDelegate
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __36__NRMutableStateBase_parentDelegate__block_invoke;
  v9 = &unk_1E86DB8F0;
  v10 = self;
  v11 = &v12;
  v3 = v7;
  v4 = self;
  os_unfair_lock_lock_with_options();
  v8(v3);

  os_unfair_lock_unlock(&self->_lock);
  v5 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v5;
}

uint64_t __36__NRMutableStateBase_parentDelegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x1EEE66BB8](WeakRetained, v4);
}

- (id)applyDiff:(id)a3
{
  if (a3)
  {
    v4 = [(NRMutableStateBase *)self applyDiff:a3 upOnly:0 notifyParent:1 unconditional:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)classTypes
{
  v2 = [objc_opt_class() enclosedClassTypes];
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (void)notifyParentWithDiff:(id)a3
{
  v4 = a3;
  v5 = [(NRMutableStateBase *)self parentDelegate];
  [v5 child:self didApplyDiff:v4];
}

- (void)notifyObserversWithDiff:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  v33 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v24 = __46__NRMutableStateBase_notifyObserversWithDiff___block_invoke;
  v25 = &unk_1E86DB8F0;
  v26 = self;
  v27 = &v28;
  v5 = v23;
  v6 = self;
  os_unfair_lock_lock_with_options();
  v24(v5);

  os_unfair_lock_unlock(&self->_lock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v29[5];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v34 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        if (v11)
        {
          v12 = *(v11 + 16);
          if (v12)
          {
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __46__NRMutableStateBase_notifyObserversWithDiff___block_invoke_2;
            v17[3] = &unk_1E86DAF10;
            v17[4] = v11;
            v18 = v4;
            dispatch_async(v12, v17);

            goto LABEL_11;
          }

          v13 = *(v11 + 8);
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        v14[2](v14, v4, v11);

LABEL_11:
        ++v10;
      }

      while (v8 != v10);
      v15 = [v7 countByEnumeratingWithState:&v19 objects:v34 count:16];
      v8 = v15;
    }

    while (v15);
  }

  _Block_object_dispose(&v28, 8);
  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __46__NRMutableStateBase_notifyObserversWithDiff___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __46__NRMutableStateBase_notifyObserversWithDiff___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 8);
  }

  else
  {
    v2 = 0;
  }

  return (*(v2 + 16))(v2, *(a1 + 40));
}

- (id)addObserverQueue:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v15 = __49__NRMutableStateBase_addObserverQueue_withBlock___block_invoke;
  v16 = &unk_1E86DBDE0;
  v17 = self;
  v8 = v7;
  v19 = v8;
  v9 = v6;
  v18 = v9;
  v20 = &v21;
  v10 = v14;
  v11 = self;
  os_unfair_lock_lock_with_options();
  v15(v10);

  os_unfair_lock_unlock(&self->_lock);
  v12 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v12;
}

void __49__NRMutableStateBase_addObserverQueue_withBlock___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 8))
  {
    v2 = [MEMORY[0x1E695DFA8] set];
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    *(v3 + 8) = v2;
  }

  self = objc_alloc_init(NRMutableStateBaseObserverWrapper);
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v5, *(a1 + 48), 8);
    objc_storeStrong(&self->_queue, *(a1 + 40));
  }

  [*(*(a1 + 32) + 8) addObject:self];
  v6 = [MEMORY[0x1E696B098] valueWithNonretainedObject:self];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__NRMutableStateBase_removeObserver___block_invoke;
  v7[3] = &unk_1E86DAF10;
  v7[4] = self;
  v8 = v4;
  v5 = self;
  v6 = v4;
  os_unfair_lock_lock_with_options();
  __37__NRMutableStateBase_removeObserver___block_invoke(v7);
  os_unfair_lock_unlock(&self->_lock);
}

void __37__NRMutableStateBase_removeObserver___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8))
  {
    v2 = [*(a1 + 40) nonretainedObjectValue];
    [*(*(a1 + 32) + 8) removeObject:v2];
  }
}

- (void)invalidate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__NRMutableStateBase_invalidate__block_invoke;
  v4[3] = &unk_1E86DAE98;
  v4[4] = self;
  v3 = self;
  os_unfair_lock_lock_with_options();
  __32__NRMutableStateBase_invalidate__block_invoke(v4);
  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __32__NRMutableStateBase_invalidate__block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 24), 0);
  v2 = *(*(a1 + 32) + 8);

  return [v2 removeAllObjects];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (self)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = !v6;
  return (isKindOfClass & 1) != 0 && v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

@end