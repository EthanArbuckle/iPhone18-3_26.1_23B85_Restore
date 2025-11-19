@interface FCAdStatusCondition
+ (id)adStatusConditionsFromConditionsArray:(id)a3;
- (FCAdStatusCondition)initWithStatusConditionType:(unint64_t)a3 identifier:(id)a4;
@end

@implementation FCAdStatusCondition

- (FCAdStatusCondition)initWithStatusConditionType:(unint64_t)a3 identifier:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FCAdStatusCondition;
  v8 = [(FCAdStatusCondition *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a4);
    v9->_type = a3;
  }

  return v9;
}

+ (id)adStatusConditionsFromConditionsArray:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v24 = [MEMORY[0x1E695DF90] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = @"statusConditionType";
    v8 = *v26;
    v9 = 0x1E695D000uLL;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v11 objectForKey:v7];
        v13 = [v11 objectForKey:@"identifier"];
        if (v12)
        {
          v14 = *(v9 + 4016);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v13)
            {
              v15 = *(v9 + 4016);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v16 = v7;
                v17 = v9;
                v18 = v4;
                v19 = adStatusConditionTypeForType(v12);
                v20 = [[FCAdStatusCondition alloc] initWithStatusConditionType:v19 identifier:v13];
                v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v19];
                [v24 setObject:v20 forKey:v21];

                v4 = v18;
                v9 = v17;
                v7 = v16;
              }
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v24;
}

@end