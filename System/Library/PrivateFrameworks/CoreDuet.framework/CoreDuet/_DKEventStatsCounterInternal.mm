@interface _DKEventStatsCounterInternal
- (id)initWithCollectionName:(void *)name eventName:(void *)eventName eventType:(void *)type eventTypePossibleValues:(char)values hasResult:(int)result scalar:;
- (uint64_t)incrementCountByNumber:(void *)number typeValue:(int)value success:;
- (uint64_t)indexOfTypeValue:(int)value success:;
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

- (id)initWithCollectionName:(void *)name eventName:(void *)eventName eventType:(void *)type eventTypePossibleValues:(char)values hasResult:(int)result scalar:
{
  v40[2] = *MEMORY[0x1E69E9840];
  v13 = a2;
  nameCopy = name;
  eventNameCopy = eventName;
  typeCopy = type;
  if (!self)
  {
    goto LABEL_24;
  }

  v39.receiver = self;
  v39.super_class = _DKEventStatsCounterInternal;
  v17 = objc_msgSendSuper2(&v39, sel_init);
  self = v17;
  if (!v17)
  {
    goto LABEL_23;
  }

  *(v17 + 2) = 0;
  objc_storeStrong(v17 + 4, name);
  objc_storeStrong(self + 5, eventName);
  objc_storeStrong(self + 6, type);
  v18 = 0;
  if (eventNameCopy && typeCopy)
  {
    v18 = [typeCopy count] != 0;
  }

  *(self + 12) = v18;
  *(self + 13) = values;
  nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coreduet.%@.%@", v13, nameCopy];
  v20 = self[7];
  self[7] = nameCopy;

  v21 = *(self + 12) == 1 ? [typeCopy count] : 1;
  v22 = v21 << values;
  self[2] = v22;
  v23 = malloc_type_calloc(v22, 8uLL, 0x100004000313F17uLL);
  self[3] = v23;
  if (!v23)
  {
LABEL_24:
    selfCopy4 = 0;
    goto LABEL_25;
  }

  if (getPETEventPropertyClass() && getPETScalarEventTrackerClass() && getPETDistributionEventTrackerClass())
  {
    OUTLINED_FUNCTION_3_16();
    if ((v24 & 1) == 0)
    {
      v25 = objc_opt_new();
      if (*(self + 12) == 1)
      {
        v26 = [getPETEventPropertyClass() propertyWithName:eventNameCopy possibleValues:typeCopy];
        if (!v26)
        {
          selfCopy = self;
          goto LABEL_30;
        }

        v27 = v26;
        [v25 addObject:v26];
      }

      if (*(self + 13) != 1)
      {
LABEL_20:
        if (result)
        {
          PETScalarEventTrackerClass = getPETScalarEventTrackerClass();
        }

        else
        {
          PETScalarEventTrackerClass = getPETDistributionEventTrackerClass();
        }

        v35 = [[PETScalarEventTrackerClass alloc] initWithFeatureId:v13 event:nameCopy registerProperties:v25];
        v36 = self[8];
        self[8] = v35;

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

      selfCopy2 = self;

LABEL_30:
      selfCopy4 = self;
      goto LABEL_25;
    }
  }

  else
  {
    _DKEventStatsLogExternally = 1;
  }

LABEL_23:
  self = self;
  selfCopy4 = self;
LABEL_25:

  v33 = *MEMORY[0x1E69E9840];
  return selfCopy4;
}

- (uint64_t)indexOfTypeValue:(int)value success:
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (*(self + 12) == (v5 != 0))
    {
      if (!v5)
      {
        if (*(self + 13))
        {
          v10 = (*(self + 13) & value);
        }

        else
        {
          v10 = -1;
        }

        goto LABEL_17;
      }

      v7 = [*(self + 48) indexOfObject:v5];
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = v7;
        if (*(self + 13) == 1)
        {
          v11 = [*(self + 48) count];
          if (value)
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
      if (*(self + 12))
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
    if (v10 >= *(self + 16))
    {
      self = -1;
    }

    else
    {
      self = v10;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return self;
}

- (uint64_t)incrementCountByNumber:(void *)number typeValue:(int)value success:
{
  numberCopy = number;
  v8 = numberCopy;
  if (self)
  {
    v11 = numberCopy;
    numberCopy = [(_DKEventStatsCounterInternal *)self indexOfTypeValue:numberCopy success:value];
    v8 = v11;
    if (numberCopy >= 1)
    {
      v9 = numberCopy;
      os_unfair_lock_lock((self + 8));
      *(*(self + 24) + 8 * v9) += a2;
      os_unfair_lock_unlock((self + 8));
      v8 = v11;
    }
  }

  return MEMORY[0x1EEE66BB8](numberCopy, v8);
}

@end