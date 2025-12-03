@interface HDStateOfMindEntity
+ (BOOL)addCodableObject:(id)object toCollection:(id)collection;
+ (id)_PredicateForProperty:(void *)property matchingValues:(uint64_t)values inEntityClass:;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)foreignKeys;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
+ (id)predicateForDomain:(int64_t)domain;
+ (id)predicateForDomains:(id)domains;
+ (id)predicateForLabel:(int64_t)label;
+ (id)predicateForLabels:(id)labels;
+ (id)predicateForReflectiveInterval:(int64_t)interval equals:(BOOL)equals;
+ (id)predicateForValence:(double)valence comparisonType:(int64_t)type;
+ (id)privateSubEntities;
@end

@implementation HDStateOfMindEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"data_id";
  v2 = +[(HDDataEntity *)HDSampleEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)privateSubEntities
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  objectCopy = object;
  databaseCopy = database;
  dCopy = d;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDStateOfMindEntity.m" lineNumber:81 description:{@"Subclasses must override %s", "+[HDStateOfMindEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __85__HDStateOfMindEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
  v25[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v25[4] = self;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __85__HDStateOfMindEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke_2;
  v22[3] = &unk_278613038;
  v23 = dCopy;
  v24 = objectCopy;
  v16 = objectCopy;
  v17 = dCopy;
  if ([databaseCopy executeCachedStatementForKey:&insertDataObject_withProvenance_inDatabase_persistentID_error__insertKey_4 error:error SQLGenerator:v25 bindingHandler:v22 enumerationHandler:0])
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  return v18;
}

id __85__HDStateOfMindEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"INSERT OR REPLACE INTO %@ (%@, %@, %@, %@) VALUES (?, ?, ?, ?)", v2, @"data_id", @"reflective_interval", @"valence", @"context", 0];

  return v3;
}

void __85__HDStateOfMindEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  sqlite3_bind_int64(a2, 2, [*(a1 + 40) reflectiveInterval]);
  [*(a1 + 40) valence];
  sqlite3_bind_double(a2, 3, v4);
  v5 = [*(a1 + 40) context];

  if (v5)
  {
    v7 = [*(a1 + 40) context];
    v6 = v7;
    sqlite3_bind_text(a2, 4, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {

    sqlite3_bind_null(a2, 4);
  }
}

+ (BOOL)addCodableObject:(id)object toCollection:(id)collection
{
  if (object)
  {
    [collection addStateOfMindLogs:object];
  }

  return object != 0;
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDStateOfMindEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

+ (id)predicateForValence:(double)valence comparisonType:(int64_t)type
{
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:valence];
  v6 = [MEMORY[0x277D10B18] predicateWithProperty:@"valence" value:v5 comparisonType:type];

  return v6;
}

+ (id)predicateForReflectiveInterval:(int64_t)interval equals:(BOOL)equals
{
  equalsCopy = equals;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:interval];
  if (equalsCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [MEMORY[0x277D10B18] predicateWithProperty:@"reflective_interval" value:v5 comparisonType:v6];

  return v7;
}

+ (id)predicateForLabel:(int64_t)label
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:label];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [HDStateOfMindEntity predicateForLabels:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)predicateForLabels:(id)labels
{
  labelsCopy = labels;
  v4 = objc_opt_class();
  v5 = [HDStateOfMindEntity _PredicateForProperty:labelsCopy matchingValues:v4 inEntityClass:?];

  return v5;
}

+ (id)_PredicateForProperty:(void *)property matchingValues:(uint64_t)values inEntityClass:
{
  v15[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  v7 = a2;
  objc_opt_self();
  v8 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v8 setEntityClass:values];
  v9 = [MEMORY[0x277D10B28] containsPredicateWithProperty:v7 values:propertyCopy];

  [v8 setPredicate:v9];
  v10 = MEMORY[0x277D10B18];
  v15[0] = @"data_id";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [v10 predicateWithProperty:@"data_id" comparisonType:7 subqueryDescriptor:v8 subqueryProperties:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)predicateForDomain:(int64_t)domain
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:domain];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [HDStateOfMindEntity predicateForDomains:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)predicateForDomains:(id)domains
{
  domainsCopy = domains;
  v4 = objc_opt_class();
  v5 = [HDStateOfMindEntity _PredicateForProperty:domainsCopy matchingValues:v4 inEntityClass:?];

  return v5;
}

@end