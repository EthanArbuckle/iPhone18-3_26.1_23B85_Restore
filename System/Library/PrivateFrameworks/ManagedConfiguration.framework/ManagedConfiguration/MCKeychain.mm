@interface MCKeychain
+ (BOOL)itemExistsInKeychain:(void *)keychain useSystemKeychain:(BOOL)systemKeychain enforcePersonalPersona:(BOOL)persona;
+ (BOOL)setData:(id)data forService:(id)service account:(id)account label:(id)label description:(id)description access:(void *)access group:(id)group useSystemKeychain:(BOOL)self0 sysBound:(BOOL)self1 enforcePersonalPersona:(BOOL)self2 outError:(id *)self3;
+ (BOOL)setData:(id)data forService:(id)service account:(id)account label:(id)label description:(id)description access:(void *)access group:(id)group useSystemKeychain:(BOOL)self0 sysBound:(BOOL)self1 outError:(id *)self2;
+ (BOOL)setString:(id)string forService:(id)service account:(id)account label:(id)label description:(id)description access:(void *)access group:(id)group useSystemKeychain:(BOOL)self0 sysBound:(BOOL)self1 outError:(id *)self2;
+ (__CFDictionary)_newQueryWithService:(id)service account:(id)account label:(id)label description:(id)description group:(id)group useSystemKeychain:(BOOL)keychain outError:(id *)error;
+ (id)canonicalPersistentReferenceForItemWithPersistentReference:(id)reference inSystemKeychain:(BOOL)keychain;
+ (id)saveItem:(void *)item withLabel:(id)label group:(id)group useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona accessibility:(__CFString *)accessibility;
+ (void)copyItemWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona;
+ (void)removeItemWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona;
@end

@implementation MCKeychain

+ (__CFDictionary)_newQueryWithService:(id)service account:(id)account label:(id)label description:(id)description group:(id)group useSystemKeychain:(BOOL)keychain outError:(id *)error
{
  keychainCopy = keychain;
  serviceCopy = service;
  accountCopy = account;
  labelCopy = label;
  descriptionCopy = description;
  groupCopy = group;
  if ([serviceCopy length])
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], serviceCopy);
    if ([accountCopy length])
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], accountCopy);
    }

    if ([labelCopy length])
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ADC8], labelCopy);
    }

    if ([descriptionCopy length])
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ACE0], descriptionCopy);
    }

    if ([groupCopy length])
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD0], groupCopy);
    }

    if (keychainCopy)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B3A8], MEMORY[0x1E695E118]);
    }
  }

  else
  {
    if (error)
    {
      v27 = MEMORY[0x1E696ABC0];
      v28 = MCErrorArray(@"KEYCHAIN_ERROR_CANNOT_CREATE_QUERY", v19, v20, v21, v22, v23, v24, v25, 0);
      *error = [v27 MCErrorWithDomain:@"MCKeychainErrorDomain" code:6002 descriptionArray:v28 errorType:@"MCFatalError"];
    }

    Mutable = 0;
  }

  return Mutable;
}

+ (BOOL)setString:(id)string forService:(id)service account:(id)account label:(id)label description:(id)description access:(void *)access group:(id)group useSystemKeychain:(BOOL)self0 sysBound:(BOOL)self1 outError:(id *)self2
{
  groupCopy = group;
  descriptionCopy = description;
  labelCopy = label;
  accountCopy = account;
  serviceCopy = service;
  v22 = [string dataUsingEncoding:4];
  LOWORD(v25) = __PAIR16__(bound, keychain);
  v23 = [MCKeychain setData:v22 forService:serviceCopy account:accountCopy label:labelCopy description:descriptionCopy access:access group:groupCopy useSystemKeychain:v25 sysBound:error outError:?];

  return v23;
}

+ (BOOL)setData:(id)data forService:(id)service account:(id)account label:(id)label description:(id)description access:(void *)access group:(id)group useSystemKeychain:(BOOL)self0 sysBound:(BOOL)self1 outError:(id *)self2
{
  v17 = MEMORY[0x1E69AD428];
  groupCopy = group;
  descriptionCopy = description;
  labelCopy = label;
  accountCopy = account;
  serviceCopy = service;
  dataCopy = data;
  sharedConfiguration = [v17 sharedConfiguration];
  personaID = [sharedConfiguration personaID];
  BYTE2(v28) = personaID != 0;
  LOWORD(v28) = __PAIR16__(bound, keychain);
  v26 = [MCKeychain setData:"setData:forService:account:label:description:access:group:useSystemKeychain:sysBound:enforcePersonalPersona:outError:" forService:dataCopy account:serviceCopy label:accountCopy description:labelCopy access:descriptionCopy group:access useSystemKeychain:groupCopy sysBound:v28 enforcePersonalPersona:error outError:?];

  return v26;
}

+ (BOOL)setData:(id)data forService:(id)service account:(id)account label:(id)label description:(id)description access:(void *)access group:(id)group useSystemKeychain:(BOOL)self0 sysBound:(BOOL)self1 enforcePersonalPersona:(BOOL)self2 outError:(id *)self3
{
  v74 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  serviceCopy = service;
  accountCopy = account;
  labelCopy = label;
  descriptionCopy = description;
  groupCopy = group;
  v59 = serviceCopy;
  if ([dataCopy length])
  {
    v66 = 0;
    v31 = [MCKeychain _newQueryWithService:serviceCopy account:accountCopy label:labelCopy description:descriptionCopy group:groupCopy useSystemKeychain:keychain outError:&v66];
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

    LOBYTE(v58) = persona;
    v36 = [MCKeychain dataFromService:serviceCopy account:accountCopy label:labelCopy description:descriptionCopy group:groupCopy useSystemKeychain:keychain enforcePersonalPersona:v58 outError:0];
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
    v62 = dataCopy;
    v63 = &v71;
    accessCopy = access;
    v65 = v31;
    v38 = MEMORY[0x1AC55F990](v60);
    v39 = v38;
    if (persona)
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
  if (error)
  {
    v51 = v33;
    *error = v33;
  }

  v52 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    v53 = v52;
    mCVerboseDescription = [v33 MCVerboseDescription];
    LODWORD(v71) = 138543362;
    *(&v71 + 4) = mCVerboseDescription;
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

+ (void)copyItemWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona
{
  personaCopy = persona;
  keychainCopy = keychain;
  v37[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v8 = *MEMORY[0x1E697B328];
  v36[0] = *MEMORY[0x1E697B3C8];
  v36[1] = v8;
  v37[0] = dCopy;
  v37[1] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
  v10 = [v9 mutableCopy];

  if (keychainCopy)
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
  if (!personaCopy)
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
        v33 = dCopy;
        v34 = 1024;
        LODWORD(v35) = keychainCopy;
        _os_log_impl(&dword_1A795B000, v17, OS_LOG_TYPE_DEBUG, "Couldn't get item with ID: %{public}@ system keychain: %d", buf, 0x12u);
      }
    }

    else if (v14)
    {
      v15 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v33 = dCopy;
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

+ (id)saveItem:(void *)item withLabel:(id)label group:(id)group useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona accessibility:(__CFString *)accessibility
{
  personaCopy = persona;
  keychainCopy = keychain;
  v52[4] = *MEMORY[0x1E69E9840];
  labelCopy = label;
  groupCopy = group;
  v15 = *MEMORY[0x1E697ABD0];
  v51[0] = *MEMORY[0x1E697B3D0];
  v51[1] = v15;
  v52[0] = item;
  v52[1] = groupCopy;
  v16 = *MEMORY[0x1E697ABD8];
  v51[2] = *MEMORY[0x1E697B320];
  v51[3] = v16;
  v52[2] = MEMORY[0x1E695E118];
  v52[3] = accessibility;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:4];
  v18 = [v17 mutableCopy];

  if (keychainCopy)
  {
    [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  }

  if (labelCopy)
  {
    [v18 setObject:labelCopy forKeyedSubscript:*MEMORY[0x1E697ADC8]];
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
  if (personaCopy)
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

+ (void)removeItemWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona
{
  personaCopy = persona;
  keychainCopy = keychain;
  v38[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v8 = *MEMORY[0x1E697B310];
  v37[0] = *MEMORY[0x1E697B3C8];
  v37[1] = v8;
  v38[0] = dCopy;
  v38[1] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v10 = [v9 mutableCopy];

  if (keychainCopy)
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
  v12 = dCopy;
  v25 = v12;
  v13 = MEMORY[0x1AC55F990](&v20);
  v14 = v13;
  if (personaCopy)
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

+ (BOOL)itemExistsInKeychain:(void *)keychain useSystemKeychain:(BOOL)systemKeychain enforcePersonalPersona:(BOOL)persona
{
  personaCopy = persona;
  systemKeychainCopy = systemKeychain;
  v31[2] = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E697B320];
  v30[0] = *MEMORY[0x1E697B3D0];
  v30[1] = v7;
  v31[0] = keychain;
  v31[1] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v9 = [v8 mutableCopy];

  if (systemKeychainCopy)
  {
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  }

  result = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (!personaCopy)
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

+ (id)canonicalPersistentReferenceForItemWithPersistentReference:(id)reference inSystemKeychain:(BOOL)keychain
{
  keychainCopy = keychain;
  v28[2] = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  v6 = *MEMORY[0x1E697B320];
  v27[0] = *MEMORY[0x1E697B3C8];
  v27[1] = v6;
  v28[0] = referenceCopy;
  v28[1] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v8 = [v7 mutableCopy];

  if (keychainCopy)
  {
    [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  }

  result = 0;
  v9 = SecItemCopyMatching(v8, &result);
  v10 = result;
  if (!v9)
  {
    v14 = [result isEqualToData:referenceCopy];
    v15 = _MCLogObjects;
    v16 = os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        *buf = 138543362;
        v24 = referenceCopy;
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
      v24 = referenceCopy;
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
    v24 = referenceCopy;
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