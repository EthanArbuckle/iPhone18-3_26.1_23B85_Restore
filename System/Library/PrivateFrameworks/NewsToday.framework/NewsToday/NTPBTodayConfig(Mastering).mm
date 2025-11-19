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
  obj = [a1 todayQueueConfigs];
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
        v41 = [v9 todaySectionConfigs];
        v10 = [v41 countByEnumeratingWithState:&v47 objects:v56 count:16];
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
                objc_enumerationMutation(v41);
              }

              v14 = *(*(&v47 + 1) + 8 * v13);
              v15 = [v14 sectionType];
              if (v15 == 5)
              {
                v20 = [v14 itemsTodaySectionConfig];
                v43 = 0u;
                v44 = 0u;
                v45 = 0u;
                v46 = 0u;
                v17 = [v20 items];
                v26 = [v17 countByEnumeratingWithState:&v43 objects:v55 count:16];
                if (v26)
                {
                  v27 = v26;
                  v39 = v20;
                  v40 = v13;
                  v28 = *v44;
                  do
                  {
                    for (i = 0; i != v27; ++i)
                    {
                      if (*v44 != v28)
                      {
                        objc_enumerationMutation(v17);
                      }

                      v30 = *(*(&v43 + 1) + 8 * i);
                      v31 = [v30 article];
                      if (v31)
                      {
                        v32 = [a1 _resolveArticle:v31 withPaidAccessChecker:v6 heldArticleRecords:v7];
                        [v30 setArticle:v32];
                      }
                    }

                    v27 = [v17 countByEnumeratingWithState:&v43 objects:v55 count:16];
                  }

                  while (v27);
                  v12 = v38;
                  v20 = v39;
                  v11 = v42;
                  v13 = v40;
                }
              }

              else
              {
                if (v15 == 4)
                {
                  v21 = [v14 personalizedTodaySectionConfig];
                  v22 = [v21 personalizedArticles];
                  [a1 _resolveArticles:v22 withPaidAccessChecker:v6 heldArticleRecords:v7];
                  v24 = v23 = v13;
                  v25 = [v24 mutableCopy];
                  [v21 setPersonalizedArticles:v25];

                  v13 = v23;
                  v17 = [v21 mandatoryArticles];
                  v18 = [a1 _resolveArticles:v17 withPaidAccessChecker:v6 heldArticleRecords:v7];
                  v19 = [v18 mutableCopy];
                  v20 = v21;
                  [v21 setMandatoryArticles:v19];
                }

                else
                {
                  if (v15 != 3)
                  {
                    goto LABEL_33;
                  }

                  v16 = [v14 articleIDsTodaySectionConfig];
                  v17 = [v16 articles];
                  v18 = [a1 _resolveArticles:v17 withPaidAccessChecker:v6 heldArticleRecords:v7];
                  v19 = [v18 mutableCopy];
                  v20 = v16;
                  [v16 setArticles:v19];
                }

                v11 = v42;
              }

LABEL_33:
              ++v13;
            }

            while (v13 != v11);
            v11 = [v41 countByEnumeratingWithState:&v47 objects:v56 count:16];
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

  v10 = [v8 paidArticle];
  v11 = v8;
  if (v10)
  {
    v12 = v10;
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

      v14 = [v12 articleID];
      v15 = [v55 recordWithID:v14];

      if (v15)
      {
        v16 = [v15 isPaid];
        v17 = [v15 isBundlePaid];
        v18 = [v15 sourceChannelTagID];
        v19 = v54;
        v20 = v18;
        v21 = [v19 bundleSubscriptionProvider];
        v22 = [v19 purchaseProvider];
        v23 = v21;
        v24 = v22;
        v25 = v20;
        if ((v16 & 1) == 0 && !v17)
        {
          goto LABEL_28;
        }

        v26 = v16 ^ 1;
        if (!v24)
        {
          v26 = 1;
        }

        if ((v26 & 1) == 0)
        {
          v27 = [v24 purchasedTagIDs];
          v28 = [v27 containsObject:v25];

          if (v28)
          {
LABEL_28:

            v46 = NTSharedLog();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              v47 = [v12 articleID];
              *buf = 138543362;
              v57 = v47;
              _os_log_impl(&dword_25BF21000, v46, OS_LOG_TYPE_DEBUG, "user has access to %{public}@", buf, 0xCu);
            }

            v11 = v12;
            v8 = v50;

            break;
          }
        }

        v29 = v17 ^ 1;
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

          v32 = [v30 bundleSubscription];
          objc_getAssociatedObject(v32, (v32 + 1));
          v33 = v52 = v31;
          v34 = [v33 unsignedIntegerValue];
          v35 = v34;
          objc_getAssociatedObject(v32, ~v34);
          v53 = v19;
          v37 = v36 = v30;
          v38 = [v37 unsignedIntegerValue] ^ v35;

          v30 = v36;
          v19 = v53;

          v31 = v52;
          if (v38)
          {
            v43 = [v30 bundleSubscription];
            v44 = [v43 bundleChannelIDs];
            v51 = [v44 containsObject:v52];

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
          v40 = [v12 articleID];
          *buf = 138543362;
          v57 = v40;
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
          v40 = [v12 articleID];
          *buf = 138543362;
          v57 = v40;
          v41 = v39;
          v42 = "did not find record for article %{public}@";
LABEL_25:
          _os_log_impl(&dword_25BF21000, v41, OS_LOG_TYPE_DEBUG, v42, buf, 0xCu);
        }
      }

      v45 = [v12 paidArticle];

      v12 = v45;
      if (!v45)
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
  v14[4] = a1;
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