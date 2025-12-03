@interface MGGroupsQueryOperation
- (MGGroupsQueryOperation)initWithAgent:(id)agent query:(id)query groups:(id)groups substitutionVariables:(id)variables;
- (void)main;
@end

@implementation MGGroupsQueryOperation

- (MGGroupsQueryOperation)initWithAgent:(id)agent query:(id)query groups:(id)groups substitutionVariables:(id)variables
{
  agentCopy = agent;
  queryCopy = query;
  groupsCopy = groups;
  variablesCopy = variables;
  v22.receiver = self;
  v22.super_class = MGGroupsQueryOperation;
  v15 = [(MGGroupsQueryOperation *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_agent, agent);
    objc_storeStrong(&v16->_query, query);
    v17 = [groupsCopy copy];
    groups = v16->_groups;
    v16->_groups = v17;

    v19 = [variablesCopy copy];
    variables = v16->_variables;
    v16->_variables = v19;
  }

  return v16;
}

- (void)main
{
  variables = [(MGGroupsQueryOperation *)self variables];
  v4 = [variables mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v7 = v6;

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v7 setObject:v8 forKey:@"RESULTS_LIST"];
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v7 setObject:v9 forKey:@"RESULTS_MAP"];
  query = [(MGGroupsQueryOperation *)self query];
  predicate = [query predicate];

  groups = [(MGGroupsQueryOperation *)self groups];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __30__MGGroupsQueryOperation_main__block_invoke;
  v18[3] = &unk_27989F2D8;
  v18[4] = self;
  v19 = predicate;
  v20 = v7;
  v13 = v8;
  v21 = v13;
  v22 = v9;
  v14 = v9;
  v15 = v7;
  v16 = predicate;
  [groups enumerateKeysAndObjectsUsingBlock:v18];

  if (([(MGGroupsQueryOperation *)self isCancelled]& 1) == 0)
  {
    agent = [(MGGroupsQueryOperation *)self agent];
    [agent _queryOperation:self didFindGroups:v13];
  }
}

void __30__MGGroupsQueryOperation_main__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) isCancelled];
  *a4 = v8;
  if ((v8 & 1) == 0 && [*(a1 + 40) evaluateWithObject:v7 substitutionVariables:*(a1 + 48)])
  {
    [*(a1 + 56) addObject:v7];
    [*(a1 + 64) setObject:v7 forKey:v9];
  }
}

@end