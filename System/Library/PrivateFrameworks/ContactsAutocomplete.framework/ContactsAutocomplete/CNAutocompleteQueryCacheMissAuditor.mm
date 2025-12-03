@interface CNAutocompleteQueryCacheMissAuditor
- (CNAutocompleteQueryCacheMissAuditor)init;
- (CNAutocompleteQueryCacheMissAuditor)initWithLogger:(id)logger;
- (id)description;
- (void)didReturnLiveResults:(id)results;
@end

@implementation CNAutocompleteQueryCacheMissAuditor

- (CNAutocompleteQueryCacheMissAuditor)init
{
  v3 = objc_alloc_init(CNAutocompleteQueryCacheMissLogger);
  v4 = [(CNAutocompleteQueryCacheMissAuditor *)self initWithLogger:v3];

  return v4;
}

- (CNAutocompleteQueryCacheMissAuditor)initWithLogger:(id)logger
{
  loggerCopy = logger;
  v10.receiver = self;
  v10.super_class = CNAutocompleteQueryCacheMissAuditor;
  v6 = [(CNAutocompleteQueryCacheMissAuditor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logger, logger);
    v8 = v7;
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  cachedResults = [(CNAutocompleteQueryCacheMissAuditor *)self cachedResults];
  v5 = [v3 appendName:@"cached" object:cachedResults];

  build = [v3 build];

  return build;
}

- (void)didReturnLiveResults:(id)results
{
  resultsCopy = results;
  v4 = MEMORY[0x277CBEB98];
  if (self->_cachedResults)
  {
    cachedResults = [(CNAutocompleteQueryCacheMissAuditor *)self cachedResults];
    v6 = [v4 setWithArray:cachedResults];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  v7 = [MEMORY[0x277CBEB98] setWithArray:resultsCopy];
  v8 = [v7 mutableCopy];
  [v8 minusSet:v6];
  if ([v8 count])
  {
    logger = [(CNAutocompleteQueryCacheMissAuditor *)self logger];
    allObjects = [v8 allObjects];
    [logger didReturnCacheFalseNegatives:allObjects];
  }

  v11 = [v6 mutableCopy];
  [v11 minusSet:v7];
  if ([v11 count])
  {
    logger2 = [(CNAutocompleteQueryCacheMissAuditor *)self logger];
    allObjects2 = [v11 allObjects];
    [logger2 didReturnCacheFalsePositives:allObjects2];
  }
}

@end