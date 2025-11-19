@interface DNDSModeAssertionStoreRecord
+ (id)recordForAssertionStore:(id)a3;
+ (id)recordForDictionary:(id)a3 keys:(id *)a4;
- (id)dictionaryWithKeys:(id *)a3 options:(unint64_t)a4;
- (id)object;
@end

@implementation DNDSModeAssertionStoreRecord

+ (id)recordForDictionary:(id)a3 keys:(id *)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = objc_alloc_init(DNDSModeAssertionStoreRecord);
    v7 = [v5 bs_safeArrayForKey:a4->var0.var0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__DNDSModeAssertionStoreRecord_Dictionary__recordForDictionary_keys___block_invoke;
    v16[3] = &__block_descriptor_40_e33___DNDSModeAssertionRecord_16__0_8l;
    v16[4] = a4;
    v8 = [v7 bs_mapNoNulls:v16];

    [(DNDSModeAssertionStoreRecord *)v6 setAssertions:v8];
    v9 = [v5 bs_safeArrayForKey:a4->var0.var1];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__DNDSModeAssertionStoreRecord_Dictionary__recordForDictionary_keys___block_invoke_2;
    v15[3] = &__block_descriptor_40_e45___DNDSModeAssertionInvalidationRecord_16__0_8l;
    v15[4] = a4;
    v10 = [v9 bs_mapNoNulls:v15];

    [(DNDSModeAssertionStoreRecord *)v6 setInvalidations:v10];
    v11 = [v5 bs_safeArrayForKey:a4->var0.var2];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__DNDSModeAssertionStoreRecord_Dictionary__recordForDictionary_keys___block_invoke_3;
    v14[3] = &__block_descriptor_40_e52___DNDSModeAssertionInvalidationRequestRecord_16__0_8l;
    v14[4] = a4;
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

- (id)dictionaryWithKeys:(id *)a3 options:(unint64_t)a4
{
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [(DNDSModeAssertionStoreRecord *)self assertions];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__DNDSModeAssertionStoreRecord_Dictionary__dictionaryWithKeys_options___block_invoke;
  v17[3] = &__block_descriptor_48_e47___NSDictionary_16__0__DNDSModeAssertionRecord_8l;
  v17[4] = a3;
  v17[5] = a4;
  v9 = [v8 bs_mapNoNulls:v17];

  [v7 bs_setSafeObject:v9 forKey:a3->var0.var0];
  v10 = [(DNDSModeAssertionStoreRecord *)self invalidations];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__DNDSModeAssertionStoreRecord_Dictionary__dictionaryWithKeys_options___block_invoke_2;
  v16[3] = &__block_descriptor_48_e59___NSDictionary_16__0__DNDSModeAssertionInvalidationRecord_8l;
  v16[4] = a3;
  v16[5] = a4;
  v11 = [v10 bs_mapNoNulls:v16];

  [v7 bs_setSafeObject:v11 forKey:a3->var0.var1];
  v12 = [(DNDSModeAssertionStoreRecord *)self invalidationRequests];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__DNDSModeAssertionStoreRecord_Dictionary__dictionaryWithKeys_options___block_invoke_3;
  v15[3] = &__block_descriptor_48_e66___NSDictionary_16__0__DNDSModeAssertionInvalidationRequestRecord_8l;
  v15[4] = a3;
  v15[5] = a4;
  v13 = [v12 bs_mapNoNulls:v15];

  [v7 bs_setSafeObject:v13 forKey:a3->var0.var2];

  return v7;
}

+ (id)recordForAssertionStore:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(DNDSModeAssertionStoreRecord);
    v5 = [v3 assertions];
    v6 = [v5 bs_mapNoNulls:&__block_literal_global_27];

    if ([v6 count])
    {
      [(DNDSModeAssertionStoreRecord *)v4 setAssertions:v6];
    }

    v7 = [v3 invalidations];
    v8 = [v7 bs_mapNoNulls:&__block_literal_global_58_1];

    if ([v8 count])
    {
      [(DNDSModeAssertionStoreRecord *)v4 setInvalidations:v8];
    }

    v9 = [v3 invalidationRequests];
    v10 = [v9 bs_mapNoNulls:&__block_literal_global_62];

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
  v4 = [(DNDSModeAssertionStoreRecord *)self assertions];
  if ([v4 count])
  {
    v5 = [v4 bs_mapNoNulls:&__block_literal_global_67];
    [(DNDSMutableModeAssertionStore *)v3 setAssertions:v5];
  }

  v6 = [(DNDSModeAssertionStoreRecord *)self invalidations];
  if ([v6 count])
  {
    v7 = [v6 bs_mapNoNulls:&__block_literal_global_70];
    [(DNDSMutableModeAssertionStore *)v3 setInvalidations:v7];
  }

  v8 = [(DNDSModeAssertionStoreRecord *)self invalidationRequests];
  if ([v8 count])
  {
    v9 = [v8 bs_mapNoNulls:&__block_literal_global_73_0];
    [(DNDSMutableModeAssertionStore *)v3 setInvalidationRequests:v9];
  }

  return v3;
}

@end