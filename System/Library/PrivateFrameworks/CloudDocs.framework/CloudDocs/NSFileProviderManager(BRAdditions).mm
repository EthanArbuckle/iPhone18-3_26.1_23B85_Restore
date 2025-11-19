@interface NSFileProviderManager(BRAdditions)
+ (id)_br_createNSFileProviderManagerForDataSeparated:()BRAdditions withDomainID:didMatchedDomain:;
+ (id)br_getDomainForCurrentPersonaWithError:()BRAdditions;
+ (id)br_getDomainForDataSeparated:()BRAdditions withIdentifier:withError:;
+ (id)br_getDomainForProvider:()BRAdditions withIdentifier:error:;
+ (id)br_getFPDomainsForProviderIdentifier:()BRAdditions withError:;
+ (id)br_getLegacyEnterpriseProviderManager;
+ (id)br_getProviderManagerForDataSeparated:()BRAdditions;
+ (id)br_sharedProviderManager;
+ (id)br_sharedProviderManagerWithDomainID:()BRAdditions;
- (id)br_getFPDomainForAccount:()BRAdditions withError:;
- (id)br_getFPDomainWithIdentifier:()BRAdditions withError:;
- (id)br_getFPDomainsWithError:()BRAdditions;
@end

@implementation NSFileProviderManager(BRAdditions)

+ (id)br_getDomainForCurrentPersonaWithError:()BRAdditions
{
  v4 = +[BRFileProviderHelper br_getProviderIDForCurrentPersona];
  if (v4)
  {
    v5 = +[BRFileProviderHelper br_getDomainIdentifierForCurrentPersona];
    v6 = [MEMORY[0x1E6967508] br_getDomainForProvider:v4 withIdentifier:v5 error:a3];
  }

  else if (a3)
  {
    v7 = brc_bread_crumbs("+[NSFileProviderManager(BRAdditions) br_getDomainForCurrentPersonaWithError:]", 30);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(NSFileProviderManager(BRAdditions) *)v7 br_getDomainForCurrentPersonaWithError:v8];
    }

    [MEMORY[0x1E696ABC0] br_errorWithDomain:@"BRInternalErrorDomain" code:15 description:@"unreachable: Could not compute providerID"];
    *a3 = v6 = 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)br_getDomainForDataSeparated:()BRAdditions withIdentifier:withError:
{
  v7 = a4;
  if (v7)
  {
    v8 = [BRFileProviderHelper br_getProviderIDForDataSeparated:a3];
    if (v8)
    {
      v9 = [MEMORY[0x1E6967508] br_getDomainForProvider:v8 withIdentifier:v7 error:a5];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)br_getDomainForProvider:()BRAdditions withIdentifier:error:
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [objc_alloc(MEMORY[0x1E6967508]) _initWithProviderIdentifier:v7];
    v25 = 0;
    v11 = [v10 br_getFPDomainWithIdentifier:v9 withError:&v25];
    v12 = v25;
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      v15 = brc_bread_crumbs("+[NSFileProviderManager(BRAdditions) br_getDomainForProvider:withIdentifier:error:]", 59);
      v16 = brc_default_log(0, 0);
      if (os_log_type_enabled(v16, 0x90u))
      {
        v24 = "(passed to caller)";
        *buf = 136315906;
        v27 = "+[NSFileProviderManager(BRAdditions) br_getDomainForProvider:withIdentifier:error:]";
        v28 = 2080;
        if (!a5)
        {
          v24 = "(ignored by caller)";
        }

        v29 = v24;
        v30 = 2112;
        v31 = v14;
        v32 = 2112;
        v33 = v15;
        _os_log_error_impl(&dword_1AE2A9000, v16, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }

      if (a5)
      {
        v17 = v14;
        *a5 = v14;
      }
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] brc_errorInvalidParameter:@"domainID or providerID" value:0];
    if (v10)
    {
      v18 = brc_bread_crumbs("+[NSFileProviderManager(BRAdditions) br_getDomainForProvider:withIdentifier:error:]", 52);
      v19 = brc_default_log(0, 0);
      if (os_log_type_enabled(v19, 0x90u))
      {
        v23 = "(passed to caller)";
        *buf = 136315906;
        v27 = "+[NSFileProviderManager(BRAdditions) br_getDomainForProvider:withIdentifier:error:]";
        v28 = 2080;
        if (!a5)
        {
          v23 = "(ignored by caller)";
        }

        v29 = v23;
        v30 = 2112;
        v31 = v10;
        v32 = 2112;
        v33 = v18;
        _os_log_error_impl(&dword_1AE2A9000, v19, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a5)
    {
      v20 = v10;
      v11 = 0;
      *a5 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)br_sharedProviderManager
{
  v0 = +[BRFileProviderHelper br_getDomainIdentifierForCurrentPersona];
  v1 = [MEMORY[0x1E6967508] br_sharedProviderManagerWithDomainID:v0];

  return v1;
}

+ (id)br_sharedProviderManagerWithDomainID:()BRAdditions
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (br_sharedProviderManagerWithDomainID__onceToken != -1)
  {
    +[NSFileProviderManager(BRAdditions) br_sharedProviderManagerWithDomainID:];
  }

  IsDataSeparated = BRCurrentPersonaIsDataSeparated();
  if (!v4)
  {
    v4 = +[BRFileProviderHelper br_getDomainIdentifierForCurrentPersona];
  }

  v6 = brc_bread_crumbs("+[NSFileProviderManager(BRAdditions) br_sharedProviderManagerWithDomainID:]", 84);
  v7 = brc_default_log(1, 0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[NSFileProviderManager(BRAdditions) br_sharedProviderManagerWithDomainID:];
  }

  v8 = br_sharedProviderManagerWithDomainID__sharedNSFileProviderManagers;
  objc_sync_enter(v8);
  v9 = [br_sharedProviderManagerWithDomainID__sharedNSFileProviderManagers objectForKeyedSubscript:v4];
  if (v9)
  {
    v10 = brc_bread_crumbs("+[NSFileProviderManager(BRAdditions) br_sharedProviderManagerWithDomainID:]", 100);
    v11 = brc_default_log(1, 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(NSFileProviderManager(BRAdditions) *)v10 br_sharedProviderManagerWithDomainID:v11];
    }
  }

  else
  {
    v20 = 0;
    v9 = [a1 _br_createNSFileProviderManagerForDataSeparated:IsDataSeparated withDomainID:v4 didMatchedDomain:&v20];
    v12 = brc_bread_crumbs("+[NSFileProviderManager(BRAdditions) br_sharedProviderManagerWithDomainID:]", 92);
    v13 = brc_default_log(1, 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = v9;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_1AE2A9000, v13, OS_LOG_TYPE_DEFAULT, "[NOTICE] Trying to cache file provider manager %@%@", buf, 0x16u);
    }

    if (v20 == 1)
    {
      v14 = brc_bread_crumbs("+[NSFileProviderManager(BRAdditions) br_sharedProviderManagerWithDomainID:]", 94);
      v15 = brc_default_log(1, 0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = v4;
        v23 = 2112;
        v24 = v14;
        _os_log_impl(&dword_1AE2A9000, v15, OS_LOG_TYPE_DEFAULT, "[NOTICE] Was able to match domain %@, caching shared file provider manager%@", buf, 0x16u);
      }

      [br_sharedProviderManagerWithDomainID__sharedNSFileProviderManagers setValue:v9 forKey:v4];
    }

    else
    {
      v16 = brc_bread_crumbs("+[NSFileProviderManager(BRAdditions) br_sharedProviderManagerWithDomainID:]", 97);
      v17 = brc_default_log(1, 0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = v4;
        v23 = 2112;
        v24 = v16;
        _os_log_impl(&dword_1AE2A9000, v17, OS_LOG_TYPE_DEFAULT, "[NOTICE] Domain %@ was not found. Not caching file provider manager%@", buf, 0x16u);
      }
    }
  }

  objc_sync_exit(v8);

  v18 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)br_getProviderManagerForDataSeparated:()BRAdditions
{
  if (a3)
  {
    [a1 br_getEnterpriseProviderManager];
  }

  else
  {
    [a1 br_getPrimaryProviderManager];
  }
  v3 = ;

  return v3;
}

+ (id)br_getLegacyEnterpriseProviderManager
{
  v0 = [objc_alloc(MEMORY[0x1E6967508]) _initWithProviderIdentifier:@"com.apple.CloudDocs.MobileDocumentsFileProviderManaged" domain:0];

  return v0;
}

+ (id)_br_createNSFileProviderManagerForDataSeparated:()BRAdditions withDomainID:didMatchedDomain:
{
  v14 = 0;
  v7 = [a1 br_getDomainForDataSeparated:a3 withIdentifier:a4 withError:&v14];
  v8 = v14;
  if (v8)
  {
    v9 = brc_bread_crumbs("+[NSFileProviderManager(BRAdditions) _br_createNSFileProviderManagerForDataSeparated:withDomainID:didMatchedDomain:]", 132);
    v10 = brc_default_log(0, 0);
    if (os_log_type_enabled(v10, 0x90u))
    {
      +[NSFileProviderManager(BRAdditions) _br_createNSFileProviderManagerForDataSeparated:withDomainID:didMatchedDomain:];
    }
  }

  if (a5)
  {
    *a5 = v7 != 0;
  }

  [v7 setReplicated:1];
  v11 = [BRFileProviderHelper br_getProviderIDForDataSeparated:a3];
  v12 = [objc_alloc(MEMORY[0x1E6967508]) _initWithProviderIdentifier:v11 domain:v7];

  return v12;
}

- (id)br_getFPDomainWithIdentifier:()BRAdditions withError:
{
  v6 = a3;
  v7 = [a1 br_getFPDomainsWithError:a4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__NSFileProviderManager_BRAdditions__br_getFPDomainWithIdentifier_withError___block_invoke;
  v11[3] = &unk_1E7A146F8;
  v12 = v6;
  v8 = v6;
  v9 = [v7 br_firstItemOf:v11];

  return v9;
}

- (id)br_getFPDomainForAccount:()BRAdditions withError:
{
  v6 = a3;
  v7 = [v6 br_dsid];
  v8 = [v6 identifier];

  v9 = [BRAccountDescriptor accountDescriptorForAccountID:v8 mustBeLoggedIn:0];
  v10 = [v9 domainIdentifier];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  v13 = v12;

  v14 = [a1 br_getFPDomainsWithError:a4];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __73__NSFileProviderManager_BRAdditions__br_getFPDomainForAccount_withError___block_invoke;
  v19[3] = &unk_1E7A14720;
  v20 = v7;
  v21 = v13;
  v15 = v13;
  v16 = v7;
  v17 = [v14 br_firstItemOf:v19];

  return v17;
}

- (id)br_getFPDomainsWithError:()BRAdditions
{
  v5 = objc_opt_class();
  v6 = [a1 providerIdentifier];
  v7 = [v5 br_getFPDomainsForProviderIdentifier:v6 withError:a3];

  return v7;
}

+ (id)br_getFPDomainsForProviderIdentifier:()BRAdditions withError:
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v22 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __85__NSFileProviderManager_BRAdditions__br_getFPDomainsForProviderIdentifier_withError___block_invoke;
  v19[3] = &unk_1E7A14770;
  v6 = v5;
  v20 = v6;
  v21 = &v23;
  [BRXPCClientUtils executeXPCWithMaxRetries:2 error:&v22 block:v19];
  v7 = v22;
  v8 = brc_bread_crumbs("+[NSFileProviderManager(BRAdditions) br_getFPDomainsForProviderIdentifier:withError:]", 200);
  v9 = brc_default_log(1, 0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v17 = v24[5];
    *buf = 138412802;
    v30 = v17;
    v31 = 2112;
    v32 = v6;
    v33 = 2112;
    v34 = v8;
    _os_log_debug_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Found the following domains: %@ from provider: %@%@", buf, 0x20u);
  }

  v10 = v7;
  if (v10)
  {
    v11 = brc_bread_crumbs("+[NSFileProviderManager(BRAdditions) br_getFPDomainsForProviderIdentifier:withError:]", 202);
    v12 = brc_default_log(0, 0);
    if (os_log_type_enabled(v12, 0x90u))
    {
      v18 = "(passed to caller)";
      *buf = 136315906;
      v30 = "+[NSFileProviderManager(BRAdditions) br_getFPDomainsForProviderIdentifier:withError:]";
      v31 = 2080;
      if (!a4)
      {
        v18 = "(ignored by caller)";
      }

      v32 = v18;
      v33 = 2112;
      v34 = v10;
      v35 = 2112;
      v36 = v11;
      _os_log_error_impl(&dword_1AE2A9000, v12, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (a4)
  {
    v13 = v10;
    *a4 = v10;
  }

  v14 = v24[5];
  _Block_object_dispose(&v23, 8);

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (void)br_getDomainForCurrentPersonaWithError:()BRAdditions .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Could not compute providerID%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)br_sharedProviderManagerWithDomainID:()BRAdditions .cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_1AE2A9000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] Getting shared provider manager for domain ID: %@%@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)br_sharedProviderManagerWithDomainID:()BRAdditions .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Returned cached shared provider manager%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_br_createNSFileProviderManagerForDataSeparated:()BRAdditions withDomainID:didMatchedDomain:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1AE2A9000, v0, v1, "[ERROR] Got an error when tried to retrieve domain: %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

@end