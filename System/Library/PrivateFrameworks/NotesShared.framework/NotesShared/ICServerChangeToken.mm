@interface ICServerChangeToken
+ (id)addServerChangeTokenForAccount:(id)account ckServerChangeToken:(id)token zoneID:(id)d databaseScope:(int64_t)scope context:(id)context;
+ (id)serverChangeTokenForAccount:(id)account zoneID:(id)d databaseScope:(int64_t)scope context:(id)context;
+ (id)serverChangeTokensMatchingPredicate:(id)predicate inContext:(id)context;
- (CKRecordZoneID)zoneID;
- (CKServerChangeToken)ckServerChangeToken;
- (id)ic_loggingValues;
- (int64_t)databaseScope;
- (void)didTurnIntoFault;
- (void)setCkServerChangeToken:(id)token;
- (void)setDatabaseScope:(int64_t)scope;
@end

@implementation ICServerChangeToken

- (CKServerChangeToken)ckServerChangeToken
{
  ckServerChangeToken = self->_ckServerChangeToken;
  if (!ckServerChangeToken)
  {
    ckServerChangeTokenData = [(ICServerChangeToken *)self ckServerChangeTokenData];
    if (ckServerChangeTokenData)
    {
      v5 = [objc_alloc(MEMORY[0x277CBC670]) initWithData:ckServerChangeTokenData];
      v6 = self->_ckServerChangeToken;
      self->_ckServerChangeToken = v5;
    }

    ckServerChangeToken = self->_ckServerChangeToken;
  }

  return ckServerChangeToken;
}

- (void)setCkServerChangeToken:(id)token
{
  tokenCopy = token;
  ckServerChangeToken = [(ICServerChangeToken *)self ckServerChangeToken];
  v6 = [ckServerChangeToken isEqual:tokenCopy];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_ckServerChangeToken, token);
    data = [tokenCopy data];
    [(ICServerChangeToken *)self setCkServerChangeTokenData:data];
  }
}

+ (id)addServerChangeTokenForAccount:(id)account ckServerChangeToken:(id)token zoneID:(id)d databaseScope:(int64_t)scope context:(id)context
{
  dCopy = d;
  v12 = MEMORY[0x277CBE408];
  tokenCopy = token;
  accountCopy = account;
  v15 = [v12 insertNewObjectForEntityForName:@"ICServerChangeToken" inManagedObjectContext:context];
  [v15 setAccount:accountCopy];
  [accountCopy addServerChangeTokensObject:v15];

  [v15 setCkServerChangeToken:tokenCopy];
  zoneName = [dCopy zoneName];
  [v15 setZoneName:zoneName];

  ownerName = [dCopy ownerName];
  LOBYTE(accountCopy) = [ownerName isEqualToString:*MEMORY[0x277CBBF28]];

  if ((accountCopy & 1) == 0)
  {
    ownerName2 = [dCopy ownerName];
    [v15 setOwnerName:ownerName2];
  }

  [v15 setDatabaseScope:scope];

  return v15;
}

+ (id)serverChangeTokenForAccount:(id)account zoneID:(id)d databaseScope:(int64_t)scope context:(id)context
{
  v28[4] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  dCopy = d;
  contextCopy = context;
  if (dCopy && ([dCopy ownerName], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", *MEMORY[0x277CBBF28]), v13, (v14 & 1) == 0))
  {
    ownerName = [dCopy ownerName];
  }

  else
  {
    ownerName = 0;
  }

  accountCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"account == %@", accountCopy];
  v28[0] = accountCopy;
  v17 = MEMORY[0x277CCAC30];
  [dCopy zoneName];
  v18 = v27 = accountCopy;
  v19 = [v17 predicateWithFormat:@"zoneName == %@", v18];
  v28[1] = v19;
  v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"ownerName == %@", ownerName];
  v28[2] = v20;
  scope = [MEMORY[0x277CCAC30] predicateWithFormat:@"databaseScope == %ld", scope];
  v28[3] = scope;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];

  v23 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v22];
  v24 = [self serverChangeTokensMatchingPredicate:v23 inContext:contextCopy];
  firstObject = [v24 firstObject];

  return firstObject;
}

+ (id)serverChangeTokensMatchingPredicate:(id)predicate inContext:(id)context
{
  v5 = MEMORY[0x277CBE428];
  contextCopy = context;
  predicateCopy = predicate;
  v8 = [v5 fetchRequestWithEntityName:@"ICServerChangeToken"];
  [v8 setPredicate:predicateCopy];

  v13 = 0;
  v9 = [contextCopy executeFetchRequest:v8 error:&v13];

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

- (void)setDatabaseScope:(int64_t)scope
{
  [(ICServerChangeToken *)self willChangeValueForKey:@"databaseScope"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:scope];
  [(ICServerChangeToken *)self setPrimitiveValue:v5 forKey:@"databaseScope"];

  [(ICServerChangeToken *)self didChangeValueForKey:@"databaseScope"];
}

- (int64_t)databaseScope
{
  [(ICServerChangeToken *)self willAccessValueForKey:@"databaseScope"];
  v3 = [(ICServerChangeToken *)self primitiveValueForKey:@"databaseScope"];
  integerValue = [v3 integerValue];

  [(ICServerChangeToken *)self didAccessValueForKey:@"databaseScope"];
  return integerValue;
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
    zoneName = [(ICServerChangeToken *)self zoneName];
    if (zoneName)
    {
      ownerName = [(ICServerChangeToken *)self ownerName];
      if (!ownerName)
      {
        ownerName = *MEMORY[0x277CBBF28];
      }

      v6 = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:zoneName ownerName:ownerName];
      v7 = self->_zoneID;
      self->_zoneID = v6;
    }

    zoneID = self->_zoneID;
  }

  return zoneID;
}

- (id)ic_loggingValues
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  managedObjectContext = [(ICServerChangeToken *)self managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__ICServerChangeToken_ic_loggingValues__block_invoke;
  v8[3] = &unk_278194AD8;
  v5 = dictionary;
  v9 = v5;
  selfCopy = self;
  [managedObjectContext performBlockAndWait:v8];

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