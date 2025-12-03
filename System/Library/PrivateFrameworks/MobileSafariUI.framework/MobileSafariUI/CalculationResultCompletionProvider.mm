@interface CalculationResultCompletionProvider
- (CalculationResultCompletionProvider)init;
- (void)setQueryToComplete:(id)complete;
@end

@implementation CalculationResultCompletionProvider

- (CalculationResultCompletionProvider)init
{
  v7.receiver = self;
  v7.super_class = CalculationResultCompletionProvider;
  v2 = [(CompletionProvider *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D49EA0]);
    calcuationResultProvider = v2->_calcuationResultProvider;
    v2->_calcuationResultProvider = v3;

    v5 = v2;
  }

  return v2;
}

- (void)setQueryToComplete:(id)complete
{
  completeCopy = complete;
  queryString = [completeCopy queryString];
  objc_initWeak(&location, self);
  calcuationResultProvider = self->_calcuationResultProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__CalculationResultCompletionProvider_setQueryToComplete___block_invoke;
  v9[3] = &unk_2781D8530;
  objc_copyWeak(&v12, &location);
  v7 = queryString;
  v10 = v7;
  v8 = completeCopy;
  v11 = v8;
  [(WBSCalculationResultProvider *)calcuationResultProvider evaluateQuery:v8 resultHandler:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __58__CalculationResultCompletionProvider_setQueryToComplete___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = [[CalculationResultCompletionItem alloc] initWithQuery:*(a1 + 40) calculationResult:v3];
      v8[0] = v6;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
      [v5 setCompletions:v7 forString:*(a1 + 32)];
    }

    else
    {
      [WeakRetained setCompletions:MEMORY[0x277CBEBF8] forString:*(a1 + 32)];
    }
  }
}

@end