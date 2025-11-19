@interface HDClinicalAuthorizationSessionEntity
+ (id)checkConstraints;
+ (id)foreignKeys;
+ (id)joinClausesForProperty:(id)a3;
@end

@implementation HDClinicalAuthorizationSessionEntity

+ (id)foreignKeys
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"gateway_id";
  v2 = +[(HDHealthEntity *)HDClinicalGatewayEntity];
  v7[1] = @"account_id";
  v8[0] = v2;
  v3 = +[(HDHealthEntity *)HDClinicalAccountEntity];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)checkConstraints
{
  v2 = [MEMORY[0x277D10B88] checkConstraintWithSQL:@"(account_id IS NULL AND gateway_id IS NOT NULL) OR (account_id IS NOT NULL AND gateway_id IS NULL)"];
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v2, 0}];

  return v3;
}

+ (id)joinClausesForProperty:(id)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = v4;
  v7 = objc_opt_self();
  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  v30[0] = @"account.identifier";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v10 = [v8 initWithArray:v9];

  LOBYTE(v9) = [v10 containsObject:v6];
  v11 = MEMORY[0x277D10A40];
  if (v9)
  {
    v12 = MEMORY[0x277D10B50];
    v13 = [v7 disambiguatedDatabaseTable];
    v14 = [v12 innerJoinClauseFromTable:v13 toTargetEntity:objc_opt_class() as:@"account" localReference:@"account_id" targetKey:*v11];

    v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v14, 0}];
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  [v5 unionSet:v15];
  v16 = v6;
  v17 = objc_opt_self();
  v18 = objc_alloc(MEMORY[0x277CBEB98]);
  v30[0] = @"gateway.external_id";
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v20 = [v18 initWithArray:v19];

  LOBYTE(v19) = [v20 containsObject:v16];
  if (v19)
  {
    v21 = MEMORY[0x277D10B50];
    v22 = [v17 disambiguatedDatabaseTable];
    v23 = [v21 innerJoinClauseFromTable:v22 toTargetEntity:objc_opt_class() as:@"gateway" localReference:@"gateway_id" targetKey:*v11];

    v24 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v23, 0}];
  }

  else
  {
    v24 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  [v5 unionSet:v24];
  if ([v5 count])
  {
    v25 = v5;
  }

  else
  {
    v29.receiver = a1;
    v29.super_class = &OBJC_METACLASS___HDClinicalAuthorizationSessionEntity;
    v25 = objc_msgSendSuper2(&v29, sel_joinClausesForProperty_, v16);
  }

  v26 = v25;

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

@end