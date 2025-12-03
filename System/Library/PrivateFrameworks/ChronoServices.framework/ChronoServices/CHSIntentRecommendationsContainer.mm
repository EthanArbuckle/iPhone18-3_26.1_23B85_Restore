@interface CHSIntentRecommendationsContainer
- (BOOL)isEqual:(id)equal;
- (CHSIntentRecommendationsContainer)initWithBSXPCCoder:(id)coder;
- (CHSIntentRecommendationsContainer)initWithCoder:(id)coder;
- (CHSIntentRecommendationsContainer)initWithSchemaIntent:(id)intent recommendations:(id)recommendations;
- (id)_initWithSchemaData:(id)data recommendations:(id)recommendations;
- (id)_recommendationsWithoutSchemaData;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSIntentRecommendationsContainer

- (CHSIntentRecommendationsContainer)initWithSchemaIntent:(id)intent recommendations:(id)recommendations
{
  intentCopy = intent;
  recommendationsCopy = recommendations;
  v18 = 0;
  v8 = [CHSIntentReference _schemaDataFromIntent:intentCopy error:&v18];
  v9 = v18;
  if (v9)
  {
    selfCopy = 0;
  }

  else
  {
    if (v8)
    {
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __74__CHSIntentRecommendationsContainer_initWithSchemaIntent_recommendations___block_invoke;
      v16 = &unk_1E7453960;
      v17 = v8;
      v11 = [recommendationsCopy bs_map:&v13];

      recommendationsCopy = v11;
    }

    self = [(CHSIntentRecommendationsContainer *)self _initWithSchemaData:v8 recommendations:recommendationsCopy, v13, v14, v15, v16];
    selfCopy = self;
  }

  return selfCopy;
}

id __74__CHSIntentRecommendationsContainer_initWithSchemaIntent_recommendations___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _copyFillingInSchema:*(a1 + 32)];

  return v2;
}

- (id)_initWithSchemaData:(id)data recommendations:(id)recommendations
{
  v19 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  recommendationsCopy = recommendations;
  v16.receiver = self;
  v16.super_class = CHSIntentRecommendationsContainer;
  v9 = [(CHSIntentRecommendationsContainer *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_schemaData, data);
    if ([recommendationsCopy count] >= 0x10)
    {
      v11 = CHSLogChronoServices();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(recommendationsCopy, "count")}];
        *buf = 138543362;
        v18 = v12;
        _os_log_impl(&dword_195EB2000, v11, OS_LOG_TYPE_DEFAULT, "A large number of intent recommendations detected %{public}@; filtering to a reasonable number.", buf, 0xCu);
      }

      v10->_didAdjustRecommendationCount = 1;
      v13 = [recommendationsCopy subarrayWithRange:{0, 15}];

      recommendationsCopy = v13;
    }

    objc_storeStrong(&v10->_recommendations, recommendationsCopy);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      recommendations = self->_recommendations;
      recommendations = [(CHSIntentRecommendationsContainer *)equalCopy recommendations];
      v7 = BSEqualObjects();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_recommendationsWithoutSchemaData
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_recommendations;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        _copyWithoutSchemaDataIfNecessary = [*(*(&v11 + 1) + 8 * i) _copyWithoutSchemaDataIfNecessary];
        [v3 addObject:_copyWithoutSchemaDataIfNecessary];
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_schemaData forKey:@"schema"];
  _recommendationsWithoutSchemaData = [(CHSIntentRecommendationsContainer *)self _recommendationsWithoutSchemaData];
  [coderCopy encodeObject:_recommendationsWithoutSchemaData forKey:@"recommendations"];
}

- (CHSIntentRecommendationsContainer)initWithCoder:(id)coder
{
  v23[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"schema"];
  v6 = MEMORY[0x1E695DFD8];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"recommendations"];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        intentReference = [*(*(&v18 + 1) + 8 * v13) intentReference];
        [intentReference _setPartialSchemaData:v5];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  if (v10)
  {
    self = [(CHSIntentRecommendationsContainer *)self _initWithSchemaData:v5 recommendations:v10];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_schemaData forKey:@"schema"];
  _recommendationsWithoutSchemaData = [(CHSIntentRecommendationsContainer *)self _recommendationsWithoutSchemaData];
  [coderCopy encodeCollection:_recommendationsWithoutSchemaData forKey:@"recommendations"];
}

- (CHSIntentRecommendationsContainer)initWithBSXPCCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"schema"];
  v6 = objc_opt_class();
  [coderCopy decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"recommendations"];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v7 = v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        intentReference = [*(*(&v15 + 1) + 8 * v10) intentReference];
        [intentReference _setPartialSchemaData:v5];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if (v7)
  {
    self = [(CHSIntentRecommendationsContainer *)self _initWithSchemaData:v5 recommendations:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end