@interface CNAutocompleteCoreAnalyticsUsageMonitorProbe
- (CNAutocompleteCoreAnalyticsUsageMonitorProbe)init;
- (id)bundleIdentifierOfCurrentProcess;
- (id)makeBundleIdentifierOfCurrentProcess;
- (id)sourceKeysForSourceType:(unint64_t)type;
- (void)recordUserIgnoredPredictionAfterDelay:(double)delay;
- (void)recordUserIgnoredPrefixedResultAfterDelay:(double)delay batch:(unint64_t)batch;
- (void)recordUserSawResultsConsideredSuggestion:(unint64_t)suggestion;
- (void)recordUserSelectedIndex:(unint64_t)index;
- (void)recordUserSelectedPredictionAtIndex:(unint64_t)index;
- (void)recordUserSelectedResultWithSourceType:(unint64_t)type;
- (void)recordUserTypedInNumberOfCharacters:(unint64_t)characters;
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
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    coreAnalyticsDictionary = v2->_coreAnalyticsDictionary;
    v2->_coreAnalyticsDictionary = dictionary;
  }

  return v2;
}

- (id)sourceKeysForSourceType:(unint64_t)type
{
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = v4;
  if ((type & 0x40) != 0)
  {
    [v4 addObject:@"calendarServer"];
    if ((type & 2) == 0)
    {
LABEL_3:
      if ((type & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((type & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"contacts"];
  if ((type & 8) == 0)
  {
LABEL_4:
    if ((type & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  [v5 addObject:@"directoryServer"];
  if (type)
  {
LABEL_5:
    [v5 addObject:@"recents"];
  }

LABEL_6:
  if ([CNAutocompleteResult isSourceTypeConsideredSuggestion:type])
  {
    v6 = CNAutocompleteProbeSourceTypeKeyPureSuggestion;
  }

  else
  {
    if ((type & 4) == 0)
    {
      if ((type & 0x20) != 0)
      {
        goto LABEL_22;
      }

LABEL_14:
      if ((type & 0x10) != 0)
      {
        goto LABEL_23;
      }

LABEL_15:
      if ((type & 0x200) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v6 = CNAutocompleteProbeSourceTypeKeySuggestion;
  }

  [v5 addObject:*v6];
  if ((type & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_22:
  [v5 addObject:@"supplemental"];
  if ((type & 0x10) == 0)
  {
    goto LABEL_15;
  }

LABEL_23:
  [v5 addObject:@"duetPromoted"];
  if ((type & 0x200) != 0)
  {
LABEL_16:
    [v5 addObject:@"stewie"];
  }

LABEL_17:
  v7 = [v5 copy];

  return v7;
}

- (void)recordUserSawResultsConsideredSuggestion:(unint64_t)suggestion
{
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:suggestion];
  coreAnalyticsDictionary = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)self coreAnalyticsDictionary];
  [coreAnalyticsDictionary setObject:v5 forKeyedSubscript:@"prefixedPureSuggestionResultCount"];
}

- (void)recordUserSelectedIndex:(unint64_t)index
{
  if (index > 0x7FFFFFFFFFFFFFFELL)
  {
    indexCopy = -1;
  }

  else
  {
    indexCopy = index;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:indexCopy];
  [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)self setSelectedIndex:v5];
}

- (void)recordUserTypedInNumberOfCharacters:(unint64_t)characters
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:characters];
  [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)self setLengthOfSearchString:v4];
}

- (void)recordUserSelectedPredictionAtIndex:(unint64_t)index
{
  if (index > 0x7FFFFFFFFFFFFFFELL)
  {
    indexCopy = -1;
  }

  else
  {
    indexCopy = index;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:indexCopy];
  [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)self setSelectedPredictionIndex:v5];
}

- (void)recordUserSelectedResultWithSourceType:(unint64_t)type
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)self setSourceType:v4];
}

- (void)recordUserIgnoredPredictionAfterDelay:(double)delay
{
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:delay];
  coreAnalyticsDictionary = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)self coreAnalyticsDictionary];
  [coreAnalyticsDictionary setObject:v5 forKeyedSubscript:@"predictionUserIgnoreDelay"];
}

- (void)recordUserIgnoredPrefixedResultAfterDelay:(double)delay batch:(unint64_t)batch
{
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:delay];
  coreAnalyticsDictionary = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)self coreAnalyticsDictionary];
  [coreAnalyticsDictionary setObject:v6 forKeyedSubscript:@"prefixedUserIgnoreDelay"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:batch];
  coreAnalyticsDictionary2 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)self coreAnalyticsDictionary];
  [coreAnalyticsDictionary2 setObject:v9 forKeyedSubscript:@"prefixedUserIgnoreDelayBatch"];
}

- (void)sendData
{
  selfCopy = self;
  v43 = *MEMORY[0x277D85DE8];
  selectedIndex = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)self selectedIndex];
  if (selectedIndex)
  {
    v4 = selectedIndex;
    sourceType = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)selfCopy sourceType];
    if (sourceType)
    {
      v6 = sourceType;
      lengthOfSearchString = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)selfCopy lengthOfSearchString];

      if (lengthOfSearchString)
      {
        sourceType2 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)selfCopy sourceType];
        unsignedIntegerValue = [sourceType2 unsignedIntegerValue];

        if (unsignedIntegerValue)
        {
          selectedIndex2 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)selfCopy selectedIndex];
          coreAnalyticsDictionary = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)selfCopy coreAnalyticsDictionary];
          [coreAnalyticsDictionary setObject:selectedIndex2 forKeyedSubscript:@"selectedIndex"];
        }

        else
        {
          selectedIndex2 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)selfCopy coreAnalyticsDictionary];
          [selectedIndex2 setObject:&unk_282793640 forKeyedSubscript:@"selectedIndex"];
        }

        lengthOfSearchString2 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)selfCopy lengthOfSearchString];
        coreAnalyticsDictionary2 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)selfCopy coreAnalyticsDictionary];
        [coreAnalyticsDictionary2 setObject:lengthOfSearchString2 forKeyedSubscript:@"stringLength"];

        sourceType3 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)selfCopy sourceType];
        v21 = -[CNAutocompleteCoreAnalyticsUsageMonitorProbe sourceKeysForSourceType:](selfCopy, "sourceKeysForSourceType:", [sourceType3 unsignedIntegerValue]);

        v22 = selfCopy;
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
              coreAnalyticsDictionary3 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)v22 coreAnalyticsDictionary];
              v30 = coreAnalyticsDictionary3;
              if (v28)
              {
                v31 = &unk_282793658;
              }

              else
              {
                v31 = &unk_282793670;
              }

              [coreAnalyticsDictionary3 setObject:v31 forKeyedSubscript:@"promotedByDuet"];
            }

            v25 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
          }

          while (v25);
        }

        selfCopy = v22;
        bundleIdentifierOfCurrentProcess = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)v22 bundleIdentifierOfCurrentProcess];
        coreAnalyticsDictionary4 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)v22 coreAnalyticsDictionary];
        [coreAnalyticsDictionary4 setObject:bundleIdentifierOfCurrentProcess forKeyedSubscript:@"bundleId"];

        goto LABEL_23;
      }
    }

    else
    {
    }
  }

  selectedPredictionIndex = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)selfCopy selectedPredictionIndex];

  if (selectedPredictionIndex)
  {
    selectedPredictionIndex2 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)selfCopy selectedPredictionIndex];
    coreAnalyticsDictionary5 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)selfCopy coreAnalyticsDictionary];
    [coreAnalyticsDictionary5 setObject:selectedPredictionIndex2 forKeyedSubscript:@"selectedPredictionIndex"];

    coreAnalyticsDictionary6 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)selfCopy coreAnalyticsDictionary];
    [coreAnalyticsDictionary6 setObject:&unk_282793658 forKeyedSubscript:@"promotedByDuet"];

    bundleIdentifierOfCurrentProcess2 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)selfCopy bundleIdentifierOfCurrentProcess];
    coreAnalyticsDictionary7 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)selfCopy coreAnalyticsDictionary];
    [coreAnalyticsDictionary7 setObject:bundleIdentifierOfCurrentProcess2 forKeyedSubscript:@"bundleId"];
  }

LABEL_23:
  coreAnalyticsDictionary8 = [(CNAutocompleteCoreAnalyticsUsageMonitorProbe *)selfCopy coreAnalyticsDictionary];
  v35 = [coreAnalyticsDictionary8 count];

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
  bundleProxyForCurrentProcess = [MEMORY[0x277CC1E88] bundleProxyForCurrentProcess];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleIdentifier = [bundleProxyForCurrentProcess bundleIdentifier];
  }

  else
  {
    bundleIdentifier = 0;
  }

  return bundleIdentifier;
}

@end