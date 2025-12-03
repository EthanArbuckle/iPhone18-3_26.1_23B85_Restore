@interface GKScopedIDs
+ (BOOL)availableForPlayerID:(id)d;
+ (id)makeNonpersistentWithPlayerID:(id)d gameBundleID:(id)iD;
+ (id)makePersistentWithPlayerID:(id)d gameBundleID:(id)iD gamePlayerID:(id)playerID teamPlayerID:(id)teamPlayerID;
+ (id)makePlayerIDtoScopedIDsDictFromScopedIDs:(id)ds;
+ (id)secureCodedPropertyKeys;
- (BOOL)arePersistent;
- (BOOL)isForPlayerID:(id)d gameBundleID:(id)iD;
- (GKScopedIDs)initWithPersistentPlayerID:(id)d gameBundleID:(id)iD gamePlayerID:(id)playerID teamPlayerID:(id)teamPlayerID;
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

- (GKScopedIDs)initWithPersistentPlayerID:(id)d gameBundleID:(id)iD gamePlayerID:(id)playerID teamPlayerID:(id)teamPlayerID
{
  dCopy = d;
  iDCopy = iD;
  playerIDCopy = playerID;
  teamPlayerIDCopy = teamPlayerID;
  v19.receiver = self;
  v19.super_class = GKScopedIDs;
  v15 = [(GKScopedIDs *)&v19 init];
  if (v15)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithBool:1];
    createdPersistent = v15->_createdPersistent;
    v15->_createdPersistent = v16;

    objc_storeStrong(&v15->_playerID, d);
    objc_storeStrong(&v15->_gameBundleID, iD);
    objc_storeStrong(&v15->_gamePlayerID, playerID);
    objc_storeStrong(&v15->_teamPlayerID, teamPlayerID);
  }

  return v15;
}

- (BOOL)arePersistent
{
  createdPersistent = [(GKScopedIDs *)self createdPersistent];
  bOOLValue = [createdPersistent BOOLValue];

  return bOOLValue;
}

- (BOOL)isForPlayerID:(id)d gameBundleID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  playerID = [(GKScopedIDs *)self playerID];
  v9 = [playerID isEqualToString:dCopy];

  if (v9)
  {
    gameBundleID = [(GKScopedIDs *)self gameBundleID];
    v11 = [gameBundleID isEqualToString:iDCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)makePersistentWithPlayerID:(id)d gameBundleID:(id)iD gamePlayerID:(id)playerID teamPlayerID:(id)teamPlayerID
{
  v6 = 0;
  if (d && iD && playerID && teamPlayerID)
  {
    teamPlayerIDCopy = teamPlayerID;
    playerIDCopy = playerID;
    iDCopy = iD;
    dCopy = d;
    v6 = [[GKScopedIDs alloc] initWithPersistentPlayerID:dCopy gameBundleID:iDCopy gamePlayerID:playerIDCopy teamPlayerID:teamPlayerIDCopy];
  }

  return v6;
}

+ (id)makeNonpersistentWithPlayerID:(id)d gameBundleID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v7 = [GKScopedIDs alloc];
  if (dCopy)
  {
    v8 = dCopy;
  }

  else
  {
    v8 = @"UnknownID";
  }

  if (iDCopy)
  {
    v9 = iDCopy;
  }

  else
  {
    v9 = @"UnknownBundleID";
  }

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  v11 = -[GKScopedIDs initWithNonpersistentPlayerID:gameBundleID:salt:](v7, "initWithNonpersistentPlayerID:gameBundleID:salt:", v8, v9, [processInfo processIdentifier]);

  return v11;
}

+ (id)makePlayerIDtoScopedIDsDictFromScopedIDs:(id)ds
{
  v20 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = dsCopy;
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
        playerID = [v10 playerID];
        [dictionary setObject:v10 forKey:playerID];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [dictionary copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (BOOL)availableForPlayerID:(id)d
{
  dCopy = d;
  v4 = dCopy;
  if (!dCopy || ([dCopy isEqualToString:@"AnonymousID"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"AutoMatchID") & 1) != 0)
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