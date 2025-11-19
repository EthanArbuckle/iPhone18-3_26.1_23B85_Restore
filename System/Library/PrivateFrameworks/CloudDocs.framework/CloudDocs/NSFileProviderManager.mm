@interface NSFileProviderManager
@end

@implementation NSFileProviderManager

uint64_t __75__NSFileProviderManager_BRAdditions__br_sharedProviderManagerWithDomainID___block_invoke()
{
  br_sharedProviderManagerWithDomainID__sharedNSFileProviderManagers = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __77__NSFileProviderManager_BRAdditions__br_getFPDomainWithIdentifier_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __73__NSFileProviderManager_BRAdditions__br_getFPDomainForAccount_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"dsid"];
  if ([v5 isEqualToString:*(a1 + 32)])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 identifier];
    v6 = [v7 containsString:*(a1 + 40)];
  }

  return v6;
}

BOOL __85__NSFileProviderManager_BRAdditions__br_getFPDomainsForProviderIdentifier_withError___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v4 = [MEMORY[0x1E69672F8] synchronousSharedConnectionProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__NSFileProviderManager_BRAdditions__br_getFPDomainsForProviderIdentifier_withError___block_invoke_2;
  v14[3] = &unk_1E7A14748;
  v5 = *(a1 + 32);
  v14[4] = *(a1 + 40);
  v14[5] = &v15;
  [v4 getDomainsForProviderIdentifier:v5 completionHandler:v14];

  v6 = v16[5];
  if (v6)
  {
    v7 = brc_bread_crumbs("+[NSFileProviderManager(BRAdditions) br_getFPDomainsForProviderIdentifier:withError:]_block_invoke", 196);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, 0x90u))
    {
      v13 = "(passed to caller)";
      *buf = 136315906;
      v22 = "+[NSFileProviderManager(BRAdditions) br_getFPDomainsForProviderIdentifier:withError:]_block_invoke";
      v23 = 2080;
      if (!a2)
      {
        v13 = "(ignored by caller)";
      }

      v24 = v13;
      v25 = 2112;
      v26 = v6;
      v27 = 2112;
      v28 = v7;
      _os_log_error_impl(&dword_1AE2A9000, v8, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (a2)
  {
    v9 = v6;
    *a2 = v6;
  }

  v10 = v16[5] == 0;
  _Block_object_dispose(&v15, 8);

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void __85__NSFileProviderManager_BRAdditions__br_getFPDomainsForProviderIdentifier_withError___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v9)
  {
    v15 = (*(*(a1 + 32) + 8) + 40);
    v16 = a3;
LABEL_10:
    objc_storeStrong(v15, v16);
    goto LABEL_11;
  }

  if (![v9 fp_isFileProviderError:-2001])
  {
    v17 = brc_bread_crumbs("+[NSFileProviderManager(BRAdditions) br_getFPDomainsForProviderIdentifier:withError:]_block_invoke", 189);
    v18 = brc_default_log(0, 0);
    if (os_log_type_enabled(v18, 0x90u))
    {
      __85__NSFileProviderManager_BRAdditions__br_getFPDomainsForProviderIdentifier_withError___block_invoke_2_cold_1();
    }

    v15 = (*(*(a1 + 40) + 8) + 40);
    v16 = a4;
    goto LABEL_10;
  }

  v11 = brc_bread_crumbs("+[NSFileProviderManager(BRAdditions) br_getFPDomainsForProviderIdentifier:withError:]_block_invoke_2", 186);
  v12 = brc_default_log(1, 0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __85__NSFileProviderManager_BRAdditions__br_getFPDomainsForProviderIdentifier_withError___block_invoke_2_cold_2(v11, v12);
  }

  v13 = *(*(a1 + 32) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = MEMORY[0x1E695E0F0];

LABEL_11:
}

void __85__NSFileProviderManager_BRAdditions__br_getFPDomainsForProviderIdentifier_withError___block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1AE2A9000, v0, v1, "[ERROR] couldn't get existing domains: %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

void __85__NSFileProviderManager_BRAdditions__br_getFPDomainsForProviderIdentifier_withError___block_invoke_2_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] existing domains failed with provider not found%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end