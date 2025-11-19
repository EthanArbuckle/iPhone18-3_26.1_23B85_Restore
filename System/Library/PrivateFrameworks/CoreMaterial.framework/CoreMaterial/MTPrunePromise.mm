@interface MTPrunePromise
- (MTPrunePromise)initWithMaterialLayer:(id)a3;
- (void)dealloc;
- (void)fulfillPromise;
@end

@implementation MTPrunePromise

- (MTPrunePromise)initWithMaterialLayer:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MTPrunePromise;
  v5 = [(MTPrunePromise *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_materialLayer, v4);
    v7 = [MEMORY[0x1E695DF00] date];
    timeStamp = v6->_timeStamp;
    v6->_timeStamp = v7;
  }

  return v6;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  if (!self->_promiseFulfilled)
  {
    v3 = MTLogMaterials;
    if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v7 = self;
      _os_log_impl(&dword_1BF527000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: deallocating with unfulfilled promise", buf, 0xCu);
    }

    [(MTPrunePromise *)self fulfillPromise];
  }

  v5.receiver = self;
  v5.super_class = MTPrunePromise;
  [(MTPrunePromise *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)fulfillPromise
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self->_promiseFulfilled)
  {
    self->_promiseFulfilled = 1;
    WeakRetained = objc_loadWeakRetained(&self->_materialLayer);
    v4 = MTLogMaterials;
    if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543618;
      v7 = self;
      v8 = 2114;
      v9 = WeakRetained;
      _os_log_impl(&dword_1BF527000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: pruning layer: %{public}@", &v6, 0x16u);
    }

    [WeakRetained prune];
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end