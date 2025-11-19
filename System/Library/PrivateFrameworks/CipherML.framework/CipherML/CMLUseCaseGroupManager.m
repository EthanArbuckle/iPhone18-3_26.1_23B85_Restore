@interface CMLUseCaseGroupManager
+ (CMLUseCaseGroupManager)sharedManager;
- (BOOL)configureGroupWithName:(id)a3 useCaseGroup:(id)a4 error:(id *)a5;
- (id)listUseCaseGroupsWithError:(id *)a3;
@end

@implementation CMLUseCaseGroupManager

+ (CMLUseCaseGroupManager)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__CMLUseCaseGroupManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_sharedManager;

  return v2;
}

uint64_t __39__CMLUseCaseGroupManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedManager_sharedManager = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (id)listUseCaseGroupsWithError:(id *)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1;
  v29 = __Block_byref_object_dispose__1;
  v30 = 0;
  v23 = 0;
  v24 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v5 = +[CMLXPC createConnection];
  v6 = [CMLXPC syncProxyToConnection:v5 error:&v24];
  v7 = +[CMLLog client];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 138543362;
    v32 = v8;
    _os_log_impl(&dword_224E26000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__CMLUseCaseGroupManager_listUseCaseGroupsWithError___block_invoke;
  v17[3] = &unk_278541AE0;
  v17[4] = &v25;
  v17[5] = &v18;
  [v6 listUseCaseGroupsWithReply:v17];
  if (a3)
  {
    v9 = v24;
    if (!v24)
    {
      v9 = v19[5];
    }

    *a3 = v9;
  }

  v10 = +[CMLLog client];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    v12 = v26[5] != 0;
    v13 = v19[5];
    *buf = 138543874;
    v32 = v11;
    v33 = 1026;
    v34 = v12;
    v35 = 2114;
    v36 = v13;
    _os_log_impl(&dword_224E26000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Request complete data:%{public}d error:%{public}@", buf, 0x1Cu);
  }

  [v5 invalidate];
  v14 = v26[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v25, 8);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __53__CMLUseCaseGroupManager_listUseCaseGroupsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v6)
  {
    v7 = [CMLError errorWithCode:1300 underlyingError:v6 description:@"Unable to list use-case groups"];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (BOOL)configureGroupWithName:(id)a3 useCaseGroup:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v27 = 0;
  v28 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v10 = +[CMLXPC createConnection];
  v11 = [CMLXPC syncProxyToConnection:v10 error:&v28];
  v12 = +[CMLLog client];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    *buf = 138543362;
    v30 = v13;
    _os_log_impl(&dword_224E26000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __68__CMLUseCaseGroupManager_configureGroupWithName_useCaseGroup_error___block_invoke;
  v21[3] = &unk_278541B08;
  v21[4] = &v22;
  [v11 configureUseCaseGroupWithName:v8 useCaseGroup:v9 reply:v21];
  if (a5)
  {
    v14 = v28;
    if (!v28)
    {
      v14 = v23[5];
    }

    *a5 = v14;
  }

  v15 = +[CMLLog client];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(a2);
    v17 = v23[5];
    *buf = 138543618;
    v30 = v16;
    v31 = 2114;
    v32 = v17;
    _os_log_impl(&dword_224E26000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Request complete error:%{public}@", buf, 0x16u);
  }

  [v10 invalidate];
  v18 = v23[5] == 0;

  _Block_object_dispose(&v22, 8);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __68__CMLUseCaseGroupManager_configureGroupWithName_useCaseGroup_error___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [CMLError errorWithCode:1400 underlyingError:a2 description:@"Unable to configure use-case group"];
    v4 = *(*(v2 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

@end