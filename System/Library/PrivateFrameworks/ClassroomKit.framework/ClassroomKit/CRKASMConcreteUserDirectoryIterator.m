@interface CRKASMConcreteUserDirectoryIterator
+ (id)iteratorWithRosterRequirements:(id)a3 queryGenerator:(id)a4;
- (CRKASMConcreteUserDirectoryIterator)initWithRequirements:(id)a3 query:(id)a4;
- (void)fetchNextUsersWithCompletion:(id)a3;
- (void)queryDidFinishExecutingWithResults:(id)a3 error:(id)a4;
- (void)serviceQueryQueue;
@end

@implementation CRKASMConcreteUserDirectoryIterator

- (CRKASMConcreteUserDirectoryIterator)initWithRequirements:(id)a3 query:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CRKASMConcreteUserDirectoryIterator;
  v9 = [(CRKASMConcreteUserDirectoryIterator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requirements, a3);
    objc_storeStrong(&v10->_query, a4);
    v11 = objc_opt_new();
    queryCompletionQueue = v10->_queryCompletionQueue;
    v10->_queryCompletionQueue = v11;
  }

  return v10;
}

+ (id)iteratorWithRosterRequirements:(id)a3 queryGenerator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7[2]();
  v9 = [[a1 alloc] initWithRequirements:v6 query:v8];
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

- (void)fetchNextUsersWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__CRKASMConcreteUserDirectoryIterator_fetchNextUsersWithCompletion___block_invoke;
  v6[3] = &unk_278DC10A0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKASMConcreteUserDirectoryIterator.m" lineNumber:72 description:{@"%@ must be called from the main thread", v4}];
}

- (void)queryDidFinishExecutingWithResults:(id)a3 error:(id)a4
{
  v7 = MEMORY[0x277CCACC8];
  v8 = a4;
  v9 = a3;
  if (([v7 isMainThread] & 1) == 0)
  {
    [CRKASMConcreteUserDirectoryIterator queryDidFinishExecutingWithResults:a2 error:self];
  }

  v10 = [(CRKASMConcreteUserDirectoryIterator *)self queryCompletionQueue];
  v11 = [v10 count];

  if (!v11)
  {
    [CRKASMConcreteUserDirectoryIterator queryDidFinishExecutingWithResults:a2 error:self];
  }

  v12 = [(CRKASMConcreteUserDirectoryIterator *)self queryCompletionQueue];
  v15 = [v12 objectAtIndex:0];

  v13 = [(CRKASMConcreteUserDirectoryIterator *)self queryCompletionQueue];
  [v13 removeObjectAtIndex:0];

  v14 = [v9 crk_mapUsingBlock:&__block_literal_global_46];

  v15[2](v15, v14, v8);
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