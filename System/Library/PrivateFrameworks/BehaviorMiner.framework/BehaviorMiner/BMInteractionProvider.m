@interface BMInteractionProvider
- (BMInteractionProvider)init;
- (BMInteractionProvider)initWithBMMiningTaskConfig:(id)a3;
- (BMInteractionProvider)initWithInteractionStore:(id)a3 bmMiningTaskConfig:(id)a4;
- (id)batchFetchedPhotoSuggestionsForInteractions:(id)a3;
- (id)getResultsForRequest:(id)a3;
- (id)interactionEventsForTypes:(id)a3 error:(id *)a4;
@end

@implementation BMInteractionProvider

- (BMInteractionProvider)initWithInteractionStore:(id)a3 bmMiningTaskConfig:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = BMInteractionProvider;
  v9 = [(BMInteractionProvider *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_interactionStore, a3);
    contextKitClient = v10->_contextKitClient;
    v10->_contextKitClient = 0;

    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v12 = getCKContextClientClass_softClass;
    v22 = getCKContextClientClass_softClass;
    if (!getCKContextClientClass_softClass)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __getCKContextClientClass_block_invoke;
      v18[3] = &unk_278D066F0;
      v18[4] = &v19;
      __getCKContextClientClass_block_invoke(v18);
      v12 = v20[3];
    }

    v13 = v12;
    _Block_object_dispose(&v19, 8);
    v14 = [v12 clientWithDefaultRequestType:9];
    v15 = v10->_contextKitClient;
    v10->_contextKitClient = v14;

    objc_storeStrong(&v10->_bmMiningTaskConfig, a4);
  }

  return v10;
}

- (BMInteractionProvider)init
{
  v3 = [MEMORY[0x277CFE0C0] defaultDatabaseDirectory];
  v4 = [MEMORY[0x277CFE0C0] storeWithDirectory:v3 readOnly:1];
  v5 = [(BMInteractionProvider *)self initWithInteractionStore:v4];

  return v5;
}

- (BMInteractionProvider)initWithBMMiningTaskConfig:(id)a3
{
  v4 = MEMORY[0x277CFE0C0];
  v5 = a3;
  v6 = [v4 defaultDatabaseDirectory];
  v7 = [MEMORY[0x277CFE0C0] storeWithDirectory:v6 readOnly:1];
  v8 = [(BMInteractionProvider *)self initWithInteractionStore:v7 bmMiningTaskConfig:v5];

  return v8;
}

- (id)batchFetchedPhotoSuggestionsForInteractions:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v10 = [v9 attachments];
        v11 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v26;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v26 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v25 + 1) + 8 * j);
              v16 = [v15 identifier];

              if (v16)
              {
                v17 = [v15 identifier];
                v18 = [v17 UUIDString];
                [v4 addObject:v18];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v6);
  }

  v19 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:v4 options:0];
  v20 = objc_opt_new();
  [v20 setSharingStream:3];
  v21 = [MEMORY[0x277CD9938] batchFetchSuggestedRecipientsForAssets:v19 options:v20];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)getResultsForRequest:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v4 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__BMInteractionProvider_getResultsForRequest___block_invoke;
  v11[3] = &unk_278D06760;
  v13 = &v14;
  v5 = v4;
  v12 = v5;
  [v3 executeWithReply:v11];
  v6 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = BMLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = &unk_2853B5AB0;
      _os_log_impl(&dword_241ACA000, v7, OS_LOG_TYPE_INFO, "Timeout after %@ msec waiting for an answer from ContextKit", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v8 = v15[5];
  }

  _Block_object_dispose(&v14, 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __46__BMInteractionProvider_getResultsForRequest___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)interactionEventsForTypes:(id)a3 error:(id *)a4
{
  v389[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = 0x278D06000uLL;
  v8 = +[BMItemType interactionItemTypes];
  v9 = [v5 intersectsSet:v8];

  if (v9)
  {
    v10 = [MEMORY[0x277D3A0D8] defaultConfiguration];
    v284 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.PeopleSuggester"];
    [v284 BOOLForKey:@"_PSAllowNonSupportedBundleIDs"];
    v11 = _PSShareSheetSuggestionBundleIDs();
    v305 = self;
    v12 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.mobilemail", @"com.apple.UIKit.activity.Mail", 0}];
    v293 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.MobileSMS", @"com.apple.UIKit.activity.Message", 0}];
    v283 = v11;
    v13 = [v11 mutableCopy];
    v298 = v12;
    [v13 minusSet:v12];
    v292 = _PSShareSheetExtensionBundleIDToAppBundleIDMapping();
    v282 = v13;
    v14 = BMInteractionPredicate(4, v13, v10);
    v15 = MEMORY[0x277CBEB98];
    v374 = @"com.apple.UIKit.activity.Mail";
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v374 count:1];
    v17 = [v15 setWithArray:v16];
    v18 = BMInteractionPredicate(1, v17, v10);

    v19 = MEMORY[0x277CCA920];
    v280 = v18;
    v281 = v14;
    v373[0] = v14;
    v373[1] = v18;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v373 count:2];
    v21 = [v19 orPredicateWithSubpredicates:v20];

    v22 = MEMORY[0x277CCAC30];
    v23 = MEMORY[0x277CBEB98];
    v285 = v10;
    v24 = [v10 suggestionModel];
    v25 = [v24 messageDirections];
    v26 = [v23 setWithArray:v25];
    v27 = [v22 predicateWithFormat:@"(direction IN %@)", v26];

    v28 = v305;
    v29 = MEMORY[0x277CCA920];
    v278 = v27;
    v279 = v21;
    v372[0] = v27;
    v372[1] = v21;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v372 count:2];
    v31 = [v29 andPredicateWithSubpredicates:v30];

    v32 = [(BMInteractionProvider *)v305 interactionStore];
    v355 = 0;
    v276 = v31;
    v33 = [v32 queryInteractionsUsingPredicate:v31 sortDescriptors:0 limit:0 error:&v355];
    v277 = v355;

    if (v33)
    {
      v291 = [(BMInteractionProvider *)v305 batchFetchedPhotoSuggestionsForInteractions:v33];
      v321 = [MEMORY[0x277CBEB18] array];
      v351 = 0u;
      v352 = 0u;
      v353 = 0u;
      v354 = 0u;
      v275 = v33;
      obj = v33;
      v297 = [obj countByEnumeratingWithState:&v351 objects:v371 count:16];
      v34 = 0;
      if (!v297)
      {
        goto LABEL_201;
      }

      v296 = *v352;
      v35 = 0x278D06000uLL;
      v287 = *MEMORY[0x277CD9B10];
      v304 = v5;
      v295 = v6;
      while (1)
      {
        for (i = 0; i != v297; ++i)
        {
          if (*v352 != v296)
          {
            objc_enumerationMutation(obj);
          }

          v37 = *(*(&v351 + 1) + 8 * i);
          v300 = objc_autoreleasePoolPush();
          if ([v37 mechanism] == 13)
          {
            [v37 targetBundleId];
          }

          else
          {
            [v37 bundleId];
          }
          v38 = ;

          v301 = v38;
          v302 = v37;
          if ([v298 containsObject:v38])
          {
            v39 = [v37 recipients];
            v40 = [v39 count];

            v41 = v40 > 1;
            v37 = v302;
            if (v41)
            {
              goto LABEL_199;
            }
          }

          v323 = [v37 startDate];
          v42 = [v37 endDate];
          v43 = v42;
          if (v42)
          {
            v322 = v42;
          }

          else
          {
            v322 = [v37 startDate];
          }

          v44 = [*(v7 + 840) interactionMechanism];
          v45 = [v5 containsObject:v44];

          if (v45)
          {
            v46 = *(v35 + 824);
            v47 = [*(v7 + 840) interactionMechanism];
            v48 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v302, "mechanism")}];
            v49 = [v46 itemWithType:v47 numberValue:v48];

            v50 = [[BMEvent alloc] initWithStartDate:v323 endDate:v322 item:v49];
            [v321 addObject:v50];
          }

          v51 = [*(v7 + 840) interactionDirection];
          v52 = [v5 containsObject:v51];

          if (v52)
          {
            v53 = *(v35 + 824);
            v54 = [*(v7 + 840) interactionDirection];
            v55 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v302, "direction")}];
            v56 = [v53 itemWithType:v54 numberValue:v55];

            v57 = [BMEvent alloc];
            v58 = [v302 endDate];
            v59 = [(BMEvent *)v57 initWithStartDate:v323 endDate:v58 item:v56];

            [v321 addObject:v59];
          }

          v60 = [*(v7 + 840) interactionSharingSourceBundleID];
          v61 = [v5 containsObject:v60];

          if (v61)
          {
            if ([v302 mechanism] == 13)
            {
              v62 = [v302 bundleId];

              if (v62)
              {
                v63 = *(v35 + 824);
                v64 = [*(v7 + 840) interactionSharingSourceBundleID];
                v65 = [v302 bundleId];
                v66 = [v63 itemWithType:v64 stringValue:v65];

                v67 = [BMEvent alloc];
                v68 = [v302 endDate];
                v69 = [(BMEvent *)v67 initWithStartDate:v323 endDate:v68 item:v66];

                [v321 addObject:v69];
              }
            }
          }

          v70 = [*(v7 + 840) interactionTargetBundleID];
          v71 = [v5 containsObject:v70];

          if (v71)
          {
            v72 = [v292 objectForKeyedSubscript:v301];
            v73 = v72;
            if (v72)
            {
              v74 = v72;
            }

            else
            {
              v74 = v301;
            }

            v75 = v74;

            if (v75)
            {
              v76 = *(v35 + 824);
              v77 = [*(v7 + 840) interactionTargetBundleID];
              v78 = [v76 itemWithType:v77 stringValue:v75];

              v79 = [[BMEvent alloc] initWithStartDate:v323 endDate:v322 item:v78];
              [v321 addObject:v79];
            }
          }

          v299 = i;
          v80 = [v302 sender];
          v81 = [v80 identifier];
          if (v81)
          {
            v82 = v81;
            v83 = [*(v7 + 840) interactionSender];
            v84 = [v5 containsObject:v83];

            if (!v84)
            {
              goto LABEL_35;
            }

            v85 = *(v35 + 824);
            v86 = [*(v7 + 840) interactionSender];
            v87 = [v302 sender];
            v88 = [v87 identifier];
            v80 = [v85 itemWithType:v86 stringValue:v88];

            v89 = [[BMEvent alloc] initWithStartDate:v323 endDate:v322 item:v80];
            [v321 addObject:v89];
          }

LABEL_35:
          v90 = [*(v7 + 840) interactionRecipients];
          v91 = [v5 containsObject:v90];

          if (v91)
          {
            if ([v298 containsObject:v301])
            {
              v92 = [v302 recipients];
              v93 = [v92 count];

              if (v93 == 1)
              {
                v94 = *(v35 + 824);
                v95 = [*(v7 + 840) interactionRecipients];
                v96 = MEMORY[0x277CFE0A8];
                v97 = [v302 recipients];
                v98 = [v96 generateConversationIdFromInteractionRecipients:v97];
                v99 = [v94 itemWithType:v95 stringValue:v98];

                goto LABEL_49;
              }
            }

            if ([v293 containsObject:v301] && (objc_msgSend(v302, "domainIdentifier"), v100 = objc_claimAutoreleasedReturnValue(), v100, v100))
            {
              v101 = [v302 domainIdentifier];
              if ([v101 containsString:@"SMS"])
              {

LABEL_47:
                v105 = *(v35 + 824);
                v95 = [*(v7 + 840) interactionRecipients];
                v106 = [v302 domainIdentifier];
                goto LABEL_48;
              }

              v107 = [v302 domainIdentifier];
              v108 = [v107 containsString:@"iMessage"];

              if (v108)
              {
                goto LABEL_47;
              }
            }

            else
            {
              v102 = [v302 derivedIntentIdentifier];
              if (v102)
              {
                v103 = v102;
                v104 = [v293 containsObject:v301];

                if ((v104 & 1) == 0)
                {
                  v105 = *(v35 + 824);
                  v95 = [*(v7 + 840) interactionRecipients];
                  v106 = [v302 derivedIntentIdentifier];
LABEL_48:
                  v97 = v106;
                  v99 = [v105 itemWithType:v95 stringValue:v106];
LABEL_49:

                  if (v99)
                  {
                    v109 = [[BMEvent alloc] initWithStartDate:v323 endDate:v322 item:v99];
                    [v321 addObject:v109];
                  }
                }
              }
            }
          }

          v349 = 0u;
          v350 = 0u;
          v347 = 0u;
          v348 = 0u;
          v312 = [v302 attachments];
          v310 = v34;
          v316 = [v312 countByEnumeratingWithState:&v347 objects:v370 count:16];
          if (!v316)
          {
            goto LABEL_99;
          }

          v314 = *v348;
          do
          {
            v110 = 0;
            do
            {
              if (*v348 != v314)
              {
                objc_enumerationMutation(v312);
              }

              context = v110;
              v111 = *(*(&v347 + 1) + 8 * v110);
              v112 = [v111 contentURL];
              if (v112)
              {
                v113 = v112;
                v114 = [v111 contentURL];
                v115 = [v114 host];
                if (v115)
                {
                  v116 = v115;
                  v117 = +[BMItemType interactionContentURL];
                  v118 = [v5 containsObject:v117];

                  if (v118)
                  {
                    v119 = *(v35 + 824);
                    v120 = +[BMItemType interactionContentURL];
                    v121 = [v111 contentURL];
                    v122 = [v121 host];
                    v123 = [v119 itemWithType:v120 stringValue:v122];

                    v7 = 0x278D06000uLL;
                    v34 = v310;
                    goto LABEL_68;
                  }
                }

                else
                {
                }
              }

              v124 = [v111 uti];
              v7 = 0x278D06000uLL;
              if (v124)
              {
                v125 = v124;
                v126 = +[BMItemType interactionUTIType];
                v127 = [v5 containsObject:v126];

                if (v127)
                {
                  v128 = *(v35 + 824);
                  v120 = +[BMItemType interactionUTIType];
                  v129 = [v111 uti];
                  goto LABEL_67;
                }
              }

              v130 = [v111 personInPhoto];
              if (v130)
              {
                v131 = v130;
                v132 = +[BMItemType interactionPhotoContact];
                v133 = [v5 containsObject:v132];

                if (v133)
                {
                  v128 = *(v35 + 824);
                  v120 = +[BMItemType interactionPhotoContact];
                  v129 = [v111 personInPhoto];
LABEL_67:
                  v121 = v129;
                  v123 = [v128 itemWithType:v120 stringValue:v129];
LABEL_68:

                  v134 = [[BMEvent alloc] initWithStartDate:v323 endDate:v322 item:v123];
                  [v321 addObject:v134];
                }
              }

              v135 = [(BMInteractionProvider *)v28 contextKitClient];
              if (v135)
              {
                v136 = v135;
                v137 = [(BMInteractionProvider *)v28 bmMiningTaskConfig];
                if (v137)
                {
                  v138 = v137;
                  v139 = [(BMInteractionProvider *)v28 bmMiningTaskConfig];
                  v140 = [v139 interactionExtractedTopicFromAttachmentFactorInUse];

                  if (v140)
                  {
                    v141 = BMLog();
                    if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
                    {
                      [BMInteractionProvider interactionEventsForTypes:v346 error:?];
                    }

                    v142 = [v111 contentText];
                    if (v142)
                    {
                      v143 = v142;
                      v144 = +[BMItemType interactionExtractedTopicFromAttachment];
                      v145 = [v5 containsObject:v144];

                      if (v145)
                      {
                        v146 = [(BMInteractionProvider *)v28 contextKitClient];
                        v147 = [v146 newRequest];

                        v148 = [v111 contentURL];
                        v149 = [v148 absoluteString];
                        [v147 setUrl:v149];

                        [v147 setIncludeHigherLevelTopics:1];
                        v308 = v147;
                        v150 = [(BMInteractionProvider *)v28 getResultsForRequest:v147];
                        v151 = [v150 error];

                        if (v151)
                        {
                          v152 = BMLog();
                          if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
                          {
                            [(BMInteractionProvider *)v368 interactionEventsForTypes:v150 error:&v369, v152];
                          }
                        }

                        v343 = 0u;
                        v344 = 0u;
                        v341 = 0u;
                        v342 = 0u;
                        v306 = v150;
                        v153 = [v150 level1Topics];
                        v154 = [v153 countByEnumeratingWithState:&v341 objects:v367 count:16];
                        if (v154)
                        {
                          v155 = v154;
                          v156 = *v342;
                          do
                          {
                            for (j = 0; j != v155; ++j)
                            {
                              if (*v342 != v156)
                              {
                                objc_enumerationMutation(v153);
                              }

                              v158 = *(*(&v341 + 1) + 8 * j);
                              v159 = *(v35 + 824);
                              v160 = [*(v7 + 840) interactionExtractedTopicFromAttachment];
                              v161 = [v158 topicId];
                              v162 = [v159 itemWithType:v160 stringValue:v161];

                              v163 = [[BMEvent alloc] initWithStartDate:v323 endDate:v322 item:v162];
                              v164 = BMLog();
                              if (os_log_type_enabled(v164, OS_LOG_TYPE_INFO))
                              {
                                v165 = [v158 title];
                                v166 = [v158 topicId];
                                *buf = 138412546;
                                v386 = v165;
                                v387 = 2112;
                                v388 = v166;
                                _os_log_impl(&dword_241ACA000, v164, OS_LOG_TYPE_INFO, "Topic extracted from content URL via contextKit: %@, %@", buf, 0x16u);

                                v7 = 0x278D06000;
                              }

                              [v321 addObject:v163];
                            }

                            v155 = [v153 countByEnumeratingWithState:&v341 objects:v367 count:16];
                          }

                          while (v155);
                        }

                        v5 = v304;
                        v28 = v305;
                        v167 = v308;
                        v34 = v310;
LABEL_96:

                        goto LABEL_97;
                      }
                    }

                    goto LABEL_97;
                  }
                }

                else
                {
                }
              }

              v168 = BMLog();
              if (os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG))
              {
                [BMInteractionProvider interactionEventsForTypes:v340 error:?];
              }

              v169 = [(BMInteractionProvider *)v28 bmMiningTaskConfig];

              if (!v169)
              {
                v167 = BMLog();
                if (os_log_type_enabled(v167, OS_LOG_TYPE_DEBUG))
                {
                  [BMInteractionProvider interactionEventsForTypes:v338 error:?];
                }

                goto LABEL_96;
              }

LABEL_97:
              v110 = context + 1;
            }

            while (context + 1 != v316);
            v316 = [v312 countByEnumeratingWithState:&v347 objects:v370 count:16];
          }

          while (v316);
LABEL_99:

          v170 = [*(v7 + 840) interactionPhotoScene];
          v171 = [v5 containsObject:v170];

          if (v171)
          {
            v172 = MEMORY[0x277CBEB18];
            v173 = [v302 attachments];
            v174 = [v172 arrayWithCapacity:{objc_msgSend(v173, "count")}];

            v335 = 0u;
            v336 = 0u;
            v333 = 0u;
            v334 = 0u;
            v175 = [v302 attachments];
            v176 = [v175 countByEnumeratingWithState:&v333 objects:v366 count:16];
            if (v176)
            {
              v177 = v176;
              v178 = *v334;
              do
              {
                for (k = 0; k != v177; ++k)
                {
                  if (*v334 != v178)
                  {
                    objc_enumerationMutation(v175);
                  }

                  v180 = *(*(&v333 + 1) + 8 * k);
                  v181 = [v180 identifier];

                  if (v181)
                  {
                    v182 = [v180 identifier];
                    v183 = [v182 UUIDString];
                    [v174 addObject:v183];
                  }
                }

                v177 = [v175 countByEnumeratingWithState:&v333 objects:v366 count:16];
              }

              while (v177);
            }

            if ([v174 count])
            {
              v184 = v174;
              v185 = v291;
              v186 = objc_autoreleasePoolPush();
              v307 = v174;
              if (v184 && [v184 count])
              {
                contexta = v186;
                v187 = [MEMORY[0x277CBEB18] array];
                v375 = 0u;
                v376 = 0u;
                v377 = 0u;
                v378 = 0u;
                v188 = v184;
                v189 = [v188 countByEnumeratingWithState:&v375 objects:buf count:16];
                if (v189)
                {
                  v190 = v189;
                  v191 = *v376;
                  do
                  {
                    for (m = 0; m != v190; ++m)
                    {
                      if (*v376 != v191)
                      {
                        objc_enumerationMutation(v188);
                      }

                      v193 = [MEMORY[0x277CD97A8] localIdentifierWithUUID:*(*(&v375 + 1) + 8 * m)];
                      v194 = [v185 objectForKeyedSubscript:v193];

                      [v187 addObjectsFromArray:v194];
                    }

                    v190 = [v188 countByEnumeratingWithState:&v375 objects:buf count:16];
                  }

                  while (v190);
                }

                v195 = [MEMORY[0x277CBEB18] array];
                v360 = 0u;
                v361 = 0u;
                v362 = 0u;
                v363 = 0u;
                v196 = v187;
                v197 = [v196 countByEnumeratingWithState:&v360 objects:v381 count:16];
                v34 = v310;
                if (v197)
                {
                  v198 = v197;
                  v199 = *v361;
LABEL_121:
                  v200 = 0;
                  while (1)
                  {
                    if (*v361 != v199)
                    {
                      objc_enumerationMutation(v196);
                    }

                    v201 = [*(*(&v360 + 1) + 8 * v200) objectForKeyedSubscript:@"localIdentifier"];
                    v202 = v201;
                    if (v201 && [v201 length])
                    {
                      [v195 addObject:v202];
                    }

                    v203 = [v195 count];

                    v244 = v203 == 4;
                    v34 = v310;
                    if (v244)
                    {
                      break;
                    }

                    if (v198 == ++v200)
                    {
                      v198 = [v196 countByEnumeratingWithState:&v360 objects:v381 count:16];
                      if (v198)
                      {
                        goto LABEL_121;
                      }

                      break;
                    }
                  }
                }

                v204 = BMLog();
                if (os_log_type_enabled(v204, OS_LOG_TYPE_DEBUG))
                {
                  v269 = [v195 count];
                  *v382 = 138412546;
                  *&v382[4] = v195;
                  *&v382[12] = 2048;
                  *&v382[14] = v269;
                  _os_log_debug_impl(&dword_241ACA000, v204, OS_LOG_TYPE_DEBUG, "People Array = %@,%lu", v382, 0x16u);
                }

                v205 = [v195 copy];
                v7 = 0x278D06000;
                v186 = contexta;
              }

              else
              {
                v205 = MEMORY[0x277CBEBF8];
              }

              objc_autoreleasePoolPop(v186);

              v329 = 0u;
              v330 = 0u;
              v331 = 0u;
              v332 = 0u;
              v317 = v205;
              v206 = [v317 countByEnumeratingWithState:&v329 objects:v365 count:16];
              if (v206)
              {
                v207 = v206;
                v208 = *v330;
                do
                {
                  for (n = 0; n != v207; ++n)
                  {
                    if (*v330 != v208)
                    {
                      objc_enumerationMutation(v317);
                    }

                    v210 = *(*(&v329 + 1) + 8 * n);
                    v211 = *(v35 + 824);
                    v212 = [*(v7 + 840) interactionPhotoContact];
                    v213 = [v211 itemWithType:v212 stringValue:v210];

                    v214 = [[BMEvent alloc] initWithStartDate:v323 endDate:v322 item:v213];
                    [v321 addObject:v214];
                  }

                  v207 = [v317 countByEnumeratingWithState:&v329 objects:v365 count:16];
                }

                while (v207);
              }

              if (![v317 count])
              {
                if (!v34)
                {
                  v215 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v216 = [v215 URLForResource:@"blacklistedPhotoScenes" withExtension:@"plist"];

                  v328 = 0;
                  v34 = [MEMORY[0x277CBEA60] arrayWithContentsOfURL:v216 error:&v328];
                  v217 = v328;
                  if (v217)
                  {
                    v218 = BMLog();
                    if (os_log_type_enabled(v218, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v386 = v216;
                      v387 = 2112;
                      v388 = v217;
                      _os_log_error_impl(&dword_241ACA000, v218, OS_LOG_TYPE_ERROR, "Error loading photo scene blacklist from URL %@, %@", buf, 0x16u);
                    }
                  }
                }

                v219 = v184;
                v34 = v34;
                v220 = objc_autoreleasePoolPush();
                if (v184 && (v221 = [v219 count], v34))
                {
                  v222 = MEMORY[0x277CBEBF8];
                  if (v221)
                  {
                    v290 = v220;
                    v223 = MEMORY[0x277CD9880];
                    v224 = [MEMORY[0x277CD9948] sharedPhotoLibrary];
                    v225 = [v223 fetchOptionsWithInclusiveDefaultsForPhotoLibrary:v224];

                    v389[0] = v287;
                    v226 = [MEMORY[0x277CBEA60] arrayWithObjects:v389 count:1];
                    [v225 setFetchPropertySets:v226];

                    v303 = v219;
                    v289 = v225;
                    v227 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:v219 options:v225];
                    contextb = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
                    v360 = 0u;
                    v361 = 0u;
                    v362 = 0u;
                    v363 = 0u;
                    v288 = v227;
                    v309 = [v227 fetchedObjects];
                    v228 = 0x277D3B000uLL;
                    v313 = [v309 countByEnumeratingWithState:&v360 objects:buf count:16];
                    if (v313)
                    {
                      v311 = *v361;
                      do
                      {
                        v229 = 0;
                        do
                        {
                          if (*v361 != v311)
                          {
                            objc_enumerationMutation(v309);
                          }

                          v315 = v229;
                          v230 = *(*(&v360 + 1) + 8 * v229);
                          memset(v382, 0, sizeof(v382));
                          v383 = 0u;
                          v384 = 0u;
                          v231 = [v230 sceneClassifications];
                          v232 = [v231 countByEnumeratingWithState:v382 objects:v381 count:16];
                          if (v232)
                          {
                            v233 = v232;
                            v234 = **&v382[16];
                            do
                            {
                              for (ii = 0; ii != v233; ++ii)
                              {
                                if (**&v382[16] != v234)
                                {
                                  objc_enumerationMutation(v231);
                                }

                                v236 = *(*&v382[8] + 8 * ii);
                                [v236 confidence];
                                v238 = v237;
                                v239 = [v236 sceneIdentifier];
                                v240 = [*(v228 + 1224) sharedTaxonomy];
                                v241 = [v240 nodeForSceneClassId:v239];

                                v242 = [v241 name];
                                v243 = v242;
                                if (v241)
                                {
                                  v244 = v242 == 0;
                                }

                                else
                                {
                                  v244 = 1;
                                }

                                if (!v244 && ([v34 containsObject:v242] & 1) == 0)
                                {
                                  [v241 highPrecisionThreshold];
                                  if (v238 >= v245)
                                  {
                                    [v241 highRecallThreshold];
                                    if (v238 >= v246)
                                    {
                                      v247 = v35;
                                      v248 = v34;
                                      v380[0] = v243;
                                      v379[0] = @"name";
                                      v379[1] = @"confidence";
                                      v249 = [MEMORY[0x277CCABB0] numberWithDouble:v238];
                                      v380[1] = v249;
                                      v250 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v380 forKeys:v379 count:2];

                                      v251 = [contextb indexOfObject:v250 inSortedRange:0 options:objc_msgSend(contextb usingComparator:{"count"), 1024, &__block_literal_global_12}];
                                      if (v251 != 0x7FFFFFFFFFFFFFFFLL)
                                      {
                                        [contextb insertObject:v250 atIndex:v251];
                                      }

                                      if ([contextb count] >= 5)
                                      {
                                        [contextb removeLastObject];
                                      }

                                      v34 = v248;
                                      v35 = v247;
                                      v228 = 0x277D3B000;
                                    }
                                  }
                                }
                              }

                              v233 = [v231 countByEnumeratingWithState:v382 objects:v381 count:16];
                            }

                            while (v233);
                          }

                          v229 = v315 + 1;
                        }

                        while ((v315 + 1) != v313);
                        v313 = [v309 countByEnumeratingWithState:&v360 objects:buf count:16];
                      }

                      while (v313);
                    }

                    v252 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(contextb, "count")}];
                    v356 = 0u;
                    v357 = 0u;
                    v358 = 0u;
                    v359 = 0u;
                    v253 = contextb;
                    v254 = [v253 countByEnumeratingWithState:&v356 objects:&v375 count:16];
                    v7 = 0x278D06000;
                    if (v254)
                    {
                      v255 = v254;
                      v256 = *v357;
                      do
                      {
                        for (jj = 0; jj != v255; ++jj)
                        {
                          if (*v357 != v256)
                          {
                            objc_enumerationMutation(v253);
                          }

                          v258 = [*(*(&v356 + 1) + 8 * jj) objectForKeyedSubscript:@"name"];
                          [v252 addObject:v258];
                        }

                        v255 = [v253 countByEnumeratingWithState:&v356 objects:&v375 count:16];
                      }

                      while (v255);
                    }

                    v222 = [v252 copy];
                    v219 = v303;
                    v220 = v290;
                  }
                }

                else
                {
                  v222 = MEMORY[0x277CBEBF8];
                }

                objc_autoreleasePoolPop(v220);

                v324 = 0u;
                v325 = 0u;
                v326 = 0u;
                v327 = 0u;
                v259 = v222;
                v260 = [v259 countByEnumeratingWithState:&v324 objects:v364 count:16];
                if (v260)
                {
                  v261 = v260;
                  v262 = *v325;
                  do
                  {
                    for (kk = 0; kk != v261; ++kk)
                    {
                      if (*v325 != v262)
                      {
                        objc_enumerationMutation(v259);
                      }

                      v264 = *(*(&v324 + 1) + 8 * kk);
                      v265 = *(v35 + 824);
                      v266 = [*(v7 + 840) interactionPhotoScene];
                      v267 = [v265 itemWithType:v266 stringValue:v264];

                      v268 = [[BMEvent alloc] initWithStartDate:v323 endDate:v322 item:v267];
                      [v321 addObject:v268];
                    }

                    v261 = [v259 countByEnumeratingWithState:&v324 objects:v364 count:16];
                  }

                  while (v261);
                }
              }

              v5 = v304;
              v28 = v305;
              v174 = v307;
            }

            else
            {
              v5 = v304;
              v28 = v305;
            }

            i = v299;
          }

          else
          {
            i = v299;
          }

          v6 = v295;
LABEL_199:

          objc_autoreleasePoolPop(v300);
        }

        v297 = [obj countByEnumeratingWithState:&v351 objects:v371 count:16];
        if (!v297)
        {
LABEL_201:

          v270 = [v321 copy];
          v33 = v275;
          goto LABEL_204;
        }
      }
    }

    v270 = 0;
LABEL_204:

    objc_autoreleasePoolPop(v6);
    if (a4)
    {
      v272 = v277;
      *a4 = v277;
    }

    v271 = v270;
  }

  else
  {
    objc_autoreleasePoolPop(v6);
    v271 = MEMORY[0x277CBEBF8];
  }

  v273 = *MEMORY[0x277D85DE8];

  return v271;
}

- (void)interactionEventsForTypes:(void *)a3 error:(NSObject *)a4 .cold.2(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 error];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_241ACA000, a4, OS_LOG_TYPE_ERROR, "ContextKit topic extraction failed with error %@", a1, 0xCu);
}

@end