@interface DNDSModeAssertionStoreRecord
+ (id)recordForAssertionStore:(id)store;
+ (id)recordForDictionary:(id)dictionary keys:(id *)keys;
- (id)dictionaryWithKeys:(id *)keys options:(unint64_t)options;
- (id)object;
@end

@implementation DNDSModeAssertionStoreRecord

+ (id)recordForDictionary:(id)dictionary keys:(id *)keys
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v6 = objc_alloc_init(DNDSModeAssertionStoreRecord);
    v7 = [dictionaryCopy bs_safeArrayForKey:keys->var0.var0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__DNDSModeAssertionStoreRecord_Dictionary__recordForDictionary_keys___block_invoke;
    v16[3] = &__block_descriptor_40_e33___DNDSModeAssertionRecord_16__0_8l;
    v16[4] = keys;
    v8 = [v7 bs_mapNoNulls:v16];

    [(DNDSModeAssertionStoreRecord *)v6 setAssertions:v8];
    v9 = [dictionaryCopy bs_safeArrayForKey:keys->var0.var1];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__DNDSModeAssertionStoreRecord_Dictionary__recordForDictionary_keys___block_invoke_2;
    v15[3] = &__block_descriptor_40_e45___DNDSModeAssertionInvalidationRecord_16__0_8l;
    v15[4] = keys;
    v10 = [v9 bs_mapNoNulls:v15];

    [(DNDSModeAssertionStoreRecord *)v6 setInvalidations:v10];
    v11 = [dictionaryCopy bs_safeArrayForKey:keys->var0.var2];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__DNDSModeAssertionStoreRecord_Dictionary__recordForDictionary_keys___block_invoke_3;
    v14[3] = &__block_descriptor_40_e52___DNDSModeAssertionInvalidationRequestRecord_16__0_8l;
    v14[4] = keys;
    v12 = [v11 bs_mapNoNulls:v14];

    [(DNDSModeAssertionStoreRecord *)v6 setInvalidationRequests:v12];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __69__DNDSModeAssertionStoreRecord_Dictionary__recordForDictionary_keys___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [DNDSModeAssertionRecord recordForDictionary:v7 keys:*(a1 + 32)];

  return v8;
}

id __69__DNDSModeAssertionStoreRecord_Dictionary__recordForDictionary_keys___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [DNDSModeAssertionInvalidationRecord recordForDictionary:v7 keys:*(a1 + 32)];

  return v8;
}

id __69__DNDSModeAssertionStoreRecord_Dictionary__recordForDictionary_keys___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [DNDSModeAssertionInvalidationRequestRecord recordForDictionary:v7 keys:*(a1 + 32)];

  return v8;
}

- (id)dictionaryWithKeys:(id *)keys options:(unint64_t)options
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  assertions = [(DNDSModeAssertionStoreRecord *)self assertions];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__DNDSModeAssertionStoreRecord_Dictionary__dictionaryWithKeys_options___block_invoke;
  v17[3] = &__block_descriptor_48_e47___NSDictionary_16__0__DNDSModeAssertionRecord_8l;
  v17[4] = keys;
  v17[5] = options;
  v9 = [assertions bs_mapNoNulls:v17];

  [dictionary bs_setSafeObject:v9 forKey:keys->var0.var0];
  invalidations = [(DNDSModeAssertionStoreRecord *)self invalidations];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__DNDSModeAssertionStoreRecord_Dictionary__dictionaryWithKeys_options___block_invoke_2;
  v16[3] = &__block_descriptor_48_e59___NSDictionary_16__0__DNDSModeAssertionInvalidationRecord_8l;
  v16[4] = keys;
  v16[5] = options;
  v11 = [invalidations bs_mapNoNulls:v16];

  [dictionary bs_setSafeObject:v11 forKey:keys->var0.var1];
  invalidationRequests = [(DNDSModeAssertionStoreRecord *)self invalidationRequests];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__DNDSModeAssertionStoreRecord_Dictionary__dictionaryWithKeys_options___block_invoke_3;
  v15[3] = &__block_descriptor_48_e66___NSDictionary_16__0__DNDSModeAssertionInvalidationRequestRecord_8l;
  v15[4] = keys;
  v15[5] = options;
  v13 = [invalidationRequests bs_mapNoNulls:v15];

  [dictionary bs_setSafeObject:v13 forKey:keys->var0.var2];

  return dictionary;
}

+ (id)recordForAssertionStore:(id)store
{
  storeCopy = store;
  if (storeCopy)
  {
    v4 = objc_alloc_init(DNDSModeAssertionStoreRecord);
    assertions = [storeCopy assertions];
    v6 = [assertions bs_mapNoNulls:&__block_literal_global_27];

    if ([v6 count])
    {
      [(DNDSModeAssertionStoreRecord *)v4 setAssertions:v6];
    }

    invalidations = [storeCopy invalidations];
    v8 = [invalidations bs_mapNoNulls:&__block_literal_global_58_1];

    if ([v8 count])
    {
      [(DNDSModeAssertionStoreRecord *)v4 setInvalidations:v8];
    }

    invalidationRequests = [storeCopy invalidationRequests];
    v10 = [invalidationRequests bs_mapNoNulls:&__block_literal_global_62];

    if ([v10 count])
    {
      [(DNDSModeAssertionStoreRecord *)v4 setInvalidationRequests:v10];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)object
{
  v3 = objc_alloc_init(DNDSMutableModeAssertionStore);
  assertions = [(DNDSModeAssertionStoreRecord *)self assertions];
  if ([assertions count])
  {
    v5 = [assertions bs_mapNoNulls:&__block_literal_global_67];
    [(DNDSMutableModeAssertionStore *)v3 setAssertions:v5];
  }

  invalidations = [(DNDSModeAssertionStoreRecord *)self invalidations];
  if ([invalidations count])
  {
    v7 = [invalidations bs_mapNoNulls:&__block_literal_global_70];
    [(DNDSMutableModeAssertionStore *)v3 setInvalidations:v7];
  }

  invalidationRequests = [(DNDSModeAssertionStoreRecord *)self invalidationRequests];
  if ([invalidationRequests count])
  {
    v9 = [invalidationRequests bs_mapNoNulls:&__block_literal_global_73_0];
    [(DNDSMutableModeAssertionStore *)v3 setInvalidationRequests:v9];
  }

  return v3;
}

@end