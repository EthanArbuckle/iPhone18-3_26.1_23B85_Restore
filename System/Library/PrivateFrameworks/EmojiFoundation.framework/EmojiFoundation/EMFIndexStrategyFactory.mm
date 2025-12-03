@interface EMFIndexStrategyFactory
+ (id)defaultStrategyWithTermIndex:(id)index andDocumentIndex:(id)documentIndex;
+ (id)inferStrategyForIndex:(id)index;
@end

@implementation EMFIndexStrategyFactory

+ (id)inferStrategyForIndex:(id)index
{
  indexCopy = index;
  v4 = _strategyClassForIndex(indexCopy);
  if (!v4)
  {
    v10 = emf_logging_get_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [EMFIndexStrategyFactory inferStrategyForIndex:v10];
    }

    __assert_rtn("+[EMFIndexStrategyFactory inferStrategyForIndex:]", "EMFIndexStrategyFactory.m", 51, "strategyClass");
  }

  v5 = [v4 alloc];
  termIndex = [indexCopy termIndex];
  documentIndex = [indexCopy documentIndex];
  v8 = [v5 initWithTermIndex:termIndex andDocumentIndex:documentIndex];

  return v8;
}

+ (id)defaultStrategyWithTermIndex:(id)index andDocumentIndex:(id)documentIndex
{
  documentIndexCopy = documentIndex;
  indexCopy = index;
  v7 = [(EMFAbstractIndexStrategy *)[EMFIndexStrategyDefault alloc] initWithTermIndex:indexCopy andDocumentIndex:documentIndexCopy];

  return v7;
}

@end