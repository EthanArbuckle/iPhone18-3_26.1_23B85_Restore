@interface JEMetricsDataPredicate
+ (id)predicateWithConfiguration:(id)a3;
+ (id)predicateWithType:(id)a3 argument:(id)a4;
- (BOOL)evaluateWithMetricsData:(id)a3;
- (JEMetricsDataPredicate)initWithConfigDictionary:(id)a3;
- (JEMetricsDataPredicate)initWithFormat:(id)a3;
@end

@implementation JEMetricsDataPredicate

+ (id)predicateWithType:(id)a3 argument:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"valueMatches"])
  {
    v7 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", v8];
    }

    else
    {
      v10 = 0;
    }
  }

  else if ([v5 isEqualToString:@"nonEmpty"] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if ([v6 BOOLValue])
    {
      v9 = @"self != nil && self != ''";
    }

    else
    {
      v9 = @"self == nil || self == ''";
    }

    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)predicateWithConfiguration:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[JEMetricsDataPredicate alloc] initWithConfigDictionary:v3];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[JEMetricsDataPredicate alloc] initWithFormat:v3];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (JEMetricsDataPredicate)initWithFormat:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = JEMetricsDataPredicate;
  v5 = [(JEMetricsDataPredicate *)&v11 init];
  if (v5)
  {
    v13 = @"_";
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:v4];
    v12 = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    v14[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    fieldPredicates = v5->_fieldPredicates;
    v5->_fieldPredicates = v8;
  }

  return v5;
}

- (JEMetricsDataPredicate)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = JEMetricsDataPredicate;
  v5 = [(JEMetricsDataPredicate *)&v13 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__JEMetricsDataPredicate_initWithConfigDictionary___block_invoke;
    v11[3] = &unk_1E794A830;
    v12 = v6;
    v7 = v6;
    [v4 enumerateKeysAndObjectsUsingBlock:v11];
    v8 = [v7 copy];
    fieldPredicates = v5->_fieldPredicates;
    v5->_fieldPredicates = v8;
  }

  return v5;
}

void __51__JEMetricsDataPredicate_initWithConfigDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__JEMetricsDataPredicate_initWithConfigDictionary___block_invoke_2;
    v14[3] = &unk_1E794A830;
    v15 = v7;
    [v9 enumerateKeysAndObjectsUsingBlock:v14];
  }

  v10 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:v11];
    [v7 addObject:v12];
  }

  if ([v7 count])
  {
    v13 = [v7 copy];
    [*(a1 + 32) setObject:v13 forKeyedSubscript:v5];
  }
}

uint64_t __51__JEMetricsDataPredicate_initWithConfigDictionary___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [JEMetricsDataPredicate predicateWithType:a2 argument:a3];
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  return MEMORY[0x1EEE66BB8]();
}

void __50__JEMetricsDataPredicate_evaluateWithMetricsData___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  if (([v7 isEqualToString:@"_"] & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
      goto LABEL_16;
    }

    v10 = [*(a1 + 32) objectForKeyedSubscript:v7];

    v9 = v10;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        if (([*(*(&v16 + 1) + 8 * i) evaluateWithObject:{v9, v16}] & 1) == 0)
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          *a4 = 1;
          goto LABEL_14;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

LABEL_16:
}

- (BOOL)evaluateWithMetricsData:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  if (self)
  {
    fieldPredicates = self->_fieldPredicates;
  }

  else
  {
    fieldPredicates = 0;
  }

  v6 = fieldPredicates;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__JEMetricsDataPredicate_evaluateWithMetricsData___block_invoke;
  v9[3] = &unk_1E794A858;
  v7 = v4;
  v10 = v7;
  v11 = &v12;
  [(NSDictionary *)v6 enumerateKeysAndObjectsUsingBlock:v9];

  LOBYTE(v6) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v6;
}

@end