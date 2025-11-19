@interface GKContactRelationshipResult
+ (id)secureCodedPropertyKeys;
@end

@implementation GKContactRelationshipResult

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_0 != -1)
  {
    +[GKContactRelationshipResult secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_0;

  return v3;
}

void __54__GKContactRelationshipResult_secureCodedPropertyKeys__block_invoke()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"handle";
  v4[0] = objc_opt_class();
  v3[1] = @"relatedPlayer";
  v4[1] = objc_opt_class();
  v3[2] = @"relationship";
  v4[2] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_0;
  secureCodedPropertyKeys_sSecureCodedKeys_0 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end