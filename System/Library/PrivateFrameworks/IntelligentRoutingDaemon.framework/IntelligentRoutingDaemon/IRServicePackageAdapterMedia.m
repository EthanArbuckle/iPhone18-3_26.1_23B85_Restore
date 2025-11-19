@interface IRServicePackageAdapterMedia
+ (id)_getUniqueAirplayRoutsFromCandidateIdentifiers:(id)a3 inCandiateContainer:(id)a4;
- (BOOL)shouldAskForLowLatencyMiLo:(id)a3 historyEventsAsc:(id)a4;
- (BOOL)shouldRejectEvent:(id)a3 withHistoryEventsContainer:(id)a4 withSystemState:(id)a5 forCandidate:(id)a6 date:(id)a7;
- (IRServicePackageAdapterMedia)init;
- (NSDictionary)contexts;
- (NSDictionary)policyInspections;
- (id)_getGeneralWeeklyAnalyticsWithWeeklyHistory:(id)a3 withCandidatesContainer:(id)a4;
- (id)_getUIWeeklyAnalyticsWithWeeklyHistory:(id)a3;
- (id)_getWeeklyAnalyticsFromStatistics:(id)a3 candidatesContainer:(id)a4;
- (id)filterHistory:(id)a3 withCandidatesContainer:(id)a4;
- (id)getSignificantBundlesWithCandidates:(id)a3 fromHistory:(id)a4;
- (id)uiAnalyticsWithEvent:(id)a3 forCandidateIdentifier:(id)a4 systemStateManager:(id)a5 candidatesContainer:(id)a6 inspections:(id)a7 statisticsManager:(id)a8 service:(id)a9 historyEventsContainer:(id)a10;
- (id)weeklyAnalyticsWithServiceStore:(id)a3 statistics:(id)a4 service:(id)a5;
@end

@implementation IRServicePackageAdapterMedia

- (NSDictionary)contexts
{
  v2 = [(IRServicePackageAdapterMedia *)self generator];
  v3 = [v2 contexts];

  return v3;
}

- (IRServicePackageAdapterMedia)init
{
  v5.receiver = self;
  v5.super_class = IRServicePackageAdapterMedia;
  v2 = [(IRServicePackageAdapterMedia *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(IRClassificationGenerator);
    [(IRServicePackageAdapterMedia *)v2 setGenerator:v3];
  }

  return v2;
}

- (NSDictionary)policyInspections
{
  v2 = [(IRServicePackageAdapterMedia *)self generator];
  v3 = [v2 policyInspections];

  return v3;
}

- (id)filterHistory:(id)a3 withCandidatesContainer:(id)a4
{
  v139 = *MEMORY[0x277D85DE8];
  v115 = a3;
  v113 = a4;
  v5 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v6 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = v6;
    v9 = [v115 historyEvents];
    v10 = [v7 numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
    *buf = 136315650;
    *&buf[4] = "#service-package-adapter-media, ";
    *&buf[12] = 2112;
    *&buf[14] = v5;
    *&buf[22] = 2112;
    v138 = v10;
    _os_log_impl(&dword_25543D000, v8, OS_LOG_TYPE_INFO, "%s[%@], Number of history events before filtering = %@", buf, 0x20u);
  }

  v11 = MEMORY[0x277CBEB18];
  v12 = [v115 historyEvents];
  v13 = [v11 arrayWithArray:v12];

  if ([&unk_286768F20 count])
  {
    v116 = 0;
    do
    {
      v117 = objc_opt_new();
      v14 = [&unk_286768F20 objectAtIndexedSubscript:v116];
      v118 = [v14 integerValue];

      v15 = [&unk_286768F20 count];
      v16 = ++v116 / v15;
      v17 = [&unk_286768F20 objectAtIndexedSubscript:v116 - v16 * v15];
      v123 = [v17 integerValue];

      if ([v13 count])
      {
        v18 = 0;
        do
        {
          v19 = [v13 objectAtIndexedSubscript:{v18, v113}];
          v20 = [v19 event];
          v21 = [v20 eventType] == v118;

          v120 = v18 + 1;
          if (v21 && v120 < [v13 count])
          {
            for (i = v18 + 1; i < [v13 count]; ++i)
            {
              v23 = [v13 objectAtIndexedSubscript:i];
              v24 = [v23 date];
              v25 = [v13 objectAtIndexedSubscript:v18];
              v26 = [v25 date];
              [v24 timeIntervalSinceDate:v26];
              v28 = v27;
              v29 = +[IRPreferences shared];
              v30 = [v29 mediaPlaybackEventsTimeIntervalThreshold];
              [v30 doubleValue];
              v32 = v28 < v31;

              if (!v32)
              {
                break;
              }

              v33 = [v13 objectAtIndexedSubscript:i];
              v34 = [v33 event];
              v35 = [v34 eventType] == v123;

              if (v35)
              {
                v36 = [v13 objectAtIndexedSubscript:i];
                v37 = [v36 candidateIdentifier];
                v38 = [v13 objectAtIndexedSubscript:v18];
                v39 = [v38 candidateIdentifier];
                v40 = [v37 isEqual:v39];

                if (v40)
                {
                  v41 = [v13 objectAtIndexedSubscript:i];
                  v42 = [v41 event];
                  v43 = [v42 bundleID];

                  v44 = [v13 objectAtIndexedSubscript:v18];
                  v45 = [v44 event];
                  v46 = [v45 bundleID];

                  if ([v43 isEqual:v46] && (objc_msgSend(v117, "containsIndex:", i) & 1) == 0)
                  {
                    [v117 addIndex:v18];
                    [v117 addIndex:i];

                    break;
                  }
                }
              }
            }
          }

          ++v18;
        }

        while (v120 < [v13 count]);
      }

      [v13 removeObjectsAtIndexes:{v117, v113}];
    }

    while (v116 < [&unk_286768F20 count]);
  }

  v47 = +[IREventDO mediaUserInteractionEvents];
  v124 = [v47 compactMap:&__block_literal_global_14];

  v119 = objc_opt_new();
  if ([v13 count])
  {
    v48 = 0;
    v121 = 1;
    do
    {
      v49 = MEMORY[0x277CCABB0];
      v50 = [v13 objectAtIndexedSubscript:v48];
      v51 = [v50 event];
      v52 = [v49 numberWithLongLong:{objc_msgSend(v51, "eventType")}];
      LODWORD(v49) = [v124 containsObject:v52];

      if (v49)
      {
        v53 = v121;
        while (v53 < [v13 count])
        {
          v54 = [v13 objectAtIndexedSubscript:v53];
          v55 = [v54 date];
          v56 = [v13 objectAtIndexedSubscript:v48];
          v57 = [v56 date];
          [v55 timeIntervalSinceDate:v57];
          v59 = v58;
          v60 = +[IRPreferences shared];
          v61 = [v60 mediaRulesFilterAnyMultipleEventsTimeIntervalInSeconds];
          [v61 doubleValue];
          v63 = v59 < v62;

          if (!v63)
          {
            break;
          }

          v64 = MEMORY[0x277CCABB0];
          v65 = [v13 objectAtIndexedSubscript:v53];
          v66 = [v65 event];
          v67 = [v64 numberWithLongLong:{objc_msgSend(v66, "eventType")}];
          LODWORD(v64) = [v124 containsObject:v67];

          ++v53;
          if (v64)
          {
            [v119 addIndex:v48];
            break;
          }
        }
      }

      ++v48;
      ++v121;
    }

    while (v48 < [v13 count]);
  }

  [v13 removeObjectsAtIndexes:v119];
  [v119 removeAllIndexes];
  if ([v13 count])
  {
    v68 = 0;
    do
    {
      v69 = MEMORY[0x277CCABB0];
      v70 = [v13 objectAtIndexedSubscript:v68];
      v71 = [v70 event];
      v72 = [v69 numberWithLongLong:{objc_msgSend(v71, "eventType")}];
      LODWORD(v69) = [v124 containsObject:v72];

      v122 = v68 + 1;
      if (v69 && v122 < [v13 count])
      {
        for (j = v68 + 1; j < [v13 count]; ++j)
        {
          v74 = [v13 objectAtIndexedSubscript:j];
          v75 = [v74 date];
          v76 = [v13 objectAtIndexedSubscript:v68];
          v77 = [v76 date];
          [v75 timeIntervalSinceDate:v77];
          v79 = v78;
          v80 = +[IRPreferences shared];
          v81 = [v80 mediaRulesFilterSimilarMultipleEventsTimeIntervalInSeconds];
          [v81 doubleValue];
          v83 = v79 < v82;

          if (!v83)
          {
            break;
          }

          v84 = MEMORY[0x277CCABB0];
          v85 = [v13 objectAtIndexedSubscript:j];
          v86 = [v85 event];
          v87 = [v84 numberWithLongLong:{objc_msgSend(v86, "eventType")}];
          LODWORD(v84) = [v124 containsObject:v87];

          if (v84)
          {
            v88 = [v13 objectAtIndexedSubscript:j];
            v89 = [v88 candidateIdentifier];
            v90 = [v13 objectAtIndexedSubscript:v68];
            v91 = [v90 candidateIdentifier];
            v92 = [v89 isEqual:v91];

            if (v92)
            {
              v93 = [v13 objectAtIndexedSubscript:j];
              v94 = [v93 event];
              v95 = [v94 bundleID];

              v96 = [v13 objectAtIndexedSubscript:v68];
              v97 = [v96 event];
              v98 = [v97 bundleID];

              if ([v95 isEqual:v98])
              {
                [v119 addIndex:v68];

                break;
              }
            }
          }
        }
      }

      ++v68;
    }

    while (v122 < [v13 count]);
  }

  [v13 removeObjectsAtIndexes:v119];
  v99 = +[IREventDO mediaBrokeredDeviceEvents];
  v100 = [v99 compactMap:&__block_literal_global_27_0];

  [v119 removeAllIndexes];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v138) = 0;
  v125[0] = MEMORY[0x277D85DD0];
  v125[1] = 3221225472;
  v125[2] = __70__IRServicePackageAdapterMedia_filterHistory_withCandidatesContainer___block_invoke_3;
  v125[3] = &unk_2797E1C90;
  v101 = v100;
  v126 = v101;
  v130 = buf;
  v102 = v114;
  v127 = v102;
  v103 = v124;
  v128 = v103;
  v104 = v119;
  v129 = v104;
  [v13 enumerateObjectsWithOptions:2 usingBlock:v125];
  [v13 removeObjectsAtIndexes:v104];
  v105 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v106 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
  {
    v107 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
    *v131 = 136315650;
    v132 = "#service-package-adapter-media, ";
    v133 = 2112;
    v134 = v105;
    v135 = 2112;
    v136 = v107;
    _os_log_impl(&dword_25543D000, v106, OS_LOG_TYPE_INFO, "%s[%@], Number of history events after filtering = %@", v131, 0x20u);
  }

  v108 = [IRHistoryEventsContainerDO alloc];
  v109 = [v13 copy];
  v110 = [(IRHistoryEventsContainerDO *)v108 initWithHistoryEvents:v109];

  _Block_object_dispose(buf, 8);
  v111 = *MEMORY[0x277D85DE8];

  return v110;
}

uint64_t __70__IRServicePackageAdapterMedia_filterHistory_withCandidatesContainer___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 eventType];

  return [v2 numberWithLongLong:v3];
}

uint64_t __70__IRServicePackageAdapterMedia_filterHistory_withCandidatesContainer___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 eventType];

  return [v2 numberWithLongLong:v3];
}

void __70__IRServicePackageAdapterMedia_filterHistory_withCandidatesContainer___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = MEMORY[0x277CCABB0];
  v18 = v5;
  v8 = [v5 event];
  v9 = [v7 numberWithLongLong:{objc_msgSend(v8, "eventType")}];
  LODWORD(v6) = [v6 containsObject:v9];

  if (v6)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v10 = *(a1 + 40);
    v11 = [v18 candidateIdentifier];
    v12 = [v10 candidateForCandidateIdentifier:v11];
    v13 = [v12 isBrokeredDevice];

    if (v13)
    {
      v14 = *(a1 + 48);
      v15 = MEMORY[0x277CCABB0];
      v16 = [v18 event];
      v17 = [v15 numberWithLongLong:{objc_msgSend(v16, "eventType")}];
      LODWORD(v14) = [v14 containsObject:v17];

      if (v14)
      {
        [*(a1 + 56) addIndex:a3];
      }
    }
  }
}

- (BOOL)shouldAskForLowLatencyMiLo:(id)a3 historyEventsAsc:(id)a4
{
  v5 = MEMORY[0x277CBEB58];
  v6 = a4;
  v7 = a3;
  v8 = [v5 set];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__IRServicePackageAdapterMedia_shouldAskForLowLatencyMiLo_historyEventsAsc___block_invoke;
  v16[3] = &unk_2797E1A28;
  v9 = v8;
  v17 = v9;
  [v6 enumerateObjectsWithOptions:2 usingBlock:v16];

  v10 = [v7 candidates];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__IRServicePackageAdapterMedia_shouldAskForLowLatencyMiLo_historyEventsAsc___block_invoke_2;
  v14[3] = &unk_2797E0CD0;
  v15 = v9;
  v11 = v9;
  v12 = [v10 firstWhere:v14];
  LOBYTE(v9) = v12 != 0;

  return v9;
}

void __76__IRServicePackageAdapterMedia_shouldAskForLowLatencyMiLo_historyEventsAsc___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = a2;
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = [v17 date];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;
  v10 = +[IRPreferences shared];
  v11 = [v10 candidateLastUsedThrForMiLoLowLatancyPowerOpt];
  [v11 doubleValue];
  v13 = v12;

  if (v9 >= v13)
  {
    *a4 = 1;
  }

  else
  {
    v14 = [v17 systemState];
    if ([v14 isMiLoSupportedLocation])
    {
      v15 = [v17 candidateIdentifier];

      if (!v15)
      {
        goto LABEL_7;
      }

      v16 = *(a1 + 32);
      v14 = [v17 candidateIdentifier];
      [v16 addObject:v14];
    }
  }

LABEL_7:
}

uint64_t __76__IRServicePackageAdapterMedia_shouldAskForLowLatencyMiLo_historyEventsAsc___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 containsAirplayTarget])
  {
    v4 = *(a1 + 32);
    v5 = [v3 candidateIdentifier];
    v6 = [v4 containsObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldRejectEvent:(id)a3 withHistoryEventsContainer:(id)a4 withSystemState:(id)a5 forCandidate:(id)a6 date:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (+[IRPlatformInfo isIOS](IRPlatformInfo, "isIOS") && ![v13 displayOn])
  {
    v24 = 1;
  }

  else if (([v14 isMediaRemoteLocal] & 1) != 0 || (objc_msgSend(v14, "candidateIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqual:", @"speaker"), v16, v17))
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 1;
    if (+[IRPlatformInfo isTVOS])
    {
      v18 = +[IRPreferences shared];
      v19 = [v18 mediaRulesFilterAnyMultipleEventsTimeIntervalInSeconds];
      [v19 doubleValue];
      v21 = [v15 dateByAddingTimeInterval:-v20];

      v22 = [v12 historyEvents];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __111__IRServicePackageAdapterMedia_shouldRejectEvent_withHistoryEventsContainer_withSystemState_forCandidate_date___block_invoke;
      v26[3] = &unk_2797E18B0;
      v23 = v21;
      v27 = v23;
      v28 = &v29;
      [v22 enumerateObjectsWithOptions:2 usingBlock:v26];
    }

    v24 = *(v30 + 24);
    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

void __111__IRServicePackageAdapterMedia_shouldRejectEvent_withHistoryEventsContainer_withSystemState_forCandidate_date___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v11 = v6;
  v8 = [v6 date];
  LOBYTE(v7) = [v7 isLaterThan:v8];

  if ((v7 & 1) == 0)
  {
    v9 = [v11 event];
    v10 = [v9 isUserIntentionEvent];

    if (!v10)
    {
      goto LABEL_5;
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  *a4 = 1;
LABEL_5:
}

- (id)getSignificantBundlesWithCandidates:(id)a3 fromHistory:(id)a4
{
  v6 = a4;
  v7 = [a3 airplayOrUnknownCandidates];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = +[IRPreferences shared];
  v11 = [v10 startDateForSignificantBundlesLookup];

  v12 = [v6 historyEvents];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __80__IRServicePackageAdapterMedia_getSignificantBundlesWithCandidates_fromHistory___block_invoke;
  v22[3] = &unk_2797E1CB8;
  v22[4] = self;
  v23 = v7;
  v24 = v11;
  v25 = v9;
  v13 = v8;
  v26 = v13;
  v14 = v9;
  v15 = v11;
  v16 = v7;
  [v12 enumerateObjectsUsingBlock:v22];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __80__IRServicePackageAdapterMedia_getSignificantBundlesWithCandidates_fromHistory___block_invoke_45;
  v20[3] = &unk_2797E1CE0;
  v21 = v13;
  v17 = v13;
  v18 = [v14 compactMap:v20];

  return v18;
}

void __80__IRServicePackageAdapterMedia_getSignificantBundlesWithCandidates_fromHistory___block_invoke(void *a1, void *a2)
{
  v26 = a2;
  v3 = [v26 event];
  v4 = [v3 bundleID];

  if (v4)
  {
    v5 = a1[4];
    v6 = [v26 event];
    LODWORD(v5) = [v5 shouldConsiderEventForSignificantBundles:v6];

    if (v5)
    {
      v7 = [v26 candidateIdentifier];
      v8 = [IRCandidateDO candidateForIdentifier:v7 within:a1[5]];

      if (!v8)
      {
        goto LABEL_14;
      }

      v9 = [v26 date];
      v10 = [v9 isLaterThan:a1[6]];

      if (!v10)
      {
        goto LABEL_14;
      }

      v11 = a1[7];
      v12 = [v26 event];
      v13 = [v12 bundleID];
      [v11 addObject:v13];

      v14 = [v8 nodes];
      LODWORD(v12) = [v14 containsObjectPassingTest:&__block_literal_global_41];

      v15 = a1[8];
      v16 = [v26 event];
      v17 = [v16 bundleID];
      v18 = [v15 objectForKeyedSubscript:v17];

      if (v12)
      {
        if (!v18)
        {
          v25 = a1[8];
          v21 = [v26 event];
          v23 = [v21 bundleID];
          [v25 setObject:&unk_286769088 forKeyedSubscript:v23];
          goto LABEL_12;
        }

        v19 = MEMORY[0x277CCABB0];
        v20 = [v18 integerValue] + 1;
      }

      else
      {
        if (!v18)
        {
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v19 = MEMORY[0x277CCABB0];
        v20 = [v18 integerValue] - 1;
      }

      v21 = [v19 numberWithInteger:v20];
      v22 = a1[8];
      v23 = [v26 event];
      v24 = [v23 bundleID];
      [v22 setObject:v21 forKeyedSubscript:v24];

LABEL_12:
      goto LABEL_13;
    }
  }

LABEL_15:
}

BOOL __80__IRServicePackageAdapterMedia_getSignificantBundlesWithCandidates_fromHistory___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 avOutputDevice];

  if (v3)
  {
    v4 = [v2 avOutputDevice];
    if ([v4 deviceType])
    {
      v5 = 0;
    }

    else
    {
      v6 = [v2 avOutputDevice];
      if ([v6 deviceSubType] == 11)
      {
        v5 = 1;
      }

      else
      {
        v7 = [v2 avOutputDevice];
        if ([v7 deviceSubType] == 13)
        {
          v5 = 1;
        }

        else
        {
          v8 = [v2 avOutputDevice];
          v5 = [v8 deviceSubType] == 17;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __80__IRServicePackageAdapterMedia_getSignificantBundlesWithCandidates_fromHistory___block_invoke_45(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 objectForKeyedSubscript:v3];

  v4 = [objc_alloc(MEMORY[0x277D212C0]) initWithBundleType:2 andIdentifier:v3];

  return v4;
}

- (id)weeklyAnalyticsWithServiceStore:(id)a3 statistics:(id)a4 service:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[IRPreferences shared];
  v12 = [v11 numberOfHistoryEventsInCache];
  v13 = [v10 fetchHistoryEventsContainerWithLimit:{objc_msgSend(v12, "unsignedIntegerValue")}];

  v14 = [v10 fetchCandidatesContainer];

  v15 = [MEMORY[0x277CBEAA8] date];
  v16 = [v13 historyEvents];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __96__IRServicePackageAdapterMedia_IRAnalytics__weeklyAnalyticsWithServiceStore_statistics_service___block_invoke;
  v29[3] = &unk_2797E1868;
  v17 = v15;
  v30 = v17;
  v18 = [v16 allWhere:v29];
  v19 = [IRHistoryEventsContainerDO historyEventsContainerDOWithHistoryEvents:v18];

  v20 = [(IRServicePackageAdapterMedia *)self filterHistory:v19 withCandidatesContainer:v14];

  v21 = [MEMORY[0x277CBEB38] dictionary];
  v22 = [v8 clientIdentifier];
  if (v22)
  {
    v23 = [v8 clientIdentifier];
    [v21 setObject:v23 forKeyedSubscript:@"General_Weekly_Client_Identifier"];
  }

  else
  {
    [v21 setObject:&stru_286755D18 forKeyedSubscript:@"General_Weekly_Client_Identifier"];
  }

  v24 = [(IRServicePackageAdapterMedia *)self _getUIWeeklyAnalyticsWithWeeklyHistory:v20];
  [v21 addEntriesFromDictionary:v24];

  v25 = [(IRServicePackageAdapterMedia *)self _getGeneralWeeklyAnalyticsWithWeeklyHistory:v20 withCandidatesContainer:v14];
  [v21 addEntriesFromDictionary:v25];

  v26 = [(IRServicePackageAdapterMedia *)self _getWeeklyAnalyticsFromStatistics:v9 candidatesContainer:v14];

  [v21 addEntriesFromDictionary:v26];
  v27 = [v21 copy];

  return v27;
}

uint64_t __96__IRServicePackageAdapterMedia_IRAnalytics__weeklyAnalyticsWithServiceStore_statistics_service___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 date];
  v4 = +[IRPreferences shared];
  v5 = [v4 coreAnalyticsXPCHistoryEventsValidThreshold];
  [v5 doubleValue];
  v6 = [v3 dateByAddingTimeInterval:?];
  v7 = [v2 isEarlierThanOrEqualTo:v6];

  return v7;
}

- (id)_getUIWeeklyAnalyticsWithWeeklyHistory:(id)a3
{
  v50[10] = *MEMORY[0x277D85DE8];
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v26 = a3;
  v3 = [v26 historyEvents];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __84__IRServicePackageAdapterMedia_IRAnalytics___getUIWeeklyAnalyticsWithWeeklyHistory___block_invoke;
  v28[3] = &unk_2797E1D08;
  v28[4] = &v45;
  v28[5] = &v41;
  v28[6] = &v37;
  v28[7] = &v33;
  v28[8] = &v29;
  [v3 enumerateObjectsUsingBlock:v28];

  v4 = v46[3];
  v5 = v42[3] + v4;
  if (v5)
  {
    v6 = 100 * v4 / v5;
  }

  else
  {
    v6 = 200;
  }

  v7 = v38[3];
  v8 = v34[3] + v7;
  if (v8)
  {
    v9 = 100 * v7 / v8;
  }

  else
  {
    v9 = 200;
  }

  v11 = v7 + v5;
  v10 = v11 == 0;
  v12 = 100 * v5 / v11;
  if (v10)
  {
    v13 = 200;
  }

  else
  {
    v13 = v12;
  }

  v49[0] = @"Autoroute_UI_Weekly_Accepted";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v50[0] = v27;
  v49[1] = @"Autoroute_UI_Weekly_Rejected";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v42[3]];
  v50[1] = v14;
  v49[2] = @"Autoroute_UI_Weekly_Prompt";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v50[2] = v15;
  v49[3] = @"Autoroute_UI_Weekly_Accepted_Ratio";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v50[3] = v16;
  v49[4] = @"OneTap_UI_Weekly_Accepted";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v38[3]];
  v50[4] = v17;
  v49[5] = @"OneTap_UI_Weekly_Rejected";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v34[3]];
  v50[5] = v18;
  v49[6] = @"OneTap_UI_Weekly_Prompt";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v50[6] = v19;
  v49[7] = @"OneTap_UI_Weekly_Accepted_Ratio";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  v50[7] = v20;
  v49[8] = @"Autoroute_To_OneTap_UI_Weekly_Ratio";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  v50[8] = v21;
  v49[9] = @"PickerTop_UI_Weekly_Prompt";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30[3]];
  v50[9] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:10];

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

void __84__IRServicePackageAdapterMedia_IRAnalytics___getUIWeeklyAnalyticsWithWeeklyHistory___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 event];
  v4 = [v3 eventType];

  if (v4 == 1)
  {
    v5 = 32;
LABEL_11:
    v13 = v16;
LABEL_12:
    ++*(*(*(a1 + v5) + 8) + 24);
    goto LABEL_13;
  }

  v6 = [v16 event];
  v7 = [v6 eventType];

  if (v7 == 2)
  {
    v5 = 40;
    goto LABEL_11;
  }

  v8 = [v16 event];
  v9 = [v8 eventType];

  if (v9 == 3)
  {
    v5 = 48;
    goto LABEL_11;
  }

  v10 = [v16 event];
  if ([v10 eventType] == 4)
  {

LABEL_10:
    v5 = 56;
    goto LABEL_11;
  }

  v11 = [v16 event];
  v12 = [v11 eventType];

  if (v12 == 8)
  {
    goto LABEL_10;
  }

  v14 = [v16 event];
  v15 = [v14 eventType];

  v13 = v16;
  if (!v15)
  {
    v5 = 64;
    goto LABEL_12;
  }

LABEL_13:
}

- (id)_getGeneralWeeklyAnalyticsWithWeeklyHistory:(id)a3 withCandidatesContainer:(id)a4
{
  v96[13] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v32 = v5;
  v7 = [v5 historyEvents];
  v8 = [v7 count];

  v91 = 0;
  v92 = &v91;
  v93 = 0x2020000000;
  v94 = 200;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__10;
  v81 = __Block_byref_object_dispose__10;
  v82 = [MEMORY[0x277CBEB58] set];
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__10;
  v75 = __Block_byref_object_dispose__10;
  v76 = [MEMORY[0x277CBEB58] set];
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__10;
  v69 = __Block_byref_object_dispose__10;
  v70 = [MEMORY[0x277CBEB18] array];
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v9 = [v5 historyEvents];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __113__IRServicePackageAdapterMedia_IRAnalytics___getGeneralWeeklyAnalyticsWithWeeklyHistory_withCandidatesContainer___block_invoke;
  v60[3] = &unk_2797E1D30;
  v60[4] = &v91;
  v60[5] = &v65;
  v60[6] = &v87;
  v60[7] = &v83;
  v60[8] = &v71;
  v60[9] = &v77;
  v60[10] = &v61;
  [v9 enumerateObjectsUsingBlock:v60];

  v10 = [v78[5] count];
  v11 = [v72[5] count];
  v26 = [IRServicePackageAdapterMedia _getUniqueAirplayRoutsFromCandidateIdentifiers:v72[5] inCandiateContainer:v6];
  v27 = [v26 count];
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v12 = v66[5];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __113__IRServicePackageAdapterMedia_IRAnalytics___getGeneralWeeklyAnalyticsWithWeeklyHistory_withCandidatesContainer___block_invoke_2;
  v33[3] = &unk_2797E1D58;
  v25 = v6;
  v34 = v25;
  v35 = &v56;
  v36 = &v40;
  v37 = &v52;
  v38 = &v48;
  v39 = &v44;
  [v12 enumerateObjectsUsingBlock:v33];
  v95[0] = @"General_Weekly_N_events";
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v96[0] = v31;
  v95[1] = @"General_Weekly_N_days_since_last_brokered_scan";
  v30 = [MEMORY[0x277CCABB0] numberWithInteger:v92[3]];
  v96[1] = v30;
  v95[2] = @"General_Weekly_N_playbacks_with_milo";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v88[3]];
  v96[2] = v29;
  v95[3] = @"General_Is_Milo_Available_Weekly";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v84[3]];
  v96[3] = v13;
  v95[4] = @"General_N_Routes_In_History_Weekly";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  v96[4] = v14;
  v95[5] = @"General_N_Routes_used_With_Milo_Weekly";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  v96[5] = v15;
  v95[6] = @"General_N_airplay_Routes_Weekly";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v27];
  v96[6] = v16;
  v95[7] = @"General_N_airplay_playback_events_Weekly";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v57[3]];
  v96[7] = v17;
  v95[8] = @"General_N_airplay_playback_events_custom_loi_Weekly";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v53[3]];
  v96[8] = v18;
  v95[9] = @"General_Have_BLE_headphones_Weekly";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v62[3]];
  v96[9] = v19;
  v95[10] = @"General_N_airplay_playback_events_Milo_Weekly";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v49[3]];
  v96[10] = v20;
  v95[11] = @"General_N_airplay_playback_events_Milo_Eligible_App_Weekly";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v45[3]];
  v96[11] = v21;
  v95[12] = @"General_N_airplay_playback_events_Eligible_App_Weekly";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v41[3]];
  v96[12] = v22;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:13];

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v65, 8);

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v77, 8);

  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(&v91, 8);

  v23 = *MEMORY[0x277D85DE8];

  return v28;
}

void __113__IRServicePackageAdapterMedia_IRAnalytics___getGeneralWeeklyAnalyticsWithWeeklyHistory_withCandidatesContainer___block_invoke(void *a1, void *a2)
{
  v26 = a2;
  v3 = [v26 event];
  v4 = [v3 eventType];

  if (v4 == 9)
  {
    v5 = MEMORY[0x277CBEAA8];
    v6 = [v26 date];
    v7 = [MEMORY[0x277CBEAA8] now];
    *(*(a1[4] + 8) + 24) = [v5 daysFromDate:v6 toDate:v7];
  }

  v8 = [v26 event];
  v9 = [v8 eventType];

  if (v9 == 5)
  {
    [*(*(a1[5] + 8) + 40) addObject:v26];
    v10 = [v26 miloPredictionEvent];
    v11 = [v10 predictionId];

    if (v11)
    {
      ++*(*(a1[6] + 8) + 24);
    }
  }

  v12 = [v26 systemState];
  v13 = [v12 locationSemanticUserSpecificPlaceType];

  if (v13 == 1)
  {
    *(*(a1[7] + 8) + 24) = 1;
    v14 = [v26 candidateIdentifier];

    if (v14)
    {
      v15 = *(*(a1[8] + 8) + 40);
      v16 = [v26 candidateIdentifier];
      [v15 addObject:v16];
    }
  }

  v17 = [v26 candidateIdentifier];

  if (v17)
  {
    v18 = *(*(a1[9] + 8) + 40);
    v19 = [v26 candidateIdentifier];
    [v18 addObject:v19];
  }

  v20 = [v26 systemState];
  if ([v20 outputDeviceType] == 1)
  {
    v21 = [v26 systemState];
    if ([v21 outputDeviceSubType] == 3)
    {

LABEL_18:
      *(*(a1[10] + 8) + 24) = 1;
      goto LABEL_19;
    }

    v24 = [v26 systemState];
    v25 = [v24 outputDeviceSubType];

    if (v25 == 2)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v22 = [v26 systemState];
  v23 = [v22 predictedOutputDeviceType];

  if (v23 == 1)
  {
    goto LABEL_18;
  }

LABEL_19:
}

void __113__IRServicePackageAdapterMedia_IRAnalytics___getGeneralWeeklyAnalyticsWithWeeklyHistory_withCandidatesContainer___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v13 = v3;
  v5 = [v3 candidateIdentifier];
  v6 = [v4 candidateForCandidateIdentifier:v5];

  if (v6 && [v6 containsAirplayTarget])
  {
    ++*(*(a1[5] + 8) + 24);
    v7 = [v13 event];
    v8 = [v7 isEligibleApp];

    if (v8)
    {
      ++*(*(a1[6] + 8) + 24);
    }

    v9 = [v13 systemState];
    v10 = [v9 locationSemanticUserSpecificPlaceType];

    if (v10 == 5)
    {
      ++*(*(a1[7] + 8) + 24);
    }

    v11 = [v13 systemState];
    v12 = [v11 locationSemanticUserSpecificPlaceType];

    if (v12 == 1)
    {
      ++*(*(a1[8] + 8) + 24);
      if (v8)
      {
        ++*(*(a1[9] + 8) + 24);
      }
    }
  }
}

- (id)_getWeeklyAnalyticsFromStatistics:(id)a3 candidatesContainer:(id)a4
{
  v37[11] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 candidates];
  v7 = [v6 count];

  v8 = [v5 numberOfContextChanges];
  v9 = [v5 numberOfMiLoPredictions];
  v10 = [v5 numberOfMiLoPredictionsInUpdatesMode];
  v11 = [v5 lastMiLoLSLItems];
  v12 = [v5 lastMiLoQualityReasonBitmap];
  v32 = [v5 lastMiLoQuality];
  v33 = [v5 lastMiLoModels];
  v13 = [v5 numberOfPickerChoiceEvents];
  v14 = [v5 numberOfCorrectPickerChoiceEvents];
  if (v13)
  {
    v15 = 100 * v14 / v13;
  }

  else
  {
    v15 = 200;
  }

  v31 = [v5 timeInUpdatesModeInSeconds];

  v16 = +[IRPreferences shared];
  v17 = [v16 mobileAssetVersion];

  v18 = &stru_286755D18;
  if (v17)
  {
    v18 = v17;
  }

  v36[0] = @"General_Weekly_N_candidates";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v7, v18}];
  v37[0] = v35;
  v36[1] = @"General_Weekly_N_context_changes";
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v37[1] = v34;
  v36[2] = @"General_Weekly_N_milo_predictions";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  v37[2] = v19;
  v36[3] = @"General_Weekly_N_Milo_Predictions_in_Update_Mode";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  v37[3] = v20;
  v36[4] = @"Milo_Number_of_LSL_Items_Weekly";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  v37[4] = v21;
  v36[5] = @"Milo_Quality_Reason_Weekly";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
  v37[5] = v22;
  v36[6] = @"Milo_Quality_Weekly";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v32];
  v37[6] = v23;
  v36[7] = @"N_MiLo_Different_Models_Weekly";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v33];
  v37[7] = v24;
  v36[8] = @"PickerTop_UI_Weekly_SuccessRate";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
  v37[8] = v25;
  v36[9] = @"Time_In_Update_Mode_Weekly";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
  v36[10] = @"General_Weekly_Mobile_Asset_Version";
  v37[9] = v26;
  v37[10] = v30;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:11];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)uiAnalyticsWithEvent:(id)a3 forCandidateIdentifier:(id)a4 systemStateManager:(id)a5 candidatesContainer:(id)a6 inspections:(id)a7 statisticsManager:(id)a8 service:(id)a9 historyEventsContainer:(id)a10
{
  v181[37] = *MEMORY[0x277D85DE8];
  v119 = a3;
  v16 = a4;
  v120 = a5;
  v17 = a6;
  v112 = a7;
  v113 = a8;
  v114 = a9;
  v111 = a10;
  v118 = v17;
  v18 = [IRServicePackageAdapterMedia filterHistory:"filterHistory:withCandidatesContainer:" withCandidatesContainer:?];
  v110 = [v18 historyEvents];

  v115 = [v112 objectForKeyedSubscript:*MEMORY[0x277D21250]];
  v19 = [v114 clientIdentifier];
  if (v19)
  {
    v108 = [v114 clientIdentifier];
  }

  else
  {
    v108 = &stru_286755D18;
  }

  v20 = [v119 bundleID];
  v103 = [IRAnalyticsUtilities getRedactedBundleID:v20];

  v101 = [v119 isEligibleApp];
  v21 = [v120 systemState];
  v99 = [v21 locationSemanticUserSpecificPlaceType];

  [v119 eventType];
  v107 = IRMediaEventTypeToString();
  v22 = [v120 systemState];
  v72 = [v22 locationSemanticUserSpecificPlaceType];

  v23 = [v120 miloProviderLslPredictionResults];
  v96 = [v23 canUse];

  v24 = [v120 miloProviderLslPredictionResults];
  v94 = [v24 isPredictionValid];

  v25 = [v120 miloProviderLslPredictionResults];
  v92 = [v25 isMotionDetected];

  v26 = [v120 miloProviderLslPredictionResults];
  v27 = [v26 scores];
  v90 = [v27 count];

  v28 = [v120 miloProviderLslPredictionResults];
  v88 = [v28 isMapValid];

  v29 = [v120 miloProviderLslPredictionResults];
  v30 = [v29 predictionTime];
  [v30 timeIntervalSinceNow];
  v32 = v31;

  v33 = [v17 candidates];
  v80 = [v33 count];

  v176 = 0;
  v177 = &v176;
  v178 = 0x2020000000;
  v179 = 0;
  v172 = 0;
  v173 = &v172;
  v174 = 0x2020000000;
  v175 = 0;
  v168 = 0;
  v169 = &v168;
  v170 = 0x2020000000;
  v171 = 0;
  v164 = 0;
  v165 = &v164;
  v166 = 0x2020000000;
  v167 = 0;
  v160 = 0;
  v161 = &v160;
  v162 = 0x2020000000;
  v163 = 0;
  v156 = 0;
  v157 = &v156;
  v158 = 0x2020000000;
  v159 = 0;
  v152 = 0;
  v153 = &v152;
  v154 = 0x2020000000;
  v155 = 0;
  v148 = 0;
  v149 = &v148;
  v150 = 0x2020000000;
  v151 = 0;
  v142 = 0;
  v143 = &v142;
  v144 = 0x3032000000;
  v145 = __Block_byref_object_copy__10;
  v146 = __Block_byref_object_dispose__10;
  v147 = &stru_286755D18;
  v136 = 0;
  v137 = &v136;
  v138 = 0x3032000000;
  v139 = __Block_byref_object_copy__10;
  v140 = __Block_byref_object_dispose__10;
  v141 = &stru_286755D18;
  v34 = [v115 candidates];
  v123[0] = MEMORY[0x277D85DD0];
  v123[1] = 3221225472;
  v123[2] = __189__IRServicePackageAdapterMedia_IRAnalytics__uiAnalyticsWithEvent_forCandidateIdentifier_systemStateManager_candidatesContainer_inspections_statisticsManager_service_historyEventsContainer___block_invoke;
  v123[3] = &unk_2797E1DA0;
  v126 = &v176;
  v127 = &v172;
  v128 = &v168;
  v129 = &v164;
  v117 = v16;
  v124 = v117;
  v130 = &v142;
  v131 = &v136;
  v132 = &v160;
  v109 = v115;
  v125 = v109;
  v133 = &v156;
  v134 = &v152;
  v135 = &v148;
  [v34 enumerateObjectsUsingBlock:v123];

  v35 = [v17 candidateForCandidateIdentifier:v117];
  v36 = [v35 containsAirplayTarget];
  v106 = [IRAnalyticsUtilities candidateTypeForCandidate:v35];
  v105 = [IRAnalyticsUtilities candidateModelTypeForCandidate:v35];
  v37 = [v113 timeToBannerInMilliSeconds];
  if (v37)
  {
    v38 = [v113 timeToBannerInMilliSeconds];
    v39 = [v38 unsignedIntegerValue];
  }

  else
  {
    v39 = 0;
  }

  v40 = [v109 generatorNegativeInputs];
  v41 = [v40 allValues];
  v42 = [v41 firstWhere:&__block_literal_global_249];
  v43 = v42 != 0;

  v44 = +[IRPreferences shared];
  v45 = [v44 mobileAssetVersion];

  v46 = &stru_286755D18;
  if (v45)
  {
    v46 = v45;
  }

  v82 = v46;
  v47 = [v111 historyEvents];
  v121[0] = MEMORY[0x277D85DD0];
  v121[1] = 3221225472;
  v121[2] = __189__IRServicePackageAdapterMedia_IRAnalytics__uiAnalyticsWithEvent_forCandidateIdentifier_systemStateManager_candidatesContainer_inspections_statisticsManager_service_historyEventsContainer___block_invoke_4;
  v121[3] = &unk_2797E1868;
  v70 = v35;
  v122 = v70;
  v48 = [v47 firstWhere:v121];

  v49 = [v120 miloProviderLslPredictionResults];
  v50 = [MEMORY[0x277CBEAA8] date];
  v116 = [IRCandidateClassificationDetectorSameSpace sameSpaceMiLoScoresForCandidate:v117 basedOnMiLoPrediction:v49 andHistoryEventsAsc:v110 andDate:v50];

  v51 = [v116 first];
  v52 = [v51 unsignedIntegerValue];

  v53 = [v116 second];
  v54 = [v53 unsignedIntegerValue];

  v55 = v43;
  if (v54)
  {
    v56 = 100 * v52 / v54;
  }

  else
  {
    v56 = 200;
  }

  v71 = [v119 isOutsideApp];
  v181[0] = v108;
  v180[0] = @"UI_Event_Client_Identifier";
  v180[1] = @"UI_Event_Internal_App_Name_Enum";
  v104 = [MEMORY[0x277CCABB0] numberWithInteger:v103];
  v181[1] = v104;
  v180[2] = @"UI_Event_Is_Eligible_App";
  v102 = [MEMORY[0x277CCABB0] numberWithBool:v101];
  v181[2] = v102;
  v180[3] = @"UI_Event_Current_LOI_Enum";
  v100 = [MEMORY[0x277CCABB0] numberWithInt:v99];
  v181[3] = v100;
  v181[4] = v107;
  v180[4] = @"UI_Event_Type";
  v180[5] = @"UI_Event_Count";
  v98 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v181[5] = v98;
  v180[6] = @"UI_Event_MiLo_Available";
  v97 = [MEMORY[0x277CCABB0] numberWithBool:v96];
  v181[6] = v97;
  v180[7] = @"UI_Event_MiLo_Confidence";
  v95 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v94];
  v181[7] = v95;
  v180[8] = @"UI_Event_Milo_Confidence_Reason";
  v93 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v92];
  v181[8] = v93;
  v180[9] = @"UI_Event_Milo_N_LSL_Items";
  v91 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v90];
  v181[9] = v91;
  v180[10] = @"UI_Event_Milo_Quality";
  v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v88];
  v181[10] = v89;
  v180[11] = @"UI_Event_Milo_Quality_Reason";
  v87 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v181[11] = v87;
  v180[12] = @"UI_Event_Milo_Time_Since_Prediction";
  v86 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:fabs(v32)];
  v181[12] = v86;
  v180[13] = @"UI_Event_N_MiLo_Models";
  v85 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v181[13] = v85;
  v180[14] = @"UI_Event_MiLo_Suspended_Reasons";
  v57 = MEMORY[0x277CCABB0];
  v84 = [v120 miloProvider];
  v83 = [v57 numberWithUnsignedInteger:{objc_msgSend(v84, "miLoServiceSuspendedReasonBitmap")}];
  v181[14] = v83;
  v180[15] = @"UI_Event_N_Candidates";
  v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v80];
  v181[15] = v81;
  v180[16] = @"UI_Event_N_Candidates_Classified_AutoRoute";
  v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v177[3]];
  v181[16] = v79;
  v180[17] = @"UI_Event_N_Candidates_Classified_OneTap";
  v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v173[3]];
  v181[17] = v78;
  v180[18] = @"UI_Event_N_Candidates_Classified_TopOfList";
  v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v169[3]];
  v181[18] = v77;
  v180[19] = @"UI_Event_N_Candidates_Classified_Filter";
  v76 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v165[3]];
  v181[19] = v76;
  v180[20] = @"UI_Event_Selected_Candidate_Classification";
  v181[20] = v143[5];
  v180[21] = @"UI_Event_Selected_Candidate_Rule_Reason";
  v181[21] = v137[5];
  v181[22] = v106;
  v180[22] = @"UI_Event_Selected_Candidate_Type";
  v180[23] = @"UI_Event_Selected_Candidate_Eligibility";
  v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v161[3]];
  v181[23] = v75;
  v180[24] = @"UI_Event_Selected_Candidate_Is_Device_Selector_Output";
  v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v157[3]];
  v181[24] = v74;
  v180[25] = @"UI_Event_Selected_Candidate_Is_Device_Selector_Output_And_Eligible";
  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v153[3]];
  v181[25] = v58;
  v180[26] = @"UI_Event_Selected_Candidate_Is_UWB_Or_MiLo";
  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v149[3]];
  v181[26] = v59;
  v180[27] = @"UI_Event_Selected_Candidate_Is_Airplay_Target";
  v60 = [MEMORY[0x277CCABB0] numberWithBool:v36];
  v181[27] = v60;
  v180[28] = @"UI_Event_Selected_Candidate_Was_Used_At_Home";
  v61 = [MEMORY[0x277CCABB0] numberWithBool:v48 != 0];
  v181[28] = v61;
  v181[29] = v105;
  v180[29] = @"UI_Event_Selected_Candidate_Device_Model_Type";
  v180[30] = @"UI_Event_Selected_Candidate_Same_Space_MiLo_LSL_Items";
  v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v54];
  v181[30] = v62;
  v180[31] = @"UI_Event_Selected_Candidate_Same_Space_MiLo_Agg_Score";
  v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v56];
  v181[31] = v63;
  v180[32] = @"UI_Event_Time_To_Banner_Milli_Seconds";
  v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v39];
  v181[32] = v64;
  v180[33] = @"UI_Event_Is_Negative_Rules";
  v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v55];
  v181[33] = v65;
  v181[34] = v82;
  v180[34] = @"UI_Event_Mobile_Asset_Version";
  v180[35] = @"UI_Event_Is_Location_Custom";
  v66 = [MEMORY[0x277CCABB0] numberWithBool:v72 == 5];
  v181[35] = v66;
  v180[36] = @"UI_Event_Is_Widget";
  v67 = [MEMORY[0x277CCABB0] numberWithBool:v71];
  v181[36] = v67;
  v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v181 forKeys:v180 count:37];

  _Block_object_dispose(&v136, 8);
  _Block_object_dispose(&v142, 8);

  _Block_object_dispose(&v148, 8);
  _Block_object_dispose(&v152, 8);
  _Block_object_dispose(&v156, 8);
  _Block_object_dispose(&v160, 8);
  _Block_object_dispose(&v164, 8);
  _Block_object_dispose(&v168, 8);
  _Block_object_dispose(&v172, 8);
  _Block_object_dispose(&v176, 8);

  v68 = *MEMORY[0x277D85DE8];

  return v73;
}

void __189__IRServicePackageAdapterMedia_IRAnalytics__uiAnalyticsWithEvent_forCandidateIdentifier_systemStateManager_candidatesContainer_inspections_statisticsManager_service_historyEventsContainer___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 inspectionGenerator];
  if (!v3)
  {
    goto LABEL_21;
  }

  v20 = v3;
  if ([v3 classification] == 4)
  {
    v4 = 48;
  }

  else if ([v20 classification] == 3)
  {
    v4 = 56;
  }

  else if ([v20 classification] == 2)
  {
    v4 = 64;
  }

  else
  {
    if ([v20 classification] != 1)
    {
      goto LABEL_11;
    }

    v4 = 72;
  }

  ++*(*(*(a1 + v4) + 8) + 24);
LABEL_11:
  v5 = *(a1 + 32);
  v6 = [v20 candidate];
  v7 = [v6 candidateIdentifier];
  LODWORD(v5) = [v5 isEqual:v7];

  v3 = v20;
  if (v5)
  {
    [v20 classification];
    v8 = IRCandidateClassificationToString();
    v9 = *(*(a1 + 80) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [v20 classificationDescription];
    v12 = *(*(a1 + 88) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = *(*(a1 + 88) + 8);
    if (!*(v14 + 40))
    {
      *(v14 + 40) = &stru_286755D18;
    }

    *(*(*(a1 + 96) + 8) + 24) = [*(a1 + 40) stateMachineClassification];
    v15 = [v20 candidateSelectorReasons];
    v16 = [v15 allValues];
    v17 = [v16 firstWhere:&__block_literal_global_15];
    *(*(*(a1 + 104) + 8) + 24) = v17 != 0;

    v18 = *(*(*(a1 + 96) + 8) + 24) >= 3uLL && *(*(*(a1 + 104) + 8) + 24) != 0;
    *(*(*(a1 + 112) + 8) + 24) = v18;
    if ([v20 sameSpaceBasedOnUWB])
    {
      v19 = 1;
    }

    else
    {
      v19 = [v20 sameSpaceBasedOnMiLo];
    }

    *(*(*(a1 + 120) + 8) + 24) = v19;
    v3 = v20;
  }

LABEL_21:
}

BOOL __189__IRServicePackageAdapterMedia_IRAnalytics__uiAnalyticsWithEvent_forCandidateIdentifier_systemStateManager_candidatesContainer_inspections_statisticsManager_service_historyEventsContainer___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 candidateIdentifier];
  v5 = [*(a1 + 32) candidateIdentifier];
  if ([v4 isEqual:v5])
  {
    v6 = [v3 systemState];
    v7 = [v6 locationSemanticUserSpecificPlaceType] == 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_getUniqueAirplayRoutsFromCandidateIdentifiers:(id)a3 inCandiateContainer:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CBEB58];
  v7 = a3;
  v8 = [v6 set];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __112__IRServicePackageAdapterMedia_IRAnalytics___getUniqueAirplayRoutsFromCandidateIdentifiers_inCandiateContainer___block_invoke;
  v14[3] = &unk_2797E1DC8;
  v15 = v5;
  v9 = v8;
  v16 = v9;
  v10 = v5;
  [v7 enumerateObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __112__IRServicePackageAdapterMedia_IRAnalytics___getUniqueAirplayRoutsFromCandidateIdentifiers_inCandiateContainer___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) candidateForCandidateIdentifier:a2];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 nodes];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __112__IRServicePackageAdapterMedia_IRAnalytics___getUniqueAirplayRoutsFromCandidateIdentifiers_inCandiateContainer___block_invoke_2;
    v6[3] = &unk_2797E0CA8;
    v7 = *(a1 + 40);
    [v5 enumerateObjectsUsingBlock:v6];
  }
}

void __112__IRServicePackageAdapterMedia_IRAnalytics___getUniqueAirplayRoutsFromCandidateIdentifiers_inCandiateContainer___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 deviceTypeAndSubType];
  v4 = [v3 first];
  v5 = [v4 unsignedIntegerValue];

  if (v3 && !v5)
  {
    v6 = *(a1 + 32);
    v7 = [v9 avOutputDevice];
    v8 = [v7 deviceID];
    [v6 addObject:v8];
  }
}

@end