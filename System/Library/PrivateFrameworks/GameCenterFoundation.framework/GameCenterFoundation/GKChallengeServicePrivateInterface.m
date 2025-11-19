@interface GKChallengeServicePrivateInterface
+ (void)configureInterface:(id)a3;
@end

@implementation GKChallengeServicePrivateInterface

+ (void)configureInterface:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v6 = [v3 setWithArray:v5];
  [v4 setClasses:v6 forSelector:sel_getActiveLeaderboardChallengeDetailsForPlayerID_bundleID_allowStaleChallengeDetailsData_completionHandler_ argumentIndex:0 ofReply:1];

  v7 = *MEMORY[0x277D85DE8];
}

@end