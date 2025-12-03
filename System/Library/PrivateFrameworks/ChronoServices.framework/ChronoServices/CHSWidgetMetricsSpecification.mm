@interface CHSWidgetMetricsSpecification
- (BOOL)isEqual:(id)equal;
- (CHSWidgetMetricsSpecification)init;
- (CHSWidgetMetricsSpecification)initWithCoder:(id)coder;
- (CHSWidgetMetricsSpecification)initWithMetricsSpecification:(id)specification;
- (id)_initWithMetricsByFamily:(id)family alternates:(id)alternates;
- (id)allMetricsForFamily:(int64_t)family;
- (id)alternateMetricsForFamily:(int64_t)family;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)metricsForFamily:(int64_t)family;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)families;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSWidgetMetricsSpecification

- (CHSWidgetMetricsSpecification)init
{
  dictionary = [MEMORY[0x1E695DF20] dictionary];
  dictionary2 = [MEMORY[0x1E695DF20] dictionary];
  v5 = [(CHSWidgetMetricsSpecification *)self _initWithMetricsByFamily:dictionary alternates:dictionary2];

  return v5;
}

- (CHSWidgetMetricsSpecification)initWithMetricsSpecification:(id)specification
{
  specificationCopy = specification;
  metricsByFamily = [specificationCopy metricsByFamily];
  alternatesByFamily = [specificationCopy alternatesByFamily];
  v7 = [(CHSWidgetMetricsSpecification *)self _initWithMetricsByFamily:metricsByFamily alternates:alternatesByFamily];

  return v7;
}

- (id)_initWithMetricsByFamily:(id)family alternates:(id)alternates
{
  familyCopy = family;
  alternatesCopy = alternates;
  v12.receiver = self;
  v12.super_class = CHSWidgetMetricsSpecification;
  v9 = [(CHSWidgetMetricsSpecification *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_metricsByFamily, family);
    objc_storeStrong(p_isa + 2, alternates);
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
  metricsByFamily = [(CHSWidgetMetricsSpecification *)self metricsByFamily];
  keyEnumerator = [metricsByFamily keyEnumerator];

  v4 = 0;
  v5 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        v4 |= CHSWidgetFamilyMaskFromWidgetFamily([*(*(&v10 + 1) + 8 * v7++) integerValue]);
      }

      while (v5 != v7);
      v5 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)metricsForFamily:(int64_t)family
{
  metricsByFamily = [(CHSWidgetMetricsSpecification *)self metricsByFamily];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:family];
  v6 = [metricsByFamily objectForKey:v5];

  return v6;
}

- (id)alternateMetricsForFamily:(int64_t)family
{
  alternatesByFamily = [(CHSWidgetMetricsSpecification *)self alternatesByFamily];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:family];
  v6 = [alternatesByFamily objectForKey:v5];

  return v6;
}

- (id)allMetricsForFamily:(int64_t)family
{
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = [(CHSWidgetMetricsSpecification *)self metricsForFamily:family];
  if (v6)
  {
    [v5 addObject:v6];
  }

  alternatesByFamily = [(CHSWidgetMetricsSpecification *)self alternatesByFamily];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:family];
  v9 = [alternatesByFamily objectForKey:v8];

  if (v9)
  {
    [v5 unionSet:v9];
  }

  v10 = [v5 copy];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      metricsByFamily = [(CHSWidgetMetricsSpecification *)self metricsByFamily];
      metricsByFamily2 = [(CHSWidgetMetricsSpecification *)v5 metricsByFamily];
      v8 = [metricsByFamily isEqual:metricsByFamily2];

      if (v8)
      {
        alternatesByFamily = [(CHSWidgetMetricsSpecification *)self alternatesByFamily];
        alternatesByFamily2 = [(CHSWidgetMetricsSpecification *)v5 alternatesByFamily];
        v11 = [alternatesByFamily isEqual:alternatesByFamily2];
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
  succinctDescriptionBuilder = [(CHSWidgetMetricsSpecification *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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
  selfCopy = self;
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

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CHSWidgetMetricsSpecification *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__CHSWidgetMetricsSpecification_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E7453000;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CHSMutableWidgetMetricsSpecification allocWithZone:zone];

  return [(CHSWidgetMetricsSpecification *)v4 initWithMetricsSpecification:self];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  metricsByFamily = [(CHSWidgetMetricsSpecification *)self metricsByFamily];
  [coderCopy encodeObject:metricsByFamily forKey:@"metricsByFamily"];

  v6 = MEMORY[0x1E695DF90];
  alternatesByFamily = [(CHSWidgetMetricsSpecification *)self alternatesByFamily];
  v8 = [v6 dictionaryWithCapacity:{objc_msgSend(alternatesByFamily, "count")}];

  alternatesByFamily2 = [(CHSWidgetMetricsSpecification *)self alternatesByFamily];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__CHSWidgetMetricsSpecification_encodeWithCoder___block_invoke;
  v11[3] = &unk_1E7454340;
  v10 = v8;
  v12 = v10;
  [alternatesByFamily2 enumerateKeysAndObjectsUsingBlock:v11];

  [coderCopy encodeObject:v10 forKey:@"alternatesByFamily"];
}

void __49__CHSWidgetMetricsSpecification_encodeWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 allObjects];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

- (CHSWidgetMetricsSpecification)initWithCoder:(id)coder
{
  v28[4] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeDictionaryWithKeysOfClass:v5 objectsOfClass:objc_opt_class() forKey:@"metricsByFamily"];
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
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"alternatesByFamily"];
  objectEnumerator = [v13 objectEnumerator];
  nextObject = [objectEnumerator nextObject];
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

  selfCopy = 0;
  if (v6 && v19)
  {
    self = [(CHSWidgetMetricsSpecification *)self _initWithMetricsByFamily:v6 alternates:v19];
    selfCopy = self;
  }

  v21 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

void __47__CHSWidgetMetricsSpecification_initWithCoder___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

@end