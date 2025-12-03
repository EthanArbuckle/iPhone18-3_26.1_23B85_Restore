@interface GKGameStatServicePrivateInterface
+ (void)configureInterface:(id)interface;
@end

@implementation GKGameStatServicePrivateInterface

+ (void)configureInterface:(id)interface
{
  v3 = MEMORY[0x277CBEB98];
  interfaceCopy = interface;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v6 forSelector:sel_loadAchievementsForGameWithProfileFetchOptions_players_includeUnreported_includeHidden_profileFetchOptions_withCompletionHandler_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v9 forSelector:sel_loadAchievementsForGameWithProfileFetchOptions_players_includeUnreported_includeHidden_profileFetchOptions_withCompletionHandler_ argumentIndex:1 ofReply:0];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v10 setWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v14 forSelector:sel_loadAchievementsForGameWithProfileFetchOptions_players_includeUnreported_includeHidden_profileFetchOptions_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v17 forSelector:sel_getHypotheticalLeaderboardRanksForScores_forGameDescriptor_handler_ argumentIndex:0 ofReply:0];

  v18 = MEMORY[0x277CBEB98];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v20 forSelector:sel_getHypotheticalLeaderboardRanksForScores_forGameDescriptor_handler_ argumentIndex:1 ofReply:0];

  v21 = MEMORY[0x277CBEB98];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v23 forSelector:sel_getGamesFriendsPlayed_type_withinSecs_matchingBundleIDs_handler_ argumentIndex:0 ofReply:1];

  v24 = MEMORY[0x277CBEB98];
  v25 = objc_opt_class();
  v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v26 forSelector:sel_getGamesFriendsPlayed_type_fetchOptions_withinSecs_matchingBundleIDs_handler_ argumentIndex:0 ofReply:1];

  v27 = MEMORY[0x277CBEB98];
  v28 = objc_opt_class();
  v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v29 forSelector:sel_getReengagementAchievements_ argumentIndex:0 ofReply:1];

  v30 = MEMORY[0x277CBEB98];
  v31 = objc_opt_class();
  v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v32 forSelector:sel_getReengagementAchievements_ argumentIndex:1 ofReply:1];

  v33 = MEMORY[0x277CBEB98];
  v34 = objc_opt_class();
  v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v35 forSelector:sel_getReengagementAchievement_ argumentIndex:0 ofReply:1];

  v36 = MEMORY[0x277CBEB98];
  v37 = objc_opt_class();
  v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v38 forSelector:sel_getReengagementAchievement_ argumentIndex:1 ofReply:1];

  v39 = MEMORY[0x277CBEB98];
  v40 = objc_opt_class();
  v41 = [v39 setWithObjects:{v40, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v41 forSelector:sel_getEntriesForLeaderboard_fetchOptions_gameDescriptor_localPlayer_playerScope_timeScope_range_players_handler_ argumentIndex:0 ofReply:0];

  v42 = MEMORY[0x277CBEB98];
  v43 = objc_opt_class();
  v44 = [v42 setWithObjects:{v43, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v44 forSelector:sel_getEntriesForLeaderboard_fetchOptions_gameDescriptor_localPlayer_playerScope_timeScope_range_players_handler_ argumentIndex:2 ofReply:0];

  v45 = MEMORY[0x277CBEB98];
  v46 = objc_opt_class();
  v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v47 forSelector:sel_getEntriesForLeaderboard_fetchOptions_gameDescriptor_localPlayer_playerScope_timeScope_range_players_handler_ argumentIndex:3 ofReply:0];

  v48 = MEMORY[0x277CBEB98];
  v49 = objc_opt_class();
  v50 = [v48 setWithObjects:{v49, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v50 forSelector:sel_getEntriesForLeaderboard_fetchOptions_gameDescriptor_localPlayer_playerScope_timeScope_range_players_handler_ argumentIndex:7 ofReply:0];

  v51 = MEMORY[0x277CBEB98];
  v52 = objc_opt_class();
  v53 = [v51 setWithObjects:{v52, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v53 forSelector:sel_getEntriesForLeaderboard_fetchOptions_gameDescriptor_localPlayer_playerScope_timeScope_range_players_handler_ argumentIndex:0 ofReply:1];

  v54 = MEMORY[0x277CBEB98];
  v55 = objc_opt_class();
  v56 = [v54 setWithObjects:{v55, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v56 forSelector:sel_getEntriesForLeaderboard_fetchOptions_gameDescriptor_localPlayer_playerScope_timeScope_range_players_handler_ argumentIndex:1 ofReply:1];
}

@end