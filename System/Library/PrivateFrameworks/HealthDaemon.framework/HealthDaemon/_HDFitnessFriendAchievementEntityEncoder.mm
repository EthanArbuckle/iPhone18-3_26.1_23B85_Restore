@interface _HDFitnessFriendAchievementEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDFitnessFriendAchievementEntityEncoder

- (id)orderedProperties
{
  v9[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"friend_uuid";
  v9[1] = @"template_unique_name";
  v9[2] = @"completed_date";
  v9[3] = @"value";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v8 = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [v8 codableRepresentationForPersistentID:a3 row:a4 error:a5];

  if (v9)
  {
    v10 = objc_alloc_init(HDCodableFitnessFriendAchievement);
    [(HDCodableFitnessFriendAchievement *)v10 setSample:v9];
    v11 = HDSQLiteColumnWithNameAsData();
    [(HDCodableFitnessFriendAchievement *)v10 setFriendUUID:v11];

    v12 = HDSQLiteColumnWithNameAsString();
    [(HDCodableFitnessFriendAchievement *)v10 setTemplateUniqueName:v12];

    v13 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](a4, v13) & 1) == 0)
    {
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableFitnessFriendAchievement *)v10 setCompletedDate:?];
    }

    v14 = HDSQLiteColumnWithNameAsNumber();
    v15 = v14;
    if (v14)
    {
      if ([v14 hk_hasFloatingPointValue])
      {
        [v15 doubleValue];
        [(HDCodableFitnessFriendAchievement *)v10 setDoubleValue:?];
      }

      else
      {
        -[HDCodableFitnessFriendAchievement setIntValue:](v10, "setIntValue:", [v15 longLongValue]);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCDDC0]) _init];

  return v3;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [v11 applyPropertiesToObject:v10 persistentID:a4 row:a5 error:a6];

  if (v12)
  {
    v13 = HDSQLiteColumnWithNameAsUUID();
    [v10 setFriendUUID:v13];

    v14 = HDSQLiteColumnWithNameAsString();
    [v10 setTemplateUniqueName:v14];

    v15 = HDSQLiteColumnWithNameAsDate();
    [v10 setCompletedDate:v15];

    v16 = HDSQLiteColumnWithNameAsNumber();
    [v10 setValue:v16];
  }

  return v12;
}

@end