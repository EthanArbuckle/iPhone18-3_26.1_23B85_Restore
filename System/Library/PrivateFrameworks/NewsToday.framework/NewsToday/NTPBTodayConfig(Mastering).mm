@interface NTPBTodayConfig(Mastering)
- (id)_resolveArticle:()Mastering withPaidAccessChecker:heldArticleRecords:;
- (id)_resolveArticles:()Mastering withPaidAccessChecker:heldArticleRecords:;
- (void)nt_resolveFallbacksWithPaidAccessChecker:()Mastering heldArticleRecords:;
@end

@implementation NTPBTodayConfig(Mastering)

- (void)nt_resolveFallbacksWithPaidAccessChecker:()Mastering heldArticleRecords:
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTPBTodayConfig(Mastering) nt_resolveFallbacksWithPaidAccessChecker:heldArticleRecords:];
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTPBTodayConfig(Mastering) nt_resolveFallbacksWithPaidAccessChecker:heldArticleRecords:];
  }

LABEL_6:
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [self todayQueueConfigs];
  v36 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v36)
  {
    v35 = *v52;
    do
    {
      v8 = 0;
      do
      {
        if (*v52 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v8;
        v9 = *(*(&v51 + 1) + 8 * v8);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        todaySectionConfigs = [v9 todaySectionConfigs];
        v10 = [todaySectionConfigs countByEnumeratingWithState:&v47 objects:v56 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v48;
          v38 = *v48;
          do
          {
            v13 = 0;
            v42 = v11;
            do
            {
              if (*v48 != v12)
              {
                objc_enumerationMutation(todaySectionConfigs);
              }

              v14 = *(*(&v47 + 1) + 8 * v13);
              sectionType = [v14 sectionType];
              if (sectionType == 5)
              {
                itemsTodaySectionConfig = [v14 itemsTodaySectionConfig];
                v43 = 0u;
                v44 = 0u;
                v45 = 0u;
                v46 = 0u;
                items = [itemsTodaySectionConfig items];
                v26 = [items countByEnumeratingWithState:&v43 objects:v55 count:16];
                if (v26)
                {
                  v27 = v26;
                  v39 = itemsTodaySectionConfig;
                  v40 = v13;
                  v28 = *v44;
                  do
                  {
                    for (i = 0; i != v27; ++i)
                    {
                      if (*v44 != v28)
                      {
                        objc_enumerationMutation(items);
                      }

                      v30 = *(*(&v43 + 1) + 8 * i);
                      article = [v30 article];
                      if (article)
                      {
                        v32 = [self _resolveArticle:article withPaidAccessChecker:v6 heldArticleRecords:v7];
                        [v30 setArticle:v32];
                      }
                    }

                    v27 = [items countByEnumeratingWithState:&v43 objects:v55 count:16];
                  }

                  while (v27);
                  v12 = v38;
                  itemsTodaySectionConfig = v39;
                  v11 = v42;
                  v13 = v40;
                }
              }

              else
              {
                if (sectionType == 4)
                {
                  personalizedTodaySectionConfig = [v14 personalizedTodaySectionConfig];
                  personalizedArticles = [personalizedTodaySectionConfig personalizedArticles];
                  [self _resolveArticles:personalizedArticles withPaidAccessChecker:v6 heldArticleRecords:v7];
                  v24 = v23 = v13;
                  v25 = [v24 mutableCopy];
                  [personalizedTodaySectionConfig setPersonalizedArticles:v25];

                  v13 = v23;
                  items = [personalizedTodaySectionConfig mandatoryArticles];
                  v18 = [self _resolveArticles:items withPaidAccessChecker:v6 heldArticleRecords:v7];
                  v19 = [v18 mutableCopy];
                  itemsTodaySectionConfig = personalizedTodaySectionConfig;
                  [personalizedTodaySectionConfig setMandatoryArticles:v19];
                }

                else
                {
                  if (sectionType != 3)
                  {
                    goto LABEL_33;
                  }

                  articleIDsTodaySectionConfig = [v14 articleIDsTodaySectionConfig];
                  items = [articleIDsTodaySectionConfig articles];
                  v18 = [self _resolveArticles:items withPaidAccessChecker:v6 heldArticleRecords:v7];
                  v19 = [v18 mutableCopy];
                  itemsTodaySectionConfig = articleIDsTodaySectionConfig;
                  [articleIDsTodaySectionConfig setArticles:v19];
                }

                v11 = v42;
              }

LABEL_33:
              ++v13;
            }

            while (v13 != v11);
            v11 = [todaySectionConfigs countByEnumeratingWithState:&v47 objects:v56 count:16];
          }

          while (v11);
        }

        v8 = v37 + 1;
      }

      while (v37 + 1 != v36);
      v36 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v36);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (id)_resolveArticle:()Mastering withPaidAccessChecker:heldArticleRecords:
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v54 = a4;
  v55 = a5;
  v8 = v7;
  v9 = NTSharedLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v57 = v8;
    _os_log_impl(&dword_25BF21000, v9, OS_LOG_TYPE_DEBUG, "resolving article %{public}@", buf, 0xCu);
  }

  paidArticle = [v8 paidArticle];
  v11 = v8;
  if (paidArticle)
  {
    v12 = paidArticle;
    v50 = v8;
    while (1)
    {
      v13 = NTSharedLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v57 = v12;
        _os_log_impl(&dword_25BF21000, v13, OS_LOG_TYPE_DEBUG, "considering paid article %{public}@", buf, 0xCu);
      }

      articleID = [v12 articleID];
      v15 = [v55 recordWithID:articleID];

      if (v15)
      {
        isPaid = [v15 isPaid];
        isBundlePaid = [v15 isBundlePaid];
        sourceChannelTagID = [v15 sourceChannelTagID];
        v19 = v54;
        v20 = sourceChannelTagID;
        bundleSubscriptionProvider = [v19 bundleSubscriptionProvider];
        purchaseProvider = [v19 purchaseProvider];
        v23 = bundleSubscriptionProvider;
        v24 = purchaseProvider;
        v25 = v20;
        if ((isPaid & 1) == 0 && !isBundlePaid)
        {
          goto LABEL_28;
        }

        v26 = isPaid ^ 1;
        if (!v24)
        {
          v26 = 1;
        }

        if ((v26 & 1) == 0)
        {
          purchasedTagIDs = [v24 purchasedTagIDs];
          v28 = [purchasedTagIDs containsObject:v25];

          if (v28)
          {
LABEL_28:

            v46 = NTSharedLog();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              articleID2 = [v12 articleID];
              *buf = 138543362;
              v57 = articleID2;
              _os_log_impl(&dword_25BF21000, v46, OS_LOG_TYPE_DEBUG, "user has access to %{public}@", buf, 0xCu);
            }

            v11 = v12;
            v8 = v50;

            break;
          }
        }

        v29 = isBundlePaid ^ 1;
        if (!v23)
        {
          v29 = 1;
        }

        if ((v29 & 1) == 0)
        {
          v30 = v23;
          v31 = v25;
          if (!v31)
          {
            goto LABEL_19;
          }

          bundleSubscription = [v30 bundleSubscription];
          objc_getAssociatedObject(bundleSubscription, (bundleSubscription + 1));
          v33 = v52 = v31;
          unsignedIntegerValue = [v33 unsignedIntegerValue];
          v35 = unsignedIntegerValue;
          objc_getAssociatedObject(bundleSubscription, ~unsignedIntegerValue);
          v53 = v19;
          v37 = v36 = v30;
          v38 = [v37 unsignedIntegerValue] ^ v35;

          v30 = v36;
          v19 = v53;

          v31 = v52;
          if (v38)
          {
            bundleSubscription2 = [v30 bundleSubscription];
            bundleChannelIDs = [bundleSubscription2 bundleChannelIDs];
            v51 = [bundleChannelIDs containsObject:v52];

            if (v51)
            {
              goto LABEL_28;
            }
          }

          else
          {
LABEL_19:
          }
        }

        v39 = NTSharedLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          articleID3 = [v12 articleID];
          *buf = 138543362;
          v57 = articleID3;
          v41 = v39;
          v42 = "user does not have access to %{public}@";
          goto LABEL_25;
        }
      }

      else
      {
        v39 = NTSharedLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          articleID3 = [v12 articleID];
          *buf = 138543362;
          v57 = articleID3;
          v41 = v39;
          v42 = "did not find record for article %{public}@";
LABEL_25:
          _os_log_impl(&dword_25BF21000, v41, OS_LOG_TYPE_DEBUG, v42, buf, 0xCu);
        }
      }

      paidArticle2 = [v12 paidArticle];

      v12 = paidArticle2;
      if (!paidArticle2)
      {
        v8 = v50;
        v11 = v50;
        break;
      }
    }
  }

  v48 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_resolveArticles:()Mastering withPaidAccessChecker:heldArticleRecords:
{
  v8 = a4;
  v9 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__NTPBTodayConfig_Mastering___resolveArticles_withPaidAccessChecker_heldArticleRecords___block_invoke;
  v14[3] = &unk_2799834D0;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  v12 = [a3 fc_arrayByTransformingWithBlock:v14];

  return v12;
}

- (void)nt_resolveFallbacksWithPaidAccessChecker:()Mastering heldArticleRecords:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "paidAccessChecker"];
  *buf = 136315906;
  v3 = "[NTPBTodayConfig(Mastering) nt_resolveFallbacksWithPaidAccessChecker:heldArticleRecords:]";
  v4 = 2080;
  v5 = "NTTodayConfig+Mastering.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

- (void)nt_resolveFallbacksWithPaidAccessChecker:()Mastering heldArticleRecords:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "heldArticleRecords"];
  *buf = 136315906;
  v3 = "[NTPBTodayConfig(Mastering) nt_resolveFallbacksWithPaidAccessChecker:heldArticleRecords:]";
  v4 = 2080;
  v5 = "NTTodayConfig+Mastering.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end