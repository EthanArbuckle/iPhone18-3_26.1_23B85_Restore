@interface IRCandidateClassificationDetectorFiltered
- (BOOL)_isAggressiveFilteredCandidate:(id)a3 withSystemState:(id)a4 Candidates:(id)a5 andDate:(id)a6;
- (BOOL)_isCandidateIndirectlyUsed:(id)a3 withCandidates:(id)a4 andDate:(id)a5;
- (BOOL)_isConservativeFilteredCandidate:(id)a3 withSystemState:(id)a4;
- (void)adjustFilteredParametersForCandidates:(id)a3 withSystemState:(id)a4 andDate:(id)a5;
@end

@implementation IRCandidateClassificationDetectorFiltered

- (void)adjustFilteredParametersForCandidates:(id)a3 withSystemState:(id)a4 andDate:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v28 = a5;
  obj = v8;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v30 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
    v14 = *v31;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        [v16 setIsConservativeFiltered:{-[IRCandidateClassificationDetectorFiltered _isConservativeFilteredCandidate:withSystemState:](self, "_isConservativeFilteredCandidate:withSystemState:", v16, v9)}];
        v17 = +[IRFeatureFlags sharedFeatureFlags];
        v18 = [v17 isAggressiveFilteringEnabled];

        if (v18)
        {
          v19 = [(IRCandidateClassificationDetectorFiltered *)self _isAggressiveFilteredCandidate:v16 withSystemState:v9 Candidates:obj andDate:v28];
        }

        else
        {
          v19 = [v16 isConservativeFiltered];
        }

        [v16 setIsFiltered:v19];
        v13 += [v16 isFiltered];
        v12 += [v16 isConservativeFiltered];
      }

      v11 = [obj countByEnumeratingWithState:&v30 objects:v44 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v20 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v21 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v22 = MEMORY[0x277CCABB0];
    v23 = v21;
    v24 = [v22 numberWithUnsignedInteger:v13];
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(obj, "count")}];
    *buf = 136316162;
    v35 = "#detector-filtered, ";
    v36 = 2112;
    v37 = v20;
    v38 = 2112;
    v39 = v24;
    v40 = 2112;
    v41 = v25;
    v42 = 2112;
    v43 = v26;
    _os_log_impl(&dword_25543D000, v23, OS_LOG_TYPE_INFO, "%s[%@], #filteredCandidates=%@, #conservativeFilteredCandidates=%@, #totalCandidatesTested=%@", buf, 0x34u);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isConservativeFilteredCandidate:(id)a3 withSystemState:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 candidate];
  v8 = [v7 isSameICloudWithSystemState:v6];

  if ((v8 & 1) != 0 || ([v5 candidate], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "lastUsedDate"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    v11 = 0;
  }

  else
  {
    v13 = [v5 candidate];
    if ([v13 isMac])
    {

      v11 = 1;
    }

    else
    {
      v14 = [v5 candidate];
      v15 = [v14 isSameWiFi];

      v11 = v15 ^ 1;
    }
  }

  return v11 & 1;
}

- (BOOL)_isAggressiveFilteredCandidate:(id)a3 withSystemState:(id)a4 Candidates:(id)a5 andDate:(id)a6
{
  v9 = a3;
  v10 = a4;
  v43 = a5;
  v11 = a6;
  v12 = [v9 candidate];
  v13 = [v12 lastUsedDate];
  if (v13)
  {
    v14 = v13;
    v15 = [v9 candidate];
    v16 = [v15 lastUsedDate];
    [v11 timeIntervalSinceDate:v16];
    v18 = v17;
    v19 = +[IRPreferences shared];
    v20 = [v19 timeInSecondsWithoutUsageToAggressiveFiltering];
    [v20 doubleValue];
    v22 = v21;

    if (v18 < v22)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v23 = [v9 candidate];
  v24 = [v23 firstSeenDate];
  if (v24)
  {
    v25 = [v9 candidate];
    v26 = [v25 firstSeenDate];
    [v11 timeIntervalSinceDate:v26];
    v28 = v27;
    v29 = +[IRPreferences shared];
    v30 = [v29 timeInSecondsToBeClassifiedAsNewCandidateForAggressiveFiltering];
    [v30 doubleValue];
    v32 = v28 >= v31;
  }

  else
  {
    v32 = 1;
  }

  v33 = [v9 candidate];
  v34 = [v33 isSameWiFi];

  v35 = [v10 locationSemanticUserSpecificPlaceType];
  if (v32 || !v34 || v35 != 1)
  {
    v36 = [v9 candidate];
    v37 = [v36 containsUnknownAVODTarget];

    if ((v37 & 1) == 0)
    {
      v39 = v43;
      v38 = [v42 _isCandidateIndirectlyUsed:v9 withCandidates:v43 andDate:v11] ^ 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  LOBYTE(v38) = 0;
  v39 = v43;
LABEL_13:

  return v38;
}

- (BOOL)_isCandidateIndirectlyUsed:(id)a3 withCandidates:(id)a4 andDate:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 candidate];
  v11 = [v10 nodes];
  v12 = [v11 count];

  if (v12 >= 2)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = [v7 candidate];
    v15 = [v14 nodes];

    v13 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v16 = *v26;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v15);
          }

          v18 = *(*(&v25 + 1) + 8 * i);
          v19 = [v18 avOutpuDeviceIdentifier];

          if (v19)
          {
            v23[0] = MEMORY[0x277D85DD0];
            v23[1] = 3221225472;
            v23[2] = __95__IRCandidateClassificationDetectorFiltered__isCandidateIndirectlyUsed_withCandidates_andDate___block_invoke;
            v23[3] = &unk_2797E1A78;
            v23[4] = v18;
            v24 = v9;
            v20 = [v8 containsObjectPassingTest:v23];

            if (v20)
            {
              LOBYTE(v13) = 1;
              goto LABEL_14;
            }
          }
        }

        v13 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL __95__IRCandidateClassificationDetectorFiltered__isCandidateIndirectlyUsed_withCandidates_andDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 candidate];
  v5 = [v4 nodes];
  if ([v5 count] == 1)
  {
    v6 = [*(a1 + 32) avOutpuDeviceIdentifier];
    v7 = [v3 candidate];
    v8 = [v7 nodes];
    v9 = [v8 anyObject];
    v10 = [v9 avOutpuDeviceIdentifier];
    if ([v6 isEqual:v10])
    {
      v11 = [v3 candidate];
      v12 = [v11 lastUsedDate];
      if (v12)
      {
        v13 = *(a1 + 40);
        v23 = v12;
        v22 = [v3 candidate];
        v21 = [v22 lastUsedDate];
        [v13 timeIntervalSinceDate:v21];
        v15 = v14;
        +[IRPreferences shared];
        v16 = v24 = v11;
        [v16 timeInSecondsToBeClassifiedAsNewCandidateForAggressiveFiltering];
        v17 = v25 = v6;
        [v17 doubleValue];
        v19 = v15 < v18;

        v6 = v25;
        v11 = v24;

        v12 = v23;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end