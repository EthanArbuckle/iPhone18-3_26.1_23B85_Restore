@interface _HDKeyValueEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (_HDKeyValueEntityEncoder)initWithHealthEntityClass:(Class)a3 profile:(id)a4 transaction:(id)a5 purpose:(int64_t)a6 encodingOptions:(id)a7 authorizationFilter:(id)a8;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)orderedProperties;
@end

@implementation _HDKeyValueEntityEncoder

- (id)orderedProperties
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"key";
  v5[1] = @"value";
  v5[2] = @"mod_date";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (_HDKeyValueEntityEncoder)initWithHealthEntityClass:(Class)a3 profile:(id)a4 transaction:(id)a5 purpose:(int64_t)a6 encodingOptions:(id)a7 authorizationFilter:(id)a8
{
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  if (a6 == 1)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity.m" lineNumber:1292 description:{@"Invalid parameter not satisfying: %@", @"purpose != HDEntityEncodingPurposeObjectInstantiation"}];
  }

  v22.receiver = self;
  v22.super_class = _HDKeyValueEntityEncoder;
  v19 = [(HDEntityEncoder *)&v22 initWithHealthEntityClass:a3 profile:v15 transaction:v16 purpose:a6 encodingOptions:v17 authorizationFilter:v18];

  return v19;
}

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v5 = objc_alloc_init(HDCodableTimestampedKeyValuePair);
  v6 = HDSQLiteColumnWithNameAsNaturalType();
  v7 = HDSQLiteColumnWithNameAsNaturalType();
  [(HDCodableTimestampedKeyValuePair *)v5 setKey:v6];
  [(HDCodableTimestampedKeyValuePair *)v5 setValue:v7];
  v8 = HDSQLiteColumnWithNameAsDate();
  [(HDCodableTimestampedKeyValuePair *)v5 setTimestampWithDate:v8];

  return v5;
}

- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity.m" lineNumber:1328 description:{@"Invalid parameter not satisfying: %@", @"NO"}];

  return 0;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"HDKeyValueEntity.m" lineNumber:1337 description:{@"Invalid parameter not satisfying: %@", @"NO"}];

  return 0;
}

@end