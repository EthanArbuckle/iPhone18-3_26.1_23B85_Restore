@interface _HDServiceEntityEncoder
- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)orderedProperties;
@end

@implementation _HDServiceEntityEncoder

- (id)orderedProperties
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"device_uuid";
  v5[1] = @"device_name";
  v5[2] = @"device_service";
  v5[3] = @"device_last_connect";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v5 = HDSQLiteColumnWithNameAsInt64();
  if (v5 > 3)
  {
    v10 = 0;
  }

  else
  {
    v6 = v5;
    v7 = objc_alloc(MEMORY[0x277CCD4C8]);
    v8 = HDSQLiteColumnWithNameAsUUID();
    v9 = HDSQLiteColumnWithNameAsString();
    v10 = [v7 initWithType:v6 identifier:v8 name:v9];

    HDSQLiteColumnWithNameAsDouble();
    [v10 setLastConnection:?];
  }

  return v10;
}

@end