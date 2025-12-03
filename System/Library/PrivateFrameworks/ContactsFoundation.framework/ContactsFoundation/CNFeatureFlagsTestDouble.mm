@interface CNFeatureFlagsTestDouble
- (BOOL)isFeatureEnabled:(unint64_t)enabled;
- (CNFeatureFlagsTestDouble)initWithFeatureFlags:(id)flags;
- (NSString)description;
- (void)setFeatureEnabled:(BOOL)enabled forFeature:(unint64_t)feature;
@end

@implementation CNFeatureFlagsTestDouble

- (CNFeatureFlagsTestDouble)initWithFeatureFlags:(id)flags
{
  flagsCopy = flags;
  v14.receiver = self;
  v14.super_class = CNFeatureFlagsTestDouble;
  v5 = [(CNFeatureFlagsTestDouble *)&v14 init];
  if (v5)
  {
    v6 = [flagsCopy mutableCopy];
    featureFlags = v5->_featureFlags;
    v5->_featureFlags = v6;

    v8 = objc_alloc_init(CNFeatureFlags);
    fallback = v5->_fallback;
    v5->_fallback = v8;

    v10 = objc_alloc_init(CNUnfairLock);
    lock = v5->_lock;
    v5->_lock = v10;

    v12 = v5;
  }

  return v5;
}

- (BOOL)isFeatureEnabled:(unint64_t)enabled
{
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__CNFeatureFlagsTestDouble_isFeatureEnabled___block_invoke;
  v11[3] = &unk_1E6ED6EF8;
  v11[4] = self;
  v11[5] = enabled;
  v6 = CNResultWithLock(lock, v11);
  v7 = v6;
  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = [(CNFeatureFlags *)self->_fallback isFeatureEnabled:enabled];
  }

  v9 = bOOLValue;

  return v9;
}

id __45__CNFeatureFlagsTestDouble_isFeatureEnabled___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v3 = [v1 objectForKeyedSubscript:v2];

  return v3;
}

- (void)setFeatureEnabled:(BOOL)enabled forFeature:(unint64_t)feature
{
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__CNFeatureFlagsTestDouble_setFeatureEnabled_forFeature___block_invoke;
  v5[3] = &unk_1E6ED6F20;
  v5[4] = self;
  v5[5] = feature;
  enabledCopy = enabled;
  CNRunWithLock(lock, v5);
}

void __57__CNFeatureFlagsTestDouble_setFeatureEnabled_forFeature___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2];
  [v3 setObject:v5 forKeyedSubscript:v4];
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  lock = self->_lock;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __39__CNFeatureFlagsTestDouble_description__block_invoke;
  v11 = &unk_1E6ED5168;
  selfCopy = self;
  v13 = v3;
  v5 = v3;
  CNRunWithLock(lock, &v8);
  build = [v5 build];

  return build;
}

void __39__CNFeatureFlagsTestDouble_description__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) allKeys];
  v3 = [v2 sortedArrayUsingSelector:sel_compare_];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{v9, v15}];
        v11 = *(a1 + 40);
        v12 = +[CNFeatureFlags descriptionOfFeatureFlag:](CNFeatureFlags, "descriptionOfFeatureFlag:", [v9 cnFeatureFlagValue]);
        v13 = [v11 appendName:v12 object:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end