@interface _DKEventStatsCounterInternal
- (id)initWithCollectionName:(void *)a3 eventName:(void *)a4 eventType:(void *)a5 eventTypePossibleValues:(char)a6 hasResult:(int)a7 scalar:;
- (uint64_t)incrementCountByNumber:(void *)a3 typeValue:(int)a4 success:;
- (uint64_t)indexOfTypeValue:(int)a3 success:;
- (void)dealloc;
@end

@implementation _DKEventStatsCounterInternal

- (void)dealloc
{
  counters = self->_counters;
  if (counters)
  {
    free(counters);
    self->_counters = 0;
  }

  v4.receiver = self;
  v4.super_class = _DKEventStatsCounterInternal;
  [(_DKEventStatsCounterInternal *)&v4 dealloc];
}

- (id)initWithCollectionName:(void *)a3 eventName:(void *)a4 eventType:(void *)a5 eventTypePossibleValues:(char)a6 hasResult:(int)a7 scalar:
{
  v40[2] = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  if (!a1)
  {
    goto LABEL_24;
  }

  v39.receiver = a1;
  v39.super_class = _DKEventStatsCounterInternal;
  v17 = objc_msgSendSuper2(&v39, sel_init);
  a1 = v17;
  if (!v17)
  {
    goto LABEL_23;
  }

  *(v17 + 2) = 0;
  objc_storeStrong(v17 + 4, a3);
  objc_storeStrong(a1 + 5, a4);
  objc_storeStrong(a1 + 6, a5);
  v18 = 0;
  if (v15 && v16)
  {
    v18 = [v16 count] != 0;
  }

  *(a1 + 12) = v18;
  *(a1 + 13) = a6;
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coreduet.%@.%@", v13, v14];
  v20 = a1[7];
  a1[7] = v19;

  v21 = *(a1 + 12) == 1 ? [v16 count] : 1;
  v22 = v21 << a6;
  a1[2] = v22;
  v23 = malloc_type_calloc(v22, 8uLL, 0x100004000313F17uLL);
  a1[3] = v23;
  if (!v23)
  {
LABEL_24:
    v32 = 0;
    goto LABEL_25;
  }

  if (getPETEventPropertyClass() && getPETScalarEventTrackerClass() && getPETDistributionEventTrackerClass())
  {
    OUTLINED_FUNCTION_3_16();
    if ((v24 & 1) == 0)
    {
      v25 = objc_opt_new();
      if (*(a1 + 12) == 1)
      {
        v26 = [getPETEventPropertyClass() propertyWithName:v15 possibleValues:v16];
        if (!v26)
        {
          v37 = a1;
          goto LABEL_30;
        }

        v27 = v26;
        [v25 addObject:v26];
      }

      if (*(a1 + 13) != 1)
      {
LABEL_20:
        if (a7)
        {
          PETScalarEventTrackerClass = getPETScalarEventTrackerClass();
        }

        else
        {
          PETScalarEventTrackerClass = getPETDistributionEventTrackerClass();
        }

        v35 = [[PETScalarEventTrackerClass alloc] initWithFeatureId:v13 event:v14 registerProperties:v25];
        v36 = a1[8];
        a1[8] = v35;

        goto LABEL_23;
      }

      v40[0] = @"true";
      v40[1] = @"false";
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
      v29 = [getPETEventPropertyClass() propertyWithName:@"success" possibleValues:v28];
      if (v29)
      {
        v30 = v29;
        [v25 addObject:v29];

        goto LABEL_20;
      }

      v38 = a1;

LABEL_30:
      v32 = a1;
      goto LABEL_25;
    }
  }

  else
  {
    _DKEventStatsLogExternally = 1;
  }

LABEL_23:
  a1 = a1;
  v32 = a1;
LABEL_25:

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

- (uint64_t)indexOfTypeValue:(int)a3 success:
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (*(a1 + 12) == (v5 != 0))
    {
      if (!v5)
      {
        if (*(a1 + 13))
        {
          v10 = (*(a1 + 13) & a3);
        }

        else
        {
          v10 = -1;
        }

        goto LABEL_17;
      }

      v7 = [*(a1 + 48) indexOfObject:v5];
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = v7;
        if (*(a1 + 13) == 1)
        {
          v11 = [*(a1 + 48) count];
          if (a3)
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          v10 += v12;
        }

        goto LABEL_17;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v16 = 136315394;
        v17 = "[_DKEventStatsCounterInternal indexOfTypeValue:success:]";
        v18 = 2112;
        v19 = v6;
        v8 = MEMORY[0x1E69E9C10];
        v9 = "Skipping %s due to unrecognized type parameter: %@";
LABEL_24:
        _os_log_debug_impl(&dword_191750000, v8, OS_LOG_TYPE_DEBUG, v9, &v16, 0x16u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v15 = @"unexpected";
      if (*(a1 + 12))
      {
        v15 = @"missing";
      }

      v16 = 136315394;
      v17 = "[_DKEventStatsCounterInternal indexOfTypeValue:success:]";
      v18 = 2112;
      v19 = v15;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "Skipping %s due to %@ type parameter";
      goto LABEL_24;
    }

    v10 = -1;
LABEL_17:
    if (v10 >= *(a1 + 16))
    {
      a1 = -1;
    }

    else
    {
      a1 = v10;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return a1;
}

- (uint64_t)incrementCountByNumber:(void *)a3 typeValue:(int)a4 success:
{
  v7 = a3;
  v8 = v7;
  if (a1)
  {
    v11 = v7;
    v7 = [(_DKEventStatsCounterInternal *)a1 indexOfTypeValue:v7 success:a4];
    v8 = v11;
    if (v7 >= 1)
    {
      v9 = v7;
      os_unfair_lock_lock((a1 + 8));
      *(*(a1 + 24) + 8 * v9) += a2;
      os_unfair_lock_unlock((a1 + 8));
      v8 = v11;
    }
  }

  return MEMORY[0x1EEE66BB8](v7, v8);
}

@end