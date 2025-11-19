@interface CNAutocompleteCoreAnalyticsUsageMonitorProbe
- (CNAutocompleteCoreAnalyticsUsageMonitorProbe)init;
- (id)bundleIdentifierOfCurrentProcess;
- (id)makeBundleIdentifierOfCurrentProcess;
- (id)sourceKeysForSourceType:(unint64_t)a3;
- (void)recordUserIgnoredPredictionAfterDelay:(double)a3;
- (void)recordUserIgnoredPrefixedResultAfterDelay:(double)a3 batch:(unint64_t)a4;
- (void)recordUserSawResultsConsideredSuggestion:(unint64_t)a3;
- (void)recordUserSelectedIndex:(unint64_t)a3;
- (void)recordUserSelectedPredictionAtIndex:(unint64_t)a3;
- (void)recordUserSelectedResultWithSourceType:(unint64_t)a3;
- (void)recordUserTypedInNumberOfCharacters:(unint64_t)a3;
- (void)sendData;
@end

@implementation CNAutocompleteCoreAnalyticsUsageMonitorProbe

- (CNAutocompleteCoreAnalyticsUsageMonitorProbe)init
{
  v6.receiver = self;
  v6.super_class = CNAutocompleteCoreAnalyticsUsageMonitorProbe;
  v2 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    coreAnalyticsDictionary = v2->_coreAnalyticsDictionary;
    v2->_coreAnalyticsDictionary = v3;
  }

  return v2;
}

- (id)sourceKeysForSourceType:(unint64_t)a3
{
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = v4;
  if ((a3 & 0x40) != 0)
  {
    [v4 addObject:@"calendarServer"];
    if ((a3 & 2) == 0)
    {
LABEL_3:
      if ((a3 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"contacts"];
  if ((a3 & 8) == 0)
  {
LABEL_4:
    if ((a3 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  [v5 addObject:@"directoryServer"];
  if (a3)
  {
LABEL_5:
    [v5 addObject:@"recents"];
  }

LABEL_6:
  if ([CNAutocompleteResult isSourceTypeConsideredSuggestion:a3])
  {
    v6 = CNAutocompleteProbeSourceTypeKeyPureSuggestion;
  }

  else
  {
    if ((a3 & 4) == 0)
    {
      if ((a3 & 0x20) != 0)
      {
        goto LABEL_22;
      }

LABEL_14:
      if ((a3 & 0x10) != 0)
      {
        goto LABEL_23;
      }

LABEL_15:
      if ((a3 & 0x200) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v6 = CNAutocompleteProbeSourceTypeKeySuggestion;
  }

  [v5 addObject:*v6];
  if ((a3 & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_22:
  [v5 addObject:@"supplemental"];
  if ((a3 & 0x10) == 0)
  {
    goto LABEL_15;
  }

LABEL_23:
  [v5 addObject:@"duetPromoted"];
  if ((a3 & 0x200) != 0)
  {
LABEL_16:
    [v5 addObject:@"stewie"];
  }

LABEL_17:
  v7 = [v5 copy];

  return v7;
}

- (void)recordUserSawResultsConsideredSuggestion:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v4 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)self coreAnalyticsDictionary];
  [v4 setObject:v5 forKeyedSubscript:@"prefixedPureSuggestionResultCount"];
}

- (void)recordUserSelectedIndex:(unint64_t)a3
{
  if (a3 > 0x7FFFFFFFFFFFFFFELL)
  {
    v4 = -1;
  }

  else
  {
    v4 = a3;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)self setSelectedIndex:v5];
}

- (void)recordUserTypedInNumberOfCharacters:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)self setLengthOfSearchString:v4];
}

- (void)recordUserSelectedPredictionAtIndex:(unint64_t)a3
{
  if (a3 > 0x7FFFFFFFFFFFFFFELL)
  {
    v4 = -1;
  }

  else
  {
    v4 = a3;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)self setSelectedPredictionIndex:v5];
}

- (void)recordUserSelectedResultWithSourceType:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)self setSourceType:v4];
}

- (void)recordUserIgnoredPredictionAfterDelay:(double)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v4 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)self coreAnalyticsDictionary];
  [v4 setObject:v5 forKeyedSubscript:@"predictionUserIgnoreDelay"];
}

- (void)recordUserIgnoredPrefixedResultAfterDelay:(double)a3 batch:(unint64_t)a4
{
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v7 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)self coreAnalyticsDictionary];
  [v7 setObject:v6 forKeyedSubscript:@"prefixedUserIgnoreDelay"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v8 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)self coreAnalyticsDictionary];
  [v8 setObject:v9 forKeyedSubscript:@"prefixedUserIgnoreDelayBatch"];
}

- (void)sendData
{
  v2 = self;
  v43 = *MEMORY[0x277D85DE8];
  v3 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)self selectedIndex];
  if (v3)
  {
    v4 = v3;
    v5 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)v2 sourceType];
    if (v5)
    {
      v6 = v5;
      v7 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)v2 lengthOfSearchString];

      if (v7)
      {
        v8 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)v2 sourceType];
        v9 = [v8 unsignedIntegerValue];

        if (v9)
        {
          v10 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)v2 selectedIndex];
          v11 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)v2 coreAnalyticsDictionary];
          [v11 setObject:v10 forKeyedSubscript:@"selectedIndex"];
        }

        else
        {
          v10 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)v2 coreAnalyticsDictionary];
          [v10 setObject:&unk_282793640 forKeyedSubscript:@"selectedIndex"];
        }

        v18 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)v2 lengthOfSearchString];
        v19 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)v2 coreAnalyticsDictionary];
        [v19 setObject:v18 forKeyedSubscript:@"stringLength"];

        v20 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)v2 sourceType];
        v21 = -[CNAutocompleteCoreAnalyticsUsageMonitorProbe sourceKeysForSourceType:](v2, "sourceKeysForSourceType:", [v20 unsignedIntegerValue]);

        v22 = v2;
        if (![v21 count])
        {
          v23 = [MEMORY[0x277CBEB98] setWithObject:@"unknown"];

          v21 = v23;
        }

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        obj = v21;
        v24 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v39;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v39 != v26)
              {
                objc_enumerationMutation(obj);
              }

              v28 = [*(*(&v38 + 1) + 8 * i) isEqual:@"duetPromoted"];
              v29 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)v22 coreAnalyticsDictionary];
              v30 = v29;
              if (v28)
              {
                v31 = &unk_282793658;
              }

              else
              {
                v31 = &unk_282793670;
              }

              [v29 setObject:v31 forKeyedSubscript:@"promotedByDuet"];
            }

            v25 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
          }

          while (v25);
        }

        v2 = v22;
        v32 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)v22 bundleIdentifierOfCurrentProcess];
        v33 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)v22 coreAnalyticsDictionary];
        [v33 setObject:v32 forKeyedSubscript:@"bundleId"];

        goto LABEL_23;
      }
    }

    else
    {
    }
  }

  v12 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)v2 selectedPredictionIndex];

  if (v12)
  {
    v13 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)v2 selectedPredictionIndex];
    v14 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)v2 coreAnalyticsDictionary];
    [v14 setObject:v13 forKeyedSubscript:@"selectedPredictionIndex"];

    v15 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)v2 coreAnalyticsDictionary];
    [v15 setObject:&unk_282793658 forKeyedSubscript:@"promotedByDuet"];

    v16 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)v2 bundleIdentifierOfCurrentProcess];
    v17 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)v2 coreAnalyticsDictionary];
    [v17 setObject:v16 forKeyedSubscript:@"bundleId"];
  }

LABEL_23:
  v34 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)v2 coreAnalyticsDictionary];
  v35 = [v34 count];

  if (v35)
  {
    AnalyticsSendEventLazy();
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (id)bundleIdentifierOfCurrentProcess
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__CNAutocompleteCoreAnalyticsUsageMonitorProbe_bundleIdentifierOfCurrentProcess__block_invoke;
  block[3] = &unk_2781C3FB0;
  block[4] = self;
  if (bundleIdentifierOfCurrentProcess_cn_once_token_0 != -1)
  {
    dispatch_once(&bundleIdentifierOfCurrentProcess_cn_once_token_0, block);
  }

  return bundleIdentifierOfCurrentProcess_cn_once_object_0;
}

void __80__CNAutocompleteCoreAnalyticsUsageMonitorProbe_bundleIdentifierOfCurrentProcess__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) makeBundleIdentifierOfCurrentProcess];
  v1 = [v3 copy];
  v2 = bundleIdentifierOfCurrentProcess_cn_once_object_0;
  bundleIdentifierOfCurrentProcess_cn_once_object_0 = v1;
}

- (id)makeBundleIdentifierOfCurrentProcess
{
  v2 = [MEMORY[0x277CC1E88] bundleProxyForCurrentProcess];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 bundleIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end