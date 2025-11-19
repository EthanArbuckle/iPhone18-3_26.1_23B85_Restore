@interface DMCKeychain
+ (BOOL)deleteAttestationCertWithGroup:(id)a3 label:(id)a4;
+ (BOOL)deleteAttestationKeyWithGroup:(id)a3 label:(id)a4;
+ (BOOL)deleteAttestationMetadataWithGroup:(id)a3 service:(id)a4;
+ (BOOL)setData:(id)a3 forService:(id)a4 account:(id)a5 label:(id)a6 description:(id)a7 access:(void *)a8 group:(id)a9 useSystemKeychain:(BOOL)a10 sysBound:(BOOL)a11 enforcePersonalPersona:(BOOL)a12 outError:(id *)a13;
+ (BOOL)storeAttestationCert:(__SecCertificate *)a3 withGroup:(id)a4 label:(id)a5;
+ (BOOL)storeAttestationKey:(__SecKey *)a3 withGroup:(id)a4 label:(id)a5;
+ (BOOL)storeAttestationMetadata:(id)a3 withGroup:(id)a4 service:(id)a5;
+ (__CFDictionary)_newQueryWithService:(id)a3 account:(id)a4 label:(id)a5 description:(id)a6 group:(id)a7 useSystemKeychain:(BOOL)a8 outError:(id *)a9;
+ (__SecCertificate)retrieveAttestationCertWithGroup:(id)a3 label:(id)a4;
+ (__SecIdentity)retrieveAttestationIdentityWithGroup:(id)a3 label:(id)a4;
+ (__SecKey)retrieveAttestationKeyWithGroup:(id)a3 label:(id)a4;
+ (id)retrieveAttestationMetadataWithGroup:(id)a3 service:(id)a4;
+ (id)saveItem:(void *)a3 withLabel:(id)a4 group:(id)a5 useSystemKeychain:(BOOL)a6 enforcePersonalPersona:(BOOL)a7;
+ (id)stringFromServiceData:(id)a3;
+ (void)_copyTypeRefWithQuery:(id)a3 useSystemKeychain:(BOOL)a4 enforcePersonalPersona:(BOOL)a5;
@end

@implementation DMCKeychain

+ (id)stringFromServiceData:(id)a3
{
  v4 = a3;
  if (a3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{objc_msgSend(a3, "bytes")}];
    v3 = vars8;
  }

  return v4;
}

+ (BOOL)setData:(id)a3 forService:(id)a4 account:(id)a5 label:(id)a6 description:(id)a7 access:(void *)a8 group:(id)a9 useSystemKeychain:(BOOL)a10 sysBound:(BOOL)a11 enforcePersonalPersona:(BOOL)a12 outError:(id *)a13
{
  v73 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a9;
  v58 = v19;
  if ([v18 length])
  {
    v65 = 0;
    v31 = [DMCKeychain _newQueryWithService:v19 account:v20 label:v21 description:v22 group:v23 useSystemKeychain:a10 outError:&v65];
    v32 = v65;
    if (v32)
    {
      v33 = v32;
      if (v31)
      {
        CFRelease(v31);
      }

      goto LABEL_17;
    }

    LOBYTE(v57) = a12;
    v36 = [DMCKeychain dataFromService:v19 account:v20 label:v21 description:v22 group:v23 useSystemKeychain:a10 enforcePersonalPersona:v57 outError:0];
    *&v70 = 0;
    *(&v70 + 1) = &v70;
    v71 = 0x2020000000;
    v72 = 0;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __132__DMCKeychain_setData_forService_account_label_description_access_group_useSystemKeychain_sysBound_enforcePersonalPersona_outError___block_invoke;
    v59[3] = &unk_1E7ADCC10;
    v37 = v36;
    v60 = v37;
    v61 = v18;
    v62 = &v70;
    v63 = a8;
    v64 = v31;
    v38 = MEMORY[0x1B2731A20](v59);
    v39 = v38;
    if (a12)
    {
      v33 = [DMCPersonaHelper performBlockUnderPersonalPersona:v38];
    }

    else
    {
      (*(v38 + 16))(v38);
      v33 = 0;
    }

    CFRelease(v31);
    if (v33)
    {
      v40 = *DMCLogObjects();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v67 = "+[DMCKeychain setData:forService:account:label:description:access:group:useSystemKeychain:sysBound:enforcePersonalPersona:outError:]";
        v68 = 2112;
        v69 = v33;
        _os_log_impl(&dword_1B1630000, v40, OS_LOG_TYPE_ERROR, "%s: Failed to execute the block under personal persona. Error: %@", buf, 0x16u);
      }
    }

    else if (*(*(&v70 + 1) + 24))
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", *(*(&v70 + 1) + 24)];
      v49 = DMCErrorArray(@"KEYCHAIN_ERROR_CODE_P_CODE_%@", v42, v43, v44, v45, v46, v47, v48, v41);

      v33 = [MEMORY[0x1E696ABC0] DMCErrorWithDomain:@"DMCKeychainErrorDomain" code:6000 descriptionArray:v49 errorType:@"DMCFatalError"];
    }

    else
    {
      v33 = 0;
    }

    _Block_object_dispose(&v70, 8);
  }

  else
  {
    v34 = MEMORY[0x1E696ABC0];
    v35 = DMCErrorArray(@"KEYCHAIN_ERROR_EMPTY_DATA", v24, v25, v26, v27, v28, v29, v30, 0);
    v33 = [v34 DMCErrorWithDomain:@"DMCKeychainErrorDomain" code:6001 descriptionArray:v35 errorType:@"DMCFatalError"];
  }

  if (!v33)
  {
    v54 = 1;
    goto LABEL_23;
  }

LABEL_17:
  if (a13)
  {
    v50 = v33;
    *a13 = v33;
  }

  v51 = *DMCLogObjects();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    v52 = v51;
    v53 = [v33 DMCVerboseDescription];
    LODWORD(v70) = 138543362;
    *(&v70 + 4) = v53;
    _os_log_impl(&dword_1B1630000, v52, OS_LOG_TYPE_ERROR, "Failed to set data in keychain. Error: %{public}@", &v70, 0xCu);
  }

  v54 = 0;
LABEL_23:

  v55 = *MEMORY[0x1E69E9840];
  return v54;
}

void __132__DMCKeychain_setData_forService_account_label_description_access_group_useSystemKeychain_sysBound_enforcePersonalPersona_outError___block_invoke(uint64_t a1)
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

uint64_t __113__DMCKeychain_dataFromService_account_label_description_group_useSystemKeychain_enforcePersonalPersona_outError___block_invoke(uint64_t a1)
{
  result = SecItemCopyMatching(*(a1 + 48), (*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (id)saveItem:(void *)a3 withLabel:(id)a4 group:(id)a5 useSystemKeychain:(BOOL)a6 enforcePersonalPersona:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v51[4] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = *MEMORY[0x1E697ABD0];
  v50[0] = *MEMORY[0x1E697B3D0];
  v50[1] = v13;
  v14 = *MEMORY[0x1E697ABD8];
  v50[2] = *MEMORY[0x1E697B320];
  v50[3] = v14;
  v51[0] = a3;
  v51[1] = v12;
  v15 = *MEMORY[0x1E697AC08];
  v51[2] = MEMORY[0x1E695E118];
  v51[3] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:4];
  v17 = [v16 mutableCopy];

  if (v8)
  {
    [v17 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  }

  if (v11)
  {
    [v17 setObject:v11 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__2;
  v40 = __Block_byref_object_dispose__2;
  v41 = 0;
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __81__DMCKeychain_saveItem_withLabel_group_useSystemKeychain_enforcePersonalPersona___block_invoke;
  v31 = &unk_1E7ADCC60;
  v33 = &v42;
  v18 = v17;
  v34 = &v36;
  v35 = 0;
  v32 = v18;
  v19 = MEMORY[0x1B2731A20](&v28);
  v20 = v19;
  if (v7)
  {
    v21 = [DMCPersonaHelper performBlockUnderPersonalPersona:v19, v28, v29, v30, v31];
    if (v21)
    {
      v22 = *DMCLogObjects();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v47 = "+[DMCKeychain saveItem:withLabel:group:useSystemKeychain:enforcePersonalPersona:]";
        v48 = 2112;
        v49 = v21;
        _os_log_impl(&dword_1B1630000, v22, OS_LOG_TYPE_ERROR, "%s: Failed to execute the block under personal persona. Error: %@", buf, 0x16u);
      }

LABEL_14:
      v25 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    (*(v19 + 16))(v19);
  }

  if (*(v43 + 6))
  {
    v23 = *DMCLogObjects();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *(v43 + 6);
      *buf = 67109120;
      LODWORD(v47) = v24;
      _os_log_impl(&dword_1B1630000, v23, OS_LOG_TYPE_ERROR, "Could not store item in keychain. Error: %d", buf, 8u);
    }

    goto LABEL_14;
  }

  v25 = v37[5];
LABEL_16:

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

void __81__DMCKeychain_saveItem_withLabel_group_useSystemKeychain_enforcePersonalPersona___block_invoke(uint64_t a1)
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
      v28 = DMCErrorArray(@"KEYCHAIN_ERROR_CANNOT_CREATE_QUERY", v19, v20, v21, v22, v23, v24, v25, 0);
      *a9 = [v27 DMCErrorWithDomain:@"DMCKeychainErrorDomain" code:6002 descriptionArray:v28 errorType:@"DMCFatalError"];
    }

    Mutable = 0;
  }

  return Mutable;
}

+ (void)_copyTypeRefWithQuery:(id)a3 useSystemKeychain:(BOOL)a4 enforcePersonalPersona:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (v5)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __78__DMCKeychain__copyTypeRefWithQuery_useSystemKeychain_enforcePersonalPersona___block_invoke;
    v21[3] = &unk_1E7ADCCB0;
    v23 = &v25;
    v22 = v7;
    v24 = &v29;
    v9 = [DMCPersonaHelper performBlockUnderPersonalPersona:v21];

    if (v9)
    {
      v10 = *DMCLogObjects();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v34 = "+[DMCKeychain _copyTypeRefWithQuery:useSystemKeychain:enforcePersonalPersona:]";
        v35 = 2114;
        v36 = v9;
        _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_ERROR, "%s: Failed to execute the block under personal persona. Error: %{public}@", buf, 0x16u);
      }

      goto LABEL_16;
    }

    v11 = *(v26 + 6);
  }

  else
  {
    v11 = SecItemCopyMatching(v7, &v32);
    *(v26 + 6) = v11;
  }

  if (v11 == -25300)
  {
    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      v34 = v8;
      v35 = 1024;
      LODWORD(v36) = v6;
      v14 = "Couldn't find item with query: %{public}@ system keychain: %d";
      v15 = v13;
      v16 = OS_LOG_TYPE_DEBUG;
      v17 = 18;
LABEL_15:
      _os_log_impl(&dword_1B1630000, v15, v16, v14, buf, v17);
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  if (v11)
  {
    v18 = *DMCLogObjects();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = v8;
      v14 = "Cannot retrieve item with query %{public}@";
      v15 = v18;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 12;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v12 = v30[3];
LABEL_17:
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  v19 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __78__DMCKeychain__copyTypeRefWithQuery_useSystemKeychain_enforcePersonalPersona___block_invoke(uint64_t a1)
{
  result = SecItemCopyMatching(*(a1 + 32), (*(*(a1 + 48) + 8) + 24));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (BOOL)storeAttestationKey:(__SecKey *)a3 withGroup:(id)a4 label:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DF90];
  v8 = a5;
  v9 = a4;
  v10 = [v7 dictionary];
  [v10 setObject:a3 forKeyedSubscript:*MEMORY[0x1E697B3D0]];
  [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x1E697ABD0]];

  [v10 setObject:v8 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  v11 = SecAccessControlCreateWithFlags(0, *MEMORY[0x1E697AC08], 0x40000000uLL, 0);
  [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x1E697ABC8]];
  CFRelease(v11);
  [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  v12 = SecItemAdd(v10, 0);
  if (v12)
  {
    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16[0] = 67109120;
      v16[1] = v12;
      _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_ERROR, "Could not store attestation key in keychain. Error: %d", v16, 8u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v12 == 0;
}

+ (__SecKey)retrieveAttestationKeyWithGroup:(id)a3 label:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF90];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionary];
  [v8 setObject:*MEMORY[0x1E697B020] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x1E697ABD0]];

  [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  v9 = MEMORY[0x1E695E118];
  [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E697B328]];
  result = 0;
  v10 = SecItemCopyMatching(v8, &result);
  if (v10)
  {
    v11 = v10;
    v12 = *DMCLogObjects();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v18 = v11;
      _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_ERROR, "Could not retrieve attestation key from keychain. Error: %d", buf, 8u);
    }

    v13 = 0;
  }

  else
  {
    v13 = result;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (BOOL)deleteAttestationKeyWithGroup:(id)a3 label:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF90];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionary];
  [v8 setObject:*MEMORY[0x1E697B020] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x1E697ABD0]];

  [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  v9 = SecItemDelete(v8);
  if (v9)
  {
    v10 = *DMCLogObjects();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13[0] = 67109120;
      v13[1] = v9;
      _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_ERROR, "Could not delete attestation key from keychain. Error: %d", v13, 8u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9 == 0;
}

+ (BOOL)storeAttestationCert:(__SecCertificate *)a3 withGroup:(id)a4 label:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DF90];
  v8 = a5;
  v9 = a4;
  v10 = [v7 dictionary];
  [v10 setObject:a3 forKeyedSubscript:*MEMORY[0x1E697B3D0]];
  [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x1E697ABD0]];

  [v10 setObject:v8 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  [v10 setObject:*MEMORY[0x1E697AC08] forKeyedSubscript:*MEMORY[0x1E697ABD8]];
  [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  v11 = SecItemAdd(v10, 0);
  if (v11)
  {
    v12 = *DMCLogObjects();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15[0] = 67109120;
      v15[1] = v11;
      _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_ERROR, "Could not store attestation cert in keychain. Error: %d", v15, 8u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11 == 0;
}

+ (__SecCertificate)retrieveAttestationCertWithGroup:(id)a3 label:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF90];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionary];
  [v8 setObject:*MEMORY[0x1E697B000] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x1E697ABD0]];

  [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  v9 = MEMORY[0x1E695E118];
  [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E697B328]];
  result = 0;
  v10 = SecItemCopyMatching(v8, &result);
  if (v10)
  {
    v11 = v10;
    v12 = *DMCLogObjects();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v18 = v11;
      _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_ERROR, "Could not retrieve attestation cert from keychain. Error: %d", buf, 8u);
    }

    v13 = 0;
  }

  else
  {
    v13 = result;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (BOOL)deleteAttestationCertWithGroup:(id)a3 label:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF90];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionary];
  [v8 setObject:*MEMORY[0x1E697B000] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x1E697ABD0]];

  [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  v9 = SecItemDelete(v8);
  if (v9)
  {
    v10 = *DMCLogObjects();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13[0] = 67109120;
      v13[1] = v9;
      _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_ERROR, "Could not delete attestation cert from keychain. Error: %d", v13, 8u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9 == 0;
}

+ (__SecIdentity)retrieveAttestationIdentityWithGroup:(id)a3 label:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF90];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionary];
  [v8 setObject:*MEMORY[0x1E697B010] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x1E697ABD0]];

  [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  v9 = MEMORY[0x1E695E118];
  [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E697B328]];
  result = 0;
  v10 = SecItemCopyMatching(v8, &result);
  if (v10)
  {
    v11 = v10;
    v12 = *DMCLogObjects();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v18 = v11;
      _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_ERROR, "Could not retrieve attestation identity from keychain. Error: %d", buf, 8u);
    }

    v13 = 0;
  }

  else
  {
    v13 = result;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (BOOL)storeAttestationMetadata:(id)a3 withGroup:(id)a4 service:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DF90];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 dictionary];
  [v11 setObject:v10 forKeyedSubscript:*MEMORY[0x1E697B3C0]];

  [v11 setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [v11 setObject:v9 forKeyedSubscript:*MEMORY[0x1E697ABD0]];

  [v11 setObject:v8 forKeyedSubscript:*MEMORY[0x1E697AE88]];
  [v11 setObject:*MEMORY[0x1E697AC08] forKeyedSubscript:*MEMORY[0x1E697ABD8]];
  [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  v12 = SecItemAdd(v11, 0);
  if (v12)
  {
    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16[0] = 67109120;
      v16[1] = v12;
      _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_ERROR, "Could not store attestation metadata in keychain. Error: %d", v16, 8u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v12 == 0;
}

+ (id)retrieveAttestationMetadataWithGroup:(id)a3 service:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF90];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionary];
  [v8 setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x1E697ABD0]];

  [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x1E697AE88]];
  v9 = MEMORY[0x1E695E118];
  [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E697B328]];
  result = 0;
  v10 = SecItemCopyMatching(v8, &result);
  if (v10)
  {
    v11 = v10;
    v12 = *DMCLogObjects();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v18 = v11;
      _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_ERROR, "Could not retrieve attestation metadata from keychain. Error: %d", buf, 8u);
    }

    v13 = 0;
  }

  else
  {
    v13 = result;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (BOOL)deleteAttestationMetadataWithGroup:(id)a3 service:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF90];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionary];
  [v8 setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x1E697ABD0]];

  [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x1E697AE88]];
  [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  v9 = SecItemDelete(v8);
  if (v9)
  {
    v10 = *DMCLogObjects();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13[0] = 67109120;
      v13[1] = v9;
      _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_ERROR, "Could not delete attestation metadata from keychain. Error: %d", v13, 8u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9 == 0;
}

@end