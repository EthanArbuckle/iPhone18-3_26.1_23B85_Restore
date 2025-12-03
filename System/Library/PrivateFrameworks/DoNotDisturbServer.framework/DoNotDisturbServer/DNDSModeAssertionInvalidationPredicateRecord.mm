@interface DNDSModeAssertionInvalidationPredicateRecord
+ (id)recordForDictionary:(id)dictionary keys:(id *)keys;
+ (id)recordForInvalidationPredicate:(id)predicate;
- (id)dictionaryWithKeys:(id *)keys options:(unint64_t)options;
- (id)object;
@end

@implementation DNDSModeAssertionInvalidationPredicateRecord

+ (id)recordForDictionary:(id)dictionary keys:(id *)keys
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v6 = objc_alloc_init(DNDSModeAssertionInvalidationPredicateRecord);
    v7 = [dictionaryCopy bs_safeStringForKey:keys->var8.var0];
    [(DNDSModeAssertionInvalidationPredicateRecord *)v6 setPredicateType:v7];

    v8 = [dictionaryCopy bs_safeNumberForKey:keys->var8.var1];
    [(DNDSModeAssertionInvalidationPredicateRecord *)v6 setDate:v8];

    v9 = [dictionaryCopy bs_safeArrayForKey:keys->var8.var2];
    v10 = [v9 bs_filter:&__block_literal_global_18];
    [(DNDSModeAssertionInvalidationPredicateRecord *)v6 setClientIdentifiers:v10];

    v11 = [dictionaryCopy bs_safeArrayForKey:keys->var8.var3];

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

- (id)dictionaryWithKeys:(id *)keys options:(unint64_t)options
{
  optionsCopy = options;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  predicateType = [(DNDSModeAssertionInvalidationPredicateRecord *)self predicateType];
  [dictionary bs_setSafeObject:predicateType forKey:keys->var8.var0];

  date = [(DNDSModeAssertionInvalidationPredicateRecord *)self date];
  [dictionary bs_setSafeObject:date forKey:keys->var8.var1];

  clientIdentifiers = [(DNDSModeAssertionInvalidationPredicateRecord *)self clientIdentifiers];
  [dictionary bs_setSafeObject:clientIdentifiers forKey:keys->var8.var2];

  uUIDs = [(DNDSModeAssertionInvalidationPredicateRecord *)self UUIDs];
  [dictionary bs_setSafeObject:uUIDs forKey:keys->var8.var3];

  if (optionsCopy)
  {
    date2 = [(DNDSModeAssertionInvalidationPredicateRecord *)self date];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@Local", keys->var8.var1];
    [dictionary dnds_setSafeLocalDateForTimestamp:date2 key:v13];
  }

  return dictionary;
}

+ (id)recordForInvalidationPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (predicateCopy)
  {
    v4 = objc_alloc_init(DNDSModeAssertionInvalidationPredicateRecord);
    predicateType = [predicateCopy predicateType];
    v6 = [MEMORY[0x277CCACA8] dnds_stringForPredicateType:predicateType];
    [(DNDSModeAssertionInvalidationPredicateRecord *)v4 setPredicateType:v6];

    switch(predicateType)
    {
      case 3:
        uUIDs = [predicateCopy UUIDs];
        clientIdentifiers = [uUIDs bs_mapNoNulls:&__block_literal_global_314];

        [(DNDSModeAssertionInvalidationPredicateRecord *)v4 setUUIDs:clientIdentifiers];
        break;
      case 2:
        clientIdentifiers = [predicateCopy clientIdentifiers];
        [(DNDSModeAssertionInvalidationPredicateRecord *)v4 setClientIdentifiers:clientIdentifiers];
        break;
      case 1:
        v7 = MEMORY[0x277CCABB0];
        clientIdentifiers = [predicateCopy date];
        v9 = [v7 dnds_numberWithDate:clientIdentifiers];
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
  predicateType = [(DNDSModeAssertionInvalidationPredicateRecord *)self predicateType];
  dnds_predicateTypeValue = [predicateType dnds_predicateTypeValue];

  v5 = 0;
  if (dnds_predicateTypeValue > 1)
  {
    if (dnds_predicateTypeValue == 2)
    {
      clientIdentifiers = [(DNDSModeAssertionInvalidationPredicateRecord *)self clientIdentifiers];
      if ([clientIdentifiers count])
      {
        v8 = [[DNDSModeAssertionClientIdentifierInvalidationPredicate alloc] initWithClientIdentifiers:clientIdentifiers];
        goto LABEL_13;
      }
    }

    else
    {
      if (dnds_predicateTypeValue != 3)
      {
        goto LABEL_16;
      }

      uUIDs = [(DNDSModeAssertionInvalidationPredicateRecord *)self UUIDs];
      clientIdentifiers = [uUIDs bs_mapNoNulls:&__block_literal_global_320];

      if ([clientIdentifiers count])
      {
        v8 = [[DNDSModeAssertionUUIDInvalidationPredicate alloc] initWithUUIDs:clientIdentifiers];
        goto LABEL_13;
      }
    }

LABEL_14:
    v5 = 0;
    goto LABEL_15;
  }

  if (!dnds_predicateTypeValue)
  {
    v5 = +[DNDSAnyModeAssertionInvalidationPredicate sharedInstance];
    goto LABEL_16;
  }

  if (dnds_predicateTypeValue != 1)
  {
    goto LABEL_16;
  }

  date = [(DNDSModeAssertionInvalidationPredicateRecord *)self date];
  clientIdentifiers = [date dnds_dateValue];

  if (!clientIdentifiers)
  {
    goto LABEL_14;
  }

  v8 = [[DNDSModeAssertionDateInvalidationPredicate alloc] initWithDate:clientIdentifiers];
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