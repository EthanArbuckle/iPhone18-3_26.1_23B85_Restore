@interface GKUtilityServicePrivateInterface
+ (void)configureInterface:(id)interface;
@end

@implementation GKUtilityServicePrivateInterface

+ (void)configureInterface:(id)interface
{
  v4 = MEMORY[0x277CBEB98];
  interfaceCopy = interface;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v7 forSelector:sel_getCredentialInfoAndStoreBagValuesForKeys_handler_ argumentIndex:0 ofReply:0];

  plistClasses = [self plistClasses];
  [interfaceCopy setClasses:plistClasses forSelector:sel_getCredentialInfoAndStoreBagValuesForKeys_handler_ argumentIndex:4 ofReply:1];

  v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [interfaceCopy setClasses:v9 forSelector:sel_currentNonGameCenterForegroundGameHandler_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v12 forSelector:sel_getFriendSuggestionsWithHandler_ argumentIndex:0 ofReply:1];

  v13 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [interfaceCopy setClasses:v13 forSelector:sel_denyContact_handler_ argumentIndex:0 ofReply:0];

  v14 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [interfaceCopy setClasses:v14 forSelector:sel_denyContact_handler_ argumentIndex:0 ofReply:1];

  v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [interfaceCopy setClasses:v15 forSelector:sel_suggestedContactsListWithLimit_handler_ argumentIndex:0 ofReply:0];

  v16 = MEMORY[0x277CBEB98];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v18 forSelector:sel_suggestedContactsListWithLimit_handler_ argumentIndex:0 ofReply:1];

  v19 = MEMORY[0x277CBEB98];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v21 forSelector:sel_getGameInviteFriendSuggestionsWithHandler_ argumentIndex:0 ofReply:1];

  v22 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [interfaceCopy setClasses:v22 forSelector:sel_getHostGameWithHandler_ argumentIndex:0 ofReply:1];

  v23 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [interfaceCopy setClasses:v23 forSelector:sel_willLaunchGameCenterUIForGameDescriptor_completionHandler_ argumentIndex:0 ofReply:0];

  v24 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [interfaceCopy setClasses:v24 forSelector:sel_willLaunchGameCenterUIForGameDescriptor_completionHandler_ argumentIndex:0 ofReply:1];

  v25 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [interfaceCopy setClasses:v25 forSelector:sel_invokeGameTrampolineWithURL_handler_ argumentIndex:0 ofReply:0];

  v26 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [interfaceCopy setClasses:v26 forSelector:sel_invokeGameTrampolineWithURL_handler_ argumentIndex:0 ofReply:1];

  v27 = MEMORY[0x277CBEB98];
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = [v27 setWithObjects:{v28, v29, v30, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v31 forSelector:sel_postGamesMapEventWithGamesUserID_gameCenterUserID_actionType_hostAppBundleId_additionalFields_ argumentIndex:4 ofReply:0];
}

@end