@interface GKFriendServicePrivateInterface
+ (void)configureInterface:(id)interface;
@end

@implementation GKFriendServicePrivateInterface

+ (void)configureInterface:(id)interface
{
  v3 = MEMORY[0x277CBEB98];
  interfaceCopy = interface;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v6 forSelector:sel_getCommonFriendsForPlayer_handler_ argumentIndex:0 ofReply:1];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v9 forSelector:sel_getFriendsForPlayer_withFilter_handler_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v12 forSelector:sel_getConcernsForPlayer_handler_ argumentIndex:0 ofReply:1];

  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v15 forSelector:sel_removeMessageInboxEntries_handler_ argumentIndex:0 ofReply:0];

  v16 = MEMORY[0x277CBEB98];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v18 forSelector:sel_getMessageInboxEntries_ argumentIndex:0 ofReply:1];

  v19 = MEMORY[0x277CBEB98];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v21 forSelector:sel_getFriendCodeDetailWithIdentifiers_handler_ argumentIndex:0 ofReply:0];

  v22 = MEMORY[0x277CBEB98];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v24 forSelector:sel_getFriendCodeDetailWithIdentifiers_handler_ argumentIndex:0 ofReply:1];

  v25 = MEMORY[0x277CBEB98];
  v26 = objc_opt_class();
  v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v27 forSelector:sel_getActiveFriendRequests_ argumentIndex:0 ofReply:1];

  v28 = MEMORY[0x277CBEB98];
  v29 = objc_opt_class();
  v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v30 forSelector:sel_getPlayerActivityFeed_bundleID_continuation_gameCategoryFilter_handler_ argumentIndex:0 ofReply:1];

  v31 = MEMORY[0x277CBEB98];
  v32 = objc_opt_class();
  v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v33 forSelector:sel_getPlayerActivityFeed_bundleID_continuation_handler_ argumentIndex:0 ofReply:1];

  v34 = MEMORY[0x277CBEB98];
  v35 = objc_opt_class();
  v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v36 forSelector:sel_getPlayerActivityFeed_gameID_continuation_handler_ argumentIndex:0 ofReply:1];

  v37 = MEMORY[0x277CBEB98];
  v38 = objc_opt_class();
  v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v39 forSelector:sel_getFriendsForPlayer_fetchOptions_handler_ argumentIndex:0 ofReply:1];

  v40 = MEMORY[0x277CBEB98];
  v41 = objc_opt_class();
  v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v42 forSelector:sel_getFriendsForPlayer_fetchOptions_withFilter_handler_ argumentIndex:0 ofReply:1];

  v43 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [interfaceCopy setClasses:v43 forSelector:sel_getChallengableFriendsForPlayer_fetchOptions_completion_ argumentIndex:0 ofReply:0];

  v44 = MEMORY[0x277CBEB98];
  v45 = objc_opt_class();
  v46 = [v44 setWithObjects:{v45, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v46 forSelector:sel_getChallengableFriendsForPlayer_fetchOptions_completion_ argumentIndex:0 ofReply:1];

  v47 = MEMORY[0x277CBEB98];
  v48 = objc_opt_class();
  v49 = [v47 setWithObjects:{v48, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v49 forSelector:sel_getCombinedFriendInvitationListWithCompletion_ argumentIndex:0 ofReply:1];

  v50 = MEMORY[0x277CBEB98];
  v51 = objc_opt_class();
  v52 = [v50 setWithObjects:{v51, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v52 forSelector:sel_getFriendsLatestActivityWithCompletion_ argumentIndex:0 ofReply:1];

  v53 = MEMORY[0x277CBEB98];
  v54 = objc_opt_class();
  v55 = [v53 setWithObjects:{v54, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v55 forSelector:sel_getFriendRequestsBannerDataWithCompletion_ argumentIndex:0 ofReply:1];
}

@end