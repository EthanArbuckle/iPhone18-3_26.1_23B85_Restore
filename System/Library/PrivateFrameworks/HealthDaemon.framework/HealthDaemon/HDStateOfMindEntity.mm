@interface HDStateOfMindEntity
+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4;
+ (id)_PredicateForProperty:(void *)a3 matchingValues:(uint64_t)a4 inEntityClass:;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)foreignKeys;
+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7;
+ (id)predicateForDomain:(int64_t)a3;
+ (id)predicateForDomains:(id)a3;
+ (id)predicateForLabel:(int64_t)a3;
+ (id)predicateForLabels:(id)a3;
+ (id)predicateForReflectiveInterval:(int64_t)a3 equals:(BOOL)a4;
+ (id)predicateForValence:(double)a3 comparisonType:(int64_t)a4;
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

+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"HDStateOfMindEntity.m" lineNumber:81 description:{@"Subclasses must override %s", "+[HDStateOfMindEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __85__HDStateOfMindEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
  v25[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v25[4] = a1;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __85__HDStateOfMindEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke_2;
  v22[3] = &unk_278613038;
  v23 = v14;
  v24 = v12;
  v16 = v12;
  v17 = v14;
  if ([v13 executeCachedStatementForKey:&insertDataObject_withProvenance_inDatabase_persistentID_error__insertKey_4 error:a7 SQLGenerator:v25 bindingHandler:v22 enumerationHandler:0])
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

+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4
{
  if (a3)
  {
    [a4 addStateOfMindLogs:a3];
  }

  return a3 != 0;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(HDEntityEncoder *)[_HDStateOfMindEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

+ (id)predicateForValence:(double)a3 comparisonType:(int64_t)a4
{
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v6 = [MEMORY[0x277D10B18] predicateWithProperty:@"valence" value:v5 comparisonType:a4];

  return v6;
}

+ (id)predicateForReflectiveInterval:(int64_t)a3 equals:(BOOL)a4
{
  v4 = a4;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  if (v4)
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

+ (id)predicateForLabel:(int64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [HDStateOfMindEntity predicateForLabels:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)predicateForLabels:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [HDStateOfMindEntity _PredicateForProperty:v3 matchingValues:v4 inEntityClass:?];

  return v5;
}

+ (id)_PredicateForProperty:(void *)a3 matchingValues:(uint64_t)a4 inEntityClass:
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a2;
  objc_opt_self();
  v8 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v8 setEntityClass:a4];
  v9 = [MEMORY[0x277D10B28] containsPredicateWithProperty:v7 values:v6];

  [v8 setPredicate:v9];
  v10 = MEMORY[0x277D10B18];
  v15[0] = @"data_id";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [v10 predicateWithProperty:@"data_id" comparisonType:7 subqueryDescriptor:v8 subqueryProperties:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)predicateForDomain:(int64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [HDStateOfMindEntity predicateForDomains:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)predicateForDomains:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [HDStateOfMindEntity _PredicateForProperty:v3 matchingValues:v4 inEntityClass:?];

  return v5;
}

@end