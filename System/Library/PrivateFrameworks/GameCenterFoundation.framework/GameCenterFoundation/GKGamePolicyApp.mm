@interface GKGamePolicyApp
+ (id)secureCodedPropertyKeys;
- (GKGamePolicyApp)initWithBundleID:(id)d adamID:(id)iD isGame:(BOOL)game;
@end

@implementation GKGamePolicyApp

- (GKGamePolicyApp)initWithBundleID:(id)d adamID:(id)iD isGame:(BOOL)game
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = GKGamePolicyApp;
  v11 = [(GKGamePolicyApp *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_bundleID, d);
    objc_storeStrong(&v12->_adamID, iD);
    v12->_isGame = game;
  }

  return v12;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_4 != -1)
  {
    +[GKGamePolicyApp secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_4;

  return v3;
}

void __42__GKGamePolicyApp_secureCodedPropertyKeys__block_invoke()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"bundleID";
  v4[0] = objc_opt_class();
  v3[1] = @"adamID";
  v4[1] = objc_opt_class();
  v3[2] = @"isGame";
  v4[2] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_4;
  secureCodedPropertyKeys_sSecureCodedKeys_4 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end