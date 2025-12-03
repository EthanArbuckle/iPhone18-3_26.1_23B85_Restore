@interface GKGameStatServiceInterface
+ (void)configureInterface:(id)interface;
@end

@implementation GKGameStatServiceInterface

+ (void)configureInterface:(id)interface
{
  v3 = MEMORY[0x277CBEB98];
  interfaceCopy = interface;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v6 forSelector:sel_getRecentMatchesForGameDescriptor_leaderboardIdentifier_handler_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v9 forSelector:sel_getRecentMatchesForGameDescriptor_leaderboardIdentifier_handler_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v12 forSelector:sel_getRecentMatchesForGameDescriptor_achievementIdentifier_handler_ argumentIndex:0 ofReply:0];

  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v15 forSelector:sel_getRecentMatchesForGameDescriptor_achievementIdentifier_handler_ argumentIndex:0 ofReply:1];

  v16 = MEMORY[0x277CBEB98];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v18 forSelector:sel_getRecentMatchesForGameDescriptor_includeCompatibleMultiplayerGames_handler_ argumentIndex:0 ofReply:0];

  v19 = MEMORY[0x277CBEB98];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v21 forSelector:sel_getRecentMatchesForGameDescriptor_includeCompatibleMultiplayerGames_handler_ argumentIndex:0 ofReply:1];

  v22 = MEMORY[0x277CBEB98];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v24 forSelector:sel_getRecentMatchesForGameDescriptor_otherPlayer_handler_ argumentIndex:0 ofReply:0];

  v25 = MEMORY[0x277CBEB98];
  v26 = objc_opt_class();
  v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v27 forSelector:sel_getRecentMatchesForGameDescriptor_otherPlayer_handler_ argumentIndex:0 ofReply:1];

  v28 = MEMORY[0x277CBEB98];
  v29 = objc_opt_class();
  v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v30 forSelector:sel_getRecentPlayersWithHandler_ argumentIndex:0 ofReply:1];

  v31 = MEMORY[0x277CBEB98];
  v32 = objc_opt_class();
  v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v33 forSelector:sel_getAchievementDescriptionsForGameDescriptor_handler_ argumentIndex:0 ofReply:0];

  v34 = MEMORY[0x277CBEB98];
  v35 = objc_opt_class();
  v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v36 forSelector:sel_getAchievementDescriptionsForGameDescriptor_handler_ argumentIndex:0 ofReply:1];

  v37 = MEMORY[0x277CBEB98];
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = [v37 setWithObjects:{v38, v39, v40, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v41 forSelector:sel_getAchievementsForGameDescriptor_players_handler_ argumentIndex:0 ofReply:1];

  v42 = MEMORY[0x277CBEB98];
  v43 = objc_opt_class();
  v44 = [v42 setWithObjects:{v43, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v44 forSelector:sel_getAchievementsForGameDescriptor_players_handler_ argumentIndex:0 ofReply:0];

  v45 = MEMORY[0x277CBEB98];
  v46 = objc_opt_class();
  v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v47 forSelector:sel_getAchievementsForGameDescriptor_players_handler_ argumentIndex:1 ofReply:0];

  v48 = MEMORY[0x277CBEB98];
  v49 = objc_opt_class();
  v50 = [v48 setWithObjects:{v49, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v50 forSelector:sel_submitAchievements_whileScreeningChallenges_withEligibleChallenges_handler_ argumentIndex:0 ofReply:0];

  v51 = MEMORY[0x277CBEB98];
  v52 = objc_opt_class();
  v53 = [v51 setWithObjects:{v52, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v53 forSelector:sel_submitAchievements_whileScreeningChallenges_withEligibleChallenges_handler_ argumentIndex:2 ofReply:0];

  v54 = MEMORY[0x277CBEB98];
  v55 = objc_opt_class();
  v56 = [v54 setWithObjects:{v55, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v56 forSelector:sel_submitScores_whileScreeningChallenges_withEligibleChallenges_handler_ argumentIndex:0 ofReply:0];

  v57 = MEMORY[0x277CBEB98];
  v58 = objc_opt_class();
  v59 = [v57 setWithObjects:{v58, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v59 forSelector:sel_submitScores_whileScreeningChallenges_withEligibleChallenges_handler_ argumentIndex:2 ofReply:0];

  v60 = MEMORY[0x277CBEB98];
  v61 = objc_opt_class();
  v62 = [v60 setWithObjects:{v61, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v62 forSelector:sel_getLeaderboardSummaryForGameDescriptor_localPlayer_baseLeaderboardID_leaderboardID_timeScope_handler_ argumentIndex:0 ofReply:0];

  v63 = MEMORY[0x277CBEB98];
  v64 = objc_opt_class();
  v65 = [v63 setWithObjects:{v64, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v65 forSelector:sel_getLeaderboardSummaryForGameDescriptor_localPlayer_baseLeaderboardID_leaderboardID_timeScope_handler_ argumentIndex:1 ofReply:0];

  v66 = MEMORY[0x277CBEB98];
  v67 = objc_opt_class();
  v68 = [v66 setWithObjects:{v67, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v68 forSelector:sel_getLeaderboardSummaryForGameDescriptor_localPlayer_baseLeaderboardID_leaderboardID_timeScope_handler_ argumentIndex:2 ofReply:0];

  v69 = MEMORY[0x277CBEB98];
  v70 = objc_opt_class();
  v71 = [v69 setWithObjects:{v70, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v71 forSelector:sel_getLeaderboardSummaryForGameDescriptor_localPlayer_baseLeaderboardID_leaderboardID_timeScope_handler_ argumentIndex:3 ofReply:0];

  v72 = MEMORY[0x277CBEB98];
  v73 = objc_opt_class();
  v74 = [v72 setWithObjects:{v73, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v74 forSelector:sel_getLeaderboardSummaryForGameDescriptor_localPlayer_baseLeaderboardID_leaderboardID_timeScope_handler_ argumentIndex:0 ofReply:1];

  v75 = MEMORY[0x277CBEB98];
  v76 = objc_opt_class();
  v77 = [v75 setWithObjects:{v76, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v77 forSelector:sel_getLeaderboardsForGameDescriptor_player_setIdentifier_handler_ argumentIndex:0 ofReply:0];

  v78 = MEMORY[0x277CBEB98];
  v79 = objc_opt_class();
  v80 = [v78 setWithObjects:{v79, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v80 forSelector:sel_getLeaderboardsForGameDescriptor_player_setIdentifier_handler_ argumentIndex:1 ofReply:0];

  v81 = MEMORY[0x277CBEB98];
  v82 = objc_opt_class();
  v83 = [v81 setWithObjects:{v82, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v83 forSelector:sel_getLeaderboardsForGameDescriptor_player_setIdentifier_handler_ argumentIndex:0 ofReply:1];

  v84 = MEMORY[0x277CBEB98];
  v85 = objc_opt_class();
  v86 = [v84 setWithObjects:{v85, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v86 forSelector:sel_getLeaderboardSetsForGameDescriptor_handler_ argumentIndex:0 ofReply:0];

  v87 = MEMORY[0x277CBEB98];
  v88 = objc_opt_class();
  v89 = [v87 setWithObjects:{v88, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v89 forSelector:sel_getLeaderboardSetsForGameDescriptor_handler_ argumentIndex:0 ofReply:1];

  v90 = MEMORY[0x277CBEB98];
  v91 = objc_opt_class();
  v92 = [v90 setWithObjects:{v91, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v92 forSelector:sel_getLeaderboardsForGameDescriptor_player_leaderboardIDs_setIdentifier_handler_ argumentIndex:0 ofReply:0];

  v93 = MEMORY[0x277CBEB98];
  v94 = objc_opt_class();
  v95 = [v93 setWithObjects:{v94, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v95 forSelector:sel_getLeaderboardsForGameDescriptor_player_leaderboardIDs_setIdentifier_handler_ argumentIndex:1 ofReply:0];

  v96 = MEMORY[0x277CBEB98];
  v97 = objc_opt_class();
  v98 = [v96 setWithObjects:{v97, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v98 forSelector:sel_getLeaderboardsForGameDescriptor_player_leaderboardIDs_setIdentifier_handler_ argumentIndex:2 ofReply:0];

  v99 = MEMORY[0x277CBEB98];
  v100 = objc_opt_class();
  v101 = [v99 setWithObjects:{v100, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v101 forSelector:sel_getLeaderboardsForGameDescriptor_player_leaderboardIDs_setIdentifier_handler_ argumentIndex:0 ofReply:1];

  v102 = MEMORY[0x277CBEB98];
  v103 = objc_opt_class();
  v104 = [v102 setWithObjects:{v103, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v104 forSelector:sel_getPreviousInstanceForLeaderboard_gameDescriptor_player_handler_ argumentIndex:0 ofReply:0];

  v105 = MEMORY[0x277CBEB98];
  v106 = objc_opt_class();
  v107 = [v105 setWithObjects:{v106, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v107 forSelector:sel_getPreviousInstanceForLeaderboard_gameDescriptor_player_handler_ argumentIndex:1 ofReply:0];

  v108 = MEMORY[0x277CBEB98];
  v109 = objc_opt_class();
  v110 = [v108 setWithObjects:{v109, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v110 forSelector:sel_getPreviousInstanceForLeaderboard_gameDescriptor_player_handler_ argumentIndex:2 ofReply:0];

  v111 = MEMORY[0x277CBEB98];
  v112 = objc_opt_class();
  v113 = [v111 setWithObjects:{v112, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v113 forSelector:sel_getPreviousInstanceForLeaderboard_gameDescriptor_player_handler_ argumentIndex:0 ofReply:1];

  v114 = MEMORY[0x277CBEB98];
  v115 = objc_opt_class();
  v116 = [v114 setWithObjects:{v115, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v116 forSelector:sel_getEntriesForLeaderboard_gameDescriptor_localPlayer_playerScope_timeScope_range_players_handler_ argumentIndex:0 ofReply:0];

  v117 = MEMORY[0x277CBEB98];
  v118 = objc_opt_class();
  v119 = [v117 setWithObjects:{v118, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v119 forSelector:sel_getEntriesForLeaderboard_gameDescriptor_localPlayer_playerScope_timeScope_range_players_handler_ argumentIndex:1 ofReply:0];

  v120 = MEMORY[0x277CBEB98];
  v121 = objc_opt_class();
  v122 = [v120 setWithObjects:{v121, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v122 forSelector:sel_getEntriesForLeaderboard_gameDescriptor_localPlayer_playerScope_timeScope_range_players_handler_ argumentIndex:2 ofReply:0];

  v123 = MEMORY[0x277CBEB98];
  v124 = objc_opt_class();
  v125 = [v123 setWithObjects:{v124, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v125 forSelector:sel_getEntriesForLeaderboard_gameDescriptor_localPlayer_playerScope_timeScope_range_players_handler_ argumentIndex:6 ofReply:0];

  v126 = MEMORY[0x277CBEB98];
  v127 = objc_opt_class();
  v128 = [v126 setWithObjects:{v127, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v128 forSelector:sel_getEntriesForLeaderboard_gameDescriptor_localPlayer_playerScope_timeScope_range_players_handler_ argumentIndex:0 ofReply:1];

  v129 = MEMORY[0x277CBEB98];
  v130 = objc_opt_class();
  v131 = [v129 setWithObjects:{v130, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v131 forSelector:sel_getEntriesForLeaderboard_gameDescriptor_localPlayer_playerScope_timeScope_range_players_handler_ argumentIndex:1 ofReply:1];

  v132 = MEMORY[0x277CBEB98];
  v133 = objc_opt_class();
  v134 = [v132 setWithObjects:{v133, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v134 forSelector:sel_getEntriesForLeaderboard_gameDescriptor_localPlayer_playerScope_timeScope_range_players_locale_handler_ argumentIndex:0 ofReply:0];

  v135 = MEMORY[0x277CBEB98];
  v136 = objc_opt_class();
  v137 = [v135 setWithObjects:{v136, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v137 forSelector:sel_getEntriesForLeaderboard_gameDescriptor_localPlayer_playerScope_timeScope_range_players_locale_handler_ argumentIndex:1 ofReply:0];

  v138 = MEMORY[0x277CBEB98];
  v139 = objc_opt_class();
  v140 = [v138 setWithObjects:{v139, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v140 forSelector:sel_getEntriesForLeaderboard_gameDescriptor_localPlayer_playerScope_timeScope_range_players_locale_handler_ argumentIndex:2 ofReply:0];

  v141 = MEMORY[0x277CBEB98];
  v142 = objc_opt_class();
  v143 = [v141 setWithObjects:{v142, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v143 forSelector:sel_getEntriesForLeaderboard_gameDescriptor_localPlayer_playerScope_timeScope_range_players_locale_handler_ argumentIndex:6 ofReply:0];

  v144 = MEMORY[0x277CBEB98];
  v145 = objc_opt_class();
  v146 = [v144 setWithObjects:{v145, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v146 forSelector:sel_getEntriesForLeaderboard_gameDescriptor_localPlayer_playerScope_timeScope_range_players_locale_handler_ argumentIndex:0 ofReply:1];

  v147 = MEMORY[0x277CBEB98];
  v148 = objc_opt_class();
  v149 = [v147 setWithObjects:{v148, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v149 forSelector:sel_getEntriesForLeaderboard_gameDescriptor_localPlayer_playerScope_timeScope_range_players_locale_handler_ argumentIndex:1 ofReply:1];

  v150 = MEMORY[0x277CBEB98];
  v151 = objc_opt_class();
  v152 = [v150 setWithObjects:{v151, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v152 forSelector:sel_submitScore_context_leaderboardIDs_forPlayer_whileScreeningChallenges_withEligibleChallenges_gameDescriptor_handler_ argumentIndex:2 ofReply:0];

  v153 = MEMORY[0x277CBEB98];
  v154 = objc_opt_class();
  v155 = [v153 setWithObjects:{v154, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v155 forSelector:sel_submitScore_context_leaderboardIDs_forPlayer_whileScreeningChallenges_withEligibleChallenges_gameDescriptor_handler_ argumentIndex:3 ofReply:0];

  v156 = MEMORY[0x277CBEB98];
  v157 = objc_opt_class();
  v158 = [v156 setWithObjects:{v157, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v158 forSelector:sel_submitScore_context_leaderboardIDs_forPlayer_whileScreeningChallenges_withEligibleChallenges_gameDescriptor_handler_ argumentIndex:5 ofReply:0];

  v159 = MEMORY[0x277CBEB98];
  v160 = objc_opt_class();
  v161 = [v159 setWithObjects:{v160, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v161 forSelector:sel_submitScore_context_leaderboardIDs_forPlayer_whileScreeningChallenges_withEligibleChallenges_gameDescriptor_handler_ argumentIndex:6 ofReply:0];

  v162 = MEMORY[0x277CBEB98];
  v163 = objc_opt_class();
  v164 = [v162 setWithObjects:{v163, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v164 forSelector:sel_submitInstanceScore_context_leaderboard_forPlayer_whileScreeningChallenges_withEligibleChallenges_handler_ argumentIndex:2 ofReply:0];

  v165 = MEMORY[0x277CBEB98];
  v166 = objc_opt_class();
  v167 = [v165 setWithObjects:{v166, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v167 forSelector:sel_submitInstanceScore_context_leaderboard_forPlayer_whileScreeningChallenges_withEligibleChallenges_handler_ argumentIndex:3 ofReply:0];
}

@end