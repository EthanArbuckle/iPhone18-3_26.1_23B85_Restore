@interface HMCContextProvider
- (HMCContextProvider)initWithContext:(id)context;
- (id)futureInContext:(id)context;
- (void)performBlock:(id)block;
- (void)registerForChangesOfDatabaseModels:(id)models orWithModelIDs:(id)ds changeMask:(unint64_t)mask selector:(SEL)selector;
- (void)removeAllRegistrations;
- (void)unsafeSynchronousBlock:(id)block;
@end

@implementation HMCContextProvider

- (void)removeAllRegistrations
{
  redirections = [(HMCContextProvider *)self redirections];
  [redirections hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_238102];

  redirections2 = [(HMCContextProvider *)self redirections];
  [redirections2 removeAllObjects];
}

- (void)registerForChangesOfDatabaseModels:(id)models orWithModelIDs:(id)ds changeMask:(unint64_t)mask selector:(SEL)selector
{
  dsCopy = MEMORY[0x277CBEBF8];
  if (models)
  {
    modelsCopy = models;
  }

  else
  {
    modelsCopy = MEMORY[0x277CBEBF8];
  }

  if (ds)
  {
    dsCopy = ds;
  }

  v13 = dsCopy;
  v14 = modelsCopy;
  dsCopy2 = ds;
  modelsCopy2 = models;
  redirections = [(HMCContextProvider *)self redirections];
  context = [(HMCContextProvider *)self context];
  partition = [context partition];
  redirections2 = [partition redirections];
  v20 = [redirections2 addTarget:self selector:selector changeMask:mask forChangesOfObjectsWithModelType:v14 forChangesOfObjectsWithModelID:v13];

  [redirections addObject:v20];
}

- (id)futureInContext:(id)context
{
  contextCopy = context;
  context = [(HMCContextProvider *)self context];
  v6 = MEMORY[0x277D0F7C0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__HMCContextProvider_futureInContext___block_invoke;
  v11[3] = &unk_278683B08;
  v12 = context;
  v13 = contextCopy;
  v7 = context;
  v8 = contextCopy;
  v9 = [v6 inContext:v7 perform:v11];

  return v9;
}

- (void)unsafeSynchronousBlock:(id)block
{
  blockCopy = block;
  context = [(HMCContextProvider *)self context];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HMCContextProvider_unsafeSynchronousBlock___block_invoke;
  v8[3] = &unk_27868A7A0;
  v9 = context;
  v10 = blockCopy;
  v6 = blockCopy;
  v7 = context;
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

- (void)performBlock:(id)block
{
  blockCopy = block;
  context = [(HMCContextProvider *)self context];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__HMCContextProvider_performBlock___block_invoke;
  v8[3] = &unk_27868A7A0;
  v9 = context;
  v10 = blockCopy;
  v6 = context;
  v7 = blockCopy;
  [v6 performBlock:v8];
}

void __35__HMCContextProvider_performBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  v3 = [*(a1 + 32) managedObjectContext];
  [v3 reset];
}

- (HMCContextProvider)initWithContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = HMCContextProvider;
  v6 = [(HMCContextProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    array = [MEMORY[0x277CBEB18] array];
    redirections = v7->_redirections;
    v7->_redirections = array;
  }

  return v7;
}

@end