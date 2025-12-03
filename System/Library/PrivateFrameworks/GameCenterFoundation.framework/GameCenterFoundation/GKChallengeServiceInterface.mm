@interface GKChallengeServiceInterface
+ (void)configureInterface:(id)interface;
@end

@implementation GKChallengeServiceInterface

+ (void)configureInterface:(id)interface
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  interfaceCopy = interface;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v6 forSelector:sel_getChallengesForGameDescriptor_handler_ argumentIndex:0 ofReply:1];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v9 forSelector:sel_getChallengeDetailsForChallengeIDs_handler_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v12 forSelector:sel_getChallengeDetailsForChallengeIDs_receiverID_handler_ argumentIndex:0 ofReply:1];

  v13 = MEMORY[0x277CBEB98];
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v21[2] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  v15 = [v13 setWithArray:v14];
  [interfaceCopy setClasses:v15 forSelector:sel_abortChallenges_handler_ argumentIndex:0 ofReply:0];

  v16 = MEMORY[0x277CBEB98];
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v18 = [v16 setWithArray:v17];
  [interfaceCopy setClasses:v18 forSelector:sel_issueChallenge_toPlayers_handler_ argumentIndex:1 ofReply:0];

  v19 = *MEMORY[0x277D85DE8];
}

@end