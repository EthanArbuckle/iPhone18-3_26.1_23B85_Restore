@interface FCModifyUserInfoCommand
- (BOOL)mergeLocalRecord:(id)a3 withRemoteRecord:(id)a4;
- (FCModifyUserInfoCommand)initWithUserInfoRecord:(id)a3;
@end

@implementation FCModifyUserInfoCommand

- (FCModifyUserInfoCommand)initWithUserInfoRecord:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];

  v7 = [(FCModifyRecordsCommand *)self initWithLocalRecords:v6 merge:1, v10, v11];
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)mergeLocalRecord:(id)a3 withRemoteRecord:(id)a4
{
  v224 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"finishFirstLaunchVersion"];
  v8 = [v6 objectForKeyedSubscript:@"finishFirstLaunchVersion"];
  v159 = v8;
  v160 = v7;
  if (v8 && [v7 compare:v8] != 1)
  {
    v9 = 0;
  }

  else
  {
    [v6 setObject:v7 forKeyedSubscript:@"finishFirstLaunchVersion"];
    v9 = 1;
  }

  v203 = [v5 objectForKeyedSubscript:@"sportsOnboardingState"];
  v10 = [v6 objectForKeyedSubscript:@"sportsOnboardingState"];
  v211 = [v5 objectForKeyedSubscript:@"sportsOnboardingCompletedDate"];
  v209 = [v6 objectForKeyedSubscript:@"sportsOnboardingCompletedDate"];
  v11 = FCUserInfoLog;
  v189 = v10;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v209 description];
    v13 = [v211 description];
    *buf = 138413058;
    v213 = v189;
    v214 = 2112;
    v215 = v203;
    v216 = 2112;
    v217 = v12;
    v218 = 2112;
    v219 = v13;
    _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "Will check to merge sports onboarding state local record to remote: remoteSportsState=%@, localSportsState=%@, remoteDate=%@, localDate=%@", buf, 0x2Au);

    v10 = v189;
  }

  if (!v10 || !v209 || [v211 fc_isLaterThan:v209 withPrecision:0])
  {
    v14 = FCUserInfoLog;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "Merging sports onboarding local record to remote", buf, 2u);
    }

    [v6 setObject:v203 forKeyedSubscript:@"sportsOnboardingState"];
    [v6 setObject:v211 forKeyedSubscript:@"sportsOnboardingCompletedDate"];
    v9 = 1;
  }

  v202 = [v5 objectForKeyedSubscript:@"shortcutsOnboardingState"];
  v15 = [v6 objectForKeyedSubscript:@"shortcutsOnboardingState"];
  v201 = [v5 objectForKeyedSubscript:@"shortcutsOnboardingCompletedDate"];
  v208 = [v6 objectForKeyedSubscript:@"shortcutsOnboardingCompletedDate"];
  v16 = FCUserInfoLog;
  v188 = v15;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v208 description];
    v18 = [v211 description];
    *buf = 138413058;
    v213 = v188;
    v214 = 2112;
    v215 = v202;
    v216 = 2112;
    v217 = v17;
    v218 = 2112;
    v219 = v18;
    _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "Will check to merge shortcuts onboarding state local record to remote: remoteShortcutsOnboardingState=%@, localShortcutsOnboardingState=%@, remoteDate=%@, localDate=%@", buf, 0x2Au);

    v15 = v188;
  }

  if (!v15 || !v208 || [v201 fc_isLaterThan:v208 withPrecision:0])
  {
    v19 = FCUserInfoLog;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "Merging shortcuts onboarding state local record to remote", buf, 2u);
    }

    [v6 setObject:v202 forKeyedSubscript:@"shortcutsOnboardingState"];
    [v6 setObject:v201 forKeyedSubscript:@"shortcutsOnboardingCompletedDate"];
    v9 = 1;
  }

  v200 = [v5 objectForKeyedSubscript:@"sportsSyncState"];
  v20 = [v6 objectForKeyedSubscript:@"sportsSyncState"];
  v207 = [v5 objectForKeyedSubscript:@"sportsSyncStateLastSavedDate"];
  v206 = [v6 objectForKeyedSubscript:@"sportsSyncStateLastSavedDate"];
  v21 = FCUserInfoLog;
  v187 = v20;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v206 description];
    v23 = [v207 description];
    *buf = 138413058;
    v213 = v187;
    v214 = 2112;
    v215 = v200;
    v216 = 2112;
    v217 = v22;
    v218 = 2112;
    v219 = v23;
    _os_log_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEFAULT, "Will check to merge sports sync state local record to remote: remoteSportsSyncState=%@, localSportsSyncState=%@, remoteDate=%@, localDate=%@", buf, 0x2Au);

    v20 = v187;
  }

  if (!v20 || !v206 || [v207 fc_isLaterThan:v206 withPrecision:0])
  {
    v24 = FCUserInfoLog;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v24, OS_LOG_TYPE_DEFAULT, "Merging sports sync state local record to remote", buf, 2u);
    }

    [v6 setObject:v200 forKeyedSubscript:@"sportsSyncState"];
    [v6 setObject:v207 forKeyedSubscript:@"sportsSyncStateLastSavedDate"];
    v9 = 1;
  }

  v25 = [v5 objectForKeyedSubscript:@"sportsFavoritesLastModifiedDate"];
  v26 = [v6 objectForKeyedSubscript:@"sportsFavoritesLastModifiedDate"];
  v27 = FCUserInfoLog;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [v25 description];
    v29 = [v26 description];
    *buf = 138412546;
    v213 = v28;
    v214 = 2112;
    v215 = v29;
    _os_log_impl(&dword_1B63EF000, v27, OS_LOG_TYPE_DEFAULT, "Will check to merge 'sports favorites last modified date' local record to remote: remoteSportsFavoritesLastModifiedDate=%@, localSportsFavoritesLastModifiedDate=%@", buf, 0x16u);
  }

  if (!v26 || [v25 fc_isLaterThan:v26 withPrecision:0])
  {
    v30 = FCUserInfoLog;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v30, OS_LOG_TYPE_DEFAULT, "Merging 'sports favorites last modified date' local record to remote", buf, 2u);
    }

    [v6 setObject:v25 forKeyedSubscript:@"sportsFavoritesLastModifiedDate"];
    v9 = 1;
  }

  v157 = v26;
  v158 = v25;
  v205 = [v5 objectForKeyedSubscript:@"feldsparID"];
  v186 = [v6 objectForKeyedSubscript:@"feldsparID"];
  v199 = [v5 objectForKeyedSubscript:@"notificationsUserID"];
  v185 = [v6 objectForKeyedSubscript:@"notificationsUserID"];
  v31 = [v5 objectForKeyedSubscript:@"lastOpenedDate"];
  v32 = [v6 objectForKeyedSubscript:@"lastOpenedDate"];
  v33 = FCUserInfoLog;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141559298;
    v213 = 1752392040;
    v214 = 2112;
    v215 = v186;
    v216 = 2160;
    v217 = 1752392040;
    v218 = 2112;
    v219 = v205;
    v220 = 2112;
    v221 = v32;
    v222 = 2112;
    v223 = v31;
    _os_log_impl(&dword_1B63EF000, v33, OS_LOG_TYPE_DEFAULT, "Will check to merge user id local record to remote: (masked) remoteID=%{mask.hash}@, localID=%{mask.hash}@, remoteDate=%@, localDate=%@", buf, 0x3Eu);
  }

  v184 = v32;
  v34 = v31;
  v162 = v31;
  if (![v31 compare:v32] && v205 && (objc_msgSend(v205, "isEqualToString:", v186) & 1) == 0)
  {
    v35 = FCUserInfoLog;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v35, OS_LOG_TYPE_DEFAULT, "Merging user id local record to remote", buf, 2u);
    }

    [v6 setObject:v205 forKeyedSubscript:@"feldsparID"];
    v9 = 1;
    v34 = v31;
  }

  if (v185)
  {
    v36 = v32;
  }

  else
  {
    v36 = v32;
    if (v199)
    {
      [v6 setObject:v199 forKeyedSubscript:@"notificationsUserID"];
      v9 = 1;
    }
  }

  v37 = [v5 objectForKeyedSubscript:@"adsUserID"];
  v38 = [v6 objectForKeyedSubscript:@"adsUserID"];
  v198 = [v5 objectForKeyedSubscript:@"adsUserIDCreatedDate"];
  v197 = [v6 objectForKeyedSubscript:@"adsUserIDCreatedDate"];
  v155 = v38;
  if (!v38 || !v197 || [v198 fc_isLaterThan:v197])
  {
    [v6 setObject:v37 forKeyedSubscript:@"adsUserID"];
    [v6 setObject:v198 forKeyedSubscript:@"adsUserIDCreatedDate"];
    v9 = 1;
  }

  v39 = [v5 objectForKeyedSubscript:@"sportsUserID"];
  v40 = [v6 objectForKeyedSubscript:@"sportsUserID"];
  v153 = v40;
  if (v39 && ([v39 isEqualToString:v40] & 1) == 0)
  {
    [v6 setObject:v39 forKeyedSubscript:@"sportsUserID"];
    v9 = 1;
  }

  if (!v36 || [v34 compare:v36] == 1)
  {
    [v6 setObject:v34 forKeyedSubscript:@"lastOpenedDate"];
    v9 = 1;
  }

  v41 = [v5 objectForKeyedSubscript:@"userStartDate"];
  v42 = [v6 objectForKeyedSubscript:@"userStartDate"];
  if (v36)
  {
    v204 = [v41 earlierDate:v42];

    if (!v42)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (![v204 compare:v42])
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v204 = v41;
  if (v42)
  {
    goto LABEL_62;
  }

LABEL_63:
  [v6 setObject:v204 forKeyedSubscript:@"userStartDate"];
  v9 = 1;
LABEL_64:
  v151 = v42;
  v156 = v37;
  v43 = [v5 objectForKeyedSubscript:@"lastViewedSavedDate"];
  v44 = [v6 objectForKeyedSubscript:@"lastViewedSavedDate"];
  v150 = v44;
  if (v44)
  {
    v45 = v44;
    v46 = [v43 laterDate:v44];

    if (![v46 compare:v45])
    {
      goto LABEL_69;
    }
  }

  else
  {
    v46 = v43;
  }

  [v6 setObject:v46 forKeyedSubscript:@"lastViewedSavedDate"];
  v9 = 1;
LABEL_69:
  v47 = [v5 objectForKeyedSubscript:@"lastViewedSharedWithYouDate"];
  v48 = [v6 objectForKeyedSubscript:@"lastViewedSharedWithYouDate"];
  v149 = v46;
  v173 = v48;
  if (v47 && (!v48 || [v47 fc_isLaterThan:v48]))
  {
    [v6 setObject:v47 forKeyedSubscript:@"lastViewedSharedWithYouDate"];
    v9 = 1;
  }

  v49 = [v5 objectForKeyedSubscript:@"monthlyMeteredCount"];
  v50 = [v6 objectForKeyedSubscript:@"monthlyMeteredCount"];
  v196 = v49;
  v147 = v50;
  if (v49 && !v50 || [v49 compare:v50] == 1)
  {
    [v6 setObject:v49 forKeyedSubscript:@"monthlyMeteredCount"];
    v9 = 1;
  }

  v148 = v47;
  v146 = [v6 objectForKeyedSubscript:@"totalMeteredCount"];
  if (!v146)
  {
    [v6 setObject:&unk_1F2E6FF30 forKeyedSubscript:@"totalMeteredCount"];
    v9 = 1;
  }

  v51 = v39;
  v52 = [v5 objectForKeyedSubscript:@"meteredCountLastResetDate"];
  v53 = [v6 objectForKeyedSubscript:@"meteredCountLastResetDate"];
  v172 = v53;
  v54 = v41;
  if (v52 && (!v53 || [v52 fc_isLaterThan:v53]))
  {
    [v6 setObject:v52 forKeyedSubscript:@"meteredCountLastResetDate"];
    v9 = 1;
  }

  v55 = [v5 objectForKeyedSubscript:@"monthlyPaidBundleMeteredCount"];
  v56 = [v6 objectForKeyedSubscript:@"monthlyPaidBundleMeteredCount"];
  v195 = v55;
  v144 = v56;
  if (v55 && !v56 || [v55 compare:v56] == 1)
  {
    [v6 setObject:v55 forKeyedSubscript:@"monthlyPaidBundleMeteredCount"];
    v9 = 1;
  }

  v57 = [v5 objectForKeyedSubscript:@"paidBundleMeteredCountLastResetDate"];
  v58 = [v6 objectForKeyedSubscript:@"paidBundleMeteredCountLastResetDate"];
  v152 = v54;
  v183 = v57;
  v154 = v51;
  v171 = v58;
  if (v57 && (!v58 || [v57 fc_isLaterThan:v58]))
  {
    [v6 setObject:v57 forKeyedSubscript:@"paidBundleMeteredCountLastResetDate"];
    v9 = 1;
  }

  v59 = [v5 objectForKeyedSubscript:@"upsellAppLaunchCount"];
  v60 = [v6 objectForKeyedSubscript:@"upsellAppLaunchCount"];
  v210 = v43;
  v142 = v60;
  if (v59 && !v60)
  {
    [v6 setObject:v59 forKeyedSubscript:@"upsellAppLaunchCount"];
    v9 = 1;
  }

  v61 = [v5 objectForKeyedSubscript:@"lastAppLaunchUpsellInstanceID"];
  v62 = [v6 objectForKeyedSubscript:@"lastAppLaunchUpsellInstanceID"];
  v174 = v61;
  v63 = [v61 fc_numberFollowingString:@"v"];
  v141 = v62;
  v64 = [v62 fc_numberFollowingString:@"v"];
  v65 = v64;
  v170 = v63;
  if (v63 && (!v64 || [v63 compare:v64] == 1))
  {
    [v6 setObject:v174 forKeyedSubscript:@"lastAppLaunchUpsellInstanceID"];
    v9 = 1;
  }

  v140 = v65;
  v66 = [v5 objectForKeyedSubscript:@"upsellAppLaunchLastSeenDate"];
  v67 = [v6 objectForKeyedSubscript:@"upsellAppLaunchLastSeenDate"];
  v68 = v67;
  v145 = v52;
  if (v66 && (!v67 || [v66 compare:v67] == 1))
  {
    [v6 setObject:v66 forKeyedSubscript:@"upsellAppLaunchLastSeenDate"];
    v9 = 1;
  }

  v69 = [v5 objectForKeyedSubscript:@"upsellAppLaunchLastShownCampaignID"];
  v70 = [v6 objectForKeyedSubscript:@"upsellAppLaunchLastShownCampaignID"];
  v182 = v69;
  v169 = v70;
  if (v69 && (!v70 || [v69 compare:v70] == 1))
  {
    [v6 setObject:v69 forKeyedSubscript:@"upsellAppLaunchLastShownCampaignID"];
    v9 = 1;
  }

  v71 = [v5 objectForKeyedSubscript:@"upsellAppLaunchLastPresenterBundleID"];
  v72 = [v6 objectForKeyedSubscript:@"upsellAppLaunchLastPresenterBundleID"];
  v168 = v72;
  if (v71 && (!v72 || [v71 compare:v72] == 1))
  {
    [v6 setObject:v71 forKeyedSubscript:@"upsellAppLaunchLastPresenterBundleID"];
    v9 = 1;
  }

  v73 = [v5 objectForKeyedSubscript:@"newsletterSignupLastSeenDate"];
  v74 = [v6 objectForKeyedSubscript:@"newsletterSignupLastSeenDate"];
  v181 = v73;
  v138 = v68;
  v167 = v74;
  if (v73 && (!v74 || [v73 compare:v74] == 1))
  {
    [v6 setObject:v73 forKeyedSubscript:@"newsletterSignupLastSeenDate"];
    v9 = 1;
  }

  v75 = v59;
  v76 = [v5 objectForKeyedSubscript:@"personalizedNewsletterSignupLastSeenDate"];
  v77 = [v6 objectForKeyedSubscript:@"personalizedNewsletterSignupLastSeenDate"];
  v166 = v77;
  v78 = v210;
  if (v76 && (!v77 || [v76 compare:v77] == 1))
  {
    [v6 setObject:v76 forKeyedSubscript:@"personalizedNewsletterSignupLastSeenDate"];
    v9 = 1;
  }

  v79 = [v5 objectForKeyedSubscript:@"issuesNewsletterOptinLastSeenDate"];
  v80 = [v6 objectForKeyedSubscript:@"issuesNewsletterOptinLastSeenDate"];
  v180 = v79;
  v139 = v66;
  v165 = v80;
  if (v79 && (!v80 || [v79 compare:v80] == 1))
  {
    [v6 setObject:v79 forKeyedSubscript:@"issuesNewsletterOptinLastSeenDate"];
    v9 = 1;
  }

  v81 = [v5 objectForKeyedSubscript:@"editorialArticleVersion"];
  v193 = [v6 objectForKeyedSubscript:@"editorialArticleVersion"];
  v143 = v75;
  if (v81 && !v193 || v81 && ([v81 isEqualToString:v193] & 1) == 0)
  {
    [v6 setObject:v81 forKeyedSubscript:@"editorialArticleVersion"];
    v9 = 1;
  }

  v82 = [v5 objectForKeyedSubscript:@"marketingNotificationsEnabled"];
  v192 = [v6 objectForKeyedSubscript:@"marketingNotificationsEnabled"];
  if (v82 && !v192 || v82 && (v83 = [v82 BOOLValue], v78 = v210, v83 != objc_msgSend(v192, "BOOLValue")))
  {
    [v6 setObject:v82 forKeyedSubscript:@"marketingNotificationsEnabled"];
    v9 = 1;
  }

  v84 = [v5 objectForKeyedSubscript:@"newIssueNotificationsEnabled"];
  v85 = [v6 objectForKeyedSubscript:@"newIssueNotificationsEnabled"];
  v86 = v84;
  v87 = v78;
  v88 = v85;
  v176 = v86;
  if (v86 && !v85 || v86 && (v89 = [v86 BOOLValue], v90 = v89 == objc_msgSend(v88, "BOOLValue"), v87 = v210, !v90))
  {
    [v6 setObject:v176 forKeyedSubscript:@"newIssueNotificationsEnabled"];
    v9 = 1;
  }

  v133 = v88;
  v91 = v76;
  [v5 objectForKeyedSubscript:@"endOfAudioNotificationsEnabled"];
  v137 = v71;
  v93 = v92 = v87;
  v94 = [v6 objectForKeyedSubscript:@"endOfAudioNotificationsEnabled"];
  v95 = v93;
  v96 = v92;
  v97 = v94;
  v175 = v95;
  if (v95 && !v94 || v95 && (v98 = [v95 BOOLValue], v90 = v98 == objc_msgSend(v97, "BOOLValue"), v96 = v210, !v90))
  {
    [v6 setObject:v175 forKeyedSubscript:@"endOfAudioNotificationsEnabled"];
    v9 = 1;
  }

  v99 = v81;
  v132 = v97;
  v100 = [v5 objectForKeyedSubscript:@"sportsTopicNotificationsEnabledState2"];
  v191 = [v6 objectForKeyedSubscript:@"sportsTopicNotificationsEnabledState2"];
  v136 = v91;
  if (v100 && !v191 || v100 && (v101 = [v100 integerValue], v90 = v101 == objc_msgSend(v191, "integerValue"), v96 = v210, !v90))
  {
    [v6 setObject:v100 forKeyedSubscript:@"sportsTopicNotificationsEnabledState2"];
    v9 = 1;
  }

  v102 = [v5 objectForKeyedSubscript:@"canonicalLanguage"];
  v190 = [v6 objectForKeyedSubscript:@"canonicalLanguage"];
  if (v102 && !v190 || v102 && ([v102 isEqualToString:v190] & 1) == 0)
  {
    [v6 setObject:v102 forKeyedSubscript:@"canonicalLanguage"];
    v9 = 1;
  }

  v103 = v96;
  v104 = [v5 objectForKeyedSubscript:@"postPurchaseOnboardingLastSeenDate"];
  v105 = [v6 objectForKeyedSubscript:@"postPurchaseOnboardingLastSeenDate"];
  v179 = v104;
  v164 = v105;
  if (v104 && (!v105 || [v104 compare:v105] == 1))
  {
    [v6 setObject:v104 forKeyedSubscript:@"postPurchaseOnboardingLastSeenDate"];
    v9 = 1;
  }

  v106 = [v5 objectForKeyedSubscript:@"appReviewRequestLastSeenDate"];
  v107 = [v6 objectForKeyedSubscript:@"appReviewRequestLastSeenDate"];
  v178 = v106;
  v130 = v102;
  v163 = v107;
  if (v106 && (!v107 || [v106 compare:v107] == 1))
  {
    [v6 setObject:v106 forKeyedSubscript:@"appReviewRequestLastSeenDate"];
    v9 = 1;
  }

  v108 = [v5 objectForKeyedSubscript:@"puzzleNotificationsLastChangedDate"];
  v109 = [v6 objectForKeyedSubscript:@"puzzleNotificationsLastChangedDate"];
  v110 = v109 == 0;
  v177 = v108;
  v134 = v82;
  v129 = v109;
  if (v108)
  {
    if (v109 && ![v108 fc_isLaterThan:v109])
    {
      v110 = 0;
    }

    else
    {
      [v6 setObject:v108 forKeyedSubscript:@"puzzleNotificationsLastChangedDate"];
      v110 = 1;
      v9 = 1;
    }
  }

  v111 = v103;
  v112 = [v5 objectForKeyedSubscript:@"puzzleNotificationsEnabled2"];
  v113 = [v6 objectForKeyedSubscript:@"puzzleNotificationsEnabled2"];
  v114 = v113;
  v135 = v99;
  v131 = v100;
  if (v112 && !v113 || v112 && (v115 = [v112 BOOLValue], ((v115 ^ objc_msgSend(v114, "BOOLValue")) & v110) == 1))
  {
    [v6 setObject:v112 forKeyedSubscript:@"puzzleNotificationsEnabled2"];
    v9 = 1;
  }

  v194 = v9;
  v116 = [v5 objectForKeyedSubscript:@"puzzleStatsStartDate"];
  v117 = [v6 objectForKeyedSubscript:@"puzzleStatsStartDate"];
  v118 = v117;
  v127 = v114;
  if (v116 && (!v117 || [v116 compare:{v117, v114, v129, v130, v131}] == -1))
  {
    [v6 setObject:v116 forKeyedSubscript:{@"puzzleStatsStartDate", v127}];
    v194 = 1;
  }

  v161 = v5;
  v119 = [v5 objectForKeyedSubscript:{@"importSavedToRecipeVersion", v127}];
  v120 = [v6 objectForKeyedSubscript:@"importSavedToRecipeVersion"];
  v121 = v120;
  if (v119)
  {
    if (!v120 || [v119 compare:v120] == 1)
    {
      [v6 setObject:v119 forKeyedSubscript:@"importSavedToRecipeVersion"];
      v194 = 1;
    }

    v122 = NewsCoreUserDefaults();
    v123 = [v122 BOOLForKey:@"import_saved_to_recipe_version_should_reset"];

    v111 = v210;
    if (v123)
    {
      [v6 setObject:v119 forKeyedSubscript:@"importSavedToRecipeVersion"];
      v124 = NewsCoreUserDefaults();
      [v124 setValue:MEMORY[0x1E695E110] forKey:@"import_saved_to_recipe_version_should_reset"];

      v194 = 1;
    }
  }

  v125 = *MEMORY[0x1E69E9840];
  return v194;
}

@end