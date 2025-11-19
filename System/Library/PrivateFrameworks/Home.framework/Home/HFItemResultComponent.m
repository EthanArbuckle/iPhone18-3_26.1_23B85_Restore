@interface HFItemResultComponent
+ (id)combinedResultsForComponents:(id)a3;
- (NSDictionary)results;
@end

@implementation HFItemResultComponent

- (NSDictionary)results
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFItemResultComponent.m" lineNumber:15 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFItemResultComponent results]", objc_opt_class()}];

  return MEMORY[0x277CBEC10];
}

+ (id)combinedResultsForComponents:(id)a3
{
  v3 = [a3 sortedArrayUsingComparator:&__block_literal_global_91];
  v4 = [v3 firstObject];
  v5 = [v4 results];

  return v5;
}

uint64_t __54__HFItemResultComponent_combinedResultsForComponents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  v6 = [v4 numberWithInteger:{objc_msgSend(a3, "componentPriority")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 componentPriority];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

@end