@interface GKGameServicePrivateInterface
+ (void)configureInterface:(id)a3;
@end

@implementation GKGameServicePrivateInterface

+ (void)configureInterface:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  [v4 setClasses:v6 forSelector:sel_getGamesForPlayer_includeInstalled_handler_ argumentIndex:0 ofReply:1];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v4 setClasses:v9 forSelector:sel_getGameStatsForPlayer_bundleIDs_handler_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [v4 setClasses:v12 forSelector:sel_getGameMetadataForBundleIDs_handler_ argumentIndex:0 ofReply:1];

  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  [v4 setClasses:v15 forSelector:sel_getGamesPlayedSummaries_limit_handler_ argumentIndex:0 ofReply:0];

  v16 = MEMORY[0x277CBEB98];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  [v4 setClasses:v18 forSelector:sel_getGamesPlayedSummaries_limit_handler_ argumentIndex:1 ofReply:0];

  v19 = MEMORY[0x277CBEB98];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  [v4 setClasses:v21 forSelector:sel_getGamesPlayedSummaries_limit_handler_ argumentIndex:0 ofReply:1];

  v22 = MEMORY[0x277CBEB98];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  [v4 setClasses:v24 forSelector:sel_getGamesPlayedSummaries_limit_withinSecs_handler_ argumentIndex:0 ofReply:0];

  v25 = MEMORY[0x277CBEB98];
  v26 = objc_opt_class();
  v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
  [v4 setClasses:v27 forSelector:sel_getGamesPlayedSummaries_limit_withinSecs_handler_ argumentIndex:1 ofReply:0];

  v28 = MEMORY[0x277CBEB98];
  v29 = objc_opt_class();
  v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
  [v4 setClasses:v30 forSelector:sel_getGamesPlayedSummaries_limit_withinSecs_handler_ argumentIndex:2 ofReply:0];

  v31 = MEMORY[0x277CBEB98];
  v32 = objc_opt_class();
  v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
  [v4 setClasses:v33 forSelector:sel_getGamesPlayedSummaries_limit_withinSecs_handler_ argumentIndex:0 ofReply:1];

  v34 = MEMORY[0x277CBEB98];
  v35 = objc_opt_class();
  v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
  [v4 setClasses:v36 forSelector:sel_clearGamesPlayedSummariesCacheForPlayerID_ argumentIndex:0 ofReply:0];

  v37 = MEMORY[0x277CBEB98];
  v38 = objc_opt_class();
  v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
  [v4 setClasses:v39 forSelector:sel_getGamesPlayedMetaData_handler_ argumentIndex:0 ofReply:0];

  v40 = MEMORY[0x277CBEB98];
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v44 = [v40 setWithObjects:{v41, v42, v43, objc_opt_class(), 0}];
  [v4 setClasses:v44 forSelector:sel_getGamesPlayedMetaData_handler_ argumentIndex:0 ofReply:1];

  v45 = MEMORY[0x277CBEB98];
  v46 = objc_opt_class();
  v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
  [v4 setClasses:v47 forSelector:sel_submitFriendListAccess_value_handler_ argumentIndex:0 ofReply:0];

  v48 = MEMORY[0x277CBEB98];
  v49 = objc_opt_class();
  v50 = [v48 setWithObjects:{v49, objc_opt_class(), 0}];
  [v4 setClasses:v50 forSelector:sel_submitFriendListAccess_value_handler_ argumentIndex:1 ofReply:0];

  v51 = MEMORY[0x277CBEB98];
  v52 = objc_opt_class();
  v53 = [v51 setWithObjects:{v52, objc_opt_class(), 0}];
  [v4 setClasses:v53 forSelector:sel_getFriendListAccessForAllGames_ argumentIndex:0 ofReply:1];

  v54 = MEMORY[0x277CBEB98];
  v55 = objc_opt_class();
  v56 = objc_opt_class();
  v57 = objc_opt_class();
  v58 = [v54 setWithObjects:{v55, v56, v57, objc_opt_class(), 0}];
  [v4 setClasses:v58 forSelector:sel_getAppMetadataForBundleIDs_adamIDs_ttlOption_environment_localDataOnly_withCompletion_ argumentIndex:0 ofReply:1];

  v59 = MEMORY[0x277CBEB98];
  v60 = objc_opt_class();
  v61 = objc_opt_class();
  v62 = objc_opt_class();
  v63 = [v59 setWithObjects:{v60, v61, v62, objc_opt_class(), 0}];
  [v4 setClasses:v63 forSelector:sel_getGamePoliciesForBundleIDs_withCompletion_ argumentIndex:0 ofReply:1];

  v64 = MEMORY[0x277CBEB98];
  v65 = objc_opt_class();
  v66 = objc_opt_class();
  v67 = objc_opt_class();
  v68 = [v64 setWithObjects:{v65, v66, v67, objc_opt_class(), 0}];
  [v4 setClasses:v68 forSelector:sel_getInstallMetadataForBundleIDs_deleteNonmatchingCachedEntries_withCompletion_ argumentIndex:0 ofReply:1];

  v69 = MEMORY[0x277CBEB98];
  v70 = objc_opt_class();
  v71 = [v69 setWithObjects:{v70, objc_opt_class(), 0}];
  [v4 setClasses:v71 forSelector:sel_readGamesPlayedSummaries_limit_withCompletion_ argumentIndex:0 ofReply:1];

  v72 = MEMORY[0x277CBEB98];
  v73 = objc_opt_class();
  v74 = objc_opt_class();
  v75 = objc_opt_class();
  v76 = [v72 setWithObjects:{v73, v74, v75, objc_opt_class(), 0}];
  [v4 setClasses:v76 forSelector:sel_readGameMetadataForBundleIDs_withCompletion_ argumentIndex:0 ofReply:1];
}

@end