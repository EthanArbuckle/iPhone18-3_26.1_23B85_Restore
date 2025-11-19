@interface MTTreatment
+ (MTTreatment)treatmentWithConfigData:(id)a3;
- (MTTreatment)initWithConfigDictionary:(id)a3;
- (id)performTreatment:(id)a3;
@end

@implementation MTTreatment

+ (MTTreatment)treatmentWithConfigData:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if (treatmentWithConfigData__onceToken != -1)
    {
      +[MTTreatment treatmentWithConfigData:];
    }

    v5 = treatmentWithConfigData__treatmentCache;
    objc_sync_enter(v5);
    v6 = [treatmentWithConfigData__treatmentCache objectForKeyedSubscript:v4];
    if (!v6)
    {
      v6 = [[MTTreatment alloc] initWithConfigDictionary:v4];
      [treatmentWithConfigData__treatmentCache setObject:v6 forKeyedSubscript:v4];
    }

    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __39__MTTreatment_treatmentWithConfigData___block_invoke()
{
  treatmentWithConfigData__treatmentCache = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

- (MTTreatment)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MTTreatment;
  v5 = [(MTTreatment *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"filters"];
    v7 = [MTMetricsDataPredicate predicateWithConfigData:v6];
    [(MTTreatment *)v5 setPredicate:v7];

    v8 = [v4 objectForKeyedSubscript:@"eventActions"];
    v9 = [MTTreatmentAction treatmentActionWithField:0 configData:v8];
    [(MTTreatment *)v5 setEventAction:v9];

    v10 = [v4 objectForKeyedSubscript:@"fieldActions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v10, "count")}];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __40__MTTreatment_initWithConfigDictionary___block_invoke;
      v15[3] = &unk_2798CD0B8;
      v16 = v11;
      v12 = v11;
      [v10 enumerateKeysAndObjectsUsingBlock:v15];
      v13 = [v12 copy];
      [(MTTreatment *)v5 setFieldActions:v13];
    }
  }

  return v5;
}

void __40__MTTreatment_initWithConfigDictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [MTTreatmentAction treatmentActionWithField:v5 configData:a3];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (id)performTreatment:(id)a3
{
  v4 = a3;
  v5 = [[MTTreatmentContext alloc] initWithTreatment:self metrics:v4];
  v6 = [(MTTreatment *)self predicate];
  if (!v6 || (v7 = v6, -[MTTreatment predicate](self, "predicate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 evaluateWithMetricsData:v4], v8, v7, v9))
  {
    v10 = [(MTTreatment *)self eventAction];

    if (v10)
    {
      v11 = [(MTTreatment *)self eventAction];
      [v11 performActionWithContext:v5];
    }

    v12 = [(MTTreatment *)self fieldActions];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __32__MTTreatment_performTreatment___block_invoke;
    v22[3] = &unk_2798CDF90;
    v13 = v5;
    v23 = v13;
    [v12 enumerateKeysAndObjectsUsingBlock:v22];

    v14 = [(MTTreatment *)self fieldActions];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __32__MTTreatment_performTreatment___block_invoke_2;
    v20 = &unk_2798CDF90;
    v21 = v13;
    [v14 enumerateKeysAndObjectsUsingBlock:&v17];
  }

  v15 = [(MTTreatmentContext *)v5 metrics:v17];

  return v15;
}

void __32__MTTreatment_performTreatment___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = [v5 sourceField];

  if (v4)
  {
    [v5 performActionWithContext:*(a1 + 32)];
  }
}

void __32__MTTreatment_performTreatment___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = [v5 sourceField];

  if (!v4)
  {
    [v5 performActionWithContext:*(a1 + 32)];
  }
}

@end