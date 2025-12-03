@interface PKSpendingInsightTrendCollection
- (BOOL)isEqual:(id)equal;
- (PKSpendingInsightTrendCollection)initWithCoder:(id)coder;
- (PKSpendingInsightTrendCollection)initWithFHFeatureInsights:(id)insights;
- (PKSpendingInsightTrendCollection)initWithOverallTrend:(id)trend categoryTrends:(id)trends;
- (id)description;
- (id)spendingTrendForMerchantCategory:(int64_t)category;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSpendingInsightTrendCollection

- (PKSpendingInsightTrendCollection)initWithFHFeatureInsights:(id)insights
{
  v37 = *MEMORY[0x1E69E9840];
  insightsCopy = insights;
  v35.receiver = self;
  v35.super_class = PKSpendingInsightTrendCollection;
  v5 = [(PKSpendingInsightTrendCollection *)&v35 init];
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = [insightsCopy pk_firstObjectPassingTest:&__block_literal_global_106];
  v7 = [[PKSpendingInsightTrend alloc] initWithFHFeatureInsight:v6];
  overallSpendingTrend = v5->_overallSpendingTrend;
  v5->_overallSpendingTrend = v7;

  averageAmount = [v6 averageAmount];
  pk_isZeroNumber = [averageAmount pk_isZeroNumber];

  if (pk_isZeroNumber)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF20]);
    categoryTrends = v5->_categoryTrends;
    v5->_categoryTrends = v11;
    goto LABEL_23;
  }

  v29 = v6;
  categoryTrends = objc_alloc_init(MEMORY[0x1E695DF90]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v30 = insightsCopy;
  v13 = insightsCopy;
  v14 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = v14;
  v16 = *v32;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v32 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v31 + 1) + 8 * i);
      type = [v18 type];
      v20 = getFHInsightTypeCategorySpend[0]();
      v21 = type;
      v22 = v20;
      v23 = v22;
      if (v21 == v22)
      {

LABEL_18:
        v21 = [[PKSpendingInsightTrend alloc] initWithFHFeatureInsight:v18];
        v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v18, "merchantCategory")}];
        [(NSDictionary *)categoryTrends setObject:v21 forKeyedSubscript:v23];
LABEL_19:

        continue;
      }

      if (v21)
      {
        v24 = v22 == 0;
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {

        goto LABEL_19;
      }

      v25 = [(PKSpendingInsightTrend *)v21 isEqualToString:v22];

      if (v25)
      {
        goto LABEL_18;
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
  }

  while (v15);
LABEL_22:

  v26 = [(NSDictionary *)categoryTrends copy];
  v27 = v5->_categoryTrends;
  v5->_categoryTrends = v26;

  insightsCopy = v30;
  v6 = v29;
LABEL_23:

LABEL_24:
  return v5;
}

uint64_t __62__PKSpendingInsightTrendCollection_initWithFHFeatureInsights___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = getFHInsightTypeOverallSpend[0]();
  v4 = v2;
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (v4 && v5)
    {
      v7 = [v4 isEqualToString:v5];
    }
  }

  return v7;
}

- (PKSpendingInsightTrendCollection)initWithOverallTrend:(id)trend categoryTrends:(id)trends
{
  v29 = *MEMORY[0x1E69E9840];
  trendCopy = trend;
  trendsCopy = trends;
  v27.receiver = self;
  v27.super_class = PKSpendingInsightTrendCollection;
  v9 = [(PKSpendingInsightTrendCollection *)&v27 init];
  v10 = v9;
  if (v9)
  {
    v22 = trendCopy;
    objc_storeStrong(&v9->_overallSpendingTrend, trend);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = trendsCopy;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v17, "category")}];
          [v11 setObject:v17 forKeyedSubscript:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v14);
    }

    v19 = [v11 copy];
    categoryTrends = v10->_categoryTrends;
    v10->_categoryTrends = v19;

    trendCopy = v22;
  }

  return v10;
}

- (id)spendingTrendForMerchantCategory:(int64_t)category
{
  categoryTrends = self->_categoryTrends;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:category];
  v5 = [(NSDictionary *)categoryTrends objectForKeyedSubscript:v4];

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"overallSpendingTrend: '%@'; ", self->_overallSpendingTrend];
  [v3 appendFormat:@"categoryTrends: '%@'; ", self->_categoryTrends];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKSpendingInsightTrendCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKSpendingInsightTrendCollection;
  v5 = [(PKSpendingInsightTrendCollection *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"overallSpendingTrend"];
    overallSpendingTrend = v5->_overallSpendingTrend;
    v5->_overallSpendingTrend = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"overallSpendingTrend"];
    categoryTrends = v5->_categoryTrends;
    v5->_categoryTrends = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  overallSpendingTrend = self->_overallSpendingTrend;
  coderCopy = coder;
  [coderCopy encodeObject:overallSpendingTrend forKey:@"overallSpendingTrend"];
  [coderCopy encodeObject:self->_categoryTrends forKey:@"categoryTrends"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  overallSpendingTrend = self->_overallSpendingTrend;
  v6 = equalCopy[2];
  if (!overallSpendingTrend || !v6)
  {
    if (overallSpendingTrend == v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (![(PKSpendingInsightTrend *)overallSpendingTrend isEqual:?])
  {
    goto LABEL_9;
  }

LABEL_5:
  categoryTrends = self->_categoryTrends;
  v8 = equalCopy[1];
  if (categoryTrends && v8)
  {
    v9 = [(NSDictionary *)categoryTrends isEqual:?];
  }

  else
  {
    v9 = categoryTrends == v8;
  }

LABEL_10:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_overallSpendingTrend];
  [v3 safelyAddObject:self->_categoryTrends];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

@end