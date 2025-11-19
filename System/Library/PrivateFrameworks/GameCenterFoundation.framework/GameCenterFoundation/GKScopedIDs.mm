@interface GKScopedIDs
+ (BOOL)availableForPlayerID:(id)a3;
+ (id)makeNonpersistentWithPlayerID:(id)a3 gameBundleID:(id)a4;
+ (id)makePersistentWithPlayerID:(id)a3 gameBundleID:(id)a4 gamePlayerID:(id)a5 teamPlayerID:(id)a6;
+ (id)makePlayerIDtoScopedIDsDictFromScopedIDs:(id)a3;
+ (id)secureCodedPropertyKeys;
- (BOOL)arePersistent;
- (BOOL)isForPlayerID:(id)a3 gameBundleID:(id)a4;
- (GKScopedIDs)initWithPersistentPlayerID:(id)a3 gameBundleID:(id)a4 gamePlayerID:(id)a5 teamPlayerID:(id)a6;
@end

@implementation GKScopedIDs

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_16 != -1)
  {
    +[GKScopedIDs secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_16;

  return v3;
}

void __38__GKScopedIDs_secureCodedPropertyKeys__block_invoke()
{
  v4[5] = *MEMORY[0x277D85DE8];
  v3[0] = @"createdPersistent";
  v4[0] = objc_opt_class();
  v3[1] = @"playerID";
  v4[1] = objc_opt_class();
  v3[2] = @"gameBundleID";
  v4[2] = objc_opt_class();
  v3[3] = @"gamePlayerID";
  v4[3] = objc_opt_class();
  v3[4] = @"teamPlayerID";
  v4[4] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_16;
  secureCodedPropertyKeys_sSecureCodedKeys_16 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (GKScopedIDs)initWithPersistentPlayerID:(id)a3 gameBundleID:(id)a4 gamePlayerID:(id)a5 teamPlayerID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = GKScopedIDs;
  v15 = [(GKScopedIDs *)&v19 init];
  if (v15)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithBool:1];
    createdPersistent = v15->_createdPersistent;
    v15->_createdPersistent = v16;

    objc_storeStrong(&v15->_playerID, a3);
    objc_storeStrong(&v15->_gameBundleID, a4);
    objc_storeStrong(&v15->_gamePlayerID, a5);
    objc_storeStrong(&v15->_teamPlayerID, a6);
  }

  return v15;
}

- (BOOL)arePersistent
{
  v2 = [(GKScopedIDs *)self createdPersistent];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isForPlayerID:(id)a3 gameBundleID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKScopedIDs *)self playerID];
  v9 = [v8 isEqualToString:v7];

  if (v9)
  {
    v10 = [(GKScopedIDs *)self gameBundleID];
    v11 = [v10 isEqualToString:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)makePersistentWithPlayerID:(id)a3 gameBundleID:(id)a4 gamePlayerID:(id)a5 teamPlayerID:(id)a6
{
  v6 = 0;
  if (a3 && a4 && a5 && a6)
  {
    v10 = a6;
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v6 = [[GKScopedIDs alloc] initWithPersistentPlayerID:v13 gameBundleID:v12 gamePlayerID:v11 teamPlayerID:v10];
  }

  return v6;
}

+ (id)makeNonpersistentWithPlayerID:(id)a3 gameBundleID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [GKScopedIDs alloc];
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"UnknownID";
  }

  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = @"UnknownBundleID";
  }

  v10 = [MEMORY[0x277CCAC38] processInfo];
  v11 = -[GKScopedIDs initWithNonpersistentPlayerID:gameBundleID:salt:](v7, "initWithNonpersistentPlayerID:gameBundleID:salt:", v8, v9, [v10 processIdentifier]);

  return v11;
}

+ (id)makePlayerIDtoScopedIDsDictFromScopedIDs:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 playerID];
        [v4 setObject:v10 forKey:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (BOOL)availableForPlayerID:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3 || ([v3 isEqualToString:@"AnonymousID"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"AutoMatchID") & 1) != 0)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [v4 isEqualToString:@"UnknownID"] ^ 1;
  }

  return v5;
}

@end