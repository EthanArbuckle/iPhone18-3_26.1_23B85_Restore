@interface MTCallerSuppliedFields
- (MTCallerSuppliedFields)initWithEventData:(id)a3;
- (MTCallerSuppliedFields)initWithPageId:(id)a3 pageType:(id)a4 pageContext:(id)a5 eventData:(id)a6;
- (id)mergedFields;
- (id)valueForCallerSuppliedField:(id)a3;
@end

@implementation MTCallerSuppliedFields

- (MTCallerSuppliedFields)initWithEventData:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MTCallerSuppliedFields;
  v5 = [(MTCallerSuppliedFields *)&v8 init];
  if (v5)
  {
    [v4 mt_verifyEventData];
    v6 = [v4 mt_deepCopy];
    [(MTCallerSuppliedFields *)v5 setEventData:v6];
  }

  return v5;
}

- (MTCallerSuppliedFields)initWithPageId:(id)a3 pageType:(id)a4 pageContext:(id)a5 eventData:(id)a6
{
  v21[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x277CBEB38] dictionary];
  v15 = v14;
  if (v10)
  {
    [v14 setObject:v10 forKeyedSubscript:@"pageId"];
  }

  if (v11)
  {
    [v15 setObject:v11 forKeyedSubscript:@"pageType"];
  }

  if (v12)
  {
    [v15 setObject:v12 forKeyedSubscript:@"pageContext"];
  }

  if ([v15 count])
  {
    v21[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    if ([v13 count])
    {
      v17 = [v16 arrayByAddingObjectsFromArray:v13];

      v16 = v17;
    }
  }

  else
  {
    v16 = v13;
  }

  v18 = [(MTCallerSuppliedFields *)self initWithEventData:v16];

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)valueForCallerSuppliedField:(id)a3
{
  v4 = a3;
  v5 = [(MTCallerSuppliedFields *)self eventData];
  v6 = [v5 count];

  if (v6 - 1 < 0)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  while (1)
  {
    --v6;
    v7 = [(MTCallerSuppliedFields *)self eventData];
    v8 = [v7 objectAtIndexedSubscript:v6];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

LABEL_6:

    if (v6 <= 0)
    {
      goto LABEL_7;
    }
  }

  v9 = [v8 objectForKeyedSubscript:v4];
  if (!v9 || ([MEMORY[0x277CBEB68] null], v10 = objc_claimAutoreleasedReturnValue(), v10, v9 == v10))
  {

    goto LABEL_6;
  }

LABEL_8:

  return v9;
}

- (id)mergedFields
{
  v3 = [(MTCallerSuppliedFields *)self cachedMergedFields];

  if (v3)
  {
    v4 = [(MTCallerSuppliedFields *)self cachedMergedFields];
    v5 = [MTPromise promiseWithResult:v4];
  }

  else
  {
    v6 = [(MTCallerSuppliedFields *)self eventData];
    v7 = v6;
    v8 = MEMORY[0x277CBEBF8];
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    v10 = [MTPromise promiseWithComposition:v9];
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __38__MTCallerSuppliedFields_mergedFields__block_invoke;
    v12[3] = &unk_2798CDEB8;
    objc_copyWeak(&v13, &location);
    v5 = [v10 thenWithBlock:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v5;
}

id __38__MTCallerSuppliedFields_mergedFields__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MTReflectUtil mergeAndCleanDictionaries:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCachedMergedFields:v3];

  v5 = [MTPromise promiseWithResult:v3];

  return v5;
}

@end