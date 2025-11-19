@interface CPLSyncSessionPredictor
- (CPLSyncSessionPrediction)currentPrediction;
- (CPLSyncSessionPredictor)initWithIdentifier:(id)a3;
- (id)description;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)removePredictedValueForType:(id)a3;
- (void)updatePredictedDate:(id)a3 forType:(id)a4;
- (void)updatePredictedValue:(id)a3 forType:(id)a4;
- (void)updatePredictionWithValuesAndTypes:(id)a3;
- (void)updatePredictionsWithDerivativesStatistics:(id)a3;
@end

@implementation CPLSyncSessionPredictor

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(CPLSyncSessionPredictor *)self currentPrediction];
  v6 = [v3 initWithFormat:@"<%@ current: %@>", v4, v5];

  return v6;
}

- (void)updatePredictedDate:(id)a3 forType:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  [a3 timeIntervalSinceReferenceDate];
  v8 = [v6 numberWithDouble:?];
  [(CPLSyncSessionPredictor *)self updatePredictedValue:v8 forType:v7];
}

- (void)removePredictedValueForType:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__344;
  v22 = __Block_byref_object_dispose__345;
  v23 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__344;
  v16[4] = __Block_byref_object_dispose__345;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __55__CPLSyncSessionPredictor_removePredictedValueForType___block_invoke;
  v11 = &unk_1E86209B8;
  v14 = v16;
  v12 = self;
  v5 = v4;
  v13 = v5;
  v15 = &v18;
  v6 = v9;
  os_unfair_lock_lock(&self->_lock);
  v10(v6);
  os_unfair_lock_unlock(&self->_lock);

  v7 = v19[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__CPLSyncSessionPredictor_removePredictedValueForType___block_invoke_63;
  v8[3] = &unk_1E861B8D0;
  v8[4] = self;
  v8[5] = v16;
  [v7 enumerateObjectsUsingBlock:v8];

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v18, 8);
}

void __55__CPLSyncSessionPredictor_removePredictedValueForType___block_invoke(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 24) updatedPredictionRemovingValueForType:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(a1[6] + 8) + 40))
  {
    v5 = [*(a1[4] + 16) allObjects];
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    objc_storeStrong((a1[4] + 24), *(*(a1[6] + 8) + 40));
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLPredictorOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a1[4] + 32);
        v10 = a1[7];
        v11 = *(*(a1[6] + 8) + 40);
        v12 = [*(*(v10 + 8) + 40) count];
        v14 = 138543874;
        v15 = v9;
        v16 = 2112;
        v17 = v11;
        v18 = 2048;
        v19 = v12;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "Updated predictions for %{public}@: %@ - informing %lu observers", &v14, 0x20u);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)updatePredictedValue:(id)a3 forType:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12[0] = a3;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [(CPLSyncSessionPredictor *)self updatePredictionWithValuesAndTypes:v9];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)updatePredictionWithValuesAndTypes:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__344;
  v22 = __Block_byref_object_dispose__345;
  v23 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__344;
  v16[4] = __Block_byref_object_dispose__345;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __62__CPLSyncSessionPredictor_updatePredictionWithValuesAndTypes___block_invoke;
  v11 = &unk_1E86209B8;
  v14 = v16;
  v12 = self;
  v5 = v4;
  v13 = v5;
  v15 = &v18;
  v6 = v9;
  os_unfair_lock_lock(&self->_lock);
  v10(v6);
  os_unfair_lock_unlock(&self->_lock);

  v7 = v19[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__CPLSyncSessionPredictor_updatePredictionWithValuesAndTypes___block_invoke_60;
  v8[3] = &unk_1E861B8D0;
  v8[4] = self;
  v8[5] = v16;
  [v7 enumerateObjectsUsingBlock:v8];

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v18, 8);
}

void __62__CPLSyncSessionPredictor_updatePredictionWithValuesAndTypes___block_invoke(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 24) updatedPredictionWithValuesAndTypes:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(a1[6] + 8) + 40))
  {
    v5 = [*(a1[4] + 16) allObjects];
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    objc_storeStrong((a1[4] + 24), *(*(a1[6] + 8) + 40));
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLPredictorOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a1[4] + 32);
        v10 = a1[7];
        v11 = *(*(a1[6] + 8) + 40);
        v12 = [*(*(v10 + 8) + 40) count];
        v14 = 138543874;
        v15 = v9;
        v16 = 2112;
        v17 = v11;
        v18 = 2048;
        v19 = v12;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "Updated predictions for %{public}@: %@ - informing %lu observers", &v14, 0x20u);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __42__CPLSyncSessionPredictor_removeObserver___block_invoke;
  v9 = &unk_1E861B290;
  v10 = self;
  v5 = v4;
  v11 = v5;
  v6 = v7;
  os_unfair_lock_lock(&self->_lock);
  v8(v6);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __39__CPLSyncSessionPredictor_addObserver___block_invoke;
  v9 = &unk_1E861B290;
  v10 = self;
  v5 = v4;
  v11 = v5;
  v6 = v7;
  os_unfair_lock_lock(&self->_lock);
  v8(v6);
  os_unfair_lock_unlock(&self->_lock);
}

- (CPLSyncSessionPrediction)currentPrediction
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__344;
  v15 = __Block_byref_object_dispose__345;
  v16 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __44__CPLSyncSessionPredictor_currentPrediction__block_invoke;
  v8 = &unk_1E861A850;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_lock);
  v7(v3);
  os_unfair_lock_unlock(&self->_lock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (CPLSyncSessionPredictor)initWithIdentifier:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CPLSyncSessionPredictor;
  v5 = [(CPLSyncSessionPredictor *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(CPLSyncSessionPrediction);
    currentPrediction = v6->_currentPrediction;
    v6->_currentPrediction = v7;

    v9 = [v4 copy];
    identifier = v6->_identifier;
    v6->_identifier = v9;

    v11 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = v11;
  }

  return v6;
}

- (void)updatePredictionsWithDerivativesStatistics:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v25 = self;
    v5 = +[CPLResource largeResourceSizeThreshold];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      v11 = *v28;
      v12 = 0.0;
      v13 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          [v15 generationDuration];
          if (v16 > 0.00999999978)
          {
            v17 = v16;
            v18 = [v15 sourceResource];
            v19 = [v18 identity];
            v20 = [v19 fileSize];

            if (v20 <= v5)
            {
              if (v20 > 0x19000 && v17 > v13)
              {
                v10 = v20;
                v13 = v17;
              }
            }

            else if (v17 > v12)
            {
              v9 = v20;
              v12 = v17;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v12 = 0.0;
      v13 = 0.0;
    }

    v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    if (v10)
    {
      v22 = [MEMORY[0x1E696AD98] numberWithDouble:{fmin(v10 / v13, 104857600.0)}];
      [v21 setObject:v22 forKeyedSubscript:@"derivativesSpeed"];
    }

    if (v9)
    {
      v23 = [MEMORY[0x1E696AD98] numberWithDouble:{fmin(v9 / v12, 104857600.0)}];
      [v21 setObject:v23 forKeyedSubscript:@"largeDerivativesSpeed"];
    }

    if ([v21 count])
    {
      [(CPLSyncSessionPredictor *)v25 updatePredictionWithValuesAndTypes:v21];
    }

    v4 = v26;
  }

  v24 = *MEMORY[0x1E69E9840];
}

@end