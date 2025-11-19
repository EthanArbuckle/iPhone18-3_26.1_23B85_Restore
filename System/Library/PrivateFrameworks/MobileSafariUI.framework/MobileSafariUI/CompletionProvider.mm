@interface CompletionProvider
- (CompletionProvider)init;
- (CompletionProviderDelegate)delegate;
- (id)completionsForQuery:(id)a3 isCFSearch:(BOOL)a4;
- (void)_pruneCachedCompletions;
- (void)clearCachedCompletions;
- (void)fail;
- (void)setCompletions:(id)a3 forString:(id)a4 isCFSearch:(BOOL)a5;
@end

@implementation CompletionProvider

- (CompletionProvider)init
{
  v9.receiver = self;
  v9.super_class = CompletionProvider;
  v2 = [(CompletionProvider *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    completionsByString = v2->_completionsByString;
    v2->_completionsByString = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    completedStringsInPruneOrder = v2->_completedStringsInPruneOrder;
    v2->_completedStringsInPruneOrder = v5;

    v7 = v2;
  }

  return v2;
}

- (id)completionsForQuery:(id)a3 isCFSearch:(BOOL)a4
{
  v4 = a4;
  v17[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 queryString];
  v8 = v7;
  if (v7)
  {
    if ([v7 length])
    {
      v9 = [(CompletionProvider *)self findCompletionsForKey:v8 isCFSearch:v4];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        self->_inCompletionsForString = 1;
        v16[0] = @"time";
        v13 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent()];
        v16[1] = @"query";
        v17[0] = v13;
        v17[1] = v8;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
        [Application postTestNotificationName:@"completionProviderDidStart" object:self userInfo:v14];

        [(CompletionProvider *)self setQueryToComplete:v6];
        self->_inCompletionsForString = 0;
        v11 = [(CompletionProvider *)self findCompletionsForKey:v8 isCFSearch:v4];
      }

      v12 = v11;
    }

    else
    {
      v12 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_pruneCachedCompletions
{
  v3 = [(CompletionProvider *)self maximumCachedCompletionCount];
  v4 = [(NSMutableDictionary *)self->_completionsByString count];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (v5)
  {
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NSMutableArray *)self->_completedStringsInPruneOrder objectAtIndex:i];
        [(NSMutableDictionary *)self->_completionsByString removeObjectForKey:v8];
      }
    }

    completedStringsInPruneOrder = self->_completedStringsInPruneOrder;

    [(NSMutableArray *)completedStringsInPruneOrder removeObjectsInRange:0, v6];
  }
}

- (void)clearCachedCompletions
{
  [(NSMutableDictionary *)self->_completionsByString removeAllObjects];
  completedStringsInPruneOrder = self->_completedStringsInPruneOrder;

  [(NSMutableArray *)completedStringsInPruneOrder removeAllObjects];
}

- (void)setCompletions:(id)a3 forString:(id)a4 isCFSearch:(BOOL)a5
{
  v5 = a5;
  v18[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v9 copy];
  if (!v5)
  {
    v17[0] = @"time";
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent()];
    v17[1] = @"query";
    v18[0] = v11;
    v18[1] = v9;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    [Application postTestNotificationName:@"completionProviderDidFinish" object:self userInfo:v12];
  }

  v13 = [(CompletionProvider *)self getKeyForQueryString:v10 isCFSearch:v5];
  v14 = [(NSMutableDictionary *)self->_completionsByString objectForKeyedSubscript:v13];

  if (v14)
  {
    [(NSMutableArray *)self->_completedStringsInPruneOrder removeObject:v13];
  }

  if (v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  [(NSMutableDictionary *)self->_completionsByString setObject:v15 forKeyedSubscript:v13];
  [(NSMutableArray *)self->_completedStringsInPruneOrder addObject:v13];
  [(CompletionProvider *)self _pruneCachedCompletions];
  if (!v5)
  {
    self->_failing = 0;
    if (!self->_inCompletionsForString)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained completionProvider:self didFinishCompletingString:v9];
    }
  }
}

- (void)fail
{
  if (!self->_failing)
  {
    self->_failing = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained completionProviderDidFail:self];
  }
}

- (CompletionProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end