@interface DNDSModeAssertionInvalidationPredicateRecord
+ (id)recordForDictionary:(id)a3 keys:(id *)a4;
+ (id)recordForInvalidationPredicate:(id)a3;
- (id)dictionaryWithKeys:(id *)a3 options:(unint64_t)a4;
- (id)object;
@end

@implementation DNDSModeAssertionInvalidationPredicateRecord

+ (id)recordForDictionary:(id)a3 keys:(id *)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = objc_alloc_init(DNDSModeAssertionInvalidationPredicateRecord);
    v7 = [v5 bs_safeStringForKey:a4->var8.var0];
    [(DNDSModeAssertionInvalidationPredicateRecord *)v6 setPredicateType:v7];

    v8 = [v5 bs_safeNumberForKey:a4->var8.var1];
    [(DNDSModeAssertionInvalidationPredicateRecord *)v6 setDate:v8];

    v9 = [v5 bs_safeArrayForKey:a4->var8.var2];
    v10 = [v9 bs_filter:&__block_literal_global_18];
    [(DNDSModeAssertionInvalidationPredicateRecord *)v6 setClientIdentifiers:v10];

    v11 = [v5 bs_safeArrayForKey:a4->var8.var3];

    v12 = [v11 bs_filter:&__block_literal_global_81];
    [(DNDSModeAssertionInvalidationPredicateRecord *)v6 setUUIDs:v12];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL __85__DNDSModeAssertionInvalidationPredicateRecord_Dictionary__recordForDictionary_keys___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 != 0;
}

BOOL __85__DNDSModeAssertionInvalidationPredicateRecord_Dictionary__recordForDictionary_keys___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 != 0;
}

- (id)dictionaryWithKeys:(id *)a3 options:(unint64_t)a4
{
  v4 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [(DNDSModeAssertionInvalidationPredicateRecord *)self predicateType];
  [v7 bs_setSafeObject:v8 forKey:a3->var8.var0];

  v9 = [(DNDSModeAssertionInvalidationPredicateRecord *)self date];
  [v7 bs_setSafeObject:v9 forKey:a3->var8.var1];

  v10 = [(DNDSModeAssertionInvalidationPredicateRecord *)self clientIdentifiers];
  [v7 bs_setSafeObject:v10 forKey:a3->var8.var2];

  v11 = [(DNDSModeAssertionInvalidationPredicateRecord *)self UUIDs];
  [v7 bs_setSafeObject:v11 forKey:a3->var8.var3];

  if (v4)
  {
    v12 = [(DNDSModeAssertionInvalidationPredicateRecord *)self date];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@Local", a3->var8.var1];
    [v7 dnds_setSafeLocalDateForTimestamp:v12 key:v13];
  }

  return v7;
}

+ (id)recordForInvalidationPredicate:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(DNDSModeAssertionInvalidationPredicateRecord);
    v5 = [v3 predicateType];
    v6 = [MEMORY[0x277CCACA8] dnds_stringForPredicateType:v5];
    [(DNDSModeAssertionInvalidationPredicateRecord *)v4 setPredicateType:v6];

    switch(v5)
    {
      case 3:
        v10 = [v3 UUIDs];
        v8 = [v10 bs_mapNoNulls:&__block_literal_global_314];

        [(DNDSModeAssertionInvalidationPredicateRecord *)v4 setUUIDs:v8];
        break;
      case 2:
        v8 = [v3 clientIdentifiers];
        [(DNDSModeAssertionInvalidationPredicateRecord *)v4 setClientIdentifiers:v8];
        break;
      case 1:
        v7 = MEMORY[0x277CCABB0];
        v8 = [v3 date];
        v9 = [v7 dnds_numberWithDate:v8];
        [(DNDSModeAssertionInvalidationPredicateRecord *)v4 setDate:v9];

        break;
      default:
        goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_10:

  return v4;
}

id __79__DNDSModeAssertionInvalidationPredicateRecord_recordForInvalidationPredicate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 UUIDString];
  }

  else
  {
    v4 = DNDSLogAssertionStore;
    if (os_log_type_enabled(DNDSLogAssertionStore, OS_LOG_TYPE_ERROR))
    {
      __79__DNDSModeAssertionInvalidationPredicateRecord_recordForInvalidationPredicate___block_invoke_cold_1(v4, v2);
    }

    v3 = 0;
  }

  return v3;
}

- (id)object
{
  v3 = [(DNDSModeAssertionInvalidationPredicateRecord *)self predicateType];
  v4 = [v3 dnds_predicateTypeValue];

  v5 = 0;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v7 = [(DNDSModeAssertionInvalidationPredicateRecord *)self clientIdentifiers];
      if ([v7 count])
      {
        v8 = [[DNDSModeAssertionClientIdentifierInvalidationPredicate alloc] initWithClientIdentifiers:v7];
        goto LABEL_13;
      }
    }

    else
    {
      if (v4 != 3)
      {
        goto LABEL_16;
      }

      v9 = [(DNDSModeAssertionInvalidationPredicateRecord *)self UUIDs];
      v7 = [v9 bs_mapNoNulls:&__block_literal_global_320];

      if ([v7 count])
      {
        v8 = [[DNDSModeAssertionUUIDInvalidationPredicate alloc] initWithUUIDs:v7];
        goto LABEL_13;
      }
    }

LABEL_14:
    v5 = 0;
    goto LABEL_15;
  }

  if (!v4)
  {
    v5 = +[DNDSAnyModeAssertionInvalidationPredicate sharedInstance];
    goto LABEL_16;
  }

  if (v4 != 1)
  {
    goto LABEL_16;
  }

  v6 = [(DNDSModeAssertionInvalidationPredicateRecord *)self date];
  v7 = [v6 dnds_dateValue];

  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = [[DNDSModeAssertionDateInvalidationPredicate alloc] initWithDate:v7];
LABEL_13:
  v5 = v8;
LABEL_15:

LABEL_16:

  return v5;
}

id __54__DNDSModeAssertionInvalidationPredicateRecord_object__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

void __79__DNDSModeAssertionInvalidationPredicateRecord_recordForInvalidationPredicate___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_24912E000, v3, OS_LOG_TYPE_ERROR, "Unexpected object (%@) found in invalidation predicate UUIDs: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end