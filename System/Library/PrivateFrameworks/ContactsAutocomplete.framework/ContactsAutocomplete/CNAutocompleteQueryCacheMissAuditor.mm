@interface CNAutocompleteQueryCacheMissAuditor
- (CNAutocompleteQueryCacheMissAuditor)init;
- (CNAutocompleteQueryCacheMissAuditor)initWithLogger:(id)a3;
- (id)description;
- (void)didReturnLiveResults:(id)a3;
@end

@implementation CNAutocompleteQueryCacheMissAuditor

- (CNAutocompleteQueryCacheMissAuditor)init
{
  v3 = objc_alloc_init(CNAutocompleteQueryCacheMissLogger);
  v4 = [(CNAutocompleteQueryCacheMissAuditor *)self initWithLogger:v3];

  return v4;
}

- (CNAutocompleteQueryCacheMissAuditor)initWithLogger:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNAutocompleteQueryCacheMissAuditor;
  v6 = [(CNAutocompleteQueryCacheMissAuditor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logger, a3);
    v8 = v7;
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  v4 = [(CNAutocompleteQueryCacheMissAuditor *)self cachedResults];
  v5 = [v3 appendName:@"cached" object:v4];

  v6 = [v3 build];

  return v6;
}

- (void)didReturnLiveResults:(id)a3
{
  v14 = a3;
  v4 = MEMORY[0x277CBEB98];
  if (self->_cachedResults)
  {
    v5 = [(CNAutocompleteQueryCacheMissAuditor *)self cachedResults];
    v6 = [v4 setWithArray:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  v7 = [MEMORY[0x277CBEB98] setWithArray:v14];
  v8 = [v7 mutableCopy];
  [v8 minusSet:v6];
  if ([v8 count])
  {
    v9 = [(CNAutocompleteQueryCacheMissAuditor *)self logger];
    v10 = [v8 allObjects];
    [v9 didReturnCacheFalseNegatives:v10];
  }

  v11 = [v6 mutableCopy];
  [v11 minusSet:v7];
  if ([v11 count])
  {
    v12 = [(CNAutocompleteQueryCacheMissAuditor *)self logger];
    v13 = [v11 allObjects];
    [v12 didReturnCacheFalsePositives:v13];
  }
}

@end