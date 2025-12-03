@interface HDOriginalSignedClinicalDataRecordEntity
+ (id)allProperties;
+ (id)checkConstraints;
+ (id)entityWithSyncIdentifier:(id)identifier database:(id)database error:(id *)error;
+ (id)existingEntityWithSyncIdentifier:(id)identifier database:(id)database error:(id *)error;
+ (id)foreignKeys;
+ (id)joinClausesForProperty:(id)property;
+ (id)uniquedColumns;
@end

@implementation HDOriginalSignedClinicalDataRecordEntity

+ (id)allProperties
{
  v2 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_283CB02A0];
  [v2 addObject:@"gateway.external_id"];

  return v2;
}

+ (id)joinClausesForProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"gateway.external_id"])
  {
    v5 = MEMORY[0x277D10B50];
    v6 = +[(HDSQLiteSchemaEntity *)HDOriginalSignedClinicalDataRecordEntity];
    v7 = objc_opt_class();
    v8 = *MEMORY[0x277D10A40];
    v9 = [v5 leftJoinClauseFromTable:v6 toTargetEntity:v7 as:@"account" localReference:@"account_id" targetKey:*MEMORY[0x277D10A40]];

    v10 = [MEMORY[0x277D10B50] leftJoinClauseFromTable:@"account" toTargetEntity:objc_opt_class() as:@"gateway" localReference:@"gateway_id" targetKey:v8];
    v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v9, v10, 0}];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = &OBJC_METACLASS___HDOriginalSignedClinicalDataRecordEntity;
    v11 = objc_msgSendSuper2(&v13, sel_joinClausesForProperty_, propertyCopy);
  }

  return v11;
}

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = +[(HDHealthEntity *)HDClinicalAccountEntity];
  v6 = @"account_id";
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)uniquedColumns
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"account_id";
  v5[1] = @"uniqueness_checksum";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)checkConstraints
{
  v2 = [MEMORY[0x277D10B88] checkConstraintWithSQL:@"(raw_content IS NULL AND deleted == 1) OR (raw_content IS NOT NULL AND deleted == 0)"];
  v3 = [MEMORY[0x277CBEB98] setWithObject:v2];

  return v3;
}

+ (id)existingEntityWithSyncIdentifier:(id)identifier database:(id)database error:(id *)error
{
  identifierCopy = identifier;
  v15 = 0;
  v9 = [self entityWithSyncIdentifier:identifierCopy database:database error:&v15];
  v10 = v15;
  v11 = v10;
  if (v9)
  {
    v12 = v9;
  }

  else if (v10)
  {
    if (error)
    {
      v14 = v10;
      *error = v11;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:118 format:{@"original signed clinical data record with sync identifier %@ not found", identifierCopy}];
  }

  return v9;
}

+ (id)entityWithSyncIdentifier:(id)identifier database:(id)database error:(id *)error
{
  v8 = MEMORY[0x277D10B18];
  databaseCopy = database;
  v10 = [v8 predicateWithProperty:@"sync_identifier" equalToValue:identifier];
  v11 = [self anyInDatabase:databaseCopy predicate:v10 error:error];

  if (v11)
  {
    v12 = v11;
  }

  return v11;
}

@end