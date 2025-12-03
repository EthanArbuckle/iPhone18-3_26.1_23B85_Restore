@interface SGContactsInterface
+ (BOOL)enumerateContactsMatchingEmailAddress:(id)address withKeysToFetch:(id)fetch usingContactStore:(id)store error:(id *)error usingBlock:(id)block;
+ (BOOL)enumerateContactsMatchingName:(id)name withKeysToFetch:(id)fetch usingContactStore:(id)store error:(id *)error usingBlock:(id)block;
+ (BOOL)enumerateContactsWithFetchRequest:(id)request usingContactStore:(id)store error:(id *)error usingBlock:(id)block;
+ (BOOL)handleExistsInContactStoreForHandle:(id)handle withHandleType:(id)type;
+ (id)identifiersPredicateFromCacheForPredicate:(id)predicate isCached:(BOOL *)cached;
+ (id)unifiedContactsMatchingPredicate:(id)predicate keysToFetch:(id)fetch usingContactStore:(id)store error:(id *)error;
+ (void)clearCache;
+ (void)initialize;
@end

@implementation SGContactsInterface

+ (BOOL)handleExistsInContactStoreForHandle:(id)handle withHandleType:(id)type
{
  v39 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  typeCopy = type;
  v8 = *MEMORY[0x277CBD098];
  if (![typeCopy isEqualToString:*MEMORY[0x277CBD098]])
  {
    if ([typeCopy isEqualToString:*MEMORY[0x277CBCFC0]])
    {
      v11 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:handleCopy];
      goto LABEL_6;
    }

    v13 = sgLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = typeCopy;
      _os_log_debug_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEBUG, "Unsupported handleType: %@", &buf, 0xCu);
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  v9 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:handleCopy];
  if (!v9)
  {
    v13 = sgLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_231E60000, v13, OS_LOG_TYPE_ERROR, "SGContactsInterface: CNPhoneNumber initWithStringValue returned nil", &buf, 2u);
    }

    goto LABEL_18;
  }

  v10 = v9;
  v11 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v9];

LABEL_6:
  *&buf = 0;
  *(&buf + 1) = &buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__11949;
  v37 = __Block_byref_object_dispose__11950;
  v38 = 0;
  resultIfAvailable = [_cache resultIfAvailable];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __74__SGContactsInterface_handleExistsInContactStoreForHandle_withHandleType___block_invoke;
  v28[3] = &unk_278951000;
  p_buf = &buf;
  v13 = v11;
  v29 = v13;
  [resultIfAvailable runWithLockAcquired:v28];

  if ([*(*(&buf + 1) + 40) count])
  {
    v14 = 1;
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v33[0] = *MEMORY[0x277CBCFC0];
    v33[1] = v8;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    v16 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:v15];
    [v16 setPredicate:v13];
    v17 = +[SGContactStoreFactory contactStore];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __74__SGContactsInterface_handleExistsInContactStoreForHandle_withHandleType___block_invoke_2;
    v22[3] = &unk_27894D4E8;
    v22[4] = &v24;
    v23 = 0;
    [self enumerateContactsWithFetchRequest:v16 usingContactStore:v17 error:&v23 usingBlock:v22];
    v18 = v23;

    if (v18)
    {
      v19 = sgLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *v31 = 138412290;
        v32 = v18;
        _os_log_debug_impl(&dword_231E60000, v19, OS_LOG_TYPE_DEBUG, "Error enumerating contacts: %@", v31, 0xCu);
      }
    }

    v14 = *(v25 + 24);

    _Block_object_dispose(&v24, 8);
  }

  _Block_object_dispose(&buf, 8);
LABEL_19:

  v20 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

uint64_t __74__SGContactsInterface_handleExistsInContactStoreForHandle_withHandleType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

uint64_t __74__SGContactsInterface_handleExistsInContactStoreForHandle_withHandleType___block_invoke_2(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

+ (void)clearCache
{
  resultIfAvailable = [_cache resultIfAvailable];
  [resultIfAvailable runWithLockAcquired:&__block_literal_global_36_11956];
}

+ (BOOL)enumerateContactsMatchingEmailAddress:(id)address withKeysToFetch:(id)fetch usingContactStore:(id)store error:(id *)error usingBlock:(id)block
{
  v12 = MEMORY[0x277CBDA70];
  blockCopy = block;
  storeCopy = store;
  fetchCopy = fetch;
  addressCopy = address;
  v17 = [[v12 alloc] initWithKeysToFetch:fetchCopy];

  v18 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:addressCopy];

  [v17 setPredicate:v18];
  LOBYTE(error) = [self enumerateContactsWithFetchRequest:v17 usingContactStore:storeCopy error:error usingBlock:blockCopy];

  return error;
}

+ (BOOL)enumerateContactsMatchingName:(id)name withKeysToFetch:(id)fetch usingContactStore:(id)store error:(id *)error usingBlock:(id)block
{
  v12 = MEMORY[0x277CBDA70];
  blockCopy = block;
  storeCopy = store;
  fetchCopy = fetch;
  nameCopy = name;
  v17 = [[v12 alloc] initWithKeysToFetch:fetchCopy];

  v18 = [MEMORY[0x277CBDA58] predicateForContactsMatchingName:nameCopy];

  [v17 setPredicate:v18];
  LOBYTE(error) = [self enumerateContactsWithFetchRequest:v17 usingContactStore:storeCopy error:error usingBlock:blockCopy];

  return error;
}

+ (BOOL)enumerateContactsWithFetchRequest:(id)request usingContactStore:(id)store error:(id *)error usingBlock:(id)block
{
  requestCopy = request;
  storeCopy = store;
  blockCopy = block;
  v44[0] = 0;
  predicate = [requestCopy predicate];
  v14 = [self identifiersPredicateFromCacheForPredicate:predicate isCached:v44];

  if (v14)
  {
    [requestCopy setPredicate:v14];
  }

  else if (v44[0])
  {
    v15 = 1;
    goto LABEL_13;
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__11949;
  v38 = __Block_byref_object_dispose__11950;
  v39 = 0;
  v16 = objc_opt_new();
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __92__SGContactsInterface_enumerateContactsWithFetchRequest_usingContactStore_error_usingBlock___block_invoke;
  v28[3] = &unk_27894D4C0;
  v29 = storeCopy;
  v17 = v16;
  v30 = v17;
  v31 = blockCopy;
  v32 = &v40;
  v33 = &v34;
  v15 = [v29 enumerateContactsWithFetchRequest:requestCopy error:error usingBlock:v28];
  v18 = v35[5];
  if (v18)
  {
    [v18 raise];
  }

  if ((v41[3] & 1) == 0)
  {
    proxyArray = [v17 proxyArray];
    if ([proxyArray count] > 2 || (objc_msgSend(requestCopy, "predicate"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CBDA58], "predicateForContactsWithIdentifiers:", proxyArray), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqual:", v21), v21, v20, (v22 & 1) == 0))
    {
      result = [_cache result];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __92__SGContactsInterface_enumerateContactsWithFetchRequest_usingContactStore_error_usingBlock___block_invoke_34;
      v25[3] = &unk_278951950;
      v26 = requestCopy;
      v27 = proxyArray;
      [result runWithLockAcquired:v25];
    }
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);
LABEL_13:

  return v15;
}

void __92__SGContactsInterface_enumerateContactsWithFetchRequest_usingContactStore_error_usingBlock___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = a1[5];
    v7 = [v5 identifier];
    [v6 addCNContactIdentifier:v7];

    (*(a1[6] + 16))();
    if (*a3 == 1)
    {
      *(*(a1[7] + 8) + 24) = 1;
    }
  }

  else
  {
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "Unexpected object returned from Contact Store: %@ Retrieved From %@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __92__SGContactsInterface_enumerateContactsWithFetchRequest_usingContactStore_error_usingBlock___block_invoke_34(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 count] >= 0x64)
  {
    [v5 removeAllObjects];
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) predicate];
  [v5 setObject:v3 forKeyedSubscript:v4];
}

+ (id)identifiersPredicateFromCacheForPredicate:(id)predicate isCached:(BOOL *)cached
{
  v27[1] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__11949;
  v24 = __Block_byref_object_dispose__11950;
  v25 = 0;
  resultIfAvailable = [_cache resultIfAvailable];
  if (resultIfAvailable)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __74__SGContactsInterface_identifiersPredicateFromCacheForPredicate_isCached___block_invoke;
    v17[3] = &unk_278951000;
    v19 = &v20;
    v18 = predicateCopy;
    [resultIfAvailable runWithLockAcquired:v17];
    v7 = v18;
  }

  else
  {
    mEMORY[0x277D41DA8] = [MEMORY[0x277D41DA8] sharedInstance];
    v9 = objc_opt_new();
    [mEMORY[0x277D41DA8] trackScalarForMessage:v9 count:0];

    v26 = @"ContactsInterfaceCacheHit";
    v10 = [MEMORY[0x277CCABB0] numberWithInt:v21[5] != 0];
    v27[0] = v10;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];

    AnalyticsSendEvent();
  }

  v11 = objc_opt_new();
  [v11 setCacheHit:v21[5] != 0];
  mEMORY[0x277D41DA8]2 = [MEMORY[0x277D41DA8] sharedInstance];
  [mEMORY[0x277D41DA8]2 trackScalarForMessage:v11];

  v13 = v21;
  if (v21[5])
  {
    *cached = 1;
    if ([v13[5] count])
    {
      v14 = [MEMORY[0x277CBDA58] predicateForContactsWithIdentifiers:v21[5]];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    *cached = 0;
  }

  _Block_object_dispose(&v20, 8);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __74__SGContactsInterface_identifiersPredicateFromCacheForPredicate_isCached___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D41DA8];
  v4 = a2;
  v5 = [v3 sharedInstance];
  v6 = objc_opt_new();
  [v5 trackScalarForMessage:v6 count:{objc_msgSend(v4, "count")}];

  AnalyticsSendEvent();
  v7 = [v4 objectForKeyedSubscript:*(a1 + 32)];

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

+ (id)unifiedContactsMatchingPredicate:(id)predicate keysToFetch:(id)fetch usingContactStore:(id)store error:(id *)error
{
  storeCopy = store;
  fetchCopy = fetch;
  predicateCopy = predicate;
  v13 = objc_opt_new();
  v14 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:fetchCopy];

  [v14 setPredicate:predicateCopy];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __92__SGContactsInterface_unifiedContactsMatchingPredicate_keysToFetch_usingContactStore_error___block_invoke;
  v18[3] = &unk_2789540B0;
  v15 = v13;
  v19 = v15;
  [self enumerateContactsWithFetchRequest:v14 usingContactStore:storeCopy error:error usingBlock:v18];

  if (*error)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  return v16;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_11984];
    v3 = _cache;
    _cache = v2;

    MEMORY[0x2821F96F8](v2, v3);
  }
}

id __33__SGContactsInterface_initialize__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277D425F8]);
  v1 = objc_opt_new();
  v2 = [v0 initWithGuardedData:v1];

  [SGCuratedChangeNotifications addAddressBookObserver:&__block_literal_global_14_11989 forObjectLifetime:v2];

  return v2;
}

@end