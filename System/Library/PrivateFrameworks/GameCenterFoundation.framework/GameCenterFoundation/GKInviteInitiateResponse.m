@interface GKInviteInitiateResponse
+ (id)secureCodedPropertyKeys;
@end

@implementation GKInviteInitiateResponse

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_349 != -1)
  {
    +[GKInviteInitiateResponse secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_348;

  return v3;
}

void __51__GKInviteInitiateResponse_secureCodedPropertyKeys__block_invoke()
{
  v8[11] = *MEMORY[0x277D85DE8];
  v7[0] = @"invitedUserIDs";
  v0 = +[GKServiceInterface plistClasses];
  v8[0] = v0;
  v7[1] = @"approachUsed";
  v8[1] = objc_opt_class();
  v7[2] = @"cloudKitShareURL";
  v8[2] = objc_opt_class();
  v7[3] = @"sessionToken";
  v8[3] = objc_opt_class();
  v7[4] = @"playerTokenMap";
  v1 = +[GKServiceInterface plistClasses];
  v8[4] = v1;
  v7[5] = @"sessionID";
  v8[5] = objc_opt_class();
  v7[6] = @"selfPseudonym";
  v8[6] = objc_opt_class();
  v7[7] = @"selfPushToken";
  v8[7] = objc_opt_class();
  v7[8] = @"transportVersionToUse";
  v8[8] = objc_opt_class();
  v7[9] = @"gameParticipantsInfo";
  v2 = +[GKServiceInterface plistClasses];
  v8[9] = v2;
  v7[10] = @"lobbyParticipantsInfo";
  v3 = +[GKServiceInterface plistClasses];
  v8[10] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:11];
  v5 = secureCodedPropertyKeys_sSecureCodedKeys_348;
  secureCodedPropertyKeys_sSecureCodedKeys_348 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

@end