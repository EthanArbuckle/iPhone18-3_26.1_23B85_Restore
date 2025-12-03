@interface MTCallerSuppliedFields
- (MTCallerSuppliedFields)initWithEventData:(id)data;
- (MTCallerSuppliedFields)initWithPageId:(id)id pageType:(id)type pageContext:(id)context eventData:(id)data;
- (id)mergedFields;
- (id)valueForCallerSuppliedField:(id)field;
@end

@implementation MTCallerSuppliedFields

- (MTCallerSuppliedFields)initWithEventData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = MTCallerSuppliedFields;
  v5 = [(MTCallerSuppliedFields *)&v8 init];
  if (v5)
  {
    [dataCopy mt_verifyEventData];
    mt_deepCopy = [dataCopy mt_deepCopy];
    [(MTCallerSuppliedFields *)v5 setEventData:mt_deepCopy];
  }

  return v5;
}

- (MTCallerSuppliedFields)initWithPageId:(id)id pageType:(id)type pageContext:(id)context eventData:(id)data
{
  v21[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  typeCopy = type;
  contextCopy = context;
  dataCopy = data;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15 = dictionary;
  if (idCopy)
  {
    [dictionary setObject:idCopy forKeyedSubscript:@"pageId"];
  }

  if (typeCopy)
  {
    [v15 setObject:typeCopy forKeyedSubscript:@"pageType"];
  }

  if (contextCopy)
  {
    [v15 setObject:contextCopy forKeyedSubscript:@"pageContext"];
  }

  if ([v15 count])
  {
    v21[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    if ([dataCopy count])
    {
      v17 = [v16 arrayByAddingObjectsFromArray:dataCopy];

      v16 = v17;
    }
  }

  else
  {
    v16 = dataCopy;
  }

  v18 = [(MTCallerSuppliedFields *)self initWithEventData:v16];

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)valueForCallerSuppliedField:(id)field
{
  fieldCopy = field;
  eventData = [(MTCallerSuppliedFields *)self eventData];
  v6 = [eventData count];

  if (v6 - 1 < 0)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  while (1)
  {
    --v6;
    eventData2 = [(MTCallerSuppliedFields *)self eventData];
    v8 = [eventData2 objectAtIndexedSubscript:v6];

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

  v9 = [v8 objectForKeyedSubscript:fieldCopy];
  if (!v9 || ([MEMORY[0x277CBEB68] null], v10 = objc_claimAutoreleasedReturnValue(), v10, v9 == v10))
  {

    goto LABEL_6;
  }

LABEL_8:

  return v9;
}

- (id)mergedFields
{
  cachedMergedFields = [(MTCallerSuppliedFields *)self cachedMergedFields];

  if (cachedMergedFields)
  {
    cachedMergedFields2 = [(MTCallerSuppliedFields *)self cachedMergedFields];
    v5 = [MTPromise promiseWithResult:cachedMergedFields2];
  }

  else
  {
    eventData = [(MTCallerSuppliedFields *)self eventData];
    v7 = eventData;
    v8 = MEMORY[0x277CBEBF8];
    if (eventData)
    {
      v8 = eventData;
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