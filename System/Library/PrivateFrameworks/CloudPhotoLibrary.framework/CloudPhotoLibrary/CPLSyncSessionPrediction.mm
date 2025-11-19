@interface CPLSyncSessionPrediction
- (CPLSyncSessionPrediction)init;
- (CPLSyncSessionPrediction)initWithPredictedValuesAndTypes:(id)a3;
- (double)timeIntervalSincePredictedDateForType:(id)a3;
- (id)description;
- (id)descriptionWithNow:(id)a3;
- (id)predictedDateForType:(id)a3;
- (id)updatedPredictionRemovingValueForType:(id)a3;
- (id)updatedPredictionWithValuesAndTypes:(id)a3;
@end

@implementation CPLSyncSessionPrediction

- (id)description
{
  v2 = [(CPLSyncSessionPrediction *)self descriptionWithNow:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"<no predictions>";
  }

  v5 = v4;

  return v4;
}

- (id)descriptionWithNow:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = a3;
  if ([(NSDictionary *)self->_predictions count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSDictionary count](self->_predictions, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    objc_opt_self();
    if (onceToken != -1)
    {
      dispatch_once(&onceToken, &__block_literal_global_140);
    }

    obj = _orderedPredictionTypes;
    v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v25;
      do
      {
        v8 = 0;
        do
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v24 + 1) + 8 * v8);
          if (v9)
          {
            v10 = *(v9 + 8);
          }

          else
          {
            v10 = 0;
          }

          v11 = [(NSDictionary *)self->_predictions objectForKeyedSubscript:v10];
          if (v11)
          {
            if (v9)
            {
              v12 = *(v9 + 16);
            }

            else
            {
              v12 = 0;
            }

            v13 = v12;
            if (objc_opt_respondsToSelector())
            {
              [v13 stringForTimeIntervalNumber:v11 now:v22];
            }

            else
            {
              [v13 stringForObjectValue:v11];
            }
            v14 = ;
            v15 = objc_alloc(MEMORY[0x1E696AEC0]);
            if (v9)
            {
              v16 = *(v9 + 8);
            }

            else
            {
              v16 = 0;
            }

            v17 = [v15 initWithFormat:@"%@: %@", v16, v14];
            [v4 addObject:v17];
          }

          ++v8;
        }

        while (v6 != v8);
        v18 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        v6 = v18;
      }

      while (v18);
    }

    if ([v4 count])
    {
      v19 = [v4 componentsJoinedByString:{@", "}];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)updatedPredictionRemovingValueForType:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_predictions objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [(NSDictionary *)self->_predictions mutableCopy];
    [v6 removeObjectForKey:v4];
    v7 = [[CPLSyncSessionPrediction alloc] initWithPredictedValuesAndTypes:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)updatedPredictionWithValuesAndTypes:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__344;
  v13 = __Block_byref_object_dispose__345;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__CPLSyncSessionPrediction_updatedPredictionWithValuesAndTypes___block_invoke;
  v8[3] = &unk_1E861DE40;
  v8[4] = self;
  v8[5] = &v9;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];
  if (v10[5])
  {
    v5 = [CPLSyncSessionPrediction alloc];
    v6 = [(CPLSyncSessionPrediction *)v5 initWithPredictedValuesAndTypes:v10[5]];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __64__CPLSyncSessionPrediction_updatedPredictionWithValuesAndTypes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = *(*(*(a1 + 40) + 8) + 40);
  if (v6)
  {
    v7 = v5;
LABEL_15:
    [v6 setObject:v7 forKeyedSubscript:v17];
    goto LABEL_16;
  }

  v8 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v17];
  v9 = v5;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      v11 = [v8 isEqualToNumber:v9];
    }

    else
    {
      v11 = [v8 isEqualToNumber:&unk_1F57EF2A8];
    }

    if (v11)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (v9)
  {
    v12 = [v9 isEqualToNumber:&unk_1F57EF2A8];

    if ((v12 & 1) == 0)
    {
LABEL_11:
      v13 = *(*(a1 + 32) + 8);
      if (v13)
      {
        v14 = [v13 mutableCopy];
      }

      else
      {
        v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
      }

      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v6 = *(*(*(a1 + 40) + 8) + 40);
      v7 = v10;
      goto LABEL_15;
    }
  }

LABEL_16:
}

- (double)timeIntervalSincePredictedDateForType:(id)a3
{
  v3 = [(CPLSyncSessionPrediction *)self predictedDateForType:a3];
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DF00] distantPast];
  }

  [v3 timeIntervalSinceNow];
  v5 = -v4;

  return v5;
}

- (id)predictedDateForType:(id)a3
{
  v3 = [(NSDictionary *)self->_predictions objectForKeyedSubscript:a3];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E695DF00]);
    [v3 doubleValue];
    v5 = [v4 initWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CPLSyncSessionPrediction)initWithPredictedValuesAndTypes:(id)a3
{
  v4 = a3;
  v5 = [(CPLSyncSessionPrediction *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    predictions = v5->_predictions;
    v5->_predictions = v6;
  }

  return v5;
}

- (CPLSyncSessionPrediction)init
{
  v3.receiver = self;
  v3.super_class = CPLSyncSessionPrediction;
  return [(CPLSyncSessionPrediction *)&v3 init];
}

@end