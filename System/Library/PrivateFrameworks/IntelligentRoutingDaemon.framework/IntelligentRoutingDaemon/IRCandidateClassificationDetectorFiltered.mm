@interface IRCandidateClassificationDetectorFiltered
- (BOOL)_isAggressiveFilteredCandidate:(id)candidate withSystemState:(id)state Candidates:(id)candidates andDate:(id)date;
- (BOOL)_isCandidateIndirectlyUsed:(id)used withCandidates:(id)candidates andDate:(id)date;
- (BOOL)_isConservativeFilteredCandidate:(id)candidate withSystemState:(id)state;
- (void)adjustFilteredParametersForCandidates:(id)candidates withSystemState:(id)state andDate:(id)date;
@end

@implementation IRCandidateClassificationDetectorFiltered

- (void)adjustFilteredParametersForCandidates:(id)candidates withSystemState:(id)state andDate:(id)date
{
  v45 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  stateCopy = state;
  dateCopy = date;
  obj = candidatesCopy;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = [candidatesCopy countByEnumeratingWithState:&v30 objects:v44 count:16];
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
        [v16 setIsConservativeFiltered:{-[IRCandidateClassificationDetectorFiltered _isConservativeFilteredCandidate:withSystemState:](self, "_isConservativeFilteredCandidate:withSystemState:", v16, stateCopy)}];
        v17 = +[IRFeatureFlags sharedFeatureFlags];
        isAggressiveFilteringEnabled = [v17 isAggressiveFilteringEnabled];

        if (isAggressiveFilteringEnabled)
        {
          isConservativeFiltered = [(IRCandidateClassificationDetectorFiltered *)self _isAggressiveFilteredCandidate:v16 withSystemState:stateCopy Candidates:obj andDate:dateCopy];
        }

        else
        {
          isConservativeFiltered = [v16 isConservativeFiltered];
        }

        [v16 setIsFiltered:isConservativeFiltered];
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

- (BOOL)_isConservativeFilteredCandidate:(id)candidate withSystemState:(id)state
{
  candidateCopy = candidate;
  stateCopy = state;
  candidate = [candidateCopy candidate];
  v8 = [candidate isSameICloudWithSystemState:stateCopy];

  if ((v8 & 1) != 0 || ([candidateCopy candidate], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "lastUsedDate"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    v11 = 0;
  }

  else
  {
    candidate2 = [candidateCopy candidate];
    if ([candidate2 isMac])
    {

      v11 = 1;
    }

    else
    {
      candidate3 = [candidateCopy candidate];
      isSameWiFi = [candidate3 isSameWiFi];

      v11 = isSameWiFi ^ 1;
    }
  }

  return v11 & 1;
}

- (BOOL)_isAggressiveFilteredCandidate:(id)candidate withSystemState:(id)state Candidates:(id)candidates andDate:(id)date
{
  candidateCopy = candidate;
  stateCopy = state;
  candidatesCopy = candidates;
  dateCopy = date;
  candidate = [candidateCopy candidate];
  lastUsedDate = [candidate lastUsedDate];
  if (lastUsedDate)
  {
    v14 = lastUsedDate;
    candidate2 = [candidateCopy candidate];
    lastUsedDate2 = [candidate2 lastUsedDate];
    [dateCopy timeIntervalSinceDate:lastUsedDate2];
    v18 = v17;
    v19 = +[IRPreferences shared];
    timeInSecondsWithoutUsageToAggressiveFiltering = [v19 timeInSecondsWithoutUsageToAggressiveFiltering];
    [timeInSecondsWithoutUsageToAggressiveFiltering doubleValue];
    v22 = v21;

    if (v18 < v22)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  candidate3 = [candidateCopy candidate];
  firstSeenDate = [candidate3 firstSeenDate];
  if (firstSeenDate)
  {
    candidate4 = [candidateCopy candidate];
    firstSeenDate2 = [candidate4 firstSeenDate];
    [dateCopy timeIntervalSinceDate:firstSeenDate2];
    v28 = v27;
    v29 = +[IRPreferences shared];
    timeInSecondsToBeClassifiedAsNewCandidateForAggressiveFiltering = [v29 timeInSecondsToBeClassifiedAsNewCandidateForAggressiveFiltering];
    [timeInSecondsToBeClassifiedAsNewCandidateForAggressiveFiltering doubleValue];
    v32 = v28 >= v31;
  }

  else
  {
    v32 = 1;
  }

  candidate5 = [candidateCopy candidate];
  isSameWiFi = [candidate5 isSameWiFi];

  locationSemanticUserSpecificPlaceType = [stateCopy locationSemanticUserSpecificPlaceType];
  if (v32 || !isSameWiFi || locationSemanticUserSpecificPlaceType != 1)
  {
    candidate6 = [candidateCopy candidate];
    containsUnknownAVODTarget = [candidate6 containsUnknownAVODTarget];

    if ((containsUnknownAVODTarget & 1) == 0)
    {
      v39 = candidatesCopy;
      v38 = [v42 _isCandidateIndirectlyUsed:candidateCopy withCandidates:candidatesCopy andDate:dateCopy] ^ 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  LOBYTE(v38) = 0;
  v39 = candidatesCopy;
LABEL_13:

  return v38;
}

- (BOOL)_isCandidateIndirectlyUsed:(id)used withCandidates:(id)candidates andDate:(id)date
{
  v30 = *MEMORY[0x277D85DE8];
  usedCopy = used;
  candidatesCopy = candidates;
  dateCopy = date;
  candidate = [usedCopy candidate];
  nodes = [candidate nodes];
  v12 = [nodes count];

  if (v12 >= 2)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    candidate2 = [usedCopy candidate];
    nodes2 = [candidate2 nodes];

    v13 = [nodes2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v16 = *v26;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(nodes2);
          }

          v18 = *(*(&v25 + 1) + 8 * i);
          avOutpuDeviceIdentifier = [v18 avOutpuDeviceIdentifier];

          if (avOutpuDeviceIdentifier)
          {
            v23[0] = MEMORY[0x277D85DD0];
            v23[1] = 3221225472;
            v23[2] = __95__IRCandidateClassificationDetectorFiltered__isCandidateIndirectlyUsed_withCandidates_andDate___block_invoke;
            v23[3] = &unk_2797E1A78;
            v23[4] = v18;
            v24 = dateCopy;
            v20 = [candidatesCopy containsObjectPassingTest:v23];

            if (v20)
            {
              LOBYTE(v13) = 1;
              goto LABEL_14;
            }
          }
        }

        v13 = [nodes2 countByEnumeratingWithState:&v25 objects:v29 count:16];
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