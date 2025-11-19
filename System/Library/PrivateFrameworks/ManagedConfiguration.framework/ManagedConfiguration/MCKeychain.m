@interface MCKeychain
+ (BOOL)itemExistsInKeychain:(void *)a3 useSystemKeychain:(BOOL)a4 enforcePersonalPersona:(BOOL)a5;
+ (BOOL)setData:(id)a3 forService:(id)a4 account:(id)a5 label:(id)a6 description:(id)a7 access:(void *)a8 group:(id)a9 useSystemKeychain:(BOOL)a10 sysBound:(BOOL)a11 enforcePersonalPersona:(BOOL)a12 outError:(id *)a13;
+ (BOOL)setData:(id)a3 forService:(id)a4 account:(id)a5 label:(id)a6 description:(id)a7 access:(void *)a8 group:(id)a9 useSystemKeychain:(BOOL)a10 sysBound:(BOOL)a11 outError:(id *)a12;
+ (BOOL)setString:(id)a3 forService:(id)a4 account:(id)a5 label:(id)a6 description:(id)a7 access:(void *)a8 group:(id)a9 useSystemKeychain:(BOOL)a10 sysBound:(BOOL)a11 outError:(id *)a12;
+ (__CFDictionary)_newQueryWithService:(id)a3 account:(id)a4 label:(id)a5 description:(id)a6 group:(id)a7 useSystemKeychain:(BOOL)a8 outError:(id *)a9;
+ (id)canonicalPersistentReferenceForItemWithPersistentReference:(id)a3 inSystemKeychain:(BOOL)a4;
+ (id)saveItem:(void *)a3 withLabel:(id)a4 group:(id)a5 useSystemKeychain:(BOOL)a6 enforcePersonalPersona:(BOOL)a7 accessibility:(__CFString *)a8;
+ (void)copyItemWithPersistentID:(id)a3 useSystemKeychain:(BOOL)a4 enforcePersonalPersona:(BOOL)a5;
+ (void)removeItemWithPersistentID:(id)a3 useSystemKeychain:(BOOL)a4 enforcePersonalPersona:(BOOL)a5;
@end

@implementation MCKeychain

+ (__CFDictionary)_newQueryWithService:(id)a3 account:(id)a4 label:(id)a5 description:(id)a6 group:(id)a7 useSystemKeychain:(BOOL)a8 outError:(id *)a9
{
  v9 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if ([v14 length])
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], v14);
    if ([v15 length])
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], v15);
    }

    if ([v16 length])
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ADC8], v16);
    }

    if ([v17 length])
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ACE0], v17);
    }

    if ([v18 length])
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD0], v18);
    }

    if (v9)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B3A8], MEMORY[0x1E695E118]);
    }
  }

  else
  {
    if (a9)
    {
      v27 = MEMORY[0x1E696ABC0];
      v28 = MCErrorArray(@"KEYCHAIN_ERROR_CANNOT_CREATE_QUERY", v19, v20, v21, v22, v23, v24, v25, 0);
      *a9 = [v27 MCErrorWithDomain:@"MCKeychainErrorDomain" code:6002 descriptionArray:v28 errorType:@"MCFatalError"];
    }

    Mutable = 0;
  }

  return Mutable;
}

+ (BOOL)setString:(id)a3 forService:(id)a4 account:(id)a5 label:(id)a6 description:(id)a7 access:(void *)a8 group:(id)a9 useSystemKeychain:(BOOL)a10 sysBound:(BOOL)a11 outError:(id *)a12
{
  v17 = a9;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = [a3 dataUsingEncoding:4];
  LOWORD(v25) = __PAIR16__(a11, a10);
  v23 = [MCKeychain setData:v22 forService:v21 account:v20 label:v19 description:v18 access:a8 group:v17 useSystemKeychain:v25 sysBound:a12 outError:?];

  return v23;
}

+ (BOOL)setData:(id)a3 forService:(id)a4 account:(id)a5 label:(id)a6 description:(id)a7 access:(void *)a8 group:(id)a9 useSystemKeychain:(BOOL)a10 sysBound:(BOOL)a11 outError:(id *)a12
{
  v17 = MEMORY[0x1E69AD428];
  v18 = a9;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [v17 sharedConfiguration];
  v25 = [v24 personaID];
  BYTE2(v28) = v25 != 0;
  LOWORD(v28) = __PAIR16__(a11, a10);
  v26 = [MCKeychain setData:"setData:forService:account:label:description:access:group:useSystemKeychain:sysBound:enforcePersonalPersona:outError:" forService:v23 account:v22 label:v21 description:v20 access:v19 group:a8 useSystemKeychain:v18 sysBound:v28 enforcePersonalPersona:a12 outError:?];

  return v26;
}

+ (BOOL)setData:(id)a3 forService:(id)a4 account:(id)a5 label:(id)a6 description:(id)a7 access:(void *)a8 group:(id)a9 useSystemKeychain:(BOOL)a10 sysBound:(BOOL)a11 enforcePersonalPersona:(BOOL)a12 outError:(id *)a13
{
  v74 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a9;
  v59 = v19;
  if ([v18 length])
  {
    v66 = 0;
    v31 = [MCKeychain _newQueryWithService:v19 account:v20 label:v21 description:v22 group:v23 useSystemKeychain:a10 outError:&v66];
    v32 = v66;
    if (v32)
    {
      v33 = v32;
      if (v31)
      {
        CFRelease(v31);
      }

      goto LABEL_17;
    }

    LOBYTE(v58) = a12;
    v36 = [MCKeychain dataFromService:v19 account:v20 label:v21 description:v22 group:v23 useSystemKeychain:a10 enforcePersonalPersona:v58 outError:0];
    *&v71 = 0;
    *(&v71 + 1) = &v71;
    v72 = 0x2020000000;
    v73 = 0;
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __131__MCKeychain_setData_forService_account_label_description_access_group_useSystemKeychain_sysBound_enforcePersonalPersona_outError___block_invoke;
    v60[3] = &unk_1E77CFEF8;
    v37 = v36;
    v61 = v37;
    v62 = v18;
    v63 = &v71;
    v64 = a8;
    v65 = v31;
    v38 = MEMORY[0x1AC55F990](v60);
    v39 = v38;
    if (a12)
    {
      v33 = [MEMORY[0x1E6999808] performBlockUnderPersonalPersona:v38];
    }

    else
    {
      (*(v38 + 16))(v38);
      v33 = 0;
    }

    CFRelease(v31);
    if (v33)
    {
      v40 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v68 = "+[MCKeychain setData:forService:account:label:description:access:group:useSystemKeychain:sysBound:enforcePersonalPersona:outError:]";
        v69 = 2112;
        v70 = v33;
        _os_log_impl(&dword_1A795B000, v40, OS_LOG_TYPE_ERROR, "%s: Failed to execute the block under personal persona. Error: %@", buf, 0x16u);
      }
    }

    else if (*(*(&v71 + 1) + 24))
    {
      v41 = MEMORY[0x1E696ABC0];
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", *(*(&v71 + 1) + 24)];
      v50 = MCErrorArray(@"KEYCHAIN_ERROR_CODE_P_CODE", v43, v44, v45, v46, v47, v48, v49, v42);
      v33 = [v41 MCErrorWithDomain:@"MCKeychainErrorDomain" code:6000 descriptionArray:v50 errorType:@"MCFatalError"];
    }

    else
    {
      v33 = 0;
    }

    _Block_object_dispose(&v71, 8);
  }

  else
  {
    v34 = MEMORY[0x1E696ABC0];
    v35 = MCErrorArray(@"KEYCHAIN_ERROR_EMPTY_DATA", v24, v25, v26, v27, v28, v29, v30, 0);
    v33 = [v34 MCErrorWithDomain:@"MCKeychainErrorDomain" code:6001 descriptionArray:v35 errorType:@"MCFatalError"];
  }

  if (!v33)
  {
    v55 = 1;
    goto LABEL_23;
  }

LABEL_17:
  if (a13)
  {
    v51 = v33;
    *a13 = v33;
  }

  v52 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    v53 = v52;
    v54 = [v33 MCVerboseDescription];
    LODWORD(v71) = 138543362;
    *(&v71 + 4) = v54;
    _os_log_impl(&dword_1A795B000, v53, OS_LOG_TYPE_ERROR, "Failed to set data in keychain. Error: %{public}@", &v71, 0xCu);
  }

  v55 = 0;
LABEL_23:

  v56 = *MEMORY[0x1E69E9840];
  return v55;
}

void __131__MCKeychain_setData_forService_account_label_description_access_group_useSystemKeychain_sysBound_enforcePersonalPersona_outError___block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    if (([v2 isEqualToData:*(a1 + 40)] & 1) == 0)
    {
      v3 = *(a1 + 40);
      v4 = *MEMORY[0x1E697ABD8];
      v8[0] = *MEMORY[0x1E697B3C0];
      v8[1] = v4;
      v5 = *(a1 + 56);
      v9[0] = v3;
      v9[1] = v5;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
      *(*(*(a1 + 48) + 8) + 24) = SecItemUpdate(*(a1 + 64), v6);
    }
  }

  else
  {
    CFDictionaryAddValue(*(a1 + 64), *MEMORY[0x1E697B3C0], *(a1 + 40));
    CFDictionaryAddValue(*(a1 + 64), *MEMORY[0x1E697ABD8], *(a1 + 56));
    CFDictionaryAddValue(*(a1 + 64), *MEMORY[0x1E697AEC0], MEMORY[0x1E695E118]);
    *(*(*(a1 + 48) + 8) + 24) = SecItemAdd(*(a1 + 64), 0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __112__MCKeychain_dataFromService_account_label_description_group_useSystemKeychain_enforcePersonalPersona_outError___block_invoke(uint64_t a1)
{
  result = SecItemCopyMatching(*(a1 + 48), (*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (void)copyItemWithPersistentID:(id)a3 useSystemKeychain:(BOOL)a4 enforcePersonalPersona:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v37[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = *MEMORY[0x1E697B328];
  v36[0] = *MEMORY[0x1E697B3C8];
  v36[1] = v8;
  v37[0] = v7;
  v37[1] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
  v10 = [v9 mutableCopy];

  if (v6)
  {
    [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if (!v5)
  {
    v14 = SecItemCopyMatching(v10, &v31);
    *(v25 + 6) = v14;
    goto LABEL_10;
  }

  v11 = MEMORY[0x1E6999808];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__MCKeychain_copyItemWithPersistentID_useSystemKeychain_enforcePersonalPersona___block_invoke;
  v20[3] = &unk_1E77CFF68;
  v22 = &v24;
  v21 = v10;
  v23 = &v28;
  v12 = [v11 performBlockUnderPersonalPersona:v20];

  if (!v12)
  {
    v14 = *(v25 + 6);
LABEL_10:
    if (v14 == -25300)
    {
      v17 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543618;
        v33 = v7;
        v34 = 1024;
        LODWORD(v35) = v6;
        _os_log_impl(&dword_1A795B000, v17, OS_LOG_TYPE_DEBUG, "Couldn't get item with ID: %{public}@ system keychain: %d", buf, 0x12u);
      }
    }

    else if (v14)
    {
      v15 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v33 = v7;
        _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_ERROR, "Cannot retrieve item with persistent ID %{public}@", buf, 0xCu);
      }

      goto LABEL_14;
    }

    v16 = v29[3];
    goto LABEL_18;
  }

  v13 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v33 = "+[MCKeychain copyItemWithPersistentID:useSystemKeychain:enforcePersonalPersona:]";
    v34 = 2112;
    v35 = v12;
    _os_log_impl(&dword_1A795B000, v13, OS_LOG_TYPE_ERROR, "%s: Failed to execute the block under personal persona. Error: %@", buf, 0x16u);
  }

LABEL_14:
  v16 = 0;
LABEL_18:
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __80__MCKeychain_copyItemWithPersistentID_useSystemKeychain_enforcePersonalPersona___block_invoke(uint64_t a1)
{
  result = SecItemCopyMatching(*(a1 + 32), (*(*(a1 + 48) + 8) + 24));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (id)saveItem:(void *)a3 withLabel:(id)a4 group:(id)a5 useSystemKeychain:(BOOL)a6 enforcePersonalPersona:(BOOL)a7 accessibility:(__CFString *)a8
{
  v9 = a7;
  v10 = a6;
  v52[4] = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v15 = *MEMORY[0x1E697ABD0];
  v51[0] = *MEMORY[0x1E697B3D0];
  v51[1] = v15;
  v52[0] = a3;
  v52[1] = v14;
  v16 = *MEMORY[0x1E697ABD8];
  v51[2] = *MEMORY[0x1E697B320];
  v51[3] = v16;
  v52[2] = MEMORY[0x1E695E118];
  v52[3] = a8;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:4];
  v18 = [v17 mutableCopy];

  if (v10)
  {
    [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  }

  if (v13)
  {
    [v18 setObject:v13 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy_;
  v41 = __Block_byref_object_dispose_;
  v42 = 0;
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __94__MCKeychain_saveItem_withLabel_group_useSystemKeychain_enforcePersonalPersona_accessibility___block_invoke;
  v32 = &unk_1E77CFFB8;
  v34 = &v43;
  v19 = v18;
  v35 = &v37;
  v36 = 0;
  v33 = v19;
  v20 = MEMORY[0x1AC55F990](&v29);
  v21 = v20;
  if (v9)
  {
    v22 = [MEMORY[0x1E6999808] performBlockUnderPersonalPersona:{v20, v29, v30, v31, v32}];
    if (v22)
    {
      v23 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v48 = "+[MCKeychain saveItem:withLabel:group:useSystemKeychain:enforcePersonalPersona:accessibility:]";
        v49 = 2112;
        v50 = v22;
        _os_log_impl(&dword_1A795B000, v23, OS_LOG_TYPE_ERROR, "%s: Failed to execute the block under personal persona. Error: %@", buf, 0x16u);
      }

LABEL_14:
      v26 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    (*(v20 + 16))(v20);
  }

  if (*(v44 + 6))
  {
    v24 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v25 = *(v44 + 6);
      *buf = 67109120;
      LODWORD(v48) = v25;
      _os_log_impl(&dword_1A795B000, v24, OS_LOG_TYPE_ERROR, "Could not store certificate in keychain. Error: %d", buf, 8u);
    }

    goto LABEL_14;
  }

  v26 = v38[5];
LABEL_16:

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

void __94__MCKeychain_saveItem_withLabel_group_useSystemKeychain_enforcePersonalPersona_accessibility___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = SecItemAdd(*(a1 + 32), (a1 + 56));
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = *(a1 + 56);

  if (*(*(*(a1 + 40) + 8) + 24) == -25299)
  {
    [*(a1 + 32) setObject:0 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
    [*(a1 + 32) setObject:0 forKeyedSubscript:*MEMORY[0x1E697ABD8]];
    *(*(*(a1 + 40) + 8) + 24) = SecItemCopyMatching(*(a1 + 32), (a1 + 56));
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = *(a1 + 56);

    if (*(*(*(a1 + 40) + 8) + 24) == -25300)
    {
      [*(a1 + 32) setObject:0 forKeyedSubscript:*MEMORY[0x1E697ABD0]];
      *(*(*(a1 + 40) + 8) + 24) = SecItemCopyMatching(*(a1 + 32), (a1 + 56));
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = *(a1 + 56);
    }
  }
}

+ (void)removeItemWithPersistentID:(id)a3 useSystemKeychain:(BOOL)a4 enforcePersonalPersona:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v38[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = *MEMORY[0x1E697B310];
  v37[0] = *MEMORY[0x1E697B3C8];
  v37[1] = v8;
  v38[0] = v7;
  v38[1] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v10 = [v9 mutableCopy];

  if (v6)
  {
    [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  }

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v32[3] = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __82__MCKeychain_removeItemWithPersistentID_useSystemKeychain_enforcePersonalPersona___block_invoke;
  v23 = &unk_1E77CFFE0;
  v11 = v10;
  v24 = v11;
  v26 = v32;
  v27 = &v28;
  v12 = v7;
  v25 = v12;
  v13 = MEMORY[0x1AC55F990](&v20);
  v14 = v13;
  if (v5)
  {
    v15 = [MEMORY[0x1E6999808] performBlockUnderPersonalPersona:{v13, v20, v21, v22, v23, v24}];
    if (v15)
    {
      v16 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v34 = "+[MCKeychain removeItemWithPersistentID:useSystemKeychain:enforcePersonalPersona:]";
        v35 = 2112;
        v36 = v15;
        _os_log_impl(&dword_1A795B000, v16, OS_LOG_TYPE_ERROR, "%s: Failed to execute the block under personal persona. Error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    (*(v13 + 16))(v13);
    v15 = 0;
  }

  v17 = *(v29 + 6);
  if (v17 != -25300)
  {
    if (v17)
    {
      v18 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v34 = v12;
        _os_log_impl(&dword_1A795B000, v18, OS_LOG_TYPE_ERROR, "Could not remove identity or certificate with persistent id %{public}@ - error ignored.", buf, 0xCu);
      }
    }
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(v32, 8);

  v19 = *MEMORY[0x1E69E9840];
}

void __82__MCKeychain_removeItemWithPersistentID_useSystemKeychain_enforcePersonalPersona___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!SecItemCopyMatching(*(a1 + 32), (*(*(a1 + 48) + 8) + 24)))
  {
    v2 = *(*(*(a1 + 48) + 8) + 24);
    v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E697ABD0]];
    if ([v3 isEqualToString:@"lockdown-identities"])
    {
      v4 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 40);
        v7 = 138543362;
        v8 = v5;
        _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Didn't remove lockdown identity with persistent id %{public}@", &v7, 0xCu);
      }
    }

    else
    {
      [*(a1 + 32) setObject:0 forKeyedSubscript:*MEMORY[0x1E697B310]];
      *(*(*(a1 + 56) + 8) + 24) = SecItemDelete(*(a1 + 32));
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

+ (BOOL)itemExistsInKeychain:(void *)a3 useSystemKeychain:(BOOL)a4 enforcePersonalPersona:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v31[2] = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E697B320];
  v30[0] = *MEMORY[0x1E697B3D0];
  v30[1] = v7;
  v31[0] = a3;
  v31[1] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v9 = [v8 mutableCopy];

  if (v6)
  {
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  }

  result = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (!v5)
  {
    v14 = SecItemCopyMatching(v9, &result);
    *(v22 + 6) = v14;
    if (result)
    {
      CFRelease(result);
    }

    goto LABEL_10;
  }

  v10 = MEMORY[0x1E6999808];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76__MCKeychain_itemExistsInKeychain_useSystemKeychain_enforcePersonalPersona___block_invoke;
  v17[3] = &unk_1E77D0008;
  v19 = &v21;
  v18 = v9;
  v20 = 0;
  v11 = [v10 performBlockUnderPersonalPersona:v17];

  if (!v11)
  {
LABEL_10:
    v13 = *(v22 + 6) == 0;
    goto LABEL_11;
  }

  v12 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v27 = "+[MCKeychain itemExistsInKeychain:useSystemKeychain:enforcePersonalPersona:]";
    v28 = 2112;
    v29 = v11;
    _os_log_impl(&dword_1A795B000, v12, OS_LOG_TYPE_ERROR, "%s: Failed to execute the block under personal persona. Error: %@", buf, 0x16u);
  }

  v13 = 0;
LABEL_11:
  _Block_object_dispose(&v21, 8);

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t __76__MCKeychain_itemExistsInKeychain_useSystemKeychain_enforcePersonalPersona___block_invoke(uint64_t a1)
{
  result = SecItemCopyMatching(*(a1 + 32), (a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (id)canonicalPersistentReferenceForItemWithPersistentReference:(id)a3 inSystemKeychain:(BOOL)a4
{
  v4 = a4;
  v28[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *MEMORY[0x1E697B320];
  v27[0] = *MEMORY[0x1E697B3C8];
  v27[1] = v6;
  v28[0] = v5;
  v28[1] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v8 = [v7 mutableCopy];

  if (v4)
  {
    [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  }

  result = 0;
  v9 = SecItemCopyMatching(v8, &result);
  v10 = result;
  if (!v9)
  {
    v14 = [result isEqualToData:v5];
    v15 = _MCLogObjects;
    v16 = os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        *buf = 138543362;
        v24 = v5;
        v17 = "Persistent reference %{public}@ is canonical!";
        v18 = v15;
        v19 = 12;
LABEL_12:
        _os_log_impl(&dword_1A795B000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
      }
    }

    else if (v16)
    {
      *buf = 138543618;
      v24 = v5;
      v25 = 2114;
      v26 = v10;
      v17 = "Persistent reference %{public}@ has canonical reference %{public}@";
      v18 = v15;
      v19 = 22;
      goto LABEL_12;
    }

    v13 = v10;
    goto LABEL_14;
  }

  v11 = v9;
  v12 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v24 = v5;
    v25 = 1024;
    LODWORD(v26) = v11;
    _os_log_impl(&dword_1A795B000, v12, OS_LOG_TYPE_ERROR, "Unable to lookup item with persistent reference: %{public}@. Error: %d", buf, 0x12u);
  }

  v13 = 0;
LABEL_14:

  v20 = *MEMORY[0x1E69E9840];

  return v13;
}

@end