@interface HDKeyValueEntity
+ (BOOL)_doInsertValues:(void *)values forKeys:(void *)keys modificationDates:(void *)dates domain:(uint64_t)domain category:(uint64_t)category provenance:(uint64_t)provenance syncIdentity:(uint64_t)identity updatePolicy:(void *)self0 database:(uint64_t)self1 error:;
+ (BOOL)_enumerateKeyValueEntitiesInCategory:(int64_t)category predicate:(id)predicate healthDatabase:(id)database error:(id *)error usingBlock:(id)block;
+ (BOOL)_insertCodableCategoryDomainDictionary:(id)dictionary provenance:(int64_t)provenance profile:(id)profile error:(id *)error;
+ (BOOL)_insertCodableTimestampedKeyValuePairs:(id)pairs domain:(id)domain category:(int64_t)category provenance:(int64_t)provenance syncIdentity:(int64_t)identity updatePolicy:(int64_t)policy profile:(id)profile error:(id *)self0;
+ (BOOL)_insertKeysAndValues:(id)values modificationDate:(id)date domain:(id)domain category:(int64_t)category provenance:(int64_t)provenance syncIdentity:(int64_t)identity updatePolicy:(int64_t)policy profile:(id)self0 error:(id *)self1;
+ (BOOL)_insertValues:(id)values forKeys:(id)keys modificationDates:(id)dates domain:(id)domain category:(int64_t)category provenance:(int64_t)provenance syncIdentity:(int64_t)identity updatePolicy:(int64_t)self0 profile:(id)self1 error:(id *)self2;
+ (BOOL)_setRawKeysAndValues:(id)values domain:(id)domain category:(int64_t)category syncIdentity:(int64_t)identity database:(id)database error:(id *)error;
+ (BOOL)enumerateValuesForDomain:(id)domain category:(int64_t)category keys:(id)keys profile:(id)profile error:(id *)error usingBlock:(id)block;
+ (BOOL)persistDatabaseIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (BOOL)persistDatabaseIdentifier:(id)identifier syncIdentity:(int64_t)identity database:(id)database error:(id *)error;
+ (BOOL)removeValuesForDomain:(id)domain category:(int64_t)category keys:(id)keys profile:(id)profile error:(id *)error;
+ (BOOL)setData:(id)data forKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile error:(id *)error;
+ (BOOL)setData:(id)data forKey:(id)key domain:(id)domain category:(int64_t)category syncIdentity:(int64_t)identity profile:(id)profile error:(id *)error;
+ (BOOL)setDate:(id)date forKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile error:(id *)error;
+ (BOOL)setDateComponents:(id)components forKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile error:(id *)error;
+ (BOOL)setNumber:(id)number forKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile error:(id *)error;
+ (BOOL)setOkemoZursObjectAnchor:(int64_t)anchor syncIdentity:(int64_t)identity database:(id)database error:(id *)error;
+ (BOOL)setQuantity:(id)quantity unit:(id)unit forKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile error:(id *)error;
+ (BOOL)setString:(id)string forKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile error:(id *)error;
+ (BOOL)setValueForAllKeys:(id)keys domain:(id)domain category:(int64_t)category profile:(id)profile error:(id *)error;
+ (BOOL)setValuesWithDictionary:(id)dictionary domain:(id)domain category:(int64_t)category profile:(id)profile error:(id *)error;
+ (Class)_entityClassForKeyValueCategory:(int64_t)category;
+ (id)_modDateForKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile entity:(id *)entity error:(id *)error;
+ (id)_predicateForCategory:(uint64_t)category;
+ (id)_predicateForDomain:(uint64_t)domain;
+ (id)_predicateForKeys:(uint64_t)keys;
+ (id)_rawValueForKey:(void *)key domain:(uint64_t)domain category:(void *)category profile:(void *)profile entity:(uint64_t)entity error:;
+ (id)_rawValuesForKeys:(id)keys domain:(id)domain category:(int64_t)category database:(id)database error:(id *)error;
+ (id)_valuesForKeys:(void *)keys domain:(uint64_t)domain category:(void *)category profile:(uint64_t)profile error:(void *)error handler:;
+ (id)allValuesForDomain:(id)domain category:(int64_t)category profile:(id)profile error:(id *)error;
+ (id)dataForKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile entity:(id *)entity error:(id *)error;
+ (id)dateComponentsForKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile entity:(id *)entity error:(id *)error;
+ (id)dateForKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile entity:(id *)entity error:(id *)error;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)generateNewDatabaseIdentifier;
+ (id)numberForKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile entity:(id *)entity error:(id *)error;
+ (id)okemoZursObjectAnchorWithProfile:(id)profile error:(id *)error;
+ (id)quantityForKey:(id)key unit:(id)unit domain:(id)domain category:(int64_t)category profile:(id)profile entity:(id *)entity error:(id *)error;
+ (id)retrieveDatabaseIdentifierCreationDateFromProfile:(id)profile error:(id *)error;
+ (id)retrieveDatabaseIdentifierFromDatabase:(id)database error:(id *)error;
+ (id)retrieveDatabaseIdentifierFromProfile:(id)profile error:(id *)error;
+ (id)stringForKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile entity:(id *)entity error:(id *)error;
+ (id)uniquedColumns;
+ (id)valuesForKeys:(id)keys domain:(id)domain category:(int64_t)category profile:(id)profile error:(id *)error;
+ (uint64_t)_readRawValuesInCategory:(void *)category predicate:(void *)predicate database:(uint64_t)database error:(void *)error usingBlock:;
+ (uint64_t)_setRawKeysAndValues:(void *)values domain:(uint64_t)domain category:(void *)category profile:(uint64_t)profile error:;
@end

@implementation HDKeyValueEntity

+ (id)generateNewDatabaseIdentifier
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  hk_dataForUUIDBytes = [uUID hk_dataForUUIDBytes];

  return hk_dataForUUIDBytes;
}

+ (BOOL)persistDatabaseIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  identifierCopy = identifier;
  LOBYTE(error) = [self setData:identifierCopy forKey:@"IDENTIFIER" domain:@"DATABASE_CREATION" category:objc_msgSend(self profile:"_deviceLocalCategory") error:{profileCopy, error}];

  return error;
}

+ (id)retrieveDatabaseIdentifierFromProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v7 = [self dataForKey:@"IDENTIFIER" domain:@"DATABASE_CREATION" category:objc_msgSend(self profile:"_deviceLocalCategory") entity:profileCopy error:{0, error}];

  return v7;
}

+ (id)retrieveDatabaseIdentifierCreationDateFromProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v7 = [self _modDateForKey:@"IDENTIFIER" domain:@"DATABASE_CREATION" category:objc_msgSend(self profile:"_deviceLocalCategory") entity:profileCopy error:{0, error}];

  return v7;
}

+ (BOOL)persistDatabaseIdentifier:(id)identifier syncIdentity:(int64_t)identity database:(id)database error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  databaseCopy = database;
  if (identifierCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity+DatabaseProperties.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"(data == nil) || [data isKindOfClass:[NSData class]]"}];
    }
  }

  v19 = @"IDENTIFIER";
  v13 = _HDSQLiteValueForData();
  v20[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  v15 = [self _setRawKeysAndValues:v14 domain:@"DATABASE_CREATION" category:objc_msgSend(self syncIdentity:"_deviceLocalCategory") database:identity error:{databaseCopy, error}];
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (id)retrieveDatabaseIdentifierFromDatabase:(id)database error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  if (!error)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity+DatabaseProperties.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"error"}];
  }

  _deviceLocalCategory = [self _deviceLocalCategory];
  v16[0] = @"IDENTIFIER";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v10 = [self _rawValuesForKeys:v9 domain:@"DATABASE_CREATION" category:_deviceLocalCategory database:databaseCopy error:error];

  if (!v10 && !*error)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity+DatabaseProperties.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"values || *error"}];
  }

  v11 = [v10 objectForKeyedSubscript:@"IDENTIFIER"];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (BOOL)setOkemoZursObjectAnchor:(int64_t)anchor syncIdentity:(int64_t)identity database:(id)database error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17 = @"OBJECT_ANCHOR_8_2";
  v10 = MEMORY[0x277CCABB0];
  databaseCopy = database;
  v12 = [v10 numberWithLongLong:anchor];
  v13 = _HDSQLiteValueForNumber();
  v18[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

  LOBYTE(error) = [self _setRawKeysAndValues:v14 domain:@"OBJECT_ANCHOR" category:objc_msgSend(self syncIdentity:"_deviceLocalCategory") database:identity error:{databaseCopy, error}];
  v15 = *MEMORY[0x277D85DE8];
  return error;
}

+ (id)okemoZursObjectAnchorWithProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v7 = [self numberForKey:@"OBJECT_ANCHOR_8_2" domain:@"OBJECT_ANCHOR" category:objc_msgSend(self profile:"_deviceLocalCategory") entity:profileCopy error:{0, error}];

  return v7;
}

+ (id)dataForKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile entity:(id *)entity error:(id *)error
{
  keyCopy = key;
  v15 = [(HDKeyValueEntity *)self _rawValueForKey:keyCopy domain:domain category:category profile:profile entity:entity error:error];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = objc_opt_class();
    v18 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Found unexpected type %@ for key %@, expecting %@", objc_opt_class(), keyCopy, v17}];
    if (v18)
    {
      if (error)
      {
        v19 = v18;
        *error = v18;
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

+ (id)_rawValueForKey:(void *)key domain:(uint64_t)domain category:(void *)category profile:(void *)profile entity:(uint64_t)entity error:
{
  v36[1] = *MEMORY[0x277D85DE8];
  v12 = a2;
  keyCopy = key;
  categoryCopy = category;
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
    v23[6] = profile;
    v23[7] = v16;
    v18 = [(HDKeyValueEntity *)v16 _valuesForKeys:v17 domain:keyCopy category:domain profile:categoryCopy error:entity handler:v23];
  }

  if (profile)
  {
    v19 = v25[5];
    if (v19)
    {
      *profile = v19;
    }
  }

  v20 = v31[5];
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)dateForKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile entity:(id *)entity error:(id *)error
{
  keyCopy = key;
  v15 = [(HDKeyValueEntity *)self _rawValueForKey:keyCopy domain:domain category:category profile:profile entity:entity error:error];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = objc_opt_class();
    v18 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Found unexpected type %@ for key %@, expecting %@", objc_opt_class(), keyCopy, v17}];
    if (v18)
    {
      if (error)
      {
        v19 = v18;
        *error = v18;
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

+ (id)dateComponentsForKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile entity:(id *)entity error:(id *)error
{
  v8 = [self dateForKey:key domain:domain category:category profile:profile entity:entity error:error];
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

+ (id)quantityForKey:(id)key unit:(id)unit domain:(id)domain category:(int64_t)category profile:(id)profile entity:(id *)entity error:(id *)error
{
  keyCopy = key;
  unitCopy = unit;
  v17 = [(HDKeyValueEntity *)self _rawValueForKey:keyCopy domain:domain category:category profile:profile entity:entity error:error];
  if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v19 = objc_opt_class();
    v20 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Found unexpected type %@ for key %@, expecting %@", objc_opt_class(), keyCopy, v19}];
    if (v20)
    {
      if (error)
      {
        v21 = v20;
        *error = v20;
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

+ (id)numberForKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile entity:(id *)entity error:(id *)error
{
  keyCopy = key;
  v15 = [(HDKeyValueEntity *)self _rawValueForKey:keyCopy domain:domain category:category profile:profile entity:entity error:error];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = objc_opt_class();
    v18 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Found unexpected type %@ for key %@, expecting %@", objc_opt_class(), keyCopy, v17}];
    if (v18)
    {
      if (error)
      {
        v19 = v18;
        *error = v18;
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

+ (id)stringForKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile entity:(id *)entity error:(id *)error
{
  keyCopy = key;
  v15 = [(HDKeyValueEntity *)self _rawValueForKey:keyCopy domain:domain category:category profile:profile entity:entity error:error];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = objc_opt_class();
    v18 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Found unexpected type %@ for key %@, expecting %@", objc_opt_class(), keyCopy, v17}];
    if (v18)
    {
      if (error)
      {
        v19 = v18;
        *error = v18;
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

+ (id)valuesForKeys:(id)keys domain:(id)domain category:(int64_t)category profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  domainCopy = domain;
  keysCopy = keys;
  v14 = objc_opt_self();
  v15 = [(HDKeyValueEntity *)v14 _valuesForKeys:keysCopy domain:domainCopy category:category profile:profileCopy error:error handler:&__block_literal_global_366_1];

  return v15;
}

+ (BOOL)enumerateValuesForDomain:(id)domain category:(int64_t)category keys:(id)keys profile:(id)profile error:(id *)error usingBlock:(id)block
{
  v26[2] = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  blockCopy = block;
  profileCopy = profile;
  v17 = [(HDKeyValueEntity *)self _predicateForDomain:domain];
  if ([keysCopy count])
  {
    [(HDKeyValueEntity *)self _predicateForKeys:keysCopy];
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

  database = [profileCopy database];

  v23 = [self _enumerateKeyValueEntitiesInCategory:category predicate:v21 healthDatabase:database error:error usingBlock:blockCopy];
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (id)_predicateForDomain:(uint64_t)domain
{
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    v6 = v3;
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__predicateForDomain_ object:v6 file:@"HDKeyValueEntity.m" lineNumber:1108 description:{@"Invalid parameter not satisfying: %@", @"domain != nil"}];
  }

  v4 = [MEMORY[0x277D10B18] predicateWithProperty:@"domain" equalToValue:v2];

  return v4;
}

+ (id)_predicateForKeys:(uint64_t)keys
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

+ (id)allValuesForDomain:(id)domain category:(int64_t)category profile:(id)profile error:(id *)error
{
  v10 = MEMORY[0x277CBEB38];
  profileCopy = profile;
  domainCopy = domain;
  dictionary = [v10 dictionary];
  null = [MEMORY[0x277CBEB68] null];
  v15 = [(HDKeyValueEntity *)self _predicateForDomain:domainCopy];

  database = [profileCopy database];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __62__HDKeyValueEntity_allValuesForDomain_category_profile_error___block_invoke;
  v22[3] = &unk_278628C58;
  v23 = null;
  v17 = dictionary;
  v24 = v17;
  v18 = null;
  LOBYTE(error) = [self _enumerateKeyValueEntitiesInCategory:category predicate:v15 healthDatabase:database error:error usingBlock:v22];

  if ((error & 1) == 0)
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

+ (id)_valuesForKeys:(void *)keys domain:(uint64_t)domain category:(void *)category profile:(uint64_t)profile error:(void *)error handler:
{
  v34[2] = *MEMORY[0x277D85DE8];
  v10 = a2;
  errorCopy = error;
  categoryCopy = category;
  keysCopy = keys;
  v14 = objc_opt_self();
  if (![v10 count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__valuesForKeys_domain_category_profile_error_handler_ object:v14 file:@"HDKeyValueEntity.m" lineNumber:571 description:{@"Invalid parameter not satisfying: %@", @"[keys count] > 0"}];
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v16 = [(HDKeyValueEntity *)v14 _predicateForKeys:v10];
  v17 = [(HDKeyValueEntity *)v14 _predicateForDomain:keysCopy];

  v18 = MEMORY[0x277D10B20];
  v34[0] = v17;
  v34[1] = v16;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v20 = [v18 predicateMatchingAllPredicates:v19];

  database = [categoryCopy database];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __73__HDKeyValueEntity__valuesForKeys_domain_category_profile_error_handler___block_invoke;
  v31[3] = &unk_27862AD10;
  v33 = errorCopy;
  v22 = dictionary;
  v32 = v22;
  v23 = errorCopy;
  LOBYTE(v19) = [v14 _enumerateKeyValueEntitiesInCategory:domain predicate:v20 healthDatabase:database error:profile usingBlock:v31];

  if ((v19 & 1) == 0)
  {

    v22 = 0;
  }

  v24 = v32;
  v25 = v22;

  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (BOOL)setData:(id)data forKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  keyCopy = key;
  domainCopy = domain;
  profileCopy = profile;
  if (dataCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity.m" lineNumber:309 description:{@"Invalid parameter not satisfying: %@", @"(data == nil) || [data isKindOfClass:[NSData class]]"}];
    }
  }

  v25 = keyCopy;
  v19 = _HDSQLiteValueForData();
  v26[0] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  v21 = [(HDKeyValueEntity *)self _setRawKeysAndValues:v20 domain:domainCopy category:category profile:profileCopy error:error];
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (uint64_t)_setRawKeysAndValues:(void *)values domain:(uint64_t)domain category:(void *)category profile:(uint64_t)profile error:
{
  categoryCopy = category;
  valuesCopy = values;
  v12 = a2;
  v13 = objc_opt_self();
  if (!v12)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__setRawKeysAndValues_domain_category_profile_error_ object:v13 file:@"HDKeyValueEntity.m" lineNumber:658 description:{@"Invalid parameter not satisfying: %@", @"keysAndValues != nil"}];
  }

  v14 = objc_opt_self();
  if (v14 != [v14 _entityClassForKeyValueCategory:domain])
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__setRawKeysAndValues_domain_category_profile_error_ object:v13 file:@"HDKeyValueEntity.m" lineNumber:659 description:{@"Invalid parameter not satisfying: %@", @"[self _validateEntityClassForCategory:category]"}];
  }

  date = [MEMORY[0x277CBEAA8] date];
  v16 = [v13 _insertKeysAndValues:v12 modificationDate:date domain:valuesCopy category:domain provenance:0 syncIdentity:-2 updatePolicy:1 profile:categoryCopy error:profile];

  return v16;
}

+ (BOOL)setData:(id)data forKey:(id)key domain:(id)domain category:(int64_t)category syncIdentity:(int64_t)identity profile:(id)profile error:(id *)error
{
  v31[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  keyCopy = key;
  domainCopy = domain;
  profileCopy = profile;
  if (dataCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity.m" lineNumber:322 description:{@"Invalid parameter not satisfying: %@", @"(data == nil) || [data isKindOfClass:[NSData class]]"}];
    }
  }

  v30 = keyCopy;
  v19 = _HDSQLiteValueForData();
  v31[0] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];

  if (!v20)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity.m" lineNumber:324 description:{@"Invalid parameter not satisfying: %@", @"dict != nil"}];
  }

  v21 = objc_opt_self();
  if (v21 != [v21 _entityClassForKeyValueCategory:category])
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity.m" lineNumber:325 description:{@"Invalid parameter not satisfying: %@", @"[self _validateEntityClassForCategory:category]"}];
  }

  date = [MEMORY[0x277CBEAA8] date];
  v23 = [self _insertKeysAndValues:v20 modificationDate:date domain:domainCopy category:category provenance:0 syncIdentity:identity updatePolicy:1 profile:profileCopy error:error];

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (BOOL)setDate:(id)date forKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  keyCopy = key;
  domainCopy = domain;
  profileCopy = profile;
  if (dateCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity.m" lineNumber:346 description:{@"Invalid parameter not satisfying: %@", @"(date == nil) || [date isKindOfClass:[NSDate class]]"}];
    }
  }

  v25 = keyCopy;
  v19 = _HDSQLiteValueForDate();
  v26[0] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  v21 = [(HDKeyValueEntity *)self _setRawKeysAndValues:v20 domain:domainCopy category:category profile:profileCopy error:error];
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (BOOL)setDateComponents:(id)components forKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile error:(id *)error
{
  componentsCopy = components;
  keyCopy = key;
  domainCopy = domain;
  profileCopy = profile;
  if (componentsCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity.m" lineNumber:358 description:{@"Invalid parameter not satisfying: %@", @"(dateComponents == nil) || [dateComponents isKindOfClass:[NSDateComponents class]]"}];
    }

    calendar = [componentsCopy calendar];
    v20 = [calendar copy];

    v21 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    [v20 setTimeZone:v21];

    v22 = [v20 dateFromComponents:componentsCopy];
  }

  else
  {
    v22 = 0;
  }

  v23 = [self setDate:v22 forKey:keyCopy domain:domainCopy category:category profile:profileCopy error:error];

  return v23;
}

+ (BOOL)setQuantity:(id)quantity unit:(id)unit forKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile error:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  quantityCopy = quantity;
  unitCopy = unit;
  keyCopy = key;
  domainCopy = domain;
  profileCopy = profile;
  if (quantityCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity.m" lineNumber:376 description:{@"Invalid parameter not satisfying: %@", @"quanity == nil || [quanity isKindOfClass:[HKQuantity class]]"}];
    }
  }

  v27 = keyCopy;
  v21 = _HDSQLiteValueForQuantity();
  v28[0] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];

  v23 = [(HDKeyValueEntity *)self _setRawKeysAndValues:v22 domain:domainCopy category:category profile:profileCopy error:error];
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (BOOL)setNumber:(id)number forKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  numberCopy = number;
  keyCopy = key;
  domainCopy = domain;
  profileCopy = profile;
  if (numberCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity.m" lineNumber:388 description:{@"Invalid parameter not satisfying: %@", @"(number == nil) || [number isKindOfClass:[NSNumber class]]"}];
    }
  }

  v25 = keyCopy;
  v19 = _HDSQLiteValueForNumber();
  v26[0] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  v21 = [(HDKeyValueEntity *)self _setRawKeysAndValues:v20 domain:domainCopy category:category profile:profileCopy error:error];
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (BOOL)setString:(id)string forKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  keyCopy = key;
  domainCopy = domain;
  profileCopy = profile;
  if (stringCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity.m" lineNumber:400 description:{@"Invalid parameter not satisfying: %@", @"(string == nil) || [string isKindOfClass:[NSString class]]"}];
    }
  }

  v25 = keyCopy;
  v19 = _HDSQLiteValueForString();
  v26[0] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  v21 = [(HDKeyValueEntity *)self _setRawKeysAndValues:v20 domain:domainCopy category:category profile:profileCopy error:error];
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (BOOL)setValuesWithDictionary:(id)dictionary domain:(id)domain category:(int64_t)category profile:(id)profile error:(id *)error
{
  dictionaryCopy = dictionary;
  domainCopy = domain;
  profileCopy = profile;
  if ([dictionaryCopy count])
  {
    v15 = [(HDKeyValueEntity *)self _setRawKeysAndValues:dictionaryCopy domain:domainCopy category:category profile:profileCopy error:error];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

+ (BOOL)removeValuesForDomain:(id)domain category:(int64_t)category keys:(id)keys profile:(id)profile error:(id *)error
{
  v25[3] = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  keysCopy = keys;
  profileCopy = profile;
  if (keysCopy && ![keysCopy count])
  {
    v22 = 1;
  }

  else
  {
    v15 = [(HDKeyValueEntity *)self _predicateForDomain:domainCopy];
    v16 = [(HDKeyValueEntity *)self _predicateForCategory:category];
    if (keysCopy)
    {
      [(HDKeyValueEntity *)self _predicateForKeys:keysCopy];
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

    database = [profileCopy database];
    v22 = [self deleteEntitiesWithPredicate:v20 healthDatabase:database error:error];
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (id)_predicateForCategory:(uint64_t)category
{
  objc_opt_self();
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v5 = [v3 predicateWithProperty:@"category" equalToValue:v4];

  return v5;
}

+ (BOOL)setValueForAllKeys:(id)keys domain:(id)domain category:(int64_t)category profile:(id)profile error:(id *)error
{
  v36[2] = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  domainCopy = domain;
  profileCopy = profile;
  database = [profileCopy database];
  v15 = [(HDKeyValueEntity *)self _predicateForDomain:domainCopy];
  v16 = [(HDKeyValueEntity *)self _predicateForCategory:category];
  v17 = MEMORY[0x277D10B20];
  v36[0] = v15;
  v36[1] = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v19 = [v17 predicateMatchingAllPredicates:v18];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __69__HDKeyValueEntity_setValueForAllKeys_domain_category_profile_error___block_invoke;
  v28[3] = &unk_278614558;
  v29 = profileCopy;
  v30 = domainCopy;
  categoryCopy = category;
  selfCopy = self;
  v31 = v19;
  v32 = database;
  v33 = keysCopy;
  v20 = keysCopy;
  v21 = database;
  v22 = v19;
  v23 = domainCopy;
  v24 = profileCopy;
  LOBYTE(v18) = [self performWriteTransactionWithHealthDatabase:v21 error:error block:v28];

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

+ (id)_rawValuesForKeys:(id)keys domain:(id)domain category:(int64_t)category database:(id)database error:(id *)error
{
  v12 = MEMORY[0x277CBEB38];
  databaseCopy = database;
  domainCopy = domain;
  keysCopy = keys;
  dictionary = [v12 dictionary];
  v17 = [(HDKeyValueEntity *)self _predicateForKeys:keysCopy];

  v18 = [(HDKeyValueEntity *)self _predicateForDomain:domainCopy];

  v19 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v18 otherPredicate:v17];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__HDKeyValueEntity__rawValuesForKeys_domain_category_database_error___block_invoke;
  v22[3] = &unk_27862ACC8;
  v20 = dictionary;
  v23 = v20;
  LOBYTE(error) = [(HDKeyValueEntity *)self _readRawValuesInCategory:category predicate:v19 database:databaseCopy error:error usingBlock:v22];

  if ((error & 1) == 0)
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

+ (uint64_t)_readRawValuesInCategory:(void *)category predicate:(void *)predicate database:(uint64_t)database error:(void *)error usingBlock:
{
  v24[4] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  predicateCopy = predicate;
  categoryCopy = category;
  v13 = objc_opt_self();
  v24[0] = @"domain";
  v24[1] = @"key";
  v24[2] = @"value";
  v24[3] = @"mod_date";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
  v15 = [(HDKeyValueEntity *)v13 _predicateForCategory:a2];
  v16 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v15 otherPredicate:categoryCopy];

  v17 = [v13 queryWithDatabase:predicateCopy predicate:v16];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __81__HDKeyValueEntity__readRawValuesInCategory_predicate_database_error_usingBlock___block_invoke;
  v22[3] = &unk_278616A78;
  v23 = errorCopy;
  v18 = errorCopy;
  v19 = [v17 enumeratePersistentIDsAndProperties:v14 error:database enumerationHandler:v22];

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

+ (BOOL)_enumerateKeyValueEntitiesInCategory:(int64_t)category predicate:(id)predicate healthDatabase:(id)database error:(id *)error usingBlock:(id)block
{
  predicateCopy = predicate;
  databaseCopy = database;
  blockCopy = block;
  v16 = objc_opt_self();
  if (v16 != [v16 _entityClassForKeyValueCategory:category])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity.m" lineNumber:638 description:{@"Invalid parameter not satisfying: %@", @"[self _validateEntityClassForCategory:category]"}];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __99__HDKeyValueEntity__enumerateKeyValueEntitiesInCategory_predicate_healthDatabase_error_usingBlock___block_invoke;
  v22[3] = &unk_2786145D0;
  selfCopy = self;
  categoryCopy = category;
  v23 = predicateCopy;
  v24 = blockCopy;
  v17 = blockCopy;
  v18 = predicateCopy;
  v19 = [self performReadTransactionWithHealthDatabase:databaseCopy error:error block:v22];

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

+ (BOOL)_setRawKeysAndValues:(id)values domain:(id)domain category:(int64_t)category syncIdentity:(int64_t)identity database:(id)database error:(id *)error
{
  valuesCopy = values;
  domainCopy = domain;
  databaseCopy = database;
  if (!valuesCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity.m" lineNumber:680 description:{@"Invalid parameter not satisfying: %@", @"keysAndValues != nil"}];
  }

  v18 = objc_opt_self();
  if (v18 != [v18 _entityClassForKeyValueCategory:category])
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity.m" lineNumber:681 description:{@"Invalid parameter not satisfying: %@", @"[self _validateEntityClassForCategory:category]"}];
  }

  date = [MEMORY[0x277CBEAA8] date];
  v20 = valuesCopy;
  v21 = date;
  v22 = domainCopy;
  v23 = databaseCopy;
  v24 = objc_opt_self();
  v25 = [v20 count];
  if (v25)
  {
    v26 = v25;
    errorCopy = error;
    v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v25];
    identityCopy = identity;
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
    v33 = [(HDKeyValueEntity *)v24 _doInsertValues:v32 forKeys:v31 modificationDates:v30 domain:v22 category:category provenance:0 syncIdentity:identityCopy updatePolicy:1 database:v23 error:errorCopy];
  }

  else
  {
    v33 = 1;
  }

  return v33;
}

+ (BOOL)_insertKeysAndValues:(id)values modificationDate:(id)date domain:(id)domain category:(int64_t)category provenance:(int64_t)provenance syncIdentity:(int64_t)identity updatePolicy:(int64_t)policy profile:(id)self0 error:(id *)self1
{
  valuesCopy = values;
  dateCopy = date;
  domainCopy = domain;
  profileCopy = profile;
  v21 = [valuesCopy count];
  if (v21)
  {
    v22 = v21;
    selfCopy = self;
    v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v21];
    provenanceCopy = provenance;
    identityCopy = identity;
    v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v22];
    v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v22];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __125__HDKeyValueEntity__insertKeysAndValues_modificationDate_domain_category_provenance_syncIdentity_updatePolicy_profile_error___block_invoke;
    v34[3] = &unk_27862AD38;
    v35 = v23;
    v36 = v25;
    v37 = v26;
    v38 = dateCopy;
    v27 = v26;
    v28 = v25;
    v29 = v23;
    [valuesCopy enumerateKeysAndObjectsUsingBlock:v34];
    v30 = [selfCopy _insertValues:v29 forKeys:v28 modificationDates:v27 domain:domainCopy category:category provenance:provenanceCopy syncIdentity:identityCopy updatePolicy:policy profile:profileCopy error:error];
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

+ (BOOL)_doInsertValues:(void *)values forKeys:(void *)keys modificationDates:(void *)dates domain:(uint64_t)domain category:(uint64_t)category provenance:(uint64_t)provenance syncIdentity:(uint64_t)identity updatePolicy:(void *)self0 database:(uint64_t)self1 error:
{
  v14 = a2;
  valuesCopy = values;
  keysCopy = keys;
  datesCopy = dates;
  policyCopy = policy;
  v55 = objc_opt_self();
  v17 = [valuesCopy count];
  if ([v14 count] != v17)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__doInsertValues_forKeys_modificationDates_domain_category_provenance_syncIdentity_updatePolicy_database_error_ object:v55 file:@"HDKeyValueEntity.m" lineNumber:910 description:{@"Invalid parameter not satisfying: %@", @"[values count] == count"}];
  }

  if ([keysCopy count] != v17)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__doInsertValues_forKeys_modificationDates_domain_category_provenance_syncIdentity_updatePolicy_database_error_ object:v55 file:@"HDKeyValueEntity.m" lineNumber:911 description:{@"Invalid parameter not satisfying: %@", @"[dates count] == count"}];
  }

  if (datesCopy)
  {
    if (v17)
    {
      goto LABEL_7;
    }

LABEL_24:
    v52 = 1;
    goto LABEL_25;
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:sel__doInsertValues_forKeys_modificationDates_domain_category_provenance_syncIdentity_updatePolicy_database_error_ object:v55 file:@"HDKeyValueEntity.m" lineNumber:912 description:{@"Invalid parameter not satisfying: %@", @"domain != nil"}];

  if (!v17)
  {
    goto LABEL_24;
  }

LABEL_7:
  v51 = v17;
  v52 = 0;
  v18 = 0;
  identityCopy3 = identity;
  v47 = *MEMORY[0x277D10A40];
  v45 = valuesCopy;
  v46 = v14;
  do
  {
    v20 = [valuesCopy objectAtIndexedSubscript:v18];
    v56 = [v14 objectAtIndexedSubscript:v18];
    v21 = keysCopy;
    v22 = [keysCopy objectAtIndexedSubscript:v18];
    [v22 timeIntervalSinceReferenceDate];
    v24 = v23;

    v25 = v20;
    v26 = datesCopy;
    v27 = policyCopy;
    objc_opt_self();
    if (identityCopy3 == 2)
    {
      v28 = v25;
      v29 = v26;
      v30 = v27;
      v31 = objc_opt_self();
      v32 = MEMORY[0x277CCACA8];
      disambiguatedDatabaseTable = [v31 disambiguatedDatabaseTable];
      v34 = [v32 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ? AND %@ = ? AND %@ = ? AND %@ >= ?", v47, disambiguatedDatabaseTable, @"category", @"domain", @"key", @"mod_date", 0];;

      v72 = 0;
      v73 = &v72;
      v74 = 0x2020000000;
      v75 = 1;
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __107__HDKeyValueEntity__validateModificationDatePolicyWithKey_domain_category_modificationDate_database_error___block_invoke;
      v67[3] = &unk_2786214F8;
      domainCopy = domain;
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
      if ([v30 executeSQL:v34 error:database bindingHandler:v67 enumerationHandler:v66])
      {
        if (*(v73 + 24))
        {
          identityCopy3 = 1;
        }

        else
        {
          identityCopy3 = 2;
        }
      }

      else
      {
        identityCopy3 = 3;
      }

      _Block_object_dispose(&v72, 8);
      valuesCopy = v45;
      v14 = v46;
    }

    else if (identityCopy3 != 1)
    {
      identityCopy3 = 0;
    }

    keysCopy = v21;

    if (identityCopy3 == 1)
    {
      _insertStatementKey = [v55 _insertStatementKey];
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
      domainCopy2 = domain;
      categoryCopy = category;
      v63 = v24;
      provenanceCopy = provenance;
      v38 = v25;
      v39 = v56;
      LOBYTE(_insertStatementKey) = [v27 executeCachedStatementForKey:_insertStatementKey error:database SQLGenerator:v65 bindingHandler:v57 enumerationHandler:0];

      identityCopy3 = identity;
      if ((_insertStatementKey & 1) == 0)
      {
        break;
      }
    }

    else
    {

      v40 = identityCopy3 == 3;
      identityCopy3 = identity;
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

+ (BOOL)_insertCodableCategoryDomainDictionary:(id)dictionary provenance:(int64_t)provenance profile:(id)profile error:(id *)error
{
  dictionaryCopy = dictionary;
  profileCopy = profile;
  if ([dictionaryCopy _validateForInsertionWithError:error])
  {
    keyValuePairs = [dictionaryCopy keyValuePairs];
    if ([keyValuePairs count])
    {
      v13 = dictionaryCopy;
      v14 = keyValuePairs;
      v15 = profileCopy;
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

+ (BOOL)_insertCodableTimestampedKeyValuePairs:(id)pairs domain:(id)domain category:(int64_t)category provenance:(int64_t)provenance syncIdentity:(int64_t)identity updatePolicy:(int64_t)policy profile:(id)profile error:(id *)self0
{
  v50 = *MEMORY[0x277D85DE8];
  pairsCopy = pairs;
  domainCopy = domain;
  profileCopy = profile;
  v19 = [pairsCopy count];
  if (v19)
  {
    v20 = v19;
    selfCopy = self;
    policyCopy = policy;
    identityCopy = identity;
    categoryCopy = category;
    provenanceCopy = provenance;
    v42 = profileCopy;
    v43 = domainCopy;
    v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v19];
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v20];
    v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v20];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v44 = pairsCopy;
    v24 = pairsCopy;
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
          decodedValue = [v29 decodedValue];
          if (decodedValue)
          {
            [v21 addObject:decodedValue];
          }

          else
          {
            null = [MEMORY[0x277CBEB68] null];
            [v21 addObject:null];
          }

          v32 = [v29 key];
          [v22 addObject:v32];

          decodedTimestamp = [v29 decodedTimestamp];
          [v23 addObject:decodedTimestamp];
        }

        v26 = [v24 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v26);
    }

    profileCopy = v42;
    domainCopy = v43;
    v34 = [selfCopy _insertValues:v21 forKeys:v22 modificationDates:v23 domain:v43 category:categoryCopy provenance:provenanceCopy syncIdentity:identityCopy updatePolicy:policyCopy profile:v42 error:error];

    pairsCopy = v44;
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

+ (BOOL)_insertValues:(id)values forKeys:(id)keys modificationDates:(id)dates domain:(id)domain category:(int64_t)category provenance:(int64_t)provenance syncIdentity:(int64_t)identity updatePolicy:(int64_t)self0 profile:(id)self1 error:(id *)self2
{
  valuesCopy = values;
  keysCopy = keys;
  datesCopy = dates;
  domainCopy = domain;
  profileCopy = profile;
  v22 = [keysCopy count];
  if ([valuesCopy count] != v22)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity.m" lineNumber:1049 description:{@"Invalid parameter not satisfying: %@", @"[values count] == count"}];
  }

  if ([datesCopy count] != v22)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity.m" lineNumber:1050 description:{@"Invalid parameter not satisfying: %@", @"[dates count] == count"}];
  }

  selfCopy = self;
  if (!domainCopy)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity.m" lineNumber:1051 description:{@"Invalid parameter not satisfying: %@", @"domain != nil"}];
  }

  database = [profileCopy database];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __127__HDKeyValueEntity__insertValues_forKeys_modificationDates_domain_category_provenance_syncIdentity_updatePolicy_profile_error___block_invoke;
  v48[3] = &unk_278619D80;
  v49 = profileCopy;
  v50 = domainCopy;
  categoryCopy = category;
  identityCopy = identity;
  selfCopy2 = self;
  v51 = valuesCopy;
  v52 = keysCopy;
  v53 = datesCopy;
  provenanceCopy = provenance;
  policyCopy = policy;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __127__HDKeyValueEntity__insertValues_forKeys_modificationDates_domain_category_provenance_syncIdentity_updatePolicy_profile_error___block_invoke_2;
  v37[3] = &unk_27862ADB0;
  v38 = v52;
  v39 = v51;
  v40 = v53;
  v41 = v50;
  categoryCopy2 = category;
  provenanceCopy2 = provenance;
  identityCopy2 = identity;
  policyCopy2 = policy;
  v42 = v49;
  v43 = v22;
  v24 = v49;
  v25 = v50;
  v26 = v53;
  v27 = v51;
  v28 = v52;
  v29 = [selfCopy performWriteTransactionWithHealthDatabase:database error:error block:v48 inaccessibilityHandler:v37];

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

+ (Class)_entityClassForKeyValueCategory:(int64_t)category
{
  v14 = *MEMORY[0x277D85DE8];
  if ((category - 100) >= 8 && category > 5)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2048;
      categoryCopy = category;
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

+ (id)_modDateForKey:(id)key domain:(id)domain category:(int64_t)category profile:(id)profile entity:(id *)entity error:(id *)error
{
  v38[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  domainCopy = domain;
  profileCopy = profile;
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
  if (keyCopy)
  {
    v38[0] = keyCopy;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __72__HDKeyValueEntity__modDateForKey_domain_category_profile_entity_error___block_invoke;
    v23[3] = &unk_27862ADD8;
    v23[4] = v36;
    v23[5] = &v30;
    v23[6] = &v24;
    v23[7] = entity;
    v23[8] = self;
    v18 = [(HDKeyValueEntity *)self _valuesForKeys:v17 domain:domainCopy category:category profile:profileCopy error:error handler:v23];
  }

  if (entity)
  {
    v19 = v25[5];
    if (v19)
    {
      *entity = v19;
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

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [[_HDKeyValueEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

@end