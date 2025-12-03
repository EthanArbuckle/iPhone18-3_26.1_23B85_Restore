@interface FCModifyUserInfoCommand
- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord;
- (FCModifyUserInfoCommand)initWithUserInfoRecord:(id)record;
@end

@implementation FCModifyUserInfoCommand

- (FCModifyUserInfoCommand)initWithUserInfoRecord:(id)record
{
  v11 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v4 = MEMORY[0x1E695DEC8];
  recordCopy2 = record;
  v6 = [v4 arrayWithObjects:&recordCopy count:1];

  v7 = [(FCModifyRecordsCommand *)self initWithLocalRecords:v6 merge:1, recordCopy, v11];
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord
{
  v224 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  remoteRecordCopy = remoteRecord;
  v7 = [recordCopy objectForKeyedSubscript:@"finishFirstLaunchVersion"];
  v8 = [remoteRecordCopy objectForKeyedSubscript:@"finishFirstLaunchVersion"];
  v159 = v8;
  v160 = v7;
  if (v8 && [v7 compare:v8] != 1)
  {
    v9 = 0;
  }

  else
  {
    [remoteRecordCopy setObject:v7 forKeyedSubscript:@"finishFirstLaunchVersion"];
    v9 = 1;
  }

  v203 = [recordCopy objectForKeyedSubscript:@"sportsOnboardingState"];
  v10 = [remoteRecordCopy objectForKeyedSubscript:@"sportsOnboardingState"];
  v211 = [recordCopy objectForKeyedSubscript:@"sportsOnboardingCompletedDate"];
  v209 = [remoteRecordCopy objectForKeyedSubscript:@"sportsOnboardingCompletedDate"];
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

    [remoteRecordCopy setObject:v203 forKeyedSubscript:@"sportsOnboardingState"];
    [remoteRecordCopy setObject:v211 forKeyedSubscript:@"sportsOnboardingCompletedDate"];
    v9 = 1;
  }

  v202 = [recordCopy objectForKeyedSubscript:@"shortcutsOnboardingState"];
  v15 = [remoteRecordCopy objectForKeyedSubscript:@"shortcutsOnboardingState"];
  v201 = [recordCopy objectForKeyedSubscript:@"shortcutsOnboardingCompletedDate"];
  v208 = [remoteRecordCopy objectForKeyedSubscript:@"shortcutsOnboardingCompletedDate"];
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

    [remoteRecordCopy setObject:v202 forKeyedSubscript:@"shortcutsOnboardingState"];
    [remoteRecordCopy setObject:v201 forKeyedSubscript:@"shortcutsOnboardingCompletedDate"];
    v9 = 1;
  }

  v200 = [recordCopy objectForKeyedSubscript:@"sportsSyncState"];
  v20 = [remoteRecordCopy objectForKeyedSubscript:@"sportsSyncState"];
  v207 = [recordCopy objectForKeyedSubscript:@"sportsSyncStateLastSavedDate"];
  v206 = [remoteRecordCopy objectForKeyedSubscript:@"sportsSyncStateLastSavedDate"];
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

    [remoteRecordCopy setObject:v200 forKeyedSubscript:@"sportsSyncState"];
    [remoteRecordCopy setObject:v207 forKeyedSubscript:@"sportsSyncStateLastSavedDate"];
    v9 = 1;
  }

  v25 = [recordCopy objectForKeyedSubscript:@"sportsFavoritesLastModifiedDate"];
  v26 = [remoteRecordCopy objectForKeyedSubscript:@"sportsFavoritesLastModifiedDate"];
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

    [remoteRecordCopy setObject:v25 forKeyedSubscript:@"sportsFavoritesLastModifiedDate"];
    v9 = 1;
  }

  v157 = v26;
  v158 = v25;
  v205 = [recordCopy objectForKeyedSubscript:@"feldsparID"];
  v186 = [remoteRecordCopy objectForKeyedSubscript:@"feldsparID"];
  v199 = [recordCopy objectForKeyedSubscript:@"notificationsUserID"];
  v185 = [remoteRecordCopy objectForKeyedSubscript:@"notificationsUserID"];
  v31 = [recordCopy objectForKeyedSubscript:@"lastOpenedDate"];
  v32 = [remoteRecordCopy objectForKeyedSubscript:@"lastOpenedDate"];
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

    [remoteRecordCopy setObject:v205 forKeyedSubscript:@"feldsparID"];
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
      [remoteRecordCopy setObject:v199 forKeyedSubscript:@"notificationsUserID"];
      v9 = 1;
    }
  }

  v37 = [recordCopy objectForKeyedSubscript:@"adsUserID"];
  v38 = [remoteRecordCopy objectForKeyedSubscript:@"adsUserID"];
  v198 = [recordCopy objectForKeyedSubscript:@"adsUserIDCreatedDate"];
  v197 = [remoteRecordCopy objectForKeyedSubscript:@"adsUserIDCreatedDate"];
  v155 = v38;
  if (!v38 || !v197 || [v198 fc_isLaterThan:v197])
  {
    [remoteRecordCopy setObject:v37 forKeyedSubscript:@"adsUserID"];
    [remoteRecordCopy setObject:v198 forKeyedSubscript:@"adsUserIDCreatedDate"];
    v9 = 1;
  }

  v39 = [recordCopy objectForKeyedSubscript:@"sportsUserID"];
  v40 = [remoteRecordCopy objectForKeyedSubscript:@"sportsUserID"];
  v153 = v40;
  if (v39 && ([v39 isEqualToString:v40] & 1) == 0)
  {
    [remoteRecordCopy setObject:v39 forKeyedSubscript:@"sportsUserID"];
    v9 = 1;
  }

  if (!v36 || [v34 compare:v36] == 1)
  {
    [remoteRecordCopy setObject:v34 forKeyedSubscript:@"lastOpenedDate"];
    v9 = 1;
  }

  v41 = [recordCopy objectForKeyedSubscript:@"userStartDate"];
  v42 = [remoteRecordCopy objectForKeyedSubscript:@"userStartDate"];
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
  [remoteRecordCopy setObject:v204 forKeyedSubscript:@"userStartDate"];
  v9 = 1;
LABEL_64:
  v151 = v42;
  v156 = v37;
  v43 = [recordCopy objectForKeyedSubscript:@"lastViewedSavedDate"];
  v44 = [remoteRecordCopy objectForKeyedSubscript:@"lastViewedSavedDate"];
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

  [remoteRecordCopy setObject:v46 forKeyedSubscript:@"lastViewedSavedDate"];
  v9 = 1;
LABEL_69:
  v47 = [recordCopy objectForKeyedSubscript:@"lastViewedSharedWithYouDate"];
  v48 = [remoteRecordCopy objectForKeyedSubscript:@"lastViewedSharedWithYouDate"];
  v149 = v46;
  v173 = v48;
  if (v47 && (!v48 || [v47 fc_isLaterThan:v48]))
  {
    [remoteRecordCopy setObject:v47 forKeyedSubscript:@"lastViewedSharedWithYouDate"];
    v9 = 1;
  }

  v49 = [recordCopy objectForKeyedSubscript:@"monthlyMeteredCount"];
  v50 = [remoteRecordCopy objectForKeyedSubscript:@"monthlyMeteredCount"];
  v196 = v49;
  v147 = v50;
  if (v49 && !v50 || [v49 compare:v50] == 1)
  {
    [remoteRecordCopy setObject:v49 forKeyedSubscript:@"monthlyMeteredCount"];
    v9 = 1;
  }

  v148 = v47;
  v146 = [remoteRecordCopy objectForKeyedSubscript:@"totalMeteredCount"];
  if (!v146)
  {
    [remoteRecordCopy setObject:&unk_1F2E6FF30 forKeyedSubscript:@"totalMeteredCount"];
    v9 = 1;
  }

  v51 = v39;
  v52 = [recordCopy objectForKeyedSubscript:@"meteredCountLastResetDate"];
  v53 = [remoteRecordCopy objectForKeyedSubscript:@"meteredCountLastResetDate"];
  v172 = v53;
  v54 = v41;
  if (v52 && (!v53 || [v52 fc_isLaterThan:v53]))
  {
    [remoteRecordCopy setObject:v52 forKeyedSubscript:@"meteredCountLastResetDate"];
    v9 = 1;
  }

  v55 = [recordCopy objectForKeyedSubscript:@"monthlyPaidBundleMeteredCount"];
  v56 = [remoteRecordCopy objectForKeyedSubscript:@"monthlyPaidBundleMeteredCount"];
  v195 = v55;
  v144 = v56;
  if (v55 && !v56 || [v55 compare:v56] == 1)
  {
    [remoteRecordCopy setObject:v55 forKeyedSubscript:@"monthlyPaidBundleMeteredCount"];
    v9 = 1;
  }

  v57 = [recordCopy objectForKeyedSubscript:@"paidBundleMeteredCountLastResetDate"];
  v58 = [remoteRecordCopy objectForKeyedSubscript:@"paidBundleMeteredCountLastResetDate"];
  v152 = v54;
  v183 = v57;
  v154 = v51;
  v171 = v58;
  if (v57 && (!v58 || [v57 fc_isLaterThan:v58]))
  {
    [remoteRecordCopy setObject:v57 forKeyedSubscript:@"paidBundleMeteredCountLastResetDate"];
    v9 = 1;
  }

  v59 = [recordCopy objectForKeyedSubscript:@"upsellAppLaunchCount"];
  v60 = [remoteRecordCopy objectForKeyedSubscript:@"upsellAppLaunchCount"];
  v210 = v43;
  v142 = v60;
  if (v59 && !v60)
  {
    [remoteRecordCopy setObject:v59 forKeyedSubscript:@"upsellAppLaunchCount"];
    v9 = 1;
  }

  v61 = [recordCopy objectForKeyedSubscript:@"lastAppLaunchUpsellInstanceID"];
  v62 = [remoteRecordCopy objectForKeyedSubscript:@"lastAppLaunchUpsellInstanceID"];
  v174 = v61;
  v63 = [v61 fc_numberFollowingString:@"v"];
  v141 = v62;
  v64 = [v62 fc_numberFollowingString:@"v"];
  v65 = v64;
  v170 = v63;
  if (v63 && (!v64 || [v63 compare:v64] == 1))
  {
    [remoteRecordCopy setObject:v174 forKeyedSubscript:@"lastAppLaunchUpsellInstanceID"];
    v9 = 1;
  }

  v140 = v65;
  v66 = [recordCopy objectForKeyedSubscript:@"upsellAppLaunchLastSeenDate"];
  v67 = [remoteRecordCopy objectForKeyedSubscript:@"upsellAppLaunchLastSeenDate"];
  v68 = v67;
  v145 = v52;
  if (v66 && (!v67 || [v66 compare:v67] == 1))
  {
    [remoteRecordCopy setObject:v66 forKeyedSubscript:@"upsellAppLaunchLastSeenDate"];
    v9 = 1;
  }

  v69 = [recordCopy objectForKeyedSubscript:@"upsellAppLaunchLastShownCampaignID"];
  v70 = [remoteRecordCopy objectForKeyedSubscript:@"upsellAppLaunchLastShownCampaignID"];
  v182 = v69;
  v169 = v70;
  if (v69 && (!v70 || [v69 compare:v70] == 1))
  {
    [remoteRecordCopy setObject:v69 forKeyedSubscript:@"upsellAppLaunchLastShownCampaignID"];
    v9 = 1;
  }

  v71 = [recordCopy objectForKeyedSubscript:@"upsellAppLaunchLastPresenterBundleID"];
  v72 = [remoteRecordCopy objectForKeyedSubscript:@"upsellAppLaunchLastPresenterBundleID"];
  v168 = v72;
  if (v71 && (!v72 || [v71 compare:v72] == 1))
  {
    [remoteRecordCopy setObject:v71 forKeyedSubscript:@"upsellAppLaunchLastPresenterBundleID"];
    v9 = 1;
  }

  v73 = [recordCopy objectForKeyedSubscript:@"newsletterSignupLastSeenDate"];
  v74 = [remoteRecordCopy objectForKeyedSubscript:@"newsletterSignupLastSeenDate"];
  v181 = v73;
  v138 = v68;
  v167 = v74;
  if (v73 && (!v74 || [v73 compare:v74] == 1))
  {
    [remoteRecordCopy setObject:v73 forKeyedSubscript:@"newsletterSignupLastSeenDate"];
    v9 = 1;
  }

  v75 = v59;
  v76 = [recordCopy objectForKeyedSubscript:@"personalizedNewsletterSignupLastSeenDate"];
  v77 = [remoteRecordCopy objectForKeyedSubscript:@"personalizedNewsletterSignupLastSeenDate"];
  v166 = v77;
  v78 = v210;
  if (v76 && (!v77 || [v76 compare:v77] == 1))
  {
    [remoteRecordCopy setObject:v76 forKeyedSubscript:@"personalizedNewsletterSignupLastSeenDate"];
    v9 = 1;
  }

  v79 = [recordCopy objectForKeyedSubscript:@"issuesNewsletterOptinLastSeenDate"];
  v80 = [remoteRecordCopy objectForKeyedSubscript:@"issuesNewsletterOptinLastSeenDate"];
  v180 = v79;
  v139 = v66;
  v165 = v80;
  if (v79 && (!v80 || [v79 compare:v80] == 1))
  {
    [remoteRecordCopy setObject:v79 forKeyedSubscript:@"issuesNewsletterOptinLastSeenDate"];
    v9 = 1;
  }

  v81 = [recordCopy objectForKeyedSubscript:@"editorialArticleVersion"];
  v193 = [remoteRecordCopy objectForKeyedSubscript:@"editorialArticleVersion"];
  v143 = v75;
  if (v81 && !v193 || v81 && ([v81 isEqualToString:v193] & 1) == 0)
  {
    [remoteRecordCopy setObject:v81 forKeyedSubscript:@"editorialArticleVersion"];
    v9 = 1;
  }

  v82 = [recordCopy objectForKeyedSubscript:@"marketingNotificationsEnabled"];
  v192 = [remoteRecordCopy objectForKeyedSubscript:@"marketingNotificationsEnabled"];
  if (v82 && !v192 || v82 && (v83 = [v82 BOOLValue], v78 = v210, v83 != objc_msgSend(v192, "BOOLValue")))
  {
    [remoteRecordCopy setObject:v82 forKeyedSubscript:@"marketingNotificationsEnabled"];
    v9 = 1;
  }

  v84 = [recordCopy objectForKeyedSubscript:@"newIssueNotificationsEnabled"];
  v85 = [remoteRecordCopy objectForKeyedSubscript:@"newIssueNotificationsEnabled"];
  v86 = v84;
  v87 = v78;
  v88 = v85;
  v176 = v86;
  if (v86 && !v85 || v86 && (v89 = [v86 BOOLValue], v90 = v89 == objc_msgSend(v88, "BOOLValue"), v87 = v210, !v90))
  {
    [remoteRecordCopy setObject:v176 forKeyedSubscript:@"newIssueNotificationsEnabled"];
    v9 = 1;
  }

  v133 = v88;
  v91 = v76;
  [recordCopy objectForKeyedSubscript:@"endOfAudioNotificationsEnabled"];
  v137 = v71;
  v93 = v92 = v87;
  v94 = [remoteRecordCopy objectForKeyedSubscript:@"endOfAudioNotificationsEnabled"];
  v95 = v93;
  v96 = v92;
  v97 = v94;
  v175 = v95;
  if (v95 && !v94 || v95 && (v98 = [v95 BOOLValue], v90 = v98 == objc_msgSend(v97, "BOOLValue"), v96 = v210, !v90))
  {
    [remoteRecordCopy setObject:v175 forKeyedSubscript:@"endOfAudioNotificationsEnabled"];
    v9 = 1;
  }

  v99 = v81;
  v132 = v97;
  v100 = [recordCopy objectForKeyedSubscript:@"sportsTopicNotificationsEnabledState2"];
  v191 = [remoteRecordCopy objectForKeyedSubscript:@"sportsTopicNotificationsEnabledState2"];
  v136 = v91;
  if (v100 && !v191 || v100 && (v101 = [v100 integerValue], v90 = v101 == objc_msgSend(v191, "integerValue"), v96 = v210, !v90))
  {
    [remoteRecordCopy setObject:v100 forKeyedSubscript:@"sportsTopicNotificationsEnabledState2"];
    v9 = 1;
  }

  v102 = [recordCopy objectForKeyedSubscript:@"canonicalLanguage"];
  v190 = [remoteRecordCopy objectForKeyedSubscript:@"canonicalLanguage"];
  if (v102 && !v190 || v102 && ([v102 isEqualToString:v190] & 1) == 0)
  {
    [remoteRecordCopy setObject:v102 forKeyedSubscript:@"canonicalLanguage"];
    v9 = 1;
  }

  v103 = v96;
  v104 = [recordCopy objectForKeyedSubscript:@"postPurchaseOnboardingLastSeenDate"];
  v105 = [remoteRecordCopy objectForKeyedSubscript:@"postPurchaseOnboardingLastSeenDate"];
  v179 = v104;
  v164 = v105;
  if (v104 && (!v105 || [v104 compare:v105] == 1))
  {
    [remoteRecordCopy setObject:v104 forKeyedSubscript:@"postPurchaseOnboardingLastSeenDate"];
    v9 = 1;
  }

  v106 = [recordCopy objectForKeyedSubscript:@"appReviewRequestLastSeenDate"];
  v107 = [remoteRecordCopy objectForKeyedSubscript:@"appReviewRequestLastSeenDate"];
  v178 = v106;
  v130 = v102;
  v163 = v107;
  if (v106 && (!v107 || [v106 compare:v107] == 1))
  {
    [remoteRecordCopy setObject:v106 forKeyedSubscript:@"appReviewRequestLastSeenDate"];
    v9 = 1;
  }

  v108 = [recordCopy objectForKeyedSubscript:@"puzzleNotificationsLastChangedDate"];
  v109 = [remoteRecordCopy objectForKeyedSubscript:@"puzzleNotificationsLastChangedDate"];
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
      [remoteRecordCopy setObject:v108 forKeyedSubscript:@"puzzleNotificationsLastChangedDate"];
      v110 = 1;
      v9 = 1;
    }
  }

  v111 = v103;
  v112 = [recordCopy objectForKeyedSubscript:@"puzzleNotificationsEnabled2"];
  v113 = [remoteRecordCopy objectForKeyedSubscript:@"puzzleNotificationsEnabled2"];
  v114 = v113;
  v135 = v99;
  v131 = v100;
  if (v112 && !v113 || v112 && (v115 = [v112 BOOLValue], ((v115 ^ objc_msgSend(v114, "BOOLValue")) & v110) == 1))
  {
    [remoteRecordCopy setObject:v112 forKeyedSubscript:@"puzzleNotificationsEnabled2"];
    v9 = 1;
  }

  v194 = v9;
  v116 = [recordCopy objectForKeyedSubscript:@"puzzleStatsStartDate"];
  v117 = [remoteRecordCopy objectForKeyedSubscript:@"puzzleStatsStartDate"];
  v118 = v117;
  v127 = v114;
  if (v116 && (!v117 || [v116 compare:{v117, v114, v129, v130, v131}] == -1))
  {
    [remoteRecordCopy setObject:v116 forKeyedSubscript:{@"puzzleStatsStartDate", v127}];
    v194 = 1;
  }

  v161 = recordCopy;
  v119 = [recordCopy objectForKeyedSubscript:{@"importSavedToRecipeVersion", v127}];
  v120 = [remoteRecordCopy objectForKeyedSubscript:@"importSavedToRecipeVersion"];
  v121 = v120;
  if (v119)
  {
    if (!v120 || [v119 compare:v120] == 1)
    {
      [remoteRecordCopy setObject:v119 forKeyedSubscript:@"importSavedToRecipeVersion"];
      v194 = 1;
    }

    v122 = NewsCoreUserDefaults();
    v123 = [v122 BOOLForKey:@"import_saved_to_recipe_version_should_reset"];

    v111 = v210;
    if (v123)
    {
      [remoteRecordCopy setObject:v119 forKeyedSubscript:@"importSavedToRecipeVersion"];
      v124 = NewsCoreUserDefaults();
      [v124 setValue:MEMORY[0x1E695E110] forKey:@"import_saved_to_recipe_version_should_reset"];

      v194 = 1;
    }
  }

  v125 = *MEMORY[0x1E69E9840];
  return v194;
}

@end