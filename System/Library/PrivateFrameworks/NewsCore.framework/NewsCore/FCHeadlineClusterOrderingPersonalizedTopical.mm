@interface FCHeadlineClusterOrderingPersonalizedTopical
- (id)orderTopicsWithClusteredHeadlines:(id)headlines additionalHeadlines:(id)additionalHeadlines subscribedTagIDs:(id)ds scoresByArticleID:(id)d personalizer:(id)personalizer tagNameProvider:(id)provider personalizationTreatment:(id)treatment translationProvider:(id)self0;
@end

@implementation FCHeadlineClusterOrderingPersonalizedTopical

- (id)orderTopicsWithClusteredHeadlines:(id)headlines additionalHeadlines:(id)additionalHeadlines subscribedTagIDs:(id)ds scoresByArticleID:(id)d personalizer:(id)personalizer tagNameProvider:(id)provider personalizationTreatment:(id)treatment translationProvider:(id)self0
{
  v70 = *MEMORY[0x1E69E9840];
  headlinesCopy = headlines;
  additionalHeadlinesCopy = additionalHeadlines;
  dsCopy = ds;
  dCopy = d;
  personalizerCopy = personalizer;
  treatmentCopy = treatment;
  translationProviderCopy = translationProvider;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke;
  aBlock[3] = &unk_1E7C38628;
  v47 = translationProviderCopy;
  v60 = v47;
  v22 = headlinesCopy;
  v61 = v22;
  providerCopy = provider;
  v24 = _Block_copy(aBlock);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_3;
  v55[3] = &unk_1E7C38678;
  v46 = dCopy;
  v56 = v46;
  v25 = v24;
  v58 = v25;
  v26 = v22;
  v57 = v26;
  v27 = [v26 fc_dictionaryByTransformingValuesWithBlock:v55];
  v28 = MEMORY[0x1E695DEC8];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_280;
  v52[3] = &unk_1E7C386C8;
  v45 = additionalHeadlinesCopy;
  v53 = v45;
  v29 = v25;
  v54 = v29;
  v30 = [v28 fc_array:v52];
  if ((objc_opt_respondsToSelector() & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"WARNING: Bad access to personalization treatment from FCHeadlineClusterOrdering. Please file a radar with a sysdiagnose."];
    *buf = 136315906;
    v63 = "[FCHeadlineClusterOrderingPersonalizedTopical orderTopicsWithClusteredHeadlines:additionalHeadlines:subscribedTagIDs:scoresByArticleID:personalizer:tagNameProvider:personalizationTreatment:translationProvider:]";
    v64 = 2080;
    v65 = "FCHeadlineClusterOrdering.m";
    v66 = 1024;
    v67 = 874;
    v68 = 2114;
    v69 = v44;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_287;
  v48[3] = &unk_1E7C38718;
  v49 = personalizerCopy;
  v50 = dsCopy;
  v51 = treatmentCopy;
  v31 = treatmentCopy;
  v32 = dsCopy;
  v33 = personalizerCopy;
  [v31 metaGroupingRelatednessThreshold];
  v35 = v34;
  [v31 metaGroupingRelatednessKWeight];
  v37 = v36;
  [v31 metaGroupingTopicScoreWeight];
  v39 = v38;
  [v31 metaGroupingHighestScoringRelativeScoreMultiplier];
  v41 = FCTopicallyOrderGroups(v27, v30, v48, providerCopy, v35, v37, v39, v40);

  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

id __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [a2 topicIDs];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_2;
  v11 = &unk_1E7C38600;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v5 = [v4 fc_arrayByTransformingWithBlock:&v8];
  v6 = [v3 setWithArray:{v5, v8, v9, v10, v11}];

  return v6;
}

void *__211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 topicTranslationForTagID:v4];
  v6 = [v5 tagID];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  v10 = [*(a1 + 40) objectForKeyedSubscript:v9];
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

id __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_3(id *a1, void *a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_4;
  v8[3] = &unk_1E7C38650;
  v9 = a1[4];
  v11 = a1[6];
  v10 = a1[5];
  v5 = [a2 fc_arrayByTransformingWithBlock:v8];
  v6 = [v4 setWithArray:v5];

  return v6;
}

FCTopicalNodeElement *__211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_4(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"score should not be nil."];
    *v22 = 136315906;
    *&v22[4] = "[FCHeadlineClusterOrderingPersonalizedTopical orderTopicsWithClusteredHeadlines:additionalHeadlines:subscribedTagIDs:scoresByArticleID:personalizer:tagNameProvider:personalizationTreatment:translationProvider:]_block_invoke_4";
    *&v22[12] = 2080;
    *&v22[14] = "FCHeadlineClusterOrdering.m";
    v23 = 1024;
    v24 = 851;
    v25 = 2114;
    v26 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v22, 0x26u);
  }

  v7 = (*(*(a1 + 48) + 16))();
  if (![v7 count] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = objc_alloc(MEMORY[0x1E696AEC0]);
    v19 = [*(a1 + 40) allKeys];
    v20 = [v3 topicIDs];
    v21 = [v18 initWithFormat:@"Expected to find a grouped topic in the topic ids. Group topics are %@ and topicIDs are %@", v19, v20];
    *v22 = 136315906;
    *&v22[4] = "[FCHeadlineClusterOrderingPersonalizedTopical orderTopicsWithClusteredHeadlines:additionalHeadlines:subscribedTagIDs:scoresByArticleID:personalizer:tagNameProvider:personalizationTreatment:translationProvider:]_block_invoke";
    *&v22[12] = 2080;
    *&v22[14] = "FCHeadlineClusterOrdering.m";
    v23 = 1024;
    v24 = 856;
    v25 = 2114;
    v26 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v22, 0x26u);
  }

  v8 = [FCTopicalNodeElement alloc];
  v9 = [v3 identifier];
  [v6 doubleValue];
  v11 = v10;
  v12 = v9;
  v13 = v7;
  if (v8)
  {
    *v22 = v8;
    *&v22[8] = FCTopicalNodeElement;
    v14 = objc_msgSendSuper2(v22, sel_init);
    v8 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_identifier, v9);
      objc_storeStrong(&v8->_topics, v7);
      v8->_score = v11;
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v8;
}

void __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_280(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_2_281;
  v6[3] = &unk_1E7C386A0;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 fc_arrayByTransformingWithBlock:v6];
  [v4 addObjectsFromArray:v5];
}

void *__211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_2_281(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  if ([v1 count])
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

double __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_287(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 allObjects];
  v6 = [v4 scoresForTagIDs:v5];

  if ([v6 count])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_2_288;
    v10[3] = &unk_1E7C386F0;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = &v14;
    [v6 enumerateKeysAndObjectsUsingBlock:v10];
    v7 = v15[3];
    v8 = v7 / [v6 count];

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

void __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_2_288(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = 1.0;
  if ([*(a1 + 32) containsObject:a2])
  {
    [*(a1 + 40) metaGroupingSubscribedTopicMultiplier];
    v5 = v6;
  }

  [v8 doubleValue];
  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + v7 * v5;
}

@end