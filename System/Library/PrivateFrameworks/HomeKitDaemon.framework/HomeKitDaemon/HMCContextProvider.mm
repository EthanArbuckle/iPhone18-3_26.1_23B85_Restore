@interface HMCContextProvider
- (HMCContextProvider)initWithContext:(id)a3;
- (id)futureInContext:(id)a3;
- (void)performBlock:(id)a3;
- (void)registerForChangesOfDatabaseModels:(id)a3 orWithModelIDs:(id)a4 changeMask:(unint64_t)a5 selector:(SEL)a6;
- (void)removeAllRegistrations;
- (void)unsafeSynchronousBlock:(id)a3;
@end

@implementation HMCContextProvider

- (void)removeAllRegistrations
{
  v3 = [(HMCContextProvider *)self redirections];
  [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_238102];

  v4 = [(HMCContextProvider *)self redirections];
  [v4 removeAllObjects];
}

- (void)registerForChangesOfDatabaseModels:(id)a3 orWithModelIDs:(id)a4 changeMask:(unint64_t)a5 selector:(SEL)a6
{
  v11 = MEMORY[0x277CBEBF8];
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  if (a4)
  {
    v11 = a4;
  }

  v13 = v11;
  v14 = v12;
  v15 = a4;
  v21 = a3;
  v16 = [(HMCContextProvider *)self redirections];
  v17 = [(HMCContextProvider *)self context];
  v18 = [v17 partition];
  v19 = [v18 redirections];
  v20 = [v19 addTarget:self selector:a6 changeMask:a5 forChangesOfObjectsWithModelType:v14 forChangesOfObjectsWithModelID:v13];

  [v16 addObject:v20];
}

- (id)futureInContext:(id)a3
{
  v4 = a3;
  v5 = [(HMCContextProvider *)self context];
  v6 = MEMORY[0x277D0F7C0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__HMCContextProvider_futureInContext___block_invoke;
  v11[3] = &unk_278683B08;
  v12 = v5;
  v13 = v4;
  v7 = v5;
  v8 = v4;
  v9 = [v6 inContext:v7 perform:v11];

  return v9;
}

- (void)unsafeSynchronousBlock:(id)a3
{
  v4 = a3;
  v5 = [(HMCContextProvider *)self context];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HMCContextProvider_unsafeSynchronousBlock___block_invoke;
  v8[3] = &unk_27868A7A0;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  [v7 unsafeSynchronousBlock:v8];
}

uint64_t __45__HMCContextProvider_unsafeSynchronousBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  _HMFThreadLocalAsyncContextPush();
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  _HMFThreadLocalAsyncContextPop();
  return [*(a1 + 32) reset];
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  v5 = [(HMCContextProvider *)self context];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__HMCContextProvider_performBlock___block_invoke;
  v8[3] = &unk_27868A7A0;
  v9 = v5;
  v10 = v4;
  v6 = v5;
  v7 = v4;
  [v6 performBlock:v8];
}

void __35__HMCContextProvider_performBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  v3 = [*(a1 + 32) managedObjectContext];
  [v3 reset];
}

- (HMCContextProvider)initWithContext:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HMCContextProvider;
  v6 = [(HMCContextProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
    v8 = [MEMORY[0x277CBEB18] array];
    redirections = v7->_redirections;
    v7->_redirections = v8;
  }

  return v7;
}

@end