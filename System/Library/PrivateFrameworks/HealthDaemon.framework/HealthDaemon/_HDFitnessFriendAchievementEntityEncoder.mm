@interface _HDFitnessFriendAchievementEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
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
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [superclassEncoder codableRepresentationForPersistentID:d row:row error:error];

  if (v9)
  {
    v10 = objc_alloc_init(HDCodableFitnessFriendAchievement);
    [(HDCodableFitnessFriendAchievement *)v10 setSample:v9];
    v11 = HDSQLiteColumnWithNameAsData();
    [(HDCodableFitnessFriendAchievement *)v10 setFriendUUID:v11];

    v12 = HDSQLiteColumnWithNameAsString();
    [(HDCodableFitnessFriendAchievement *)v10 setTemplateUniqueName:v12];

    v13 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](row, v13) & 1) == 0)
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

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCDDC0]) _init];

  return _init;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (v12)
  {
    v13 = HDSQLiteColumnWithNameAsUUID();
    [objectCopy setFriendUUID:v13];

    v14 = HDSQLiteColumnWithNameAsString();
    [objectCopy setTemplateUniqueName:v14];

    v15 = HDSQLiteColumnWithNameAsDate();
    [objectCopy setCompletedDate:v15];

    v16 = HDSQLiteColumnWithNameAsNumber();
    [objectCopy setValue:v16];
  }

  return v12;
}

@end