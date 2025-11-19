@interface HDKeyValueEntity
+ (BOOL)_doInsertValues:(void *)a3 forKeys:(void *)a4 modificationDates:(void *)a5 domain:(uint64_t)a6 category:(uint64_t)a7 provenance:(uint64_t)a8 syncIdentity:(uint64_t)a9 updatePolicy:(void *)a10 database:(uint64_t)a11 error:;
+ (BOOL)_enumerateKeyValueEntitiesInCategory:(int64_t)a3 predicate:(id)a4 healthDatabase:(id)a5 error:(id *)a6 usingBlock:(id)a7;
+ (BOOL)_insertCodableCategoryDomainDictionary:(id)a3 provenance:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)_insertCodableTimestampedKeyValuePairs:(id)a3 domain:(id)a4 category:(int64_t)a5 provenance:(int64_t)a6 syncIdentity:(int64_t)a7 updatePolicy:(int64_t)a8 profile:(id)a9 error:(id *)a10;
+ (BOOL)_insertKeysAndValues:(id)a3 modificationDate:(id)a4 domain:(id)a5 category:(int64_t)a6 provenance:(int64_t)a7 syncIdentity:(int64_t)a8 updatePolicy:(int64_t)a9 profile:(id)a10 error:(id *)a11;
+ (BOOL)_insertValues:(id)a3 forKeys:(id)a4 modificationDates:(id)a5 domain:(id)a6 category:(int64_t)a7 provenance:(int64_t)a8 syncIdentity:(int64_t)a9 updatePolicy:(int64_t)a10 profile:(id)a11 error:(id *)a12;
+ (BOOL)_setRawKeysAndValues:(id)a3 domain:(id)a4 category:(int64_t)a5 syncIdentity:(int64_t)a6 database:(id)a7 error:(id *)a8;
+ (BOOL)enumerateValuesForDomain:(id)a3 category:(int64_t)a4 keys:(id)a5 profile:(id)a6 error:(id *)a7 usingBlock:(id)a8;
+ (BOOL)persistDatabaseIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (BOOL)persistDatabaseIdentifier:(id)a3 syncIdentity:(int64_t)a4 database:(id)a5 error:(id *)a6;
+ (BOOL)removeValuesForDomain:(id)a3 category:(int64_t)a4 keys:(id)a5 profile:(id)a6 error:(id *)a7;
+ (BOOL)setData:(id)a3 forKey:(id)a4 domain:(id)a5 category:(int64_t)a6 profile:(id)a7 error:(id *)a8;
+ (BOOL)setData:(id)a3 forKey:(id)a4 domain:(id)a5 category:(int64_t)a6 syncIdentity:(int64_t)a7 profile:(id)a8 error:(id *)a9;
+ (BOOL)setDate:(id)a3 forKey:(id)a4 domain:(id)a5 category:(int64_t)a6 profile:(id)a7 error:(id *)a8;
+ (BOOL)setDateComponents:(id)a3 forKey:(id)a4 domain:(id)a5 category:(int64_t)a6 profile:(id)a7 error:(id *)a8;
+ (BOOL)setNumber:(id)a3 forKey:(id)a4 domain:(id)a5 category:(int64_t)a6 profile:(id)a7 error:(id *)a8;
+ (BOOL)setOkemoZursObjectAnchor:(int64_t)a3 syncIdentity:(int64_t)a4 database:(id)a5 error:(id *)a6;
+ (BOOL)setQuantity:(id)a3 unit:(id)a4 forKey:(id)a5 domain:(id)a6 category:(int64_t)a7 profile:(id)a8 error:(id *)a9;
+ (BOOL)setString:(id)a3 forKey:(id)a4 domain:(id)a5 category:(int64_t)a6 profile:(id)a7 error:(id *)a8;
+ (BOOL)setValueForAllKeys:(id)a3 domain:(id)a4 category:(int64_t)a5 profile:(id)a6 error:(id *)a7;
+ (BOOL)setValuesWithDictionary:(id)a3 domain:(id)a4 category:(int64_t)a5 profile:(id)a6 error:(id *)a7;
+ (Class)_entityClassForKeyValueCategory:(int64_t)a3;
+ (id)_modDateForKey:(id)a3 domain:(id)a4 category:(int64_t)a5 profile:(id)a6 entity:(id *)a7 error:(id *)a8;
+ (id)_predicateForCategory:(uint64_t)a1;
+ (id)_predicateForDomain:(uint64_t)a1;
+ (id)_predicateForKeys:(uint64_t)a1;
+ (id)_rawValueForKey:(void *)a3 domain:(uint64_t)a4 category:(void *)a5 profile:(void *)a6 entity:(uint64_t)a7 error:;
+ (id)_rawValuesForKeys:(id)a3 domain:(id)a4 category:(int64_t)a5 database:(id)a6 error:(id *)a7;
+ (id)_valuesForKeys:(void *)a3 domain:(uint64_t)a4 category:(void *)a5 profile:(uint64_t)a6 error:(void *)a7 handler:;
+ (id)allValuesForDomain:(id)a3 category:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (id)dataForKey:(id)a3 domain:(id)a4 category:(int64_t)a5 profile:(id)a6 entity:(id *)a7 error:(id *)a8;
+ (id)dateComponentsForKey:(id)a3 domain:(id)a4 category:(int64_t)a5 profile:(id)a6 entity:(id *)a7 error:(id *)a8;
+ (id)dateForKey:(id)a3 domain:(id)a4 category:(int64_t)a5 profile:(id)a6 entity:(id *)a7 error:(id *)a8;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)generateNewDatabaseIdentifier;
+ (id)numberForKey:(id)a3 domain:(id)a4 category:(int64_t)a5 profile:(id)a6 entity:(id *)a7 error:(id *)a8;
+ (id)okemoZursObjectAnchorWithProfile:(id)a3 error:(id *)a4;
+ (id)quantityForKey:(id)a3 unit:(id)a4 domain:(id)a5 category:(int64_t)a6 profile:(id)a7 entity:(id *)a8 error:(id *)a9;
+ (id)retrieveDatabaseIdentifierCreationDateFromProfile:(id)a3 error:(id *)a4;
+ (id)retrieveDatabaseIdentifierFromDatabase:(id)a3 error:(id *)a4;
+ (id)retrieveDatabaseIdentifierFromProfile:(id)a3 error:(id *)a4;
+ (id)stringForKey:(id)a3 domain:(id)a4 category:(int64_t)a5 profile:(id)a6 entity:(id *)a7 error:(id *)a8;
+ (id)uniquedColumns;
+ (id)valuesForKeys:(id)a3 domain:(id)a4 category:(int64_t)a5 profile:(id)a6 error:(id *)a7;
+ (uint64_t)_readRawValuesInCategory:(void *)a3 predicate:(void *)a4 database:(uint64_t)a5 error:(void *)a6 usingBlock:;
+ (uint64_t)_setRawKeysAndValues:(void *)a3 domain:(uint64_t)a4 category:(void *)a5 profile:(uint64_t)a6 error:;
@end

@implementation HDKeyValueEntity

+ (id)generateNewDatabaseIdentifier
{
  v2 = [MEMORY[0x277CCAD78] UUID];
  v3 = [v2 hk_dataForUUIDBytes];

  return v3;
}

+ (BOOL)persistDatabaseIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  LOBYTE(a5) = [a1 setData:v9 forKey:@"IDENTIFIER" domain:@"DATABASE_CREATION" category:objc_msgSend(a1 profile:"_deviceLocalCategory") error:{v8, a5}];

  return a5;
}

+ (id)retrieveDatabaseIdentifierFromProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 dataForKey:@"IDENTIFIER" domain:@"DATABASE_CREATION" category:objc_msgSend(a1 profile:"_deviceLocalCategory") entity:v6 error:{0, a4}];

  return v7;
}

+ (id)retrieveDatabaseIdentifierCreationDateFromProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 _modDateForKey:@"IDENTIFIER" domain:@"DATABASE_CREATION" category:objc_msgSend(a1 profile:"_deviceLocalCategory") entity:v6 error:{0, a4}];

  return v7;
}

+ (BOOL)persistDatabaseIdentifier:(id)a3 syncIdentity:(int64_t)a4 database:(id)a5 error:(id *)a6
{
  v20[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:a2 object:a1 file:@"HDKeyValueEntity+DatabaseProperties.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"(data == nil) || [data isKindOfClass:[NSData class]]"}];
    }
  }

  v19 = @"IDENTIFIER";
  v13 = _HDSQLiteValueForData();
  v20[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  v15 = [a1 _setRawKeysAndValues:v14 domain:@"DATABASE_CREATION" category:objc_msgSend(a1 syncIdentity:"_deviceLocalCategory") database:a4 error:{v12, a6}];
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (id)retrieveDatabaseIdentifierFromDatabase:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!a4)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"HDKeyValueEntity+DatabaseProperties.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"error"}];
  }

  v8 = [a1 _deviceLocalCategory];
  v16[0] = @"IDENTIFIER";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v10 = [a1 _rawValuesForKeys:v9 domain:@"DATABASE_CREATION" category:v8 database:v7 error:a4];

  if (!v10 && !*a4)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"HDKeyValueEntity+DatabaseProperties.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"values || *error"}];
  }

  v11 = [v10 objectForKeyedSubscript:@"IDENTIFIER"];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (BOOL)setOkemoZursObjectAnchor:(int64_t)a3 syncIdentity:(int64_t)a4 database:(id)a5 error:(id *)a6
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17 = @"OBJECT_ANCHOR_8_2";
  v10 = MEMORY[0x277CCABB0];
  v11 = a5;
  v12 = [v10 numberWithLongLong:a3];
  v13 = _HDSQLiteValueForNumber();
  v18[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

  LOBYTE(a6) = [a1 _setRawKeysAndValues:v14 domain:@"OBJECT_ANCHOR" category:objc_msgSend(a1 syncIdentity:"_deviceLocalCategory") database:a4 error:{v11, a6}];
  v15 = *MEMORY[0x277D85DE8];
  return a6;
}

+ (id)okemoZursObjectAnchorWithProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 numberForKey:@"OBJECT_ANCHOR_8_2" domain:@"OBJECT_ANCHOR" category:objc_msgSend(a1 profile:"_deviceLocalCategory") entity:v6 error:{0, a4}];

  return v7;
}

+ (id)dataForKey:(id)a3 domain:(id)a4 category:(int64_t)a5 profile:(id)a6 entity:(id *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = [(HDKeyValueEntity *)a1 _rawValueForKey:v14 domain:a4 category:a5 profile:a6 entity:a7 error:a8];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = objc_opt_class();
    v18 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Found unexpected type %@ for key %@, expecting %@", objc_opt_class(), v14, v17}];
    if (v18)
    {
      if (a8)
      {
        v19 = v18;
        *a8 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  return v16;
}

+ (id)_rawValueForKey:(void *)a3 domain:(uint64_t)a4 category:(void *)a5 profile:(void *)a6 entity:(uint64_t)a7 error:
{
  v36[1] = *MEMORY[0x277D85DE8];
  v12 = a2;
  v13 = a3;
  v14 = a5;
  v15 = objc_opt_self();
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__171;
  v34 = __Block_byref_object_dispose__171;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__171;
  v28 = __Block_byref_object_dispose__171;
  v29 = 0;
  if (v12)
  {
    v16 = v15;
    v36[0] = v12;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __73__HDKeyValueEntity__rawValueForKey_domain_category_profile_entity_error___block_invoke;
    v23[3] = &unk_27862ACA0;
    v23[4] = &v30;
    v23[5] = &v24;
    v23[6] = a6;
    v23[7] = v16;
    v18 = [(HDKeyValueEntity *)v16 _valuesForKeys:v17 domain:v13 category:a4 profile:v14 error:a7 handler:v23];
  }

  if (a6)
  {
    v19 = v25[5];
    if (v19)
    {
      *a6 = v19;
    }
  }

  v20 = v31[5];
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)dateForKey:(id)a3 domain:(id)a4 category:(int64_t)a5 profile:(id)a6 entity:(id *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = [(HDKeyValueEntity *)a1 _rawValueForKey:v14 domain:a4 category:a5 profile:a6 entity:a7 error:a8];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = objc_opt_class();
    v18 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Found unexpected type %@ for key %@, expecting %@", objc_opt_class(), v14, v17}];
    if (v18)
    {
      if (a8)
      {
        v19 = v18;
        *a8 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v16 = 0;
  }

  else
  {
    v16 = _HDDateForSQLiteValue();
  }

  return v16;
}

+ (id)dateComponentsForKey:(id)a3 domain:(id)a4 category:(int64_t)a5 profile:(id)a6 entity:(id *)a7 error:(id *)a8
{
  v8 = [a1 dateForKey:a3 domain:a4 category:a5 profile:a6 entity:a7 error:a8];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEA80] hk_canonicalDateOfBirthDateComponentsWithDate:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)quantityForKey:(id)a3 unit:(id)a4 domain:(id)a5 category:(int64_t)a6 profile:(id)a7 entity:(id *)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = [(HDKeyValueEntity *)a1 _rawValueForKey:v15 domain:a5 category:a6 profile:a7 entity:a8 error:a9];
  if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v19 = objc_opt_class();
    v20 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Found unexpected type %@ for key %@, expecting %@", objc_opt_class(), v15, v19}];
    if (v20)
    {
      if (a9)
      {
        v21 = v20;
        *a9 = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v18 = 0;
  }

  else
  {
    v18 = _HDQuantityForSQLiteValue();
  }

  return v18;
}

+ (id)numberForKey:(id)a3 domain:(id)a4 category:(int64_t)a5 profile:(id)a6 entity:(id *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = [(HDKeyValueEntity *)a1 _rawValueForKey:v14 domain:a4 category:a5 profile:a6 entity:a7 error:a8];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = objc_opt_class();
    v18 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Found unexpected type %@ for key %@, expecting %@", objc_opt_class(), v14, v17}];
    if (v18)
    {
      if (a8)
      {
        v19 = v18;
        *a8 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  return v16;
}

+ (id)stringForKey:(id)a3 domain:(id)a4 category:(int64_t)a5 profile:(id)a6 entity:(id *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = [(HDKeyValueEntity *)a1 _rawValueForKey:v14 domain:a4 category:a5 profile:a6 entity:a7 error:a8];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = objc_opt_class();
    v18 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Found unexpected type %@ for key %@, expecting %@", objc_opt_class(), v14, v17}];
    if (v18)
    {
      if (a8)
      {
        v19 = v18;
        *a8 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  return v16;
}

+ (id)valuesForKeys:(id)a3 domain:(id)a4 category:(int64_t)a5 profile:(id)a6 error:(id *)a7
{
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = objc_opt_self();
  v15 = [(HDKeyValueEntity *)v14 _valuesForKeys:v13 domain:v12 category:a5 profile:v11 error:a7 handler:&__block_literal_global_366_1];

  return v15;
}

+ (BOOL)enumerateValuesForDomain:(id)a3 category:(int64_t)a4 keys:(id)a5 profile:(id)a6 error:(id *)a7 usingBlock:(id)a8
{
  v26[2] = *MEMORY[0x277D85DE8];
  v14 = a5;
  v15 = a8;
  v16 = a6;
  v17 = [(HDKeyValueEntity *)a1 _predicateForDomain:a3];
  if ([v14 count])
  {
    [(HDKeyValueEntity *)a1 _predicateForKeys:v14];
  }

  else
  {
    [MEMORY[0x277D10B70] truePredicate];
  }
  v18 = ;
  v19 = MEMORY[0x277D10B20];
  v26[0] = v17;
  v26[1] = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v21 = [v19 predicateMatchingAllPredicates:v20];

  v22 = [v16 database];

  v23 = [a1 _enumerateKeyValueEntitiesInCategory:a4 predicate:v21 healthDatabase:v22 error:a7 usingBlock:v15];
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (id)_predicateForDomain:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    v6 = v3;
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:sel__predicateForDomain_ object:v6 file:@"HDKeyValueEntity.m" lineNumber:1108 description:{@"Invalid parameter not satisfying: %@", @"domain != nil"}];
  }

  v4 = [MEMORY[0x277D10B18] predicateWithProperty:@"domain" equalToValue:v2];

  return v4;
}

+ (id)_predicateForKeys:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  if ([v2 count])
  {
    v3 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"key" values:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)allValuesForDomain:(id)a3 category:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v10 = MEMORY[0x277CBEB38];
  v11 = a5;
  v12 = a3;
  v13 = [v10 dictionary];
  v14 = [MEMORY[0x277CBEB68] null];
  v15 = [(HDKeyValueEntity *)a1 _predicateForDomain:v12];

  v16 = [v11 database];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __62__HDKeyValueEntity_allValuesForDomain_category_profile_error___block_invoke;
  v22[3] = &unk_278628C58;
  v23 = v14;
  v17 = v13;
  v24 = v17;
  v18 = v14;
  LOBYTE(a6) = [a1 _enumerateKeyValueEntitiesInCategory:a4 predicate:v15 healthDatabase:v16 error:a6 usingBlock:v22];

  if ((a6 & 1) == 0)
  {

    v17 = 0;
  }

  v19 = v24;
  v20 = v17;

  return v17;
}

void __62__HDKeyValueEntity_allValuesForDomain_category_profile_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v12 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10 && ([v10 isEqual:*(a1 + 32)] & 1) == 0)
  {
    [*(a1 + 40) setObject:v10 forKeyedSubscript:v9];
  }
}

+ (id)_valuesForKeys:(void *)a3 domain:(uint64_t)a4 category:(void *)a5 profile:(uint64_t)a6 error:(void *)a7 handler:
{
  v34[2] = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a7;
  v12 = a5;
  v13 = a3;
  v14 = objc_opt_self();
  if (![v10 count])
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:sel__valuesForKeys_domain_category_profile_error_handler_ object:v14 file:@"HDKeyValueEntity.m" lineNumber:571 description:{@"Invalid parameter not satisfying: %@", @"[keys count] > 0"}];
  }

  v15 = [MEMORY[0x277CBEB38] dictionary];
  v16 = [(HDKeyValueEntity *)v14 _predicateForKeys:v10];
  v17 = [(HDKeyValueEntity *)v14 _predicateForDomain:v13];

  v18 = MEMORY[0x277D10B20];
  v34[0] = v17;
  v34[1] = v16;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v20 = [v18 predicateMatchingAllPredicates:v19];

  v21 = [v12 database];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __73__HDKeyValueEntity__valuesForKeys_domain_category_profile_error_handler___block_invoke;
  v31[3] = &unk_27862AD10;
  v33 = v11;
  v22 = v15;
  v32 = v22;
  v23 = v11;
  LOBYTE(v19) = [v14 _enumerateKeyValueEntitiesInCategory:a4 predicate:v20 healthDatabase:v21 error:a6 usingBlock:v31];

  if ((v19 & 1) == 0)
  {

    v22 = 0;
  }

  v24 = v32;
  v25 = v22;

  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (BOOL)setData:(id)a3 forKey:(id)a4 domain:(id)a5 category:(int64_t)a6 profile:(id)a7 error:(id *)a8
{
  v26[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v24 = [MEMORY[0x277CCA890] currentHandler];
      [v24 handleFailureInMethod:a2 object:a1 file:@"HDKeyValueEntity.m" lineNumber:309 description:{@"Invalid parameter not satisfying: %@", @"(data == nil) || [data isKindOfClass:[NSData class]]"}];
    }
  }

  v25 = v16;
  v19 = _HDSQLiteValueForData();
  v26[0] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  v21 = [(HDKeyValueEntity *)a1 _setRawKeysAndValues:v20 domain:v17 category:a6 profile:v18 error:a8];
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (uint64_t)_setRawKeysAndValues:(void *)a3 domain:(uint64_t)a4 category:(void *)a5 profile:(uint64_t)a6 error:
{
  v10 = a5;
  v11 = a3;
  v12 = a2;
  v13 = objc_opt_self();
  if (!v12)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:sel__setRawKeysAndValues_domain_category_profile_error_ object:v13 file:@"HDKeyValueEntity.m" lineNumber:658 description:{@"Invalid parameter not satisfying: %@", @"keysAndValues != nil"}];
  }

  v14 = objc_opt_self();
  if (v14 != [v14 _entityClassForKeyValueCategory:a4])
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:sel__setRawKeysAndValues_domain_category_profile_error_ object:v13 file:@"HDKeyValueEntity.m" lineNumber:659 description:{@"Invalid parameter not satisfying: %@", @"[self _validateEntityClassForCategory:category]"}];
  }

  v15 = [MEMORY[0x277CBEAA8] date];
  v16 = [v13 _insertKeysAndValues:v12 modificationDate:v15 domain:v11 category:a4 provenance:0 syncIdentity:-2 updatePolicy:1 profile:v10 error:a6];

  return v16;
}

+ (BOOL)setData:(id)a3 forKey:(id)a4 domain:(id)a5 category:(int64_t)a6 syncIdentity:(int64_t)a7 profile:(id)a8 error:(id *)a9
{
  v31[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v28 = [MEMORY[0x277CCA890] currentHandler];
      [v28 handleFailureInMethod:a2 object:a1 file:@"HDKeyValueEntity.m" lineNumber:322 description:{@"Invalid parameter not satisfying: %@", @"(data == nil) || [data isKindOfClass:[NSData class]]"}];
    }
  }

  v30 = v16;
  v19 = _HDSQLiteValueForData();
  v31[0] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];

  if (!v20)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:a1 file:@"HDKeyValueEntity.m" lineNumber:324 description:{@"Invalid parameter not satisfying: %@", @"dict != nil"}];
  }

  v21 = objc_opt_self();
  if (v21 != [v21 _entityClassForKeyValueCategory:a6])
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"HDKeyValueEntity.m" lineNumber:325 description:{@"Invalid parameter not satisfying: %@", @"[self _validateEntityClassForCategory:category]"}];
  }

  v22 = [MEMORY[0x277CBEAA8] date];
  v23 = [a1 _insertKeysAndValues:v20 modificationDate:v22 domain:v17 category:a6 provenance:0 syncIdentity:a7 updatePolicy:1 profile:v18 error:a9];

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (BOOL)setDate:(id)a3 forKey:(id)a4 domain:(id)a5 category:(int64_t)a6 profile:(id)a7 error:(id *)a8
{
  v26[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v24 = [MEMORY[0x277CCA890] currentHandler];
      [v24 handleFailureInMethod:a2 object:a1 file:@"HDKeyValueEntity.m" lineNumber:346 description:{@"Invalid parameter not satisfying: %@", @"(date == nil) || [date isKindOfClass:[NSDate class]]"}];
    }
  }

  v25 = v16;
  v19 = _HDSQLiteValueForDate();
  v26[0] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  v21 = [(HDKeyValueEntity *)a1 _setRawKeysAndValues:v20 domain:v17 category:a6 profile:v18 error:a8];
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (BOOL)setDateComponents:(id)a3 forKey:(id)a4 domain:(id)a5 category:(int64_t)a6 profile:(id)a7 error:(id *)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = [MEMORY[0x277CCA890] currentHandler];
      [v25 handleFailureInMethod:a2 object:a1 file:@"HDKeyValueEntity.m" lineNumber:358 description:{@"Invalid parameter not satisfying: %@", @"(dateComponents == nil) || [dateComponents isKindOfClass:[NSDateComponents class]]"}];
    }

    v19 = [v15 calendar];
    v20 = [v19 copy];

    v21 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    [v20 setTimeZone:v21];

    v22 = [v20 dateFromComponents:v15];
  }

  else
  {
    v22 = 0;
  }

  v23 = [a1 setDate:v22 forKey:v16 domain:v17 category:a6 profile:v18 error:a8];

  return v23;
}

+ (BOOL)setQuantity:(id)a3 unit:(id)a4 forKey:(id)a5 domain:(id)a6 category:(int64_t)a7 profile:(id)a8 error:(id *)a9
{
  v28[1] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = [MEMORY[0x277CCA890] currentHandler];
      [v26 handleFailureInMethod:a2 object:a1 file:@"HDKeyValueEntity.m" lineNumber:376 description:{@"Invalid parameter not satisfying: %@", @"quanity == nil || [quanity isKindOfClass:[HKQuantity class]]"}];
    }
  }

  v27 = v18;
  v21 = _HDSQLiteValueForQuantity();
  v28[0] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];

  v23 = [(HDKeyValueEntity *)a1 _setRawKeysAndValues:v22 domain:v19 category:a7 profile:v20 error:a9];
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (BOOL)setNumber:(id)a3 forKey:(id)a4 domain:(id)a5 category:(int64_t)a6 profile:(id)a7 error:(id *)a8
{
  v26[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v24 = [MEMORY[0x277CCA890] currentHandler];
      [v24 handleFailureInMethod:a2 object:a1 file:@"HDKeyValueEntity.m" lineNumber:388 description:{@"Invalid parameter not satisfying: %@", @"(number == nil) || [number isKindOfClass:[NSNumber class]]"}];
    }
  }

  v25 = v16;
  v19 = _HDSQLiteValueForNumber();
  v26[0] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  v21 = [(HDKeyValueEntity *)a1 _setRawKeysAndValues:v20 domain:v17 category:a6 profile:v18 error:a8];
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (BOOL)setString:(id)a3 forKey:(id)a4 domain:(id)a5 category:(int64_t)a6 profile:(id)a7 error:(id *)a8
{
  v26[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v24 = [MEMORY[0x277CCA890] currentHandler];
      [v24 handleFailureInMethod:a2 object:a1 file:@"HDKeyValueEntity.m" lineNumber:400 description:{@"Invalid parameter not satisfying: %@", @"(string == nil) || [string isKindOfClass:[NSString class]]"}];
    }
  }

  v25 = v16;
  v19 = _HDSQLiteValueForString();
  v26[0] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  v21 = [(HDKeyValueEntity *)a1 _setRawKeysAndValues:v20 domain:v17 category:a6 profile:v18 error:a8];
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (BOOL)setValuesWithDictionary:(id)a3 domain:(id)a4 category:(int64_t)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if ([v12 count])
  {
    v15 = [(HDKeyValueEntity *)a1 _setRawKeysAndValues:v12 domain:v13 category:a5 profile:v14 error:a7];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

+ (BOOL)removeValuesForDomain:(id)a3 category:(int64_t)a4 keys:(id)a5 profile:(id)a6 error:(id *)a7
{
  v25[3] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (v13 && ![v13 count])
  {
    v22 = 1;
  }

  else
  {
    v15 = [(HDKeyValueEntity *)a1 _predicateForDomain:v12];
    v16 = [(HDKeyValueEntity *)a1 _predicateForCategory:a4];
    if (v13)
    {
      [(HDKeyValueEntity *)a1 _predicateForKeys:v13];
    }

    else
    {
      [MEMORY[0x277D10B70] truePredicate];
    }
    v17 = ;
    v18 = MEMORY[0x277D10B20];
    v25[0] = v15;
    v25[1] = v16;
    v25[2] = v17;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
    v20 = [v18 predicateMatchingAllPredicates:v19];

    v21 = [v14 database];
    v22 = [a1 deleteEntitiesWithPredicate:v20 healthDatabase:v21 error:a7];
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (id)_predicateForCategory:(uint64_t)a1
{
  objc_opt_self();
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v5 = [v3 predicateWithProperty:@"category" equalToValue:v4];

  return v5;
}

+ (BOOL)setValueForAllKeys:(id)a3 domain:(id)a4 category:(int64_t)a5 profile:(id)a6 error:(id *)a7
{
  v36[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [v13 database];
  v15 = [(HDKeyValueEntity *)a1 _predicateForDomain:v12];
  v16 = [(HDKeyValueEntity *)a1 _predicateForCategory:a5];
  v17 = MEMORY[0x277D10B20];
  v36[0] = v15;
  v36[1] = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v19 = [v17 predicateMatchingAllPredicates:v18];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __69__HDKeyValueEntity_setValueForAllKeys_domain_category_profile_error___block_invoke;
  v28[3] = &unk_278614558;
  v29 = v13;
  v30 = v12;
  v34 = a5;
  v35 = a1;
  v31 = v19;
  v32 = v14;
  v33 = v11;
  v20 = v11;
  v21 = v14;
  v22 = v19;
  v23 = v12;
  v24 = v13;
  LOBYTE(v18) = [a1 performWriteTransactionWithHealthDatabase:v21 error:a7 block:v28];

  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __69__HDKeyValueEntity_setValueForAllKeys_domain_category_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 keyValueDomainManager];
  [v7 batchNotificationForDomain:*(a1 + 40) category:*(a1 + 72) forTransaction:v6];

  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = *(a1 + 80);
  v20[0] = @"value";
  v20[1] = @"mod_date";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__HDKeyValueEntity_setValueForAllKeys_domain_category_profile_error___block_invoke_2;
  v17[3] = &unk_278613DE8;
  v18 = *(a1 + 64);
  v19 = v8;
  v13 = v8;
  v14 = [v9 updateProperties:v10 predicate:v11 healthDatabase:v12 error:a3 bindingHandler:v17];

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void __69__HDKeyValueEntity_setValueForAllKeys_domain_category_profile_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6BF0](a2, @"value", *(a1 + 32));
  v3 = *(a1 + 40);

  JUMPOUT(0x22AAC6B50);
}

void *__73__HDKeyValueEntity__rawValueForKey_domain_category_profile_entity_error___block_invoke(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v8 = [MEMORY[0x277CBEB68] null];
  if ([v7 isEqual:v8])
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  objc_storeStrong((*(a1[4] + 8) + 40), v9);

  if (a1[6])
  {
    v10 = a1[7];
    v11 = [objc_alloc(objc_opt_class()) initWithPersistentID:a5];
    v12 = *(a1[5] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  v14 = *(*(a1[4] + 8) + 40);
  v15 = v14;

  return v14;
}

+ (id)_rawValuesForKeys:(id)a3 domain:(id)a4 category:(int64_t)a5 database:(id)a6 error:(id *)a7
{
  v12 = MEMORY[0x277CBEB38];
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [v12 dictionary];
  v17 = [(HDKeyValueEntity *)a1 _predicateForKeys:v15];

  v18 = [(HDKeyValueEntity *)a1 _predicateForDomain:v14];

  v19 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v18 otherPredicate:v17];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__HDKeyValueEntity__rawValuesForKeys_domain_category_database_error___block_invoke;
  v22[3] = &unk_27862ACC8;
  v20 = v16;
  v23 = v20;
  LOBYTE(a7) = [(HDKeyValueEntity *)a1 _readRawValuesInCategory:a5 predicate:v19 database:v13 error:a7 usingBlock:v22];

  if ((a7 & 1) == 0)
  {

    v20 = 0;
  }

  return v20;
}

void __69__HDKeyValueEntity__rawValuesForKeys_domain_category_database_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    v12 = [MEMORY[0x277CBEB68] null];
    v13 = [v10 isEqual:v12];

    if ((v13 & 1) == 0)
    {
      [*(a1 + 32) setObject:v10 forKeyedSubscript:v9];
    }
  }
}

+ (uint64_t)_readRawValuesInCategory:(void *)a3 predicate:(void *)a4 database:(uint64_t)a5 error:(void *)a6 usingBlock:
{
  v24[4] = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_self();
  v24[0] = @"domain";
  v24[1] = @"key";
  v24[2] = @"value";
  v24[3] = @"mod_date";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
  v15 = [(HDKeyValueEntity *)v13 _predicateForCategory:a2];
  v16 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v15 otherPredicate:v12];

  v17 = [v13 queryWithDatabase:v11 predicate:v16];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __81__HDKeyValueEntity__readRawValuesInCategory_predicate_database_error_usingBlock___block_invoke;
  v22[3] = &unk_278616A78;
  v23 = v10;
  v18 = v10;
  v19 = [v17 enumeratePersistentIDsAndProperties:v14 error:a5 enumerationHandler:v22];

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void *__68__HDKeyValueEntity__rawValuesForKeys_domain_category_profile_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277CBEB68];
  v4 = a3;
  v5 = [v3 null];
  if ([v4 isEqual:v5])
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v6;
}

void __73__HDKeyValueEntity__valuesForKeys_domain_category_profile_error_handler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v16 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = *(a1 + 40);
  if (v14)
  {
    v15 = (*(v14 + 16))(v14, v11, v12, v13, a6);

    v12 = v15;
  }

  if (v12)
  {
    [*(a1 + 32) setObject:v12 forKeyedSubscript:v11];
  }
}

uint64_t __81__HDKeyValueEntity__readRawValuesInCategory_predicate_database_error_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x22AAC6C90](a4, 0);
  v7 = MEMORY[0x22AAC6C90](a4, 1);
  v8 = MEMORY[0x22AAC6C70](a4, 2);
  v9 = MEMORY[0x22AAC6C40](a4, 3);
  (*(*(a1 + 32) + 16))();

  return 1;
}

+ (BOOL)_enumerateKeyValueEntitiesInCategory:(int64_t)a3 predicate:(id)a4 healthDatabase:(id)a5 error:(id *)a6 usingBlock:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = objc_opt_self();
  if (v16 != [v16 _entityClassForKeyValueCategory:a3])
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"HDKeyValueEntity.m" lineNumber:638 description:{@"Invalid parameter not satisfying: %@", @"[self _validateEntityClassForCategory:category]"}];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __99__HDKeyValueEntity__enumerateKeyValueEntitiesInCategory_predicate_healthDatabase_error_usingBlock___block_invoke;
  v22[3] = &unk_2786145D0;
  v25 = a1;
  v26 = a3;
  v23 = v13;
  v24 = v15;
  v17 = v15;
  v18 = v13;
  v19 = [a1 performReadTransactionWithHealthDatabase:v14 error:a6 block:v22];

  return v19;
}

uint64_t __99__HDKeyValueEntity__enumerateKeyValueEntitiesInCategory_predicate_healthDatabase_error_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = [a2 databaseForEntityClass:v5];
  v9 = [(HDKeyValueEntity *)v5 _readRawValuesInCategory:v6 predicate:v7 database:v8 error:a3 usingBlock:*(a1 + 40)];

  return v9;
}

+ (BOOL)_setRawKeysAndValues:(id)a3 domain:(id)a4 category:(int64_t)a5 syncIdentity:(int64_t)a6 database:(id)a7 error:(id *)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a7;
  if (!v15)
  {
    v35 = [MEMORY[0x277CCA890] currentHandler];
    [v35 handleFailureInMethod:a2 object:a1 file:@"HDKeyValueEntity.m" lineNumber:680 description:{@"Invalid parameter not satisfying: %@", @"keysAndValues != nil"}];
  }

  v18 = objc_opt_self();
  if (v18 != [v18 _entityClassForKeyValueCategory:a5])
  {
    v36 = [MEMORY[0x277CCA890] currentHandler];
    [v36 handleFailureInMethod:a2 object:a1 file:@"HDKeyValueEntity.m" lineNumber:681 description:{@"Invalid parameter not satisfying: %@", @"[self _validateEntityClassForCategory:category]"}];
  }

  v19 = [MEMORY[0x277CBEAA8] date];
  v20 = v15;
  v21 = v19;
  v22 = v16;
  v23 = v17;
  v24 = objc_opt_self();
  v25 = [v20 count];
  if (v25)
  {
    v26 = v25;
    v37 = a8;
    v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v25];
    v38 = a6;
    v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v26];
    v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v26];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __126__HDKeyValueEntity__insertKeysAndValues_modificationDate_domain_category_provenance_syncIdentity_updatePolicy_database_error___block_invoke;
    v39[3] = &unk_27862AD38;
    v40 = v27;
    v41 = v28;
    v42 = v29;
    v43 = v21;
    v30 = v29;
    v31 = v28;
    v32 = v27;
    [v20 enumerateKeysAndObjectsUsingBlock:v39];
    v33 = [(HDKeyValueEntity *)v24 _doInsertValues:v32 forKeys:v31 modificationDates:v30 domain:v22 category:a5 provenance:0 syncIdentity:v38 updatePolicy:1 database:v23 error:v37];
  }

  else
  {
    v33 = 1;
  }

  return v33;
}

+ (BOOL)_insertKeysAndValues:(id)a3 modificationDate:(id)a4 domain:(id)a5 category:(int64_t)a6 provenance:(int64_t)a7 syncIdentity:(int64_t)a8 updatePolicy:(int64_t)a9 profile:(id)a10 error:(id *)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a10;
  v21 = [v17 count];
  if (v21)
  {
    v22 = v21;
    v33 = a1;
    v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v21];
    v32 = a7;
    v24 = a8;
    v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v22];
    v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v22];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __125__HDKeyValueEntity__insertKeysAndValues_modificationDate_domain_category_provenance_syncIdentity_updatePolicy_profile_error___block_invoke;
    v34[3] = &unk_27862AD38;
    v35 = v23;
    v36 = v25;
    v37 = v26;
    v38 = v18;
    v27 = v26;
    v28 = v25;
    v29 = v23;
    [v17 enumerateKeysAndObjectsUsingBlock:v34];
    v30 = [v33 _insertValues:v29 forKeys:v28 modificationDates:v27 domain:v19 category:a6 provenance:v32 syncIdentity:v24 updatePolicy:a9 profile:v20 error:a11];
  }

  else
  {
    v30 = 1;
  }

  return v30;
}

uint64_t __125__HDKeyValueEntity__insertKeysAndValues_modificationDate_domain_category_provenance_syncIdentity_updatePolicy_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 addObject:a3];
  [*(a1 + 40) addObject:v6];

  v7 = *(a1 + 48);
  v8 = *(a1 + 56);

  return [v7 addObject:v8];
}

uint64_t __126__HDKeyValueEntity__insertKeysAndValues_modificationDate_domain_category_provenance_syncIdentity_updatePolicy_database_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 addObject:a3];
  [*(a1 + 40) addObject:v6];

  v7 = *(a1 + 48);
  v8 = *(a1 + 56);

  return [v7 addObject:v8];
}

+ (BOOL)_doInsertValues:(void *)a3 forKeys:(void *)a4 modificationDates:(void *)a5 domain:(uint64_t)a6 category:(uint64_t)a7 provenance:(uint64_t)a8 syncIdentity:(uint64_t)a9 updatePolicy:(void *)a10 database:(uint64_t)a11 error:
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v54 = a5;
  v53 = a10;
  v55 = objc_opt_self();
  v17 = [v15 count];
  if ([v14 count] != v17)
  {
    v41 = [MEMORY[0x277CCA890] currentHandler];
    [v41 handleFailureInMethod:sel__doInsertValues_forKeys_modificationDates_domain_category_provenance_syncIdentity_updatePolicy_database_error_ object:v55 file:@"HDKeyValueEntity.m" lineNumber:910 description:{@"Invalid parameter not satisfying: %@", @"[values count] == count"}];
  }

  if ([v16 count] != v17)
  {
    v42 = [MEMORY[0x277CCA890] currentHandler];
    [v42 handleFailureInMethod:sel__doInsertValues_forKeys_modificationDates_domain_category_provenance_syncIdentity_updatePolicy_database_error_ object:v55 file:@"HDKeyValueEntity.m" lineNumber:911 description:{@"Invalid parameter not satisfying: %@", @"[dates count] == count"}];
  }

  if (v54)
  {
    if (v17)
    {
      goto LABEL_7;
    }

LABEL_24:
    v52 = 1;
    goto LABEL_25;
  }

  v43 = [MEMORY[0x277CCA890] currentHandler];
  [v43 handleFailureInMethod:sel__doInsertValues_forKeys_modificationDates_domain_category_provenance_syncIdentity_updatePolicy_database_error_ object:v55 file:@"HDKeyValueEntity.m" lineNumber:912 description:{@"Invalid parameter not satisfying: %@", @"domain != nil"}];

  if (!v17)
  {
    goto LABEL_24;
  }

LABEL_7:
  v51 = v17;
  v52 = 0;
  v18 = 0;
  v19 = a9;
  v47 = *MEMORY[0x277D10A40];
  v45 = v15;
  v46 = v14;
  do
  {
    v20 = [v15 objectAtIndexedSubscript:v18];
    v56 = [v14 objectAtIndexedSubscript:v18];
    v21 = v16;
    v22 = [v16 objectAtIndexedSubscript:v18];
    [v22 timeIntervalSinceReferenceDate];
    v24 = v23;

    v25 = v20;
    v26 = v54;
    v27 = v53;
    objc_opt_self();
    if (v19 == 2)
    {
      v28 = v25;
      v29 = v26;
      v30 = v27;
      v31 = objc_opt_self();
      v32 = MEMORY[0x277CCACA8];
      v33 = [v31 disambiguatedDatabaseTable];
      v34 = [v32 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ? AND %@ = ? AND %@ = ? AND %@ >= ?", v47, v33, @"category", @"domain", @"key", @"mod_date", 0];;

      v72 = 0;
      v73 = &v72;
      v74 = 0x2020000000;
      v75 = 1;
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __107__HDKeyValueEntity__validateModificationDatePolicyWithKey_domain_category_modificationDate_database_error___block_invoke;
      v67[3] = &unk_2786214F8;
      v70 = a6;
      v35 = v29;
      v68 = v35;
      v36 = v28;
      v69 = v36;
      v71 = v24;
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __107__HDKeyValueEntity__validateModificationDatePolicyWithKey_domain_category_modificationDate_database_error___block_invoke_2;
      v66[3] = &unk_278614620;
      v66[4] = &v72;
      if ([v30 executeSQL:v34 error:a11 bindingHandler:v67 enumerationHandler:v66])
      {
        if (*(v73 + 24))
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }
      }

      else
      {
        v19 = 3;
      }

      _Block_object_dispose(&v72, 8);
      v15 = v45;
      v14 = v46;
    }

    else if (v19 != 1)
    {
      v19 = 0;
    }

    v16 = v21;

    if (v19 == 1)
    {
      v37 = [v55 _insertStatementKey];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __130__HDKeyValueEntity__doInsertValues_forKeys_modificationDates_domain_category_provenance_syncIdentity_updatePolicy_database_error___block_invoke;
      v65[3] = &__block_descriptor_40_e15___NSString_8__0l;
      v65[4] = v55;
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __130__HDKeyValueEntity__doInsertValues_forKeys_modificationDates_domain_category_provenance_syncIdentity_updatePolicy_database_error___block_invoke_2;
      v57[3] = &unk_27862AD88;
      v58 = v56;
      v59 = v25;
      v60 = v26;
      v61 = a6;
      v62 = a7;
      v63 = v24;
      v64 = a8;
      v38 = v25;
      v39 = v56;
      LOBYTE(v37) = [v27 executeCachedStatementForKey:v37 error:a11 SQLGenerator:v65 bindingHandler:v57 enumerationHandler:0];

      v19 = a9;
      if ((v37 & 1) == 0)
      {
        break;
      }
    }

    else
    {

      v40 = v19 == 3;
      v19 = a9;
      if (v40)
      {
        break;
      }
    }

    v52 = ++v18 >= v51;
  }

  while (v51 != v18);
LABEL_25:

  return v52;
}

+ (BOOL)_insertCodableCategoryDomainDictionary:(id)a3 provenance:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a5;
  if ([v8 _validateForInsertionWithError:a6])
  {
    v10 = [v8 keyValuePairs];
    if ([v10 count])
    {
      v13 = v8;
      v14 = v10;
      v15 = v9;
      v11 = HKWithAutoreleasePool();
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __84__HDKeyValueEntity__insertCodableCategoryDomainDictionary_provenance_profile_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v26 = *(v3 + 8);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v4 = &stru_283BF39C8;
  }

  v27 = v4;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 56)];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 56)];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 56)];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v29 = a1;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v9)
  {
    v10 = *v41;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        v13 = [v12 decodedValue];
        if (v13)
        {
          [v5 addObject:v13];
        }

        else
        {
          v14 = [MEMORY[0x277CBEB68] null];
          [v5 addObject:v14];
        }

        v15 = [v12 key];
        [v6 addObject:v15];

        v16 = [v12 decodedTimestamp];
        [v7 addObject:v16];
      }

      v9 = [v8 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v9);
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__171;
  v38 = __Block_byref_object_dispose__171;
  v17 = [*(v29 + 48) syncIdentityManager];
  v39 = [v17 legacySyncIdentity];

  v18 = [*(v29 + 48) database];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __84__HDKeyValueEntity__insertCodableCategoryDomainDictionary_provenance_profile_error___block_invoke_2;
  v30[3] = &unk_278619980;
  v31 = *(v29 + 32);
  v33 = &v34;
  v32 = *(v29 + 48);
  v19 = [(HDHealthEntity *)HDSyncIdentityEntity performWriteTransactionWithHealthDatabase:v18 error:a2 block:v30];

  if (v19)
  {
    v21 = *(v29 + 64);
    v20 = *(v29 + 72);
    v22 = [v35[5] entity];
    v23 = [v21 _insertValues:v5 forKeys:v6 modificationDates:v7 domain:v27 category:v26 provenance:v20 syncIdentity:objc_msgSend(v22 updatePolicy:"persistentID") profile:2 error:{*(v29 + 48), a2}];
  }

  else
  {
    v23 = 0;
  }

  _Block_object_dispose(&v34, 8);
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t __84__HDKeyValueEntity__insertCodableCategoryDomainDictionary_provenance_profile_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(a1 + 32) hasSyncIdentity])
  {
    v6 = [*(a1 + 32) syncIdentity];
    v21 = 0;
    v7 = [HDSyncIdentity syncIdentityWithCodable:v6 error:&v21];
    v8 = v21;

    if (v7)
    {
      v9 = [*(a1 + 40) syncIdentityManager];
      v20 = v8;
      v10 = 1;
      v11 = [v9 concreteIdentityForIdentity:v7 shouldCreate:1 transaction:v5 error:&v20];
      v12 = v20;

      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v11;

      if (*(*(*(a1 + 48) + 8) + 40))
      {
LABEL_16:

        goto LABEL_17;
      }

      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v23 = v12;
        _os_log_fault_impl(&dword_228986000, v15, OS_LOG_TYPE_FAULT, "HDKeyValueEntity ConcreteSyncIdentity from received codable is nil %{public}@", buf, 0xCu);
      }

      v12 = v12;
      if (!v12)
      {
LABEL_15:

        v10 = 0;
        goto LABEL_16;
      }

      if (!a3)
      {
LABEL_8:
        _HKLogDroppedError();
        goto LABEL_15;
      }
    }

    else
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v23 = v8;
        _os_log_fault_impl(&dword_228986000, v16, OS_LOG_TYPE_FAULT, "HDKeyValueEntity SyncIdentity from received codable is nil %{public}@", buf, 0xCu);
      }

      v12 = v8;
      if (!v12)
      {
        goto LABEL_15;
      }

      if (!a3)
      {
        goto LABEL_8;
      }
    }

    v17 = v12;
    *a3 = v12;
    goto LABEL_15;
  }

  v10 = 1;
LABEL_17:

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (BOOL)_insertCodableTimestampedKeyValuePairs:(id)a3 domain:(id)a4 category:(int64_t)a5 provenance:(int64_t)a6 syncIdentity:(int64_t)a7 updatePolicy:(int64_t)a8 profile:(id)a9 error:(id *)a10
{
  v50 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a9;
  v19 = [v16 count];
  if (v19)
  {
    v20 = v19;
    v37 = a1;
    v38 = a8;
    v39 = a7;
    v40 = a5;
    v41 = a6;
    v42 = v18;
    v43 = v17;
    v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v19];
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v20];
    v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v20];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v44 = v16;
    v24 = v16;
    v25 = [v24 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v46;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v46 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v45 + 1) + 8 * i);
          v30 = [v29 decodedValue];
          if (v30)
          {
            [v21 addObject:v30];
          }

          else
          {
            v31 = [MEMORY[0x277CBEB68] null];
            [v21 addObject:v31];
          }

          v32 = [v29 key];
          [v22 addObject:v32];

          v33 = [v29 decodedTimestamp];
          [v23 addObject:v33];
        }

        v26 = [v24 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v26);
    }

    v18 = v42;
    v17 = v43;
    v34 = [v37 _insertValues:v21 forKeys:v22 modificationDates:v23 domain:v43 category:v40 provenance:v41 syncIdentity:v39 updatePolicy:v38 profile:v42 error:a10];

    v16 = v44;
  }

  else
  {
    v34 = 1;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

id __130__HDKeyValueEntity__doInsertValues_forKeys_modificationDates_domain_category_provenance_syncIdentity_updatePolicy_database_error___block_invoke(uint64_t a1)
{
  v6[7] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v6[0] = @"value";
  v6[1] = @"key";
  v6[2] = @"domain";
  v6[3] = @"category";
  v6[4] = @"provenance";
  v6[5] = @"mod_date";
  v6[6] = @"sync_identity";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:7];
  v3 = [v1 insertSQLForProperties:v2 shouldReplace:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __130__HDKeyValueEntity__doInsertValues_forKeys_modificationDates_domain_category_provenance_syncIdentity_updatePolicy_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v5 = *(a1 + 40);
  HDSQLiteBindFoundationValueToStatement();
  v6 = *(a1 + 48);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 4, *(a1 + 56));
  sqlite3_bind_int64(a2, 5, *(a1 + 64));
  sqlite3_bind_double(a2, 6, *(a1 + 72));
  v7 = *(a1 + 80);

  return sqlite3_bind_int64(a2, 7, v7);
}

uint64_t __107__HDKeyValueEntity__validateModificationDatePolicyWithKey_domain_category_modificationDate_database_error___block_invoke(double *a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 6));
  v4 = *(a1 + 4);
  HDSQLiteBindFoundationValueToStatement();
  v5 = *(a1 + 5);
  HDSQLiteBindFoundationValueToStatement();
  v6 = a1[7];

  return sqlite3_bind_double(a2, 4, v6);
}

+ (BOOL)_insertValues:(id)a3 forKeys:(id)a4 modificationDates:(id)a5 domain:(id)a6 category:(int64_t)a7 provenance:(int64_t)a8 syncIdentity:(int64_t)a9 updatePolicy:(int64_t)a10 profile:(id)a11 error:(id *)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a11;
  v22 = [v18 count];
  if ([v17 count] != v22)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:a1 file:@"HDKeyValueEntity.m" lineNumber:1049 description:{@"Invalid parameter not satisfying: %@", @"[values count] == count"}];
  }

  if ([v19 count] != v22)
  {
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:a2 object:a1 file:@"HDKeyValueEntity.m" lineNumber:1050 description:{@"Invalid parameter not satisfying: %@", @"[dates count] == count"}];
  }

  v23 = a1;
  if (!v20)
  {
    v34 = [MEMORY[0x277CCA890] currentHandler];
    [v34 handleFailureInMethod:a2 object:a1 file:@"HDKeyValueEntity.m" lineNumber:1051 description:{@"Invalid parameter not satisfying: %@", @"domain != nil"}];
  }

  v33 = [v21 database];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __127__HDKeyValueEntity__insertValues_forKeys_modificationDates_domain_category_provenance_syncIdentity_updatePolicy_profile_error___block_invoke;
  v48[3] = &unk_278619D80;
  v49 = v21;
  v50 = v20;
  v54 = a7;
  v55 = a9;
  v56 = a1;
  v51 = v17;
  v52 = v18;
  v53 = v19;
  v57 = a8;
  v58 = a10;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __127__HDKeyValueEntity__insertValues_forKeys_modificationDates_domain_category_provenance_syncIdentity_updatePolicy_profile_error___block_invoke_2;
  v37[3] = &unk_27862ADB0;
  v38 = v52;
  v39 = v51;
  v40 = v53;
  v41 = v50;
  v44 = a7;
  v45 = a8;
  v46 = a9;
  v47 = a10;
  v42 = v49;
  v43 = v22;
  v24 = v49;
  v25 = v50;
  v26 = v53;
  v27 = v51;
  v28 = v52;
  v29 = [v23 performWriteTransactionWithHealthDatabase:v33 error:a12 block:v48 inaccessibilityHandler:v37];

  return v29;
}

BOOL __127__HDKeyValueEntity__insertValues_forKeys_modificationDates_domain_category_provenance_syncIdentity_updatePolicy_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [*(a1 + 32) keyValueDomainManager];
  v6 = v4;
  [v5 batchNotificationForDomain:*(a1 + 40) category:*(a1 + 72) forTransaction:v4];

  v7 = *(a1 + 80);
  if (v7 == -2)
  {
    v7 = [*(a1 + 32) currentSyncIdentityPersistentID];
  }

  v8 = *(a1 + 64);
  v18 = *(a1 + 56);
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(a1 + 72);
  v13 = *(a1 + 88);
  v12 = *(a1 + 96);
  v14 = *(a1 + 104);
  v15 = [v6 databaseForEntityClass:v13];
  v16 = [(HDKeyValueEntity *)v13 _doInsertValues:v9 forKeys:v18 modificationDates:v8 domain:v10 category:v11 provenance:v12 syncIdentity:v7 updatePolicy:v14 database:v15 error:a3];

  return v16;
}

uint64_t __127__HDKeyValueEntity__insertValues_forKeys_modificationDates_domain_category_provenance_syncIdentity_updatePolicy_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 72)];
  if (*(a1 + 72))
  {
    v6 = 0;
    do
    {
      v7 = [*(a1 + 32) objectAtIndexedSubscript:v6];
      v8 = [*(a1 + 40) objectAtIndexedSubscript:v6];
      v9 = [*(a1 + 48) objectAtIndexedSubscript:v6];
      v10 = [[_HDKeyValueJournalEntry alloc] initWithValue:v8 key:v7 domain:*(a1 + 56) category:*(a1 + 80) provenance:*(a1 + 88) syncIdentity:*(a1 + 96) updatePolicy:*(a1 + 104) modificationDate:v9];
      [v5 addObject:v10];

      ++v6;
    }

    while (v6 < *(a1 + 72));
  }

  v11 = [*(a1 + 64) database];
  v12 = [v11 addJournalEntries:v5 error:a3];

  return v12;
}

+ (Class)_entityClassForKeyValueCategory:(int64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if ((a3 - 100) >= 8 && a3 > 5)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2048;
      v13 = a3;
      v9 = v11;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: unrecognized category %ld", &v10, 0x16u);
    }

    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_modDateForKey:(id)a3 domain:(id)a4 category:(int64_t)a5 profile:(id)a6 entity:(id *)a7 error:(id *)a8
{
  v38[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__171;
  v36[4] = __Block_byref_object_dispose__171;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__171;
  v34 = __Block_byref_object_dispose__171;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__171;
  v28 = __Block_byref_object_dispose__171;
  v29 = 0;
  if (v14)
  {
    v38[0] = v14;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __72__HDKeyValueEntity__modDateForKey_domain_category_profile_entity_error___block_invoke;
    v23[3] = &unk_27862ADD8;
    v23[4] = v36;
    v23[5] = &v30;
    v23[6] = &v24;
    v23[7] = a7;
    v23[8] = a1;
    v18 = [(HDKeyValueEntity *)a1 _valuesForKeys:v17 domain:v15 category:a5 profile:v16 error:a8 handler:v23];
  }

  if (a7)
  {
    v19 = v25[5];
    if (v19)
    {
      *a7 = v19;
    }
  }

  v20 = v31[5];
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(v36, 8);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void *__72__HDKeyValueEntity__modDateForKey_domain_category_profile_entity_error___block_invoke(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CBEB68] null];
  if ([v8 isEqual:v10])
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  objc_storeStrong((*(a1[4] + 8) + 40), v11);

  objc_storeStrong((*(a1[5] + 8) + 40), a4);
  if (a1[7])
  {
    v12 = a1[8];
    v13 = [objc_alloc(objc_opt_class()) initWithPersistentID:a5];
    v14 = *(a1[6] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  v16 = *(*(a1[4] + 8) + 40);
  v17 = v16;

  return v16;
}

+ (id)uniquedColumns
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"category";
  v5[1] = @"domain";
  v5[2] = @"key";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [[_HDKeyValueEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

@end