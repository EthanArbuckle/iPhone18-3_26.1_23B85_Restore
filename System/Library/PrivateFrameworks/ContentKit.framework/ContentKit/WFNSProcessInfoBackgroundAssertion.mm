@interface WFNSProcessInfoBackgroundAssertion
+ (id)backgroundAssertionWithName:(id)name expirationHandler:(id)handler;
- (WFNSProcessInfoBackgroundAssertion)initWithName:(id)name expirationHandler:(id)handler;
- (void)end;
@end

@implementation WFNSProcessInfoBackgroundAssertion

- (void)end
{
  semaphore = [(WFNSProcessInfoBackgroundAssertion *)self semaphore];
  dispatch_semaphore_signal(semaphore);
}

- (WFNSProcessInfoBackgroundAssertion)initWithName:(id)name expirationHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v24.receiver = self;
  v24.super_class = WFNSProcessInfoBackgroundAssertion;
  v8 = [(WFNSProcessInfoBackgroundAssertion *)&v24 init];
  if (v8)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__27927;
    v22 = __Block_byref_object_dispose__27928;
    v23 = dispatch_semaphore_create(0);
    objc_storeStrong(&v8->_semaphore, v19[5]);
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__1;
    v16[4] = __Block_byref_object_dispose__2;
    v17 = _Block_copy(handlerCopy);
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__WFNSProcessInfoBackgroundAssertion_initWithName_expirationHandler___block_invoke;
    v12[3] = &unk_27834A678;
    v14 = v16;
    v15 = &v18;
    v13 = nameCopy;
    [processInfo performExpiringActivityWithReason:v13 usingBlock:v12];

    v10 = v8;
    _Block_object_dispose(v16, 8);

    _Block_object_dispose(&v18, 8);
  }

  return v8;
}

void __69__WFNSProcessInfoBackgroundAssertion_initWithName_expirationHandler___block_invoke(void *a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1[5] + 8);
    v4 = *(v3 + 40);
    if (v4)
    {
      v4[2]();
      v3 = *(a1[5] + 8);
      v4 = *(v3 + 40);
    }

    *(v3 + 40) = 0;
  }

  else
  {
    dispatch_semaphore_wait(*(*(a1[6] + 8) + 40), 0xFFFFFFFFFFFFFFFFLL);
    v5 = *(a1[5] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;

    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    v9 = getWFBackgroundAssertionLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = a1[4];
      v11 = 136315394;
      v12 = "[WFNSProcessInfoBackgroundAssertion initWithName:expirationHandler:]_block_invoke";
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&dword_21E1BD000, v9, OS_LOG_TYPE_INFO, "%s Finished background assertion for %{public}@", &v11, 0x16u);
    }
  }
}

+ (id)backgroundAssertionWithName:(id)name expirationHandler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  v8 = [[self alloc] initWithName:nameCopy expirationHandler:handlerCopy];

  return v8;
}

@end