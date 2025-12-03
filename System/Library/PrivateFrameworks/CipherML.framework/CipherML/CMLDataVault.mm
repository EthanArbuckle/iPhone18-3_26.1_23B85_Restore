@interface CMLDataVault
+ (id)cacheFileForUseCase:(id)case error:(id *)error;
+ (id)dataVaultDirectory:(id *)directory;
@end

@implementation CMLDataVault

+ (id)dataVaultDirectory:(id *)directory
{
  v22 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v5 = +[CMLXPC createConnection];
  v6 = [CMLXPC syncProxyToConnection:v5 error:&v19];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  v7 = +[CMLLog client];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 138543362;
    v21 = v8;
    _os_log_impl(&dword_224E26000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending request", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __35__CMLDataVault_dataVaultDirectory___block_invoke;
  v12[3] = &unk_278541BE0;
  v12[4] = &v13;
  v12[5] = a2;
  [v6 dataVaultDirectory:v12];
  if (directory)
  {
    *directory = v19;
  }

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __35__CMLDataVault_dataVaultDirectory___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[CMLLog client];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 40));
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_224E26000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete", &v9, 0xCu);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)cacheFileForUseCase:(id)case error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  v21 = 0;
  v7 = +[CMLXPC createConnection];
  v8 = [CMLXPC syncProxyToConnection:v7 error:&v21];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  v9 = +[CMLLog client];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138543362;
    v23 = v10;
    _os_log_impl(&dword_224E26000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending request", buf, 0xCu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__CMLDataVault_cacheFileForUseCase_error___block_invoke;
  v14[3] = &unk_278541BE0;
  v14[4] = &v15;
  v14[5] = a2;
  [v8 cacheFileForUseCase:caseCopy reply:v14];
  if (error)
  {
    *error = v21;
  }

  v11 = v16[5];
  _Block_object_dispose(&v15, 8);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __42__CMLDataVault_cacheFileForUseCase_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[CMLLog client];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 40));
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_224E26000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete", &v9, 0xCu);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x277D85DE8];
}

@end