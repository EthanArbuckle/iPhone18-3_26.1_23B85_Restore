@interface CRKASMConcreteUserDirectoryIterator
+ (id)iteratorWithRosterRequirements:(id)requirements queryGenerator:(id)generator;
- (CRKASMConcreteUserDirectoryIterator)initWithRequirements:(id)requirements query:(id)query;
- (void)fetchNextUsersWithCompletion:(id)completion;
- (void)queryDidFinishExecutingWithResults:(id)results error:(id)error;
- (void)serviceQueryQueue;
@end

@implementation CRKASMConcreteUserDirectoryIterator

- (CRKASMConcreteUserDirectoryIterator)initWithRequirements:(id)requirements query:(id)query
{
  requirementsCopy = requirements;
  queryCopy = query;
  v14.receiver = self;
  v14.super_class = CRKASMConcreteUserDirectoryIterator;
  v9 = [(CRKASMConcreteUserDirectoryIterator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requirements, requirements);
    objc_storeStrong(&v10->_query, query);
    v11 = objc_opt_new();
    queryCompletionQueue = v10->_queryCompletionQueue;
    v10->_queryCompletionQueue = v11;
  }

  return v10;
}

+ (id)iteratorWithRosterRequirements:(id)requirements queryGenerator:(id)generator
{
  requirementsCopy = requirements;
  generatorCopy = generator;
  v8 = generatorCopy[2]();
  v9 = [[self alloc] initWithRequirements:requirementsCopy query:v8];
  objc_initWeak(&location, v9);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__CRKASMConcreteUserDirectoryIterator_iteratorWithRosterRequirements_queryGenerator___block_invoke;
  v11[3] = &unk_278DC2000;
  objc_copyWeak(&v12, &location);
  [v8 setCompletion:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v9;
}

void __85__CRKASMConcreteUserDirectoryIterator_iteratorWithRosterRequirements_queryGenerator___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__CRKASMConcreteUserDirectoryIterator_iteratorWithRosterRequirements_queryGenerator___block_invoke_2;
  block[3] = &unk_278DC1FD8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __85__CRKASMConcreteUserDirectoryIterator_iteratorWithRosterRequirements_queryGenerator___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained queryDidFinishExecutingWithResults:*(a1 + 32) error:*(a1 + 40)];
}

- (void)fetchNextUsersWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__CRKASMConcreteUserDirectoryIterator_fetchNextUsersWithCompletion___block_invoke;
  v6[3] = &unk_278DC10A0;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __68__CRKASMConcreteUserDirectoryIterator_fetchNextUsersWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queryCompletionQueue];
  v3 = MEMORY[0x245D3AAD0](*(a1 + 40));
  [v2 addObject:v3];

  v4 = *(a1 + 32);

  return [v4 serviceQueryQueue];
}

- (void)serviceQueryQueue
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(self);
  [currentHandler handleFailureInMethod:self object:a2 file:@"CRKASMConcreteUserDirectoryIterator.m" lineNumber:72 description:{@"%@ must be called from the main thread", v4}];
}

- (void)queryDidFinishExecutingWithResults:(id)results error:(id)error
{
  v7 = MEMORY[0x277CCACC8];
  errorCopy = error;
  resultsCopy = results;
  if (([v7 isMainThread] & 1) == 0)
  {
    [CRKASMConcreteUserDirectoryIterator queryDidFinishExecutingWithResults:a2 error:self];
  }

  queryCompletionQueue = [(CRKASMConcreteUserDirectoryIterator *)self queryCompletionQueue];
  v11 = [queryCompletionQueue count];

  if (!v11)
  {
    [CRKASMConcreteUserDirectoryIterator queryDidFinishExecutingWithResults:a2 error:self];
  }

  queryCompletionQueue2 = [(CRKASMConcreteUserDirectoryIterator *)self queryCompletionQueue];
  v15 = [queryCompletionQueue2 objectAtIndex:0];

  queryCompletionQueue3 = [(CRKASMConcreteUserDirectoryIterator *)self queryCompletionQueue];
  [queryCompletionQueue3 removeObjectAtIndex:0];

  v14 = [resultsCopy crk_mapUsingBlock:&__block_literal_global_46];

  v15[2](v15, v14, errorCopy);
  [(CRKASMConcreteUserDirectoryIterator *)self setExecuting:0];
  [(CRKASMConcreteUserDirectoryIterator *)self serviceQueryQueue];
}

CRKASMConcreteUser *__80__CRKASMConcreteUserDirectoryIterator_queryDidFinishExecutingWithResults_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CRKASMConcreteUser alloc] initWithBackingPerson:v2];

  return v3;
}

- (void)queryDidFinishExecutingWithResults:(const char *)a1 error:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKASMConcreteUserDirectoryIterator.m" lineNumber:83 description:{@"%@ must be called from the main thread", v4}];
}

- (void)queryDidFinishExecutingWithResults:(uint64_t)a1 error:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKASMConcreteUserDirectoryIterator.m" lineNumber:84 description:@"Should have at least one pending completion"];
}

@end