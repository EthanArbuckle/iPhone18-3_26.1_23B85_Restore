@interface GKInviteAcceptResponse
+ (id)secureCodedPropertyKeys;
@end

@implementation GKInviteAcceptResponse

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_416 != -1)
  {
    +[GKInviteAcceptResponse secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_415;

  return v3;
}

void __49__GKInviteAcceptResponse_secureCodedPropertyKeys__block_invoke()
{
  v5[5] = *MEMORY[0x277D85DE8];
  v4[0] = @"responsePlist";
  v0 = +[GKServiceInterface plistClasses];
  v5[0] = v0;
  v4[1] = @"sessionID";
  v5[1] = objc_opt_class();
  v4[2] = @"matchID";
  v5[2] = objc_opt_class();
  v4[3] = @"selfPseudonym";
  v5[3] = objc_opt_class();
  v4[4] = @"transportVersionToUse";
  v5[4] = objc_opt_class();
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:5];
  v2 = secureCodedPropertyKeys_sSecureCodedKeys_415;
  secureCodedPropertyKeys_sSecureCodedKeys_415 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

@end