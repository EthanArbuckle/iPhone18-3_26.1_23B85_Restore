@interface _HDSourceEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDSourceEncoder

- (id)orderedProperties
{
  v9[10] = *MEMORY[0x277D85DE8];
  v2 = [(HDEntityEncoder *)self purpose];
  if (v2 == 1)
  {
    v8[0] = @"name";
    v8[1] = @"source_options";
    v8[2] = @"local_device";
    v8[3] = @"product_type";
    v8[4] = @"mod_date";
    v8[5] = @"logical_source_id";
    v8[6] = @"logical_sources.bundle_id";
    v8[7] = @"logical_sources.owner_bundle_id";
    v3 = MEMORY[0x277CBEA60];
    v4 = v8;
    v5 = 8;
  }

  else
  {
    if (v2)
    {
      goto LABEL_6;
    }

    v9[0] = @"uuid";
    v9[1] = @"name";
    v9[2] = @"source_options";
    v9[3] = @"product_type";
    v9[4] = @"deleted";
    v9[5] = @"mod_date";
    v9[6] = @"logical_source_id";
    v9[7] = @"sync_identity";
    v9[8] = @"logical_sources.bundle_id";
    v9[9] = @"logical_sources.owner_bundle_id";
    v3 = MEMORY[0x277CBEA60];
    v4 = v9;
    v5 = 10;
  }

  v2 = [v3 arrayWithObjects:v4 count:v5];
LABEL_6:
  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v6 = objc_alloc_init(HDCodableSource);
  v7 = HDSQLiteColumnWithNameAsData();
  [(HDCodableSource *)v6 setUuid:v7];

  v8 = HDSQLiteColumnWithNameAsString();
  [(HDCodableSource *)v6 setName:v8];

  v9 = HDSQLiteColumnWithNameAsString();
  [(HDCodableSource *)v6 setProductType:v9];

  [(HDCodableSource *)v6 setDeleted:HDSQLiteColumnWithNameAsBoolean()];
  v10 = HDSQLiteColumnWithNameAsInt64();
  if (v10)
  {
    [(HDCodableSource *)v6 setOptions:v10];
  }

  HDSQLiteColumnWithNameAsDouble();
  [(HDCodableSource *)v6 setModificationDate:?];
  v11 = HDSQLiteColumnWithNameAsString();
  if (v11)
  {
    [(HDCodableSource *)v6 setBundleIdentifier:v11];
    v12 = HDSQLiteColumnWithNameAsString();
    if (v12)
    {
      [(HDCodableSource *)v6 setOwningAppBundleIdentifier:v12];
    }

    v13 = v6;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:1401 description:@"Bundle identifier not present in Source codable"];
    v13 = 0;
  }

  return v13;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCDA00]) _init];

  return v3;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [(HDEntityEncoder *)self superclassEncoder];

  if (v10)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HDSourceEntity.m" lineNumber:855 description:{@"Invalid parameter not satisfying: %@", @"[self superclassEncoder] == nil"}];
  }

  v11 = HDSQLiteColumnWithNameAsString();
  [v9 _setName:v11];

  [v9 _setOptions:HDSQLiteColumnWithNameAsInt64()];
  [v9 _setLocalDevice:HDSQLiteColumnWithNameAsBoolean()];
  v12 = HDSQLiteColumnWithNameAsString();
  [v9 _setProductType:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
  [v9 _setSourceID:v13];

  v14 = HDSQLiteColumnWithNameAsString();
  [v9 _setBundleIdentifier:v14];

  v15 = HDSQLiteColumnWithNameAsString();
  [v9 _setOwningAppBundleIdentifier:v15];

  v16 = HDSQLiteColumnWithNameAsDate();
  [v9 _setModificationDate:v16];

  return 1;
}

@end