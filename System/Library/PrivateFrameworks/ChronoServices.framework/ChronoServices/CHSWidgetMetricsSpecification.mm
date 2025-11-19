@interface CHSWidgetMetricsSpecification
- (BOOL)isEqual:(id)a3;
- (CHSWidgetMetricsSpecification)init;
- (CHSWidgetMetricsSpecification)initWithCoder:(id)a3;
- (CHSWidgetMetricsSpecification)initWithMetricsSpecification:(id)a3;
- (id)_initWithMetricsByFamily:(id)a3 alternates:(id)a4;
- (id)allMetricsForFamily:(int64_t)a3;
- (id)alternateMetricsForFamily:(int64_t)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)metricsForFamily:(int64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)families;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSWidgetMetricsSpecification

- (CHSWidgetMetricsSpecification)init
{
  v3 = [MEMORY[0x1E695DF20] dictionary];
  v4 = [MEMORY[0x1E695DF20] dictionary];
  v5 = [(CHSWidgetMetricsSpecification *)self _initWithMetricsByFamily:v3 alternates:v4];

  return v5;
}

- (CHSWidgetMetricsSpecification)initWithMetricsSpecification:(id)a3
{
  v4 = a3;
  v5 = [v4 metricsByFamily];
  v6 = [v4 alternatesByFamily];
  v7 = [(CHSWidgetMetricsSpecification *)self _initWithMetricsByFamily:v5 alternates:v6];

  return v7;
}

- (id)_initWithMetricsByFamily:(id)a3 alternates:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CHSWidgetMetricsSpecification;
  v9 = [(CHSWidgetMetricsSpecification *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_metricsByFamily, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (unint64_t)families
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(CHSWidgetMetricsSpecification *)self metricsByFamily];
  v3 = [v2 keyEnumerator];

  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v4 |= CHSWidgetFamilyMaskFromWidgetFamily([*(*(&v10 + 1) + 8 * v7++) integerValue]);
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)metricsForFamily:(int64_t)a3
{
  v4 = [(CHSWidgetMetricsSpecification *)self metricsByFamily];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKey:v5];

  return v6;
}

- (id)alternateMetricsForFamily:(int64_t)a3
{
  v4 = [(CHSWidgetMetricsSpecification *)self alternatesByFamily];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKey:v5];

  return v6;
}

- (id)allMetricsForFamily:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = [(CHSWidgetMetricsSpecification *)self metricsForFamily:a3];
  if (v6)
  {
    [v5 addObject:v6];
  }

  v7 = [(CHSWidgetMetricsSpecification *)self alternatesByFamily];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    [v5 unionSet:v9];
  }

  v10 = [v5 copy];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(CHSWidgetMetricsSpecification *)self metricsByFamily];
      v7 = [(CHSWidgetMetricsSpecification *)v5 metricsByFamily];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        v9 = [(CHSWidgetMetricsSpecification *)self alternatesByFamily];
        v10 = [(CHSWidgetMetricsSpecification *)v5 alternatesByFamily];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)succinctDescription
{
  v2 = [(CHSWidgetMetricsSpecification *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__CHSWidgetMetricsSpecification_succinctDescriptionBuilder__block_invoke;
  v7[3] = &unk_1E7453000;
  v4 = v3;
  v8 = v4;
  v9 = self;
  [v4 appendProem:self block:v7];
  v5 = v4;

  return v4;
}

void __59__CHSWidgetMetricsSpecification_succinctDescriptionBuilder__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CHSWidgetFamilyMaskDescription([*(a1 + 40) families]);
  [v1 appendString:? withName:?];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CHSWidgetMetricsSpecification *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__CHSWidgetMetricsSpecification_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E7453000;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v10];
  v7 = v11;
  v8 = v6;

  return v6;
}

void __71__CHSWidgetMetricsSpecification_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __71__CHSWidgetMetricsSpecification_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v2[3] = &unk_1E7454318;
  v3 = *(a1 + 40);
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
}

void __71__CHSWidgetMetricsSpecification_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = [a3 description];
  v7 = CHSWidgetFamilyDescription([v8 integerValue]);
  [v5 appendString:v6 withName:v7];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CHSMutableWidgetMetricsSpecification allocWithZone:a3];

  return [(CHSWidgetMetricsSpecification *)v4 initWithMetricsSpecification:self];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CHSWidgetMetricsSpecification *)self metricsByFamily];
  [v4 encodeObject:v5 forKey:@"metricsByFamily"];

  v6 = MEMORY[0x1E695DF90];
  v7 = [(CHSWidgetMetricsSpecification *)self alternatesByFamily];
  v8 = [v6 dictionaryWithCapacity:{objc_msgSend(v7, "count")}];

  v9 = [(CHSWidgetMetricsSpecification *)self alternatesByFamily];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__CHSWidgetMetricsSpecification_encodeWithCoder___block_invoke;
  v11[3] = &unk_1E7454340;
  v10 = v8;
  v12 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:v11];

  [v4 encodeObject:v10 forKey:@"alternatesByFamily"];
}

void __49__CHSWidgetMetricsSpecification_encodeWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 allObjects];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

- (CHSWidgetMetricsSpecification)initWithCoder:(id)a3
{
  v28[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeDictionaryWithKeysOfClass:v5 objectsOfClass:objc_opt_class() forKey:@"metricsByFamily"];
  v7 = MEMORY[0x1E695DFA8];
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v28[2] = objc_opt_class();
  v28[3] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
  v9 = [v7 setWithArray:v8];

  v10 = [v9 setByAddingObject:objc_opt_class()];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"alternatesByFamily"];
  v14 = [v13 objectEnumerator];
  v15 = [v14 nextObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v13, "count")}];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __47__CHSWidgetMetricsSpecification_initWithCoder___block_invoke;
    v26 = &unk_1E7454368;
    v18 = v17;
    v27 = v18;
    [v13 enumerateKeysAndObjectsUsingBlock:&v23];
    v19 = [v18 copy];
  }

  else
  {
    v19 = v13;
  }

  v20 = 0;
  if (v6 && v19)
  {
    self = [(CHSWidgetMetricsSpecification *)self _initWithMetricsByFamily:v6 alternates:v19];
    v20 = self;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

void __47__CHSWidgetMetricsSpecification_initWithCoder___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

@end