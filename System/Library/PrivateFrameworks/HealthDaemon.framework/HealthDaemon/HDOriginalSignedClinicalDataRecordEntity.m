@interface HDOriginalSignedClinicalDataRecordEntity
+ (id)allProperties;
+ (id)checkConstraints;
+ (id)entityWithSyncIdentifier:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)existingEntityWithSyncIdentifier:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)foreignKeys;
+ (id)joinClausesForProperty:(id)a3;
+ (id)uniquedColumns;
@end

@implementation HDOriginalSignedClinicalDataRecordEntity

+ (id)allProperties
{
  v2 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_283CB02A0];
  [v2 addObject:@"gateway.external_id"];

  return v2;
}

+ (id)joinClausesForProperty:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"gateway.external_id"])
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
    v13.receiver = a1;
    v13.super_class = &OBJC_METACLASS___HDOriginalSignedClinicalDataRecordEntity;
    v11 = objc_msgSendSuper2(&v13, sel_joinClausesForProperty_, v4);
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

+ (id)existingEntityWithSyncIdentifier:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a3;
  v15 = 0;
  v9 = [a1 entityWithSyncIdentifier:v8 database:a4 error:&v15];
  v10 = v15;
  v11 = v10;
  if (v9)
  {
    v12 = v9;
  }

  else if (v10)
  {
    if (a5)
    {
      v14 = v10;
      *a5 = v11;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:118 format:{@"original signed clinical data record with sync identifier %@ not found", v8}];
  }

  return v9;
}

+ (id)entityWithSyncIdentifier:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277D10B18];
  v9 = a4;
  v10 = [v8 predicateWithProperty:@"sync_identifier" equalToValue:a3];
  v11 = [a1 anyInDatabase:v9 predicate:v10 error:a5];

  if (v11)
  {
    v12 = v11;
  }

  return v11;
}

@end