@interface FCFeedTransformationFilter
+ (id)transformationWithFilterOptions:(unint64_t)a3 configuration:(id)a4 context:(id)a5;
+ (id)transformationWithFilterOptions:(unint64_t)a3 configuration:(id)a4 context:(id)a5 ignoreMutedTagIDs:(id)a6;
+ (id)transformationWithFilterOptions:(unint64_t)a3 configuration:(id)a4 context:(id)a5 otherArticleIDs:(id)a6;
+ (id)transformationWithFilterOptions:(unint64_t)a3 otherArticleIDs:(id)a4 otherClusterIDs:(id)a5 subscribedTagIDs:(id)a6 mutedTagIDs:(id)a7 readingHistoryItems:(id)a8 playlistArticleIDs:(id)a9 downloadedArticleIDs:(id)a10 briefingsTagID:(id)a11 paidAccessChecker:(id)a12 bundleSubscription:(id)a13 paywalledArticlesMaxCount:(unint64_t)a14;
- (id)transformFeedItems:(id)a3;
- (id)transformFeedItemsWithResults:(id)a3;
- (id)transformHeadline:(id)a3;
@end

@implementation FCFeedTransformationFilter

+ (id)transformationWithFilterOptions:(unint64_t)a3 otherArticleIDs:(id)a4 otherClusterIDs:(id)a5 subscribedTagIDs:(id)a6 mutedTagIDs:(id)a7 readingHistoryItems:(id)a8 playlistArticleIDs:(id)a9 downloadedArticleIDs:(id)a10 briefingsTagID:(id)a11 paidAccessChecker:(id)a12 bundleSubscription:(id)a13 paywalledArticlesMaxCount:(unint64_t)a14
{
  v40 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v42 = a13;
  v41 = a12;
  v25 = objc_opt_new();
  v27 = v25;
  if (v25)
  {
    v25[1] = a3;
    objc_setProperty_nonatomic_copy(v25, v26, v40, 16);
    objc_setProperty_nonatomic_copy(v27, v28, v18, 24);
    objc_setProperty_nonatomic_copy(v27, v29, v19, 40);
    objc_setProperty_nonatomic_copy(v27, v30, v20, 32);
    objc_setProperty_nonatomic_copy(v27, v31, v21, 48);
  }

  if (v22)
  {
    v32 = v22;
  }

  else
  {
    v32 = MEMORY[0x1E695E0F0];
  }

  v33 = [MEMORY[0x1E695DFD8] setWithArray:v32];
  v35 = v33;
  if (v27)
  {
    objc_setProperty_nonatomic_copy(v27, v34, v33, 56);

    objc_setProperty_nonatomic_copy(v27, v36, v23, 64);
    objc_setProperty_nonatomic_copy(v27, v37, v24, 72);
    objc_storeStrong(v27 + 10, a12);

    objc_storeStrong(v27 + 11, a13);
    v27[12] = a14;
  }

  else
  {
  }

  return v27;
}

+ (id)transformationWithFilterOptions:(unint64_t)a3 configuration:(id)a4 context:(id)a5 otherArticleIDs:(id)a6
{
  v9 = MEMORY[0x1E695DFD8];
  v10 = a5;
  v11 = a4;
  v12 = [v9 setWithArray:a6];
  v29 = [v10 subscriptionList];
  v23 = [v29 subscribedTagIDs];
  v28 = [v10 subscriptionList];
  v22 = [v28 mutedTagIDs];
  v27 = [v10 readingHistory];
  v20 = [v27 readingHistoryItemsByArticleID];
  v26 = [v10 audioPlaylist];
  v13 = [v26 articleIDs];
  v21 = [v10 offlineArticleManager];
  v14 = [v21 readableArticleIDs];
  v15 = [v11 briefingsTagID];

  v16 = [v10 paidAccessChecker];
  v17 = [v10 bundleSubscriptionManager];

  v18 = [v17 cachedSubscription];
  v25 = [a1 transformationWithFilterOptions:a3 otherArticleIDs:v12 otherClusterIDs:0 subscribedTagIDs:v23 mutedTagIDs:v22 readingHistoryItems:v20 playlistArticleIDs:v13 downloadedArticleIDs:v14 briefingsTagID:v15 paidAccessChecker:v16 bundleSubscription:v18 paywalledArticlesMaxCount:0];

  return v25;
}

+ (id)transformationWithFilterOptions:(unint64_t)a3 configuration:(id)a4 context:(id)a5
{
  v7 = a5;
  v8 = a4;
  v25 = [v7 subscriptionList];
  v9 = [v25 subscribedTagIDs];
  v24 = [v7 subscriptionList];
  v10 = [v24 mutedTagIDs];
  v23 = [v7 readingHistory];
  v19 = [v23 readingHistoryItemsByArticleID];
  v20 = [v7 audioPlaylist];
  v11 = [v20 articleIDs];
  v12 = [v7 offlineArticleManager];
  v13 = [v12 readableArticleIDs];
  v14 = [v8 briefingsTagID];

  v15 = [v7 paidAccessChecker];
  v16 = [v7 bundleSubscriptionManager];

  v17 = [v16 cachedSubscription];
  v22 = [a1 transformationWithFilterOptions:a3 otherArticleIDs:0 otherClusterIDs:0 subscribedTagIDs:v9 mutedTagIDs:v10 readingHistoryItems:v19 playlistArticleIDs:v11 downloadedArticleIDs:v13 briefingsTagID:v14 paidAccessChecker:v15 bundleSubscription:v17 paywalledArticlesMaxCount:0];

  return v22;
}

+ (id)transformationWithFilterOptions:(unint64_t)a3 configuration:(id)a4 context:(id)a5 ignoreMutedTagIDs:(id)a6
{
  v8 = MEMORY[0x1E695DFA8];
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [v8 alloc];
  v13 = [v10 subscriptionList];
  v14 = [v13 mutedTagIDs];
  v15 = [v12 initWithSet:v14];

  v27 = v15;
  [v15 fc_safelyMinusSet:v9];

  v31 = [v10 subscriptionList];
  v16 = [v31 subscribedTagIDs];
  v29 = [v10 readingHistory];
  v17 = [v29 readingHistoryItemsByArticleID];
  v28 = [v10 audioPlaylist];
  v18 = [v28 articleIDs];
  v19 = [v10 offlineArticleManager];
  v20 = [v19 readableArticleIDs];
  v21 = [v11 briefingsTagID];

  v22 = [v10 paidAccessChecker];
  v23 = [v10 bundleSubscriptionManager];

  v24 = [v23 cachedSubscription];
  v25 = [a1 transformationWithFilterOptions:a3 otherArticleIDs:0 otherClusterIDs:0 subscribedTagIDs:v16 mutedTagIDs:v15 readingHistoryItems:v17 playlistArticleIDs:v18 downloadedArticleIDs:v20 briefingsTagID:v21 paidAccessChecker:v22 bundleSubscription:v24 paywalledArticlesMaxCount:0];

  return v25;
}

- (id)transformFeedItems:(id)a3
{
  v3 = [(FCFeedTransformationFilter *)self transformFeedItemsWithResults:a3];
  v4 = [v3 fc_arrayByTransformingWithBlock:&__block_literal_global_134];

  return v4;
}

id __49__FCFeedTransformationFilter_transformFeedItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isFiltered])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 item];
  }

  return v3;
}

- (id)transformHeadline:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v11 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v11 count:1];

    v7 = [(FCFeedTransformationFilter *)self transformFeedItems:v6, v11, v12];
    v8 = [v7 firstObject];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)transformFeedItemsWithResults:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    otherArticleIDs = 0;
    goto LABEL_5;
  }

  if (self->_filterOptions != 1)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    otherArticleIDs = self->_otherArticleIDs;
LABEL_5:
    v10 = MEMORY[0x1E695DFA8];
    v11 = otherArticleIDs;
    v12 = [v10 setWithSet:v11];

    v13 = [MEMORY[0x1E695DF90] dictionary];
    v14 = MEMORY[0x1E695DFA8];
    if (self)
    {
      otherClusterIDs = self->_otherClusterIDs;
    }

    else
    {
      otherClusterIDs = 0;
    }

    v16 = otherClusterIDs;
    v17 = [v14 setWithSet:v16];

    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2020000000;
    v31[3] = 0;
    v18 = +[FCRestrictions sharedInstance];
    LOBYTE(v16) = [v18 isExplicitContentAllowed];

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __60__FCFeedTransformationFilter_transformFeedItemsWithResults___block_invoke_3;
    v24[3] = &unk_1E7C44638;
    v24[4] = self;
    v7 = v12;
    v25 = v7;
    v19 = v13;
    v26 = v19;
    v20 = v17;
    v30 = v16;
    v27 = v20;
    v29 = v31;
    v21 = v8;
    v28 = v21;
    [v5 enumerateObjectsUsingBlock:v24];
    v22 = v28;
    v6 = v21;

    _Block_object_dispose(v31, 8);
    goto LABEL_8;
  }

  v31[4] = MEMORY[0x1E69E9820];
  v31[5] = 3221225472;
  v31[6] = __60__FCFeedTransformationFilter_transformFeedItemsWithResults___block_invoke;
  v31[7] = &unk_1E7C3B578;
  v32 = v4;
  v6 = [v32 fc_arrayByTransformingWithBlock:&__block_literal_global_35_2];
  v7 = v32;
LABEL_8:

  return v6;
}

FCFeedTransformationFilterItemResult *__60__FCFeedTransformationFilter_transformFeedItemsWithResults___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FCFeedTransformationFilterItemResult alloc] initWithItem:v2 filtered:0 filteredReasons:0];

  return v3;
}

void __60__FCFeedTransformationFilter_transformFeedItemsWithResults___block_invoke_3(uint64_t a1, void *a2)
{
  v182 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (!v5)
  {
    v25 = 0;
    v26 = 0;
    goto LABEL_93;
  }

  if ((*(v5 + 8) & 2) == 0)
  {
    goto LABEL_24;
  }

  v6 = [v3 articleID];
  v7 = [v6 length];

  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = *(a1 + 40);
  v9 = [v4 articleID];
  v10 = [v8 containsObject:v9];

  v11 = *(a1 + 32);
  if (v11 && (*(v11 + 8) & 0x40) != 0)
  {
    goto LABEL_7;
  }

  v12 = *(a1 + 40);
  v13 = [v4 articleID];
  [v12 addObject:v13];

  v14 = *(a1 + 48);
  v15 = [v4 articleID];
  v16 = [v14 objectForKeyedSubscript:v15];

  if (v16)
  {
LABEL_7:
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_24:
    v26 = 0;
    v25 = 0;
    goto LABEL_25;
  }

  v27 = *(a1 + 48);
  v28 = [v4 articleID];
  [v27 setObject:v4 forKeyedSubscript:v28];

  if (!v10)
  {
    goto LABEL_24;
  }

LABEL_8:
  v17 = *(a1 + 48);
  v18 = [v4 articleID];
  v19 = [v17 objectForKeyedSubscript:v18];

  if (v19 && v19 != v4)
  {
    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    v20 = [v4 surfacedByArticleListIDs];
    v21 = [v20 countByEnumeratingWithState:&v169 objects:v181 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v170;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v170 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [v19 addSurfacedByArticleListID:*(*(&v169 + 1) + 8 * i)];
        }

        v22 = [v20 countByEnumeratingWithState:&v169 objects:v181 count:16];
      }

      while (v22);
    }

    if (objc_opt_respondsToSelector())
    {
      [v4 conditionalScore];
      [v19 applyConditionalScore:?];
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 isEvergreen])
    {
      [v19 markAsEvergreen];
    }
  }

  v25 = 1;
  v26 = 2;
LABEL_25:
  v5 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_93;
  }

  if ((*(v5 + 8) & 4) != 0)
  {
    v29 = [v4 clusterID];
    v30 = [v29 length];

    if (v30)
    {
      v31 = *(a1 + 56);
      v32 = [v4 clusterID];
      v33 = [v31 containsObject:v32];

      v25 |= v33;
      v34 = *(a1 + 32);
      if (!v34 || (*(v34 + 8) & 0x80) == 0)
      {
        v35 = *(a1 + 56);
        v36 = [v4 clusterID];
        [v35 addObject:v36];
      }

      if (v33)
      {
        v26 |= 4uLL;
      }
    }
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_93;
  }

  v37 = *(v5 + 8);
  if ((v37 & 8) != 0)
  {
    v38 = [v4 isFromBlockedStorefront];
    if (v38)
    {
      v26 |= 8uLL;
    }

    v25 |= v38;
    v5 = *(a1 + 32);
    if (!v5)
    {
      goto LABEL_93;
    }

    v37 = *(v5 + 8);
  }

  if (v37 & 0x10) == 0 || (*(a1 + 80))
  {
    if ((v37 & 0x20) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_42;
  }

  v44 = [v4 isExplicitContent];
  if (v44)
  {
    v26 |= 0x10uLL;
  }

  v25 |= v44;
  v5 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_93;
  }

  if ((*(v5 + 8) & 0x20) != 0)
  {
LABEL_42:
    v39 = *(v5 + 32);
    if ([v39 count])
    {
      v40 = *(a1 + 32);
      if (v40)
      {
        v40 = v40[4];
      }

      v41 = v40;
      v42 = [v4 sourceChannelID];
      v43 = [v41 containsObject:v42];

      if (v43)
      {
        v26 |= 0x20uLL;
      }

      v25 |= v43;
    }

    else
    {
    }
  }

LABEL_54:
  v5 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_93;
  }

  if ((*(v5 + 11) & 4) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v4 role] != 8)
  {
    v45 = *(a1 + 32);
    if (v45)
    {
      v45 = v45[4];
    }

    v46 = v45;
    if ([v46 count])
    {
      v47 = *(a1 + 32);
      if (v47)
      {
        v47 = v47[4];
      }

      v48 = v47;
      v49 = [v4 sourceChannelID];
      v50 = [v48 containsObject:v49];

      if (v50)
      {
        v26 |= 0x4000000uLL;
      }

      v25 |= v50;
    }

    else
    {
    }
  }

  v51 = *(a1 + 32);
  if (!v51)
  {
    goto LABEL_92;
  }

  v52 = *(v51 + 8);
  if ((v52 & 0x100) == 0)
  {
    if ((v52 & 0x200) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_70;
  }

  v69 = +[FCRestrictions sharedInstance];
  v70 = [v69 isNewsVersionAllowed:{objc_msgSend(v4, "minimumNewsVersion")}];

  if ((v70 & 1) == 0)
  {
    v26 |= 0x100uLL;
  }

  v25 |= v70 ^ 1;
  v51 = *(a1 + 32);
  if (!v51)
  {
    goto LABEL_92;
  }

  v52 = *(v51 + 8);
  if ((v52 & 0x200) != 0)
  {
LABEL_70:
    v53 = [v4 contentType];
    if (v53 != 2)
    {
      v26 |= 0x200uLL;
    }

    v25 |= v53 != 2;
    v51 = *(a1 + 32);
    if (v51)
    {
      v52 = *(v51 + 8);
      goto LABEL_74;
    }

LABEL_92:
    v5 = 0;
    goto LABEL_93;
  }

LABEL_74:
  if ((v52 & 0x400000000) != 0)
  {
    v54 = *(v51 + 88);
    v55 = v54;
    v56 = objc_getAssociatedObject(v55, v54 + 1);
    v57 = [v56 unsignedIntegerValue];
    v58 = v57;
    v59 = objc_getAssociatedObject(v55, ~v57);

    v60 = [v59 unsignedIntegerValue] ^ v58;
    v5 = *(a1 + 32);
    if (v60)
    {
      if (v5)
      {
        v5 = *(v5 + 80);
      }

      v61 = v5;
      v62 = [v4 isPaid];
      v63 = [v4 isBundlePaid];
      v64 = [v4 sourceChannelID];
      HasAccessToItemInline = FCPaidAccessCheckerHasAccessToItemInline(v61, v62, v63, v64, 50);

      if (!HasAccessToItemInline)
      {
        v26 |= 0x400000000uLL;
      }

      v25 |= HasAccessToItemInline ^ 1;
      v5 = *(a1 + 32);
    }

    if (!v5)
    {
      goto LABEL_93;
    }

    v52 = *(v5 + 8);
  }

  if ((v52 & 0x1000) != 0)
  {
    v66 = [v4 topicIDs];
    v67 = *(a1 + 32);
    if (v67)
    {
      v67 = v67[9];
    }

    v68 = v67;
    if ([v66 containsObject:v68])
    {
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {

        goto LABEL_200;
      }

      v125 = [v4 role];

      if (v125 != 8)
      {
        goto LABEL_200;
      }
    }

    v26 |= 0x1000uLL;
    v25 = 1;
  }

LABEL_200:
  v5 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_93;
  }

  if ((*(v5 + 9) & 4) != 0 && ([v4 isPaid] & 1) == 0)
  {
    v128 = [v4 isBundlePaid];
    if (!v128)
    {
      v26 |= 0x400uLL;
    }

    v25 |= v128 ^ 1;
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_93;
  }

  if (*(v5 + 10))
  {
    if ([v4 isBundlePaid])
    {
      v129 = [v4 sourceChannelID];
      if (v129)
      {
        v130 = v129;
        v131 = *(a1 + 32);
        if (v131)
        {
          v131 = v131[11];
        }

        v132 = v131;
        v133 = [v4 sourceChannelID];
        v134 = [v132 containsTagID:v133];

        if (v134)
        {
          v26 |= 0x10000uLL;
        }

        v25 |= v134;
      }
    }
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_93;
  }

  v135 = *(v5 + 8);
  if ((v135 & 0x2000) != 0)
  {
    v136 = objc_opt_respondsToSelector();
    v5 = *(a1 + 32);
    if (v136)
    {
      if (v5)
      {
        v5 = *(v5 + 80);
      }

      v137 = v5;
      v138 = [v4 isPaid];
      v139 = [v4 isBundlePaid];
      v140 = [v4 sourceChannel];
      v141 = [v137 canGetAccessToItemPaid:v138 bundlePaid:v139 channel:v140];

      if (!v141)
      {
        v26 |= 0x2000uLL;
      }

      v25 |= v141 ^ 1;
      v5 = *(a1 + 32);
    }

    if (!v5)
    {
      goto LABEL_93;
    }

    v135 = *(v5 + 8);
  }

  if ((v135 & 0x4000) != 0)
  {
    v146 = *(v5 + 40);
    v147 = [v4 sourceChannelID];
    v148 = [v146 containsObject:v147];

    if ((v148 & 1) == 0)
    {
      v26 |= 0x4000uLL;
    }

    v25 |= v148 ^ 1;
    v5 = *(a1 + 32);
    if (!v5)
    {
      goto LABEL_93;
    }

    if ((*(v5 + 8) & 0x20000000) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_227;
  }

  if ((v135 & 0x20000000) != 0)
  {
LABEL_227:
    v142 = *(v5 + 40);
    v143 = [v4 sourceChannelID];
    v144 = [v142 containsObject:v143];

    if ((v144 & 1) == 0)
    {
      if (objc_opt_respondsToSelector())
      {
        v145 = [v4 storyType];
        if (v145 != 5)
        {
          v26 |= 0x20000000uLL;
        }

        v25 |= v145 != 5;
      }

      else
      {
        v26 |= 0x20000000uLL;
        v25 = 1;
      }
    }
  }

LABEL_240:
  v5 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_93;
  }

  v149 = *(v5 + 8);
  if ((v149 & 0x8000) != 0)
  {
    v150 = [v4 hasVideo];
    if (!v150)
    {
      v26 |= 0x8000uLL;
    }

    v25 |= v150 ^ 1;
    v5 = *(a1 + 32);
    if (!v5)
    {
      goto LABEL_93;
    }

    v149 = *(v5 + 8);
  }

  if ((v149 & 0x20000) != 0)
  {
    v151 = *(v5 + 32);
    if ([v151 count])
    {
      v152 = *(a1 + 32);
      if (v152)
      {
        v152 = v152[4];
      }

      v153 = v152;
      v154 = [v4 topicIDs];
      v155 = [v153 fc_containsAnyObjectInArray:v154];

      if (v155)
      {
        v26 |= 0x20000uLL;
      }

      v25 |= v155;
    }

    else
    {
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    if ((*(v5 + 10) & 4) != 0)
    {
      v156 = *(v5 + 32);
      if ([v156 count])
      {
        v157 = *(a1 + 32);
        if (v157)
        {
          v157 = v157[4];
        }

        v158 = v157;
        v159 = [v4 topicIDs];
        v160 = [v158 fc_containsAnyObjectInArray:v159];

        if (!v160)
        {
          goto LABEL_267;
        }

        v161 = [v4 sourceFeedID];
        v162 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"@$"];
        v163 = [v161 componentsSeparatedByCharactersInSet:v162];
        v156 = [v163 objectAtIndexedSubscript:0];

        if (v156)
        {
          v164 = *(a1 + 32);
          if (v164)
          {
            v164 = v164[4];
          }

          v165 = v164;
          v166 = [v165 containsObject:v156];

          if ((v166 & 1) == 0)
          {
            v26 |= 0x40000uLL;
          }

          v25 |= v166 ^ 1;
        }
      }
    }

LABEL_267:
    v5 = *(a1 + 32);
    if (v5)
    {
      if (*(v5 + 10) & 8) != 0 && (objc_opt_respondsToSelector())
      {
        v167 = [v4 isEvergreen];
        if (v167)
        {
          v26 |= 0x80000uLL;
        }

        v25 |= v167;
      }

      v5 = *(a1 + 32);
      if (v5)
      {
        v5 = *(v5 + 48);
      }
    }
  }

LABEL_93:
  v71 = v5;
  v72 = [v4 articleID];
  v73 = [v71 objectForKey:v72];

  v74 = *(a1 + 32);
  if (!v74)
  {
    goto LABEL_190;
  }

  v75 = *(v74 + 8);
  if ((v75 & 0x100000) != 0)
  {
    v76 = [v73 hasArticleBeenSeen];
    if (v76)
    {
      v26 |= 0x100000uLL;
    }

    v25 |= v76;
    v74 = *(a1 + 32);
    if (!v74)
    {
      goto LABEL_190;
    }

    v75 = *(v74 + 8);
  }

  if ((v75 & 0x200000) != 0)
  {
    v77 = [v73 hasArticleBeenRead];
    if (v77)
    {
      v26 |= 0x200000uLL;
    }

    v25 |= v77;
    v74 = *(a1 + 32);
    if (!v74)
    {
      goto LABEL_190;
    }

    v75 = *(v74 + 8);
  }

  if ((v75 & 0x800000) == 0)
  {
    if ((v75 & 0x400000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_106;
  }

  v111 = [v73 lastListenedAt];

  if (v111)
  {
    v26 |= 0x800000uLL;
  }

  v25 |= v111 != 0;
  v74 = *(a1 + 32);
  if (!v74)
  {
    goto LABEL_190;
  }

  v75 = *(v74 + 8);
  if ((v75 & 0x400000) != 0)
  {
LABEL_106:
    v78 = [v73 hasArticleCompletedReading];
    if (v78)
    {
      v26 |= 0x400000uLL;
    }

    v25 |= v78;
    v74 = *(a1 + 32);
    if (!v74)
    {
      goto LABEL_190;
    }

    v75 = *(v74 + 8);
  }

LABEL_110:
  if ((v75 & 0x1000000) != 0)
  {
    v79 = [v73 hasArticleCompletedListening];
    if (v79)
    {
      v26 |= 0x1000000uLL;
    }

    v25 |= v79;
    v74 = *(a1 + 32);
    if (!v74)
    {
      goto LABEL_190;
    }

    v75 = *(v74 + 8);
  }

  if ((v75 & 0x8000000) != 0)
  {
    v80 = [v73 hasArticleBeenRemovedFromAudio];
    if (v80)
    {
      v26 |= 0x8000000uLL;
    }

    v25 |= v80;
    v74 = *(a1 + 32);
    if (!v74)
    {
      goto LABEL_190;
    }

    v75 = *(v74 + 8);
  }

  if ((v75 & 0x40000000) != 0)
  {
    v81 = [v73 articleLikingStatus];
    if (v81 == 2)
    {
      v26 |= 0x40000000uLL;
    }

    v25 |= v81 == 2;
    v74 = *(a1 + 32);
    if (!v74)
    {
      goto LABEL_190;
    }

    v75 = *(v74 + 8);
  }

  if ((v75 & 0x80000000) != 0)
  {
    v82 = [v4 isSponsored];
    if (v82)
    {
      v26 |= 0x80000000uLL;
    }

    v25 |= v82;
    v74 = *(a1 + 32);
    if (!v74)
    {
      goto LABEL_190;
    }

    v75 = *(v74 + 8);
  }

  if ((v75 & 0x2000000) != 0)
  {
    v112 = *(v74 + 56);
    v113 = [v4 articleID];
    v114 = [v112 containsObject:v113];

    if (v114)
    {
      v26 |= 0x2000000uLL;
    }

    v25 |= v114;
    v74 = *(a1 + 32);
    if (!v74)
    {
      goto LABEL_190;
    }

    v75 = *(v74 + 8);
    if ((v75 & 0x10000000) == 0)
    {
LABEL_132:
      if ((v75 & 0x100000000) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_183;
    }
  }

  else if ((v75 & 0x10000000) == 0)
  {
    goto LABEL_132;
  }

  v115 = *(v74 + 64);
  v116 = [v4 articleID];
  v117 = [v115 containsObject:v116];

  if ((v117 & 1) == 0)
  {
    v26 |= 0x10000000uLL;
  }

  v25 |= v117 ^ 1;
  v74 = *(a1 + 32);
  if (!v74)
  {
    goto LABEL_190;
  }

  if ((*(v74 + 8) & 0x100000000) != 0)
  {
LABEL_183:
    v118 = [v4 sourceChannelID];
    v74 = *(a1 + 32);
    if (v118)
    {
      v119 = v118;
      if (v74)
      {
        v74 = *(v74 + 88);
      }

      v120 = v74;
      v121 = [v4 sourceChannelID];
      v122 = [v120 containsTagID:v121];

      if ((v122 & 1) == 0)
      {
        v26 |= 0x100000000uLL;
      }

      v25 |= v122 ^ 1;
      v74 = *(a1 + 32);
    }

    if (!v74)
    {
      goto LABEL_190;
    }
  }

LABEL_133:
  if ((*(v74 + 12) & 2) != 0)
  {
    if ([v4 reduceVisibilityForNonFollowers])
    {
      v83 = [v4 sourceChannelID];
      if (v83)
      {
        v84 = v83;
        v85 = *(a1 + 32);
        if (v85)
        {
          v85 = v85[5];
        }

        v86 = v85;
        v87 = [v4 sourceChannelID];
        v88 = [v86 containsObject:v87];

        if ((v88 & 1) == 0)
        {
          v26 |= 0x200000000uLL;
        }

        v25 |= v88 ^ 1;
      }
    }
  }

  v89 = *(a1 + 32);
  if (!v89)
  {
    goto LABEL_190;
  }

  v90 = *(v89 + 8);
  if ((v90 & 0x800000000) != 0)
  {
    v126 = [v4 sourceChannelID];

    if (!v126)
    {
      v26 |= 0x800000000uLL;
    }

    v25 |= v126 == 0;
    v127 = *(a1 + 32);
    if (!v127)
    {
      goto LABEL_190;
    }

    v90 = *(v127 + 8);
    if ((v90 & 0x1000000000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_144;
  }

  if ((v90 & 0x1000000000) != 0)
  {
LABEL_144:
    v91 = [v4 scoreProfile];

    if (!v91)
    {
      v92 = MEMORY[0x1E69E9C10];
      v93 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        v168 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't apply zero-tabi-score filter without a score profile"];
        *buf = 136315906;
        v174 = "[FCFeedTransformationFilter transformFeedItemsWithResults:]_block_invoke_3";
        v175 = 2080;
        v176 = "FCFeedTransformationFilter.m";
        v177 = 1024;
        v178 = 459;
        v179 = 2114;
        v180 = v168;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }

    v94 = [v4 scoreProfile];
    if (!v94 || (v95 = v94, [v4 scoreProfile], v96 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v96, "tabiScore"), v98 = v97, v96, v95, v98 == 0.0))
    {
      v26 |= 0x1000000000uLL;
      v25 = 1;
    }

    v99 = *(a1 + 32);
    if (!v99)
    {
      goto LABEL_190;
    }

    v90 = *(v99 + 8);
  }

LABEL_153:
  if (v90 & 0x2000000000) != 0 && (objc_opt_respondsToSelector())
  {
    v100 = [v4 isSportsHighlight];
    if (v100)
    {
      v26 |= 0x2000000000uLL;
    }

    v25 |= v100;
  }

  v101 = *(a1 + 32);
  if (v101)
  {
    v102 = *(v101 + 8);
    if ((v102 & 0x4000000000) != 0)
    {
      IsRecipe = FCFeedTransformationItemIsRecipe(v4);
      if (IsRecipe)
      {
        v26 |= 0x4000000000uLL;
      }

      v25 |= IsRecipe;
      v101 = *(a1 + 32);
      if (!v101)
      {
        goto LABEL_190;
      }

      v102 = *(v101 + 8);
    }

    if ((v102 & 0x800) != 0)
    {
      v104 = *(v101 + 80);
      v105 = [v4 isPaid];
      v106 = [v4 isBundlePaid];
      v107 = [v4 sourceChannelID];
      LOBYTE(v105) = FCPaidAccessCheckerHasAccessToItemInline(v104, v105, v106, v107, 227);

      if ((v105 & 1) == 0)
      {
        v108 = *(a1 + 32);
        if (v108 && (v109 = *(*(a1 + 72) + 8), v110 = *(v109 + 24), v110 < *(v108 + 96)))
        {
          if ((v25 & 1) == 0)
          {
            v25 = 0;
            *(v109 + 24) = v110 + 1;
            goto LABEL_190;
          }
        }

        else
        {
          v26 |= 0x800uLL;
        }

        v25 = 1;
      }
    }
  }

LABEL_190:
  v123 = [[FCFeedTransformationFilterItemResult alloc] initWithItem:v4 filtered:v25 & 1 filteredReasons:v26];
  [*(a1 + 64) addObject:v123];

  v124 = *MEMORY[0x1E69E9840];
}

@end