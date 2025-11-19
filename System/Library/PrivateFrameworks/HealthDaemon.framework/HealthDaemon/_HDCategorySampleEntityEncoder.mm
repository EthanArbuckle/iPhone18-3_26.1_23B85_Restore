@interface _HDCategorySampleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (_HDCategorySampleEntityEncoder)initWithHealthEntityClass:(Class)a3 profile:(id)a4 transaction:(id)a5 purpose:(int64_t)a6 encodingOptions:(id)a7 authorizationFilter:(id)a8;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDCategorySampleEntityEncoder

- (id)orderedProperties
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = @"value";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (_HDCategorySampleEntityEncoder)initWithHealthEntityClass:(Class)a3 profile:(id)a4 transaction:(id)a5 purpose:(int64_t)a6 encodingOptions:(id)a7 authorizationFilter:(id)a8
{
  v14 = a7;
  v18.receiver = self;
  v18.super_class = _HDCategorySampleEntityEncoder;
  v15 = [(HDEntityEncoder *)&v18 initWithHealthEntityClass:a3 profile:a4 transaction:a5 purpose:a6 encodingOptions:v14 authorizationFilter:a8];
  if (v15)
  {
    v16 = [v14 objectForKeyedSubscript:@"OverrideMCCategorySampleValue"];
    v15->_overrideMCCategorySampleValue = [v16 BOOLValue];
  }

  return v15;
}

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v9 = [(HDEntityEncoder *)self superclassEncoder];
  v10 = [v9 codableRepresentationForPersistentID:a3 row:a4 error:a5];

  if (v10)
  {
    v11 = objc_alloc_init(HDCodableCategorySample);
    [(HDCodableCategorySample *)v11 setSample:v10];
    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      v12 = HDSQLiteColumnWithNameAsInt64();
      v13 = v12;
      if (self->_overrideMCCategorySampleValue && (v10[1] - 157) < 0xF && v12 != 1)
      {
        v13 = 0;
      }

      [(HDCodableCategorySample *)v11 setValue:v13];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCD0B0]) _init];

  return v3;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [v11 applyPropertiesToObject:v10 persistentID:a4 row:a5 error:a6];

  if (v12)
  {
    [v10 _setValue:HDSQLiteColumnWithNameAsInt64()];
  }

  return v12;
}

@end