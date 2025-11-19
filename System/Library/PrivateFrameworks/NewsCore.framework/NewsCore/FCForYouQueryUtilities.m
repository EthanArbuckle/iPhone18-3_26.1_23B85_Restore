@interface FCForYouQueryUtilities
+ (id)_filterTagsForQuerying:(id)a3 withMutedTagIDs:(id)a4;
+ (id)feedRequestsForTags:(id)a3 tagBinProvider:(id)a4 hiddenFeedIDs:(id)a5 purchasedTagIDs:(id)a6 bundleSubscriptionProvider:(id)a7 configuration:(id)a8 maxCount:(unint64_t)a9 feedRange:(id)a10 sidecar:(id)a11 options:(unint64_t)a12;
+ (void)fetchTagsForQueryingWithSubscribedTagIDs:(id)a3 mutedTagIDs:(id)a4 purchasedTagIDs:(id)a5 bundleSubscriptionProvider:(id)a6 configuration:(id)a7 contentContext:(id)a8 fallbackToPresubscribedTagIDs:(BOOL)a9 qualityOfService:(int64_t)a10 completionHandler:(id)a11;
+ (void)fetchTagsForQueryingWithSubscribedTags:(id)a3 mutedTagIDs:(id)a4 purchasedTagIDs:(id)a5 bundleSubscriptionProvider:(id)a6 configuration:(id)a7 contentContext:(id)a8 fallbackToPresubscribedTagIDs:(BOOL)a9 qualityOfService:(int64_t)a10 completionHandler:(id)a11;
@end

@implementation FCForYouQueryUtilities

+ (void)fetchTagsForQueryingWithSubscribedTags:(id)a3 mutedTagIDs:(id)a4 purchasedTagIDs:(id)a5 bundleSubscriptionProvider:(id)a6 configuration:(id)a7 contentContext:(id)a8 fallbackToPresubscribedTagIDs:(BOOL)a9 qualityOfService:(int64_t)a10 completionHandler:(id)a11
{
  v49 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a11;
  if (!v17 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "subscribedTags"];
    *buf = 136315906;
    v42 = "+[FCForYouQueryUtilities fetchTagsForQueryingWithSubscribedTags:mutedTagIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:contentContext:fallbackToPresubscribedTagIDs:qualityOfService:completionHandler:]";
    v43 = 2080;
    v44 = "FCForYouQueryUtilities.m";
    v45 = 1024;
    v46 = 92;
    v47 = 2114;
    v48 = v33;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v18)
    {
      goto LABEL_6;
    }
  }

  else if (v18)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "mutedTagIDs"];
    *buf = 136315906;
    v42 = "+[FCForYouQueryUtilities fetchTagsForQueryingWithSubscribedTags:mutedTagIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:contentContext:fallbackToPresubscribedTagIDs:qualityOfService:completionHandler:]";
    v43 = 2080;
    v44 = "FCForYouQueryUtilities.m";
    v45 = 1024;
    v46 = 93;
    v47 = 2114;
    v48 = v34;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!v22 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentContext"];
    *buf = 136315906;
    v42 = "+[FCForYouQueryUtilities fetchTagsForQueryingWithSubscribedTags:mutedTagIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:contentContext:fallbackToPresubscribedTagIDs:qualityOfService:completionHandler:]";
    v43 = 2080;
    v44 = "FCForYouQueryUtilities.m";
    v45 = 1024;
    v46 = 94;
    v47 = 2114;
    v48 = v35;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v23)
    {
      goto LABEL_11;
    }
  }

  else if (v23)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completionHandler"];
    *buf = 136315906;
    v42 = "+[FCForYouQueryUtilities fetchTagsForQueryingWithSubscribedTags:mutedTagIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:contentContext:fallbackToPresubscribedTagIDs:qualityOfService:completionHandler:]";
    v43 = 2080;
    v44 = "FCForYouQueryUtilities.m";
    v45 = 1024;
    v46 = 95;
    v47 = 2114;
    v48 = v36;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_11:
  if ([v17 count] || !a9)
  {
    v24 = [a1 _filterTagsForQuerying:v17 withMutedTagIDs:v18];
    v23[2](v23, v24, 0);
  }

  else
  {
    v24 = [v21 presubscribedFeedIDs];
    if ([v24 count])
    {
      v25 = FCDispatchQueueForQualityOfService(a10);
      v26 = [v22 tagController];
      v27 = a1;
      v28 = v22;
      v29 = v21;
      v30 = v20;
      v31 = v26;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __214__FCForYouQueryUtilities_fetchTagsForQueryingWithSubscribedTags_mutedTagIDs_purchasedTagIDs_bundleSubscriptionProvider_configuration_contentContext_fallbackToPresubscribedTagIDs_qualityOfService_completionHandler___block_invoke;
      v37[3] = &unk_1E7C39DD8;
      v40 = v27;
      v38 = v18;
      v39 = v23;
      [v31 fetchTagsForTagIDs:v24 qualityOfService:a10 callbackQueue:v25 completionHandler:v37];

      v20 = v30;
      v21 = v29;
      v22 = v28;
    }

    else
    {
      v23[2](v23, MEMORY[0x1E695E0F0], 0);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __214__FCForYouQueryUtilities_fetchTagsForQueryingWithSubscribedTags_mutedTagIDs_purchasedTagIDs_bundleSubscriptionProvider_configuration_contentContext_fallbackToPresubscribedTagIDs_qualityOfService_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = [a2 allValues];
  v6 = [*(a1 + 48) _filterTagsForQuerying:v7 withMutedTagIDs:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

+ (void)fetchTagsForQueryingWithSubscribedTagIDs:(id)a3 mutedTagIDs:(id)a4 purchasedTagIDs:(id)a5 bundleSubscriptionProvider:(id)a6 configuration:(id)a7 contentContext:(id)a8 fallbackToPresubscribedTagIDs:(BOOL)a9 qualityOfService:(int64_t)a10 completionHandler:(id)a11
{
  v57 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v36 = a5;
  v35 = a6;
  v34 = a7;
  v18 = a8;
  v19 = a11;
  if (!v16 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "subscribedTagIDs"];
    *buf = 136315906;
    v50 = "+[FCForYouQueryUtilities fetchTagsForQueryingWithSubscribedTagIDs:mutedTagIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:contentContext:fallbackToPresubscribedTagIDs:qualityOfService:completionHandler:]";
    v51 = 2080;
    v52 = "FCForYouQueryUtilities.m";
    v53 = 1024;
    v54 = 135;
    v55 = 2114;
    v56 = v30;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v17)
    {
      goto LABEL_6;
    }
  }

  else if (v17)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "mutedTagIDs"];
    *buf = 136315906;
    v50 = "+[FCForYouQueryUtilities fetchTagsForQueryingWithSubscribedTagIDs:mutedTagIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:contentContext:fallbackToPresubscribedTagIDs:qualityOfService:completionHandler:]";
    v51 = 2080;
    v52 = "FCForYouQueryUtilities.m";
    v53 = 1024;
    v54 = 136;
    v55 = 2114;
    v56 = v31;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!v18 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentContext"];
    *buf = 136315906;
    v50 = "+[FCForYouQueryUtilities fetchTagsForQueryingWithSubscribedTagIDs:mutedTagIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:contentContext:fallbackToPresubscribedTagIDs:qualityOfService:completionHandler:]";
    v51 = 2080;
    v52 = "FCForYouQueryUtilities.m";
    v53 = 1024;
    v54 = 137;
    v55 = 2114;
    v56 = v32;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v20 = v19;
  if (!v19 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completionHandler"];
    *buf = 136315906;
    v50 = "+[FCForYouQueryUtilities fetchTagsForQueryingWithSubscribedTagIDs:mutedTagIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:contentContext:fallbackToPresubscribedTagIDs:qualityOfService:completionHandler:]";
    v51 = 2080;
    v52 = "FCForYouQueryUtilities.m";
    v53 = 1024;
    v54 = 138;
    v55 = 2114;
    v56 = v33;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v21 = FCDispatchQueueForQualityOfService(a10);
  v22 = [v18 tagController];
  v23 = [v16 allObjects];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __216__FCForYouQueryUtilities_fetchTagsForQueryingWithSubscribedTagIDs_mutedTagIDs_purchasedTagIDs_bundleSubscriptionProvider_configuration_contentContext_fallbackToPresubscribedTagIDs_qualityOfService_completionHandler___block_invoke;
  v39[3] = &unk_1E7C39E00;
  v40 = v17;
  v41 = v36;
  v42 = v35;
  v43 = v34;
  v44 = v18;
  v45 = v20;
  v46 = a1;
  v48 = a9;
  v47 = a10;
  v38 = v18;
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v27 = v17;
  v28 = v20;
  [v22 fetchTagsForTagIDs:v23 qualityOfService:a10 callbackQueue:v21 completionHandler:v39];

  v29 = *MEMORY[0x1E69E9840];
}

void __216__FCForYouQueryUtilities_fetchTagsForQueryingWithSubscribedTagIDs_mutedTagIDs_purchasedTagIDs_bundleSubscriptionProvider_configuration_contentContext_fallbackToPresubscribedTagIDs_qualityOfService_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = [a2 allValues];
  if (v5)
  {
    v6 = *(a1 + 88);
    LOBYTE(v7) = *(a1 + 96);
    [*(a1 + 80) fetchTagsForQueryingWithSubscribedTags:v5 mutedTagIDs:*(a1 + 32) purchasedTagIDs:*(a1 + 40) bundleSubscriptionProvider:*(a1 + 48) configuration:*(a1 + 56) contentContext:*(a1 + 64) fallbackToPresubscribedTagIDs:v7 qualityOfService:v6 completionHandler:*(a1 + 72)];
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }
}

+ (id)feedRequestsForTags:(id)a3 tagBinProvider:(id)a4 hiddenFeedIDs:(id)a5 purchasedTagIDs:(id)a6 bundleSubscriptionProvider:(id)a7 configuration:(id)a8 maxCount:(unint64_t)a9 feedRange:(id)a10 sidecar:(id)a11 options:(unint64_t)a12
{
  v194 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v111 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v139 = a10;
  v140 = a11;
  if (!v17 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v107 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tags"];
    *buf = 136315906;
    v187 = "+[FCForYouQueryUtilities feedRequestsForTags:tagBinProvider:hiddenFeedIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:maxCount:feedRange:sidecar:options:]";
    v188 = 2080;
    v189 = "FCForYouQueryUtilities.m";
    v190 = 1024;
    v191 = 213;
    v192 = 2114;
    v193 = v107;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v18)
    {
      goto LABEL_6;
    }
  }

  else if (v18)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v108 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagBinProvider"];
    *buf = 136315906;
    v187 = "+[FCForYouQueryUtilities feedRequestsForTags:tagBinProvider:hiddenFeedIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:maxCount:feedRange:sidecar:options:]";
    v188 = 2080;
    v189 = "FCForYouQueryUtilities.m";
    v190 = 1024;
    v191 = 214;
    v192 = 2114;
    v193 = v108;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!v21 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v109 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "configuration"];
    *buf = 136315906;
    v187 = "+[FCForYouQueryUtilities feedRequestsForTags:tagBinProvider:hiddenFeedIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:maxCount:feedRange:sidecar:options:]";
    v188 = 2080;
    v189 = "FCForYouQueryUtilities.m";
    v190 = 1024;
    v191 = 215;
    v192 = 2114;
    v193 = v109;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!v139 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v110 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "feedRange"];
    *buf = 136315906;
    v187 = "+[FCForYouQueryUtilities feedRequestsForTags:tagBinProvider:hiddenFeedIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:maxCount:feedRange:sidecar:options:]";
    v188 = 2080;
    v189 = "FCForYouQueryUtilities.m";
    v190 = 1024;
    v191 = 216;
    v192 = 2114;
    v193 = v110;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v133 = [MEMORY[0x1E695DF70] array];
  v132 = [MEMORY[0x1E695DF70] array];
  v119 = [MEMORY[0x1E695DF70] array];
  v112 = [MEMORY[0x1E695DF70] array];
  v114 = [MEMORY[0x1E695DF70] array];
  v136 = [MEMORY[0x1E695DF70] array];
  v141 = [MEMORY[0x1E695DF90] dictionary];
  v22 = [v21 topStoriesConfig];
  v117 = [v22 channelID];

  v116 = [v21 editorialChannelID];
  v125 = [v21 editorialGemsSectionID];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __167__FCForYouQueryUtilities_feedRequestsForTags_tagBinProvider_hiddenFeedIDs_purchasedTagIDs_bundleSubscriptionProvider_configuration_maxCount_feedRange_sidecar_options___block_invoke;
  aBlock[3] = &unk_1E7C39E28;
  v120 = v20;
  v176 = v120;
  v118 = v19;
  v177 = v118;
  v113 = v21;
  v178 = v113;
  v129 = _Block_copy(aBlock);
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  obj = v17;
  v23 = [obj countByEnumeratingWithState:&v171 objects:v185 count:16];
  v124 = v18;
  if (v23)
  {
    v24 = v23;
    v25 = *v172;
    v115 = *v172;
    do
    {
      v26 = 0;
      v121 = v24;
      do
      {
        if (*v172 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v171 + 1) + 8 * v26);
        v137 = (*(v18 + 2))(v18, v27);
        v28 = [v27 tagType];
        if (v28 == 1)
        {
          [FCFeedContext feedContextForTag:v27];
          v36 = v35 = v26;
          v37 = objc_alloc_init(FCFeedRequest);
          v38 = [v27 freeFeedIDForBin:v137];
          [(FCFeedRequest *)v37 setFeedID:v38];
          [(FCFeedRequest *)v37 setFeedRange:v139];
          [(FCFeedRequest *)v37 setMaxCount:a9];
          [v119 addObject:v37];
          [v141 setObject:v36 forKey:v38];

          v26 = v35;
        }

        else if (v28 == 2)
        {
          v123 = v26;
          v29 = [v27 asChannel];
          v30 = [v27 identifier];
          v134 = [v117 isEqualToString:v30];
          v126 = [v116 isEqualToString:v30];
          v31 = [v118 containsObject:v30];
          HasBundleSubscriptionToChannelInline = FCPaidAccessCheckerHasBundleSubscriptionToChannelInline(v120, v30, 7);
          v162 = MEMORY[0x1E69E9820];
          v163 = 3221225472;
          v164 = __167__FCForYouQueryUtilities_feedRequestsForTags_tagBinProvider_hiddenFeedIDs_purchasedTagIDs_bundleSubscriptionProvider_configuration_maxCount_feedRange_sidecar_options___block_invoke_2;
          v165 = &unk_1E7C39E50;
          v168 = a12;
          v169 = v31;
          v170 = HasBundleSubscriptionToChannelInline;
          v130 = v30;
          v166 = v130;
          v33 = v116;
          v167 = v33;
          if ((a12 & 4) != 0 || (a12 & 2) == 0 && (((v31 | HasBundleSubscriptionToChannelInline) & 1) != 0 || [v130 isEqualToString:v33]))
          {
            v34 = [v29 sectionIDs];
          }

          else
          {
            v34 = [v29 defaultSectionID];

            if (v34)
            {
              v40 = [v29 defaultSectionID];
              v184 = v40;
              v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v184 count:1];
            }
          }

          v160 = 0u;
          v161 = 0u;
          v158 = 0u;
          v159 = 0u;
          v127 = v34;
          v41 = [v127 countByEnumeratingWithState:&v158 objects:v183 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v159;
            do
            {
              for (i = 0; i != v42; ++i)
              {
                if (*v159 != v43)
                {
                  objc_enumerationMutation(v127);
                }

                v45 = *(*(&v158 + 1) + 8 * i);
                v46 = [v29 defaultSectionID];
                v47 = [v45 isEqualToString:v46];

                v48 = v133;
                if (!v47)
                {
                  v48 = v132;
                }

                v49 = v48;
                if (v134)
                {
                  v50 = [FCFeedContext feedContextForTopStoriesChannel:v29 sectionID:v45];
                }

                else if (v126)
                {
                  if ([v45 isEqualToString:v125])
                  {
                    [FCFeedContext feedContextForEditorialChannel:v29 editorialGemsSectionID:v45];
                  }

                  else
                  {
                    [FCFeedContext feedContextForEditorialChannel:v29 sectionID:v45];
                  }
                  v50 = ;
                }

                else
                {
                  v50 = [FCFeedContext feedContextForChannel:v29 sectionID:v45];
                }

                v51 = v50;
                v52 = [v29 freeFeedIDForSection:v45 bin:v137];
                if (v52)
                {
                  v53 = objc_alloc_init(FCFeedRequest);
                  [(FCFeedRequest *)v53 setFeedID:v52];
                  [(FCFeedRequest *)v53 setFeedRange:v139];
                  [(FCFeedRequest *)v53 setMaxCount:a9];
                  v54 = [v29 defaultSectionID];
                  -[FCFeedRequest setIsExpendable:](v53, "setIsExpendable:", [v45 isEqualToString:v54] ^ 1);

                  [v49 addObject:v53];
                  [v141 setObject:v51 forKey:v52];
                  if (v129[2](v129, v130))
                  {
                    v55 = [v29 paidFeedIDForSection:v45 bin:v137];
                    v56 = v55;
                    if (v55 && ([v55 isEqualToString:v52] & 1) == 0)
                    {
                      v57 = [(FCFeedRequest *)v53 copy];
                      [v57 setFeedID:v56];
                      [v49 addObject:v57];
                      [v141 setObject:v51 forKey:v56];
                    }
                  }
                }
              }

              v42 = [v127 countByEnumeratingWithState:&v158 objects:v183 count:16];
            }

            while (v42);
          }

          v26 = v123;
          v18 = v124;
          v24 = v121;
          v25 = v115;
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"only expected to build a For You query from channels and topics"];
          *buf = 136315906;
          v187 = "+[FCForYouQueryUtilities feedRequestsForTags:tagBinProvider:hiddenFeedIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:maxCount:feedRange:sidecar:options:]";
          v188 = 2080;
          v189 = "FCForYouQueryUtilities.m";
          v190 = 1024;
          v191 = 370;
          v192 = 2114;
          v193 = v39;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        ++v26;
      }

      while (v26 != v24);
      v24 = [obj countByEnumeratingWithState:&v171 objects:v185 count:16];
    }

    while (v24);
  }

  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v58 = v111;
  v59 = [v58 countByEnumeratingWithState:&v154 objects:v182 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v155;
    do
    {
      for (j = 0; j != v60; ++j)
      {
        if (*v155 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = *(*(&v154 + 1) + 8 * j);
        v64 = objc_alloc_init(FCFeedRequest);
        [(FCFeedRequest *)v64 setFeedID:v63];
        [(FCFeedRequest *)v64 setFeedRange:v139];
        [(FCFeedRequest *)v64 setMaxCount:a9];
        [v114 addObject:v64];
        v65 = +[FCFeedContext feedContextForHiddenFeed];
        [v141 setObject:v65 forKeyedSubscript:v63];
      }

      v60 = [v58 countByEnumeratingWithState:&v154 objects:v182 count:16];
    }

    while (v60);
  }

  if ((a12 & 1) == 0)
  {
    v66 = [v120 bundleSubscription];
    v67 = objc_getAssociatedObject(v66, (v66 + 1));
    v68 = [v67 unsignedIntegerValue];
    v69 = v68;
    v70 = objc_getAssociatedObject(v66, ~v68);
    v71 = [v70 unsignedIntegerValue] ^ v69;

    v72 = [v113 paidBundleConfig];
    v73 = v72;
    if (v71)
    {
      [v72 globalFeedIDForPaidUsers];
    }

    else
    {
      [v72 globalFeedIDForFreeUsers];
    }
    v74 = ;

    if (v74)
    {
      v75 = [v113 paidBundleConfig];
      v76 = [v75 areMagazinesEnabled];

      if (v76)
      {
        v77 = objc_alloc_init(FCFeedRequest);
        [(FCFeedRequest *)v77 setFeedID:v74];
        [(FCFeedRequest *)v77 setFeedRange:v139];
        [(FCFeedRequest *)v77 setMaxCount:a9];
        [v112 addObject:v77];
        v78 = +[FCFeedContext feedContextForPaidBundleFeed];
        [v141 setObject:v78 forKeyedSubscript:v74];
      }
    }
  }

  v128 = v58;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v131 = [v140 additionalChannelsToQuery];
  v138 = [v131 countByEnumeratingWithState:&v150 objects:v181 count:16];
  if (v138)
  {
    v135 = *v151;
    do
    {
      for (k = 0; k != v138; ++k)
      {
        if (*v151 != v135)
        {
          objc_enumerationMutation(v131);
        }

        v80 = *(*(&v150 + 1) + 8 * k);
        v146 = 0u;
        v147 = 0u;
        v148 = 0u;
        v149 = 0u;
        v81 = [v140 additionalSectionIDsToQueryForChannel:v80];
        v82 = [v81 countByEnumeratingWithState:&v146 objects:v180 count:16];
        if (v82)
        {
          v83 = v82;
          v84 = *v147;
          do
          {
            for (m = 0; m != v83; ++m)
            {
              if (*v147 != v84)
              {
                objc_enumerationMutation(v81);
              }

              v86 = *(*(&v146 + 1) + 8 * m);
              v87 = [FCFeedContext feedContextForChannel:v80 sectionID:v86];
              v88 = [v80 freeFeedIDForSection:v86 bin:3];
              if (v88)
              {
                v89 = [v141 objectForKey:v88];

                if (!v89)
                {
                  v90 = objc_alloc_init(FCFeedRequest);
                  [(FCFeedRequest *)v90 setFeedID:v88];
                  [(FCFeedRequest *)v90 setFeedRange:v139];
                  [(FCFeedRequest *)v90 setMaxCount:a9];
                  [(FCFeedRequest *)v90 setIsExpendable:1];
                  [v136 addObject:v90];
                  [v141 setObject:v87 forKey:v88];
                }
              }

              if ([v140 shouldIncludePaidFeedForChannel:v80])
              {
                v91 = [v80 paidFeedIDForSection:v86 bin:3];
                if (v91)
                {
                  v92 = [v141 objectForKey:v91];

                  if (!v92)
                  {
                    v93 = objc_alloc_init(FCFeedRequest);
                    [(FCFeedRequest *)v93 setFeedID:v91];
                    [(FCFeedRequest *)v93 setFeedRange:v139];
                    [(FCFeedRequest *)v93 setMaxCount:a9];
                    [(FCFeedRequest *)v93 setIsExpendable:1];
                    [v136 addObject:v93];
                    [v141 setObject:v87 forKey:v91];
                  }
                }
              }
            }

            v83 = [v81 countByEnumeratingWithState:&v146 objects:v180 count:16];
          }

          while (v83);
        }
      }

      v138 = [v131 countByEnumeratingWithState:&v150 objects:v181 count:16];
    }

    while (v138);
  }

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v94 = [v140 additionalTopicsToQuery];
  v95 = [v94 countByEnumeratingWithState:&v142 objects:v179 count:16];
  if (v95)
  {
    v96 = v95;
    v97 = *v143;
    do
    {
      for (n = 0; n != v96; ++n)
      {
        if (*v143 != v97)
        {
          objc_enumerationMutation(v94);
        }

        v99 = *(*(&v142 + 1) + 8 * n);
        v100 = [FCFeedContext feedContextForTag:v99];
        v101 = [v99 freeFeedIDForBin:{(v124)[2](v124, v99)}];
        if (v101)
        {
          v102 = [v141 objectForKey:v101];

          if (!v102)
          {
            v103 = objc_alloc_init(FCFeedRequest);
            [(FCFeedRequest *)v103 setFeedID:v101];
            [(FCFeedRequest *)v103 setFeedRange:v139];
            [(FCFeedRequest *)v103 setMaxCount:a9];
            [v136 addObject:v103];
            [v141 setObject:v100 forKey:v101];
          }
        }
      }

      v96 = [v94 countByEnumeratingWithState:&v142 objects:v179 count:16];
    }

    while (v96);
  }

  v104 = [[FCForYouQueryResult alloc] initWithChannelDefaultSectionRequests:v133 channelOtherSectionsRequests:v132 topicRequests:v119 paidBundleRequests:v112 hiddenFeedRequests:v114 sidecarRequests:v136 feedContextByFeedID:v141];
  v105 = *MEMORY[0x1E69E9840];

  return v104;
}

uint64_t __167__FCForYouQueryUtilities_feedRequestsForTags_tagBinProvider_hiddenFeedIDs_purchasedTagIDs_bundleSubscriptionProvider_configuration_maxCount_feedRange_sidecar_options___block_invoke(void **a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 bundleSubscription];
  v6 = [v5 bundleChannelIDs];
  v7 = [v6 containsObject:v4];

  LOBYTE(v6) = [a1[5] containsObject:v4];
  HasBundleSubscriptionToChannelInline = FCPaidAccessCheckerHasBundleSubscriptionToChannelInline(a1[4], v4, 234);

  if (v6)
  {
    return 1;
  }

  if ((v7 & HasBundleSubscriptionToChannelInline) == 1)
  {
    v10 = [a1[6] paidBundleConfig];
    v11 = [v10 forYouIncludePaidSectionFeedsForPaidUsers];

    if (v11)
    {
      return 1;
    }
  }

  if ((v7 ^ 1 | HasBundleSubscriptionToChannelInline))
  {
    return 0;
  }

  v12 = [a1[6] paidBundleConfig];
  v13 = [v12 forYouIncludePaidSectionFeedsForFreeUsers];

  return v13;
}

uint64_t __167__FCForYouQueryUtilities_feedRequestsForTags_tagBinProvider_hiddenFeedIDs_purchasedTagIDs_bundleSubscriptionProvider_configuration_maxCount_feedRange_sidecar_options___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  if ((v1 & 4) != 0)
  {
    return 1;
  }

  if ((v1 & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 56) & 1) != 0 || (*(a1 + 57))
  {
    return 1;
  }

  return [*(a1 + 32) isEqualToString:*(a1 + 40)];
}

+ (id)_filterTagsForQuerying:(id)a3 withMutedTagIDs:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tags"];
    *buf = 136315906;
    v19 = "+[FCForYouQueryUtilities _filterTagsForQuerying:withMutedTagIDs:]";
    v20 = 2080;
    v21 = "FCForYouQueryUtilities.m";
    v22 = 1024;
    v23 = 471;
    v24 = 2114;
    v25 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "mutedTagIDs"];
    *buf = 136315906;
    v19 = "+[FCForYouQueryUtilities _filterTagsForQuerying:withMutedTagIDs:]";
    v20 = 2080;
    v21 = "FCForYouQueryUtilities.m";
    v22 = 1024;
    v23 = 472;
    v24 = 2114;
    v25 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__FCForYouQueryUtilities__filterTagsForQuerying_withMutedTagIDs___block_invoke;
  v16[3] = &unk_1E7C39E78;
  v17 = v6;
  v7 = v6;
  v8 = [v5 fc_arrayOfObjectsPassingTest:v16];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = v10;

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t __65__FCForYouQueryUtilities__filterTagsForQuerying_withMutedTagIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 asChannel];
  v5 = [v3 asSection];

  if (v4)
  {
    v6 = *(a1 + 32);
    v3 = [v4 identifier];
    if ([v6 containsObject:v3])
    {
      v7 = 0;
LABEL_10:

      goto LABEL_11;
    }

    if (!v5)
    {
      v7 = 1;
      goto LABEL_10;
    }

LABEL_7:
    v8 = *(a1 + 32);
    v9 = [v5 parentID];
    v7 = [v8 containsObject:v9] ^ 1;

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v5)
  {
    goto LABEL_7;
  }

  v7 = 1;
LABEL_11:

  return v7;
}

@end