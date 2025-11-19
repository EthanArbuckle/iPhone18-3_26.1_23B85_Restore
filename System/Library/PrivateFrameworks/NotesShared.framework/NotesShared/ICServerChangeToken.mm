@interface ICServerChangeToken
+ (id)addServerChangeTokenForAccount:(id)a3 ckServerChangeToken:(id)a4 zoneID:(id)a5 databaseScope:(int64_t)a6 context:(id)a7;
+ (id)serverChangeTokenForAccount:(id)a3 zoneID:(id)a4 databaseScope:(int64_t)a5 context:(id)a6;
+ (id)serverChangeTokensMatchingPredicate:(id)a3 inContext:(id)a4;
- (CKRecordZoneID)zoneID;
- (CKServerChangeToken)ckServerChangeToken;
- (id)ic_loggingValues;
- (int64_t)databaseScope;
- (void)didTurnIntoFault;
- (void)setCkServerChangeToken:(id)a3;
- (void)setDatabaseScope:(int64_t)a3;
@end

@implementation ICServerChangeToken

- (CKServerChangeToken)ckServerChangeToken
{
  ckServerChangeToken = self->_ckServerChangeToken;
  if (!ckServerChangeToken)
  {
    v4 = [(ICServerChangeToken *)self ckServerChangeTokenData];
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x277CBC670]) initWithData:v4];
      v6 = self->_ckServerChangeToken;
      self->_ckServerChangeToken = v5;
    }

    ckServerChangeToken = self->_ckServerChangeToken;
  }

  return ckServerChangeToken;
}

- (void)setCkServerChangeToken:(id)a3
{
  v8 = a3;
  v5 = [(ICServerChangeToken *)self ckServerChangeToken];
  v6 = [v5 isEqual:v8];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_ckServerChangeToken, a3);
    v7 = [v8 data];
    [(ICServerChangeToken *)self setCkServerChangeTokenData:v7];
  }
}

+ (id)addServerChangeTokenForAccount:(id)a3 ckServerChangeToken:(id)a4 zoneID:(id)a5 databaseScope:(int64_t)a6 context:(id)a7
{
  v11 = a5;
  v12 = MEMORY[0x277CBE408];
  v13 = a4;
  v14 = a3;
  v15 = [v12 insertNewObjectForEntityForName:@"ICServerChangeToken" inManagedObjectContext:a7];
  [v15 setAccount:v14];
  [v14 addServerChangeTokensObject:v15];

  [v15 setCkServerChangeToken:v13];
  v16 = [v11 zoneName];
  [v15 setZoneName:v16];

  v17 = [v11 ownerName];
  LOBYTE(v14) = [v17 isEqualToString:*MEMORY[0x277CBBF28]];

  if ((v14 & 1) == 0)
  {
    v18 = [v11 ownerName];
    [v15 setOwnerName:v18];
  }

  [v15 setDatabaseScope:a6];

  return v15;
}

+ (id)serverChangeTokenForAccount:(id)a3 zoneID:(id)a4 databaseScope:(int64_t)a5 context:(id)a6
{
  v28[4] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v11 && ([v11 ownerName], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", *MEMORY[0x277CBBF28]), v13, (v14 & 1) == 0))
  {
    v15 = [v11 ownerName];
  }

  else
  {
    v15 = 0;
  }

  v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"account == %@", v10];
  v28[0] = v16;
  v17 = MEMORY[0x277CCAC30];
  [v11 zoneName];
  v18 = v27 = v10;
  v19 = [v17 predicateWithFormat:@"zoneName == %@", v18];
  v28[1] = v19;
  v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"ownerName == %@", v15];
  v28[2] = v20;
  v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"databaseScope == %ld", a5];
  v28[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];

  v23 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v22];
  v24 = [a1 serverChangeTokensMatchingPredicate:v23 inContext:v12];
  v25 = [v24 firstObject];

  return v25;
}

+ (id)serverChangeTokensMatchingPredicate:(id)a3 inContext:(id)a4
{
  v5 = MEMORY[0x277CBE428];
  v6 = a4;
  v7 = a3;
  v8 = [v5 fetchRequestWithEntityName:@"ICServerChangeToken"];
  [v8 setPredicate:v7];

  v13 = 0;
  v9 = [v6 executeFetchRequest:v8 error:&v13];

  v10 = v13;
  if (v10)
  {
    v11 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ICServerChangeToken serverChangeTokensMatchingPredicate:v10 inContext:v11];
    }
  }

  return v9;
}

- (void)setDatabaseScope:(int64_t)a3
{
  [(ICServerChangeToken *)self willChangeValueForKey:@"databaseScope"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(ICServerChangeToken *)self setPrimitiveValue:v5 forKey:@"databaseScope"];

  [(ICServerChangeToken *)self didChangeValueForKey:@"databaseScope"];
}

- (int64_t)databaseScope
{
  [(ICServerChangeToken *)self willAccessValueForKey:@"databaseScope"];
  v3 = [(ICServerChangeToken *)self primitiveValueForKey:@"databaseScope"];
  v4 = [v3 integerValue];

  [(ICServerChangeToken *)self didAccessValueForKey:@"databaseScope"];
  return v4;
}

- (void)didTurnIntoFault
{
  v5.receiver = self;
  v5.super_class = ICServerChangeToken;
  [(ICServerChangeToken *)&v5 didTurnIntoFault];
  zoneID = self->_zoneID;
  self->_zoneID = 0;

  ckServerChangeToken = self->_ckServerChangeToken;
  self->_ckServerChangeToken = 0;
}

- (CKRecordZoneID)zoneID
{
  zoneID = self->_zoneID;
  if (!zoneID)
  {
    v4 = [(ICServerChangeToken *)self zoneName];
    if (v4)
    {
      v5 = [(ICServerChangeToken *)self ownerName];
      if (!v5)
      {
        v5 = *MEMORY[0x277CBBF28];
      }

      v6 = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:v4 ownerName:v5];
      v7 = self->_zoneID;
      self->_zoneID = v6;
    }

    zoneID = self->_zoneID;
  }

  return zoneID;
}

- (id)ic_loggingValues
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(ICServerChangeToken *)self managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__ICServerChangeToken_ic_loggingValues__block_invoke;
  v8[3] = &unk_278194AD8;
  v5 = v3;
  v9 = v5;
  v10 = self;
  [v4 performBlockAndWait:v8];

  v6 = v5;
  return v5;
}

void __39__ICServerChangeToken_ic_loggingValues__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) zoneName];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_2827172C0;
  }

  [*(a1 + 32) setObject:v4 forKeyedSubscript:@"zoneName"];

  v5 = [*(a1 + 40) ckServerChangeToken];
  v6 = [v5 ic_loggingDescription];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_2827172C0;
  }

  [*(a1 + 32) setObject:v8 forKeyedSubscript:@"ckServerChangeToken"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "databaseScope")}];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:@"databaseScope"];
}

+ (void)serverChangeTokensMatchingPredicate:(uint64_t)a1 inContext:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Error fetching server change tokens: %@", &v2, 0xCu);
}

@end