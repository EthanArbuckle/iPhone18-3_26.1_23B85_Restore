@interface DASSystemContext
@end

@implementation DASSystemContext

uint64_t __35___DASSystemContext_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

void __41___DASSystemContext_defaultPathEvaluator__block_invoke()
{
  if (!defaultPathEvaluator_defaultPathEvaluator)
  {
    defaultPathEvaluator_defaultPathEvaluator = [MEMORY[0x1E6977E50] sharedDefaultEvaluator];

    MEMORY[0x1EEE66BB8]();
  }
}

void __52___DASSystemContext_defaultInexpensivePathEvaluator__block_invoke()
{
  if (!defaultInexpensivePathEvaluator_defaultInexpensivePathEvaluator)
  {
    v2 = objc_alloc_init(MEMORY[0x1E6977E40]);
    [v2 setProhibitExpensivePaths:1];
    v0 = [objc_alloc(MEMORY[0x1E6977E50]) initWithEndpoint:0 parameters:v2];
    v1 = defaultInexpensivePathEvaluator_defaultInexpensivePathEvaluator;
    defaultInexpensivePathEvaluator_defaultInexpensivePathEvaluator = v0;
  }
}

BOOL __95___DASSystemContext_addNotificationHandlerForTaskName_withPriority_withParameters_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 56));
  v4 = objc_loadWeakRetained(&to);

  if (v4)
  {
    v5 = *(a1 + 48);
    v6 = objc_loadWeakRetained(&to);
    (*(v5 + 16))(v5, [v6 allowsDiscretionaryWorkForTask:*(a1 + 32) withPriority:*(a1 + 64) withParameters:*(a1 + 40)]);
  }

  objc_destroyWeak(&to);

  return v4 != 0;
}

@end