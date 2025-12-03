@interface GKTurnBasedServiceInterface
+ (void)configureInterface:(id)interface;
@end

@implementation GKTurnBasedServiceInterface

+ (void)configureInterface:(id)interface
{
  v3 = MEMORY[0x277CBEB98];
  interfaceCopy = interface;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v6 forSelector:sel_getTurnBasedMatchesAndCompatibleBundleID_handler_ argumentIndex:0 ofReply:1];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v9 forSelector:sel_getDetailsForTurnBasedMatchIDs_includeGameData_handler_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v12 forSelector:sel_completeTurnBasedMatch_scores_achievements_handler_ argumentIndex:1 ofReply:0];

  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v15 forSelector:sel_completeTurnBasedMatch_scores_achievements_handler_ argumentIndex:2 ofReply:0];
}

@end