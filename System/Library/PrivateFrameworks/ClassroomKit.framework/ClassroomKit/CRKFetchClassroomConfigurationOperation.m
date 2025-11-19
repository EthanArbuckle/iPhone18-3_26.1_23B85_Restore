@interface CRKFetchClassroomConfigurationOperation
+ (id)defaultSourcesByTypeWithStudentDaemonProxy:(id)a3;
- (CRKFetchClassroomConfigurationOperation)initWithStudentDaemonProxy:(id)a3 sourcesByType:(id)a4;
- (void)cancel;
- (void)fetchConfiguration;
@end

@implementation CRKFetchClassroomConfigurationOperation

+ (id)defaultSourcesByTypeWithStudentDaemonProxy:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = &unk_285672880;
  v3 = a3;
  v4 = [CRKCurrentPlatformProfileConfigurationSource alloc];
  v5 = [(CRKCurrentPlatformProfileConfigurationSource *)v4 initWithStudentDaemonProxy:v3 callbackQueue:MEMORY[0x277D85CD0]];

  v9[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

- (CRKFetchClassroomConfigurationOperation)initWithStudentDaemonProxy:(id)a3 sourcesByType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = CRKFetchClassroomConfigurationOperation;
  v8 = [(CRKFetchClassroomConfigurationOperation *)&v16 init];
  if (v8)
  {
    v9 = v6;
    if (!v6)
    {
      v9 = objc_opt_new();
    }

    objc_storeStrong(&v8->mStudentDaemonProxy, v9);
    if (!v6)
    {
    }

    v10 = objc_opt_new();
    v11 = [v10 makeFeatureFlags];
    featureFlags = v8->_featureFlags;
    v8->_featureFlags = v11;

    v13 = [v7 copy];
    v14 = v13;
    if (!v13)
    {
      v14 = [objc_opt_class() defaultSourcesByTypeWithStudentDaemonProxy:v8->mStudentDaemonProxy];
    }

    objc_storeStrong(&v8->mSourcesByType, v14);
    if (!v13)
    {
    }
  }

  return v8;
}

- (void)cancel
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __49__CRKFetchClassroomConfigurationOperation_cancel__block_invoke;
  v2[3] = &unk_278DC10F0;
  v2[4] = self;
  [MEMORY[0x277CBEB88] cat_performBlockOnMainRunLoop:v2];
}

- (void)fetchConfiguration
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__1;
  v16[4] = __Block_byref_object_dispose__1;
  v17 = 0;
  v3 = objc_opt_new();
  v4 = dispatch_group_create();
  mSourcesByType = self->mSourcesByType;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__CRKFetchClassroomConfigurationOperation_fetchConfiguration__block_invoke;
  v12[3] = &unk_278DC2CB0;
  v6 = v4;
  v13 = v6;
  v15 = v16;
  v7 = v3;
  v14 = v7;
  [(NSDictionary *)mSourcesByType enumerateKeysAndObjectsUsingBlock:v12];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__CRKFetchClassroomConfigurationOperation_fetchConfiguration__block_invoke_4;
  v9[3] = &unk_278DC2CD8;
  v10 = v7;
  v11 = v16;
  v9[4] = self;
  v8 = v7;
  dispatch_group_notify(v6, MEMORY[0x277D85CD0], v9);

  _Block_object_dispose(v16, 8);
}

void __61__CRKFetchClassroomConfigurationOperation_fetchConfiguration__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  dispatch_group_enter(v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__CRKFetchClassroomConfigurationOperation_fetchConfiguration__block_invoke_2;
  v10[3] = &unk_278DC2C88;
  v8 = *(a1 + 40);
  v14 = *(a1 + 48);
  v11 = v8;
  v12 = v5;
  v13 = *(a1 + 32);
  v9 = v5;
  [v7 fetchConfiguration:v10];
}

void __61__CRKFetchClassroomConfigurationOperation_fetchConfiguration__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__CRKFetchClassroomConfigurationOperation_fetchConfiguration__block_invoke_3;
  v10[3] = &unk_278DC2C60;
  v7 = *(a1 + 56);
  v11 = v6;
  v16 = v7;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = v5;
  v15 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

void __61__CRKFetchClassroomConfigurationOperation_fetchConfiguration__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v2);
  }

  [*(a1 + 40) setObject:*(a1 + 56) forKeyedSubscript:*(a1 + 48)];
  v3 = *(a1 + 64);

  dispatch_group_leave(v3);
}

void __61__CRKFetchClassroomConfigurationOperation_fetchConfiguration__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = *(a1 + 32);

    [v2 endOperationWithError:?];
  }

  else
  {
    v3 = [*(a1 + 40) copy];
    [v1 endOperationWithResultObject:v3];
  }
}

@end