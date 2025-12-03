@interface MTConfigAMSMetricsDelegate
- (MTConfigAMSMetricsDelegate)initWithAMSBag:(id)bag;
- (id)sources;
@end

@implementation MTConfigAMSMetricsDelegate

- (MTConfigAMSMetricsDelegate)initWithAMSBag:(id)bag
{
  bagCopy = bag;
  v8.receiver = self;
  v8.super_class = MTConfigAMSMetricsDelegate;
  v5 = [(MTConfigAMSMetricsDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MTConfigAMSMetricsDelegate *)v5 setBag:bagCopy];
    [MEMORY[0x277CEE400] registerBagKeySetForMetricsConfiguration:bagCopy];
  }

  return v6;
}

- (id)sources
{
  v2 = [(MTConfigAMSMetricsDelegate *)self bag];
  v3 = [v2 dictionaryForKey:@"metrics"];

  if (v3)
  {
    v10 = objc_opt_new();
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __37__MTConfigAMSMetricsDelegate_sources__block_invoke;
    v15[3] = &unk_2798CD9C8;
    v11 = v10;
    v16 = v11;
    [v3 valueWithCompletion:v15];
  }

  else
  {
    v12 = MTConfigurationError(103, @"AMSBag doesn't have metrics key in the registered keyset.", v4, v5, v6, v7, v8, v9, v14);
    v11 = [MTPromise promiseWithError:v12];
  }

  return v11;
}

void __37__MTConfigAMSMetricsDelegate_sources__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (a4)
  {
    [*(a1 + 32) finishWithError:a4];
  }

  else
  {
    v7 = [MTReflectUtil objectAsDictionary:v6];
    v8 = [v7 copy];

    v9 = *(a1 + 32);
    v12[0] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    [v9 finishWithResult:v10];

    v6 = v8;
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end