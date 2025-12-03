@interface IRCandidateManager
- (IRCandidateManager)initWithQueue:(id)queue contextObserver:(id)observer avOutputDeviceProvider:(id)provider rapportDeviceProvider:(id)deviceProvider store:(id)store;
- (IRPolicyManagerContextObserver)contextObserver;
- (id)_lastUsedDateForCandidate:(id)candidate fromHistoryEventsContainer:(id)container;
- (id)_nodesForCandidate:(id)candidate fromExistingCandidate:(id)existingCandidate;
- (id)_oldestCandidatesFrom:(id)from forKey:(id)key limit:(unint64_t)limit;
- (void)_addCandidates:(id)candidates;
- (void)_deleteCandidates:(id)candidates;
- (void)_didUpdateContextWithReason:(id)reason;
- (void)_handleCandidatesCleanup;
- (void)_updateCandidate:(id)candidate;
- (void)dealloc;
- (void)deallocSync;
- (void)deleteBrokerCandidates;
- (void)deleteCandidate:(id)candidate;
- (void)notifyAddEventForCandidateIdentifier:(id)identifier;
- (void)provider:(id)provider didUpdateAVOutputDevices:(id)devices;
- (void)provider:(id)provider didUpdateRapportDevices:(id)devices;
- (void)synchronizeAndFetchFromDBOnDisk;
- (void)updateCandidates:(id)candidates withHistoryEventsContainer:(id)container;
@end

@implementation IRCandidateManager

- (IRCandidateManager)initWithQueue:(id)queue contextObserver:(id)observer avOutputDeviceProvider:(id)provider rapportDeviceProvider:(id)deviceProvider store:(id)store
{
  queueCopy = queue;
  observerCopy = observer;
  providerCopy = provider;
  deviceProviderCopy = deviceProvider;
  storeCopy = store;
  v22.receiver = self;
  v22.super_class = IRCandidateManager;
  v17 = [(IRCandidateManager *)&v22 init];
  v18 = v17;
  if (v17)
  {
    [(IRCandidateManager *)v17 setQueue:queueCopy];
    [(IRCandidateManager *)v18 setContextObserver:observerCopy];
    [(IRCandidateManager *)v18 setAvOutputDeviceProvider:providerCopy];
    [(IRCandidateManager *)v18 setRapportDeviceProvider:deviceProviderCopy];
    [(IRCandidateManager *)v18 setStore:storeCopy];
    [(IRCandidateManager *)v18 synchronizeAndFetchFromDBOnDisk];
    avOutputDeviceProvider = [(IRCandidateManager *)v18 avOutputDeviceProvider];
    [avOutputDeviceProvider addObserver:v18];

    rapportDeviceProvider = [(IRCandidateManager *)v18 rapportDeviceProvider];
    [rapportDeviceProvider addObserver:v18];
  }

  return v18;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IRCandidateManager;
  [(IRCandidateManager *)&v2 dealloc];
}

- (void)deallocSync
{
  avOutputDeviceProvider = [(IRCandidateManager *)self avOutputDeviceProvider];
  [avOutputDeviceProvider removeObserver:self];

  rapportDeviceProvider = [(IRCandidateManager *)self rapportDeviceProvider];
  [rapportDeviceProvider removeObserver:self];
}

- (void)updateCandidates:(id)candidates withHistoryEventsContainer:(id)container
{
  v73 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  containerCopy = container;
  v6 = [MEMORY[0x277CBEB58] set];
  v57 = [MEMORY[0x277CBEB58] set];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v7 = candidatesCopy;
  v59 = [v7 countByEnumeratingWithState:&v60 objects:v72 count:16];
  if (v59)
  {
    v54 = v6;
    v56 = 0;
    v9 = *v61;
    v10 = MEMORY[0x277D21308];
    *&v8 = 136315906;
    v52 = v8;
    v55 = v7;
    selfCopy5 = self;
    do
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v61 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v60 + 1) + 8 * i);
        candidatesContainer = [(IRCandidateManager *)selfCopy5 candidatesContainer];
        candidateIdentifier = [v13 candidateIdentifier];
        v16 = [candidatesContainer candidateForCandidateIdentifier:candidateIdentifier];

        v17 = [(IRCandidateManager *)selfCopy5 _nodesForCandidate:v13 fromExistingCandidate:v16];
        v18 = [v13 copyWithReplacementNodes:v17];

        lastUsedDate = [v16 lastUsedDate];
        v20 = [v18 copyWithReplacementLastUsedDate:lastUsedDate];

        firstSeenDate = [v16 firstSeenDate];
        v22 = [v20 copyWithReplacementFirstSeenDate:firstSeenDate];

        LOBYTE(v20) = [v22 containsAirPlayOrUnknownAVODTarget];
        v23 = dispatch_get_specific(*v10);
        if (v20)
        {
          v24 = *MEMORY[0x277D21270];
          if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
          {
            v25 = v24;
            v26 = [IRLogQEUtility getCandidateAsString:v22];
            *buf = 136315650;
            v65 = "#candidate-manager, ";
            v66 = 2112;
            v67 = v23;
            v68 = 2112;
            v69 = v26;
            _os_log_impl(&dword_25543D000, v25, OS_LOG_TYPE_DEFAULT, "%s[%@], Updating candidate:\n %@", buf, 0x20u);
          }

          if (![v16 isEqual:v22])
          {
            goto LABEL_17;
          }

          lastSeenDate = [v22 lastSeenDate];
          lastSeenDate2 = [v16 lastSeenDate];
          v29 = +[IRPreferences shared];
          candidateUpdateTimeIntervalSeconds = [v29 candidateUpdateTimeIntervalSeconds];
          v31 = [lastSeenDate2 dateByAddingTimeInterval:{objc_msgSend(candidateUpdateTimeIntervalSeconds, "unsignedIntegerValue")}];
          v32 = [lastSeenDate isEarlierThan:v31];

          v7 = v55;
          v10 = MEMORY[0x277D21308];

          if (v32)
          {
            v33 = dispatch_get_specific(*v10);
            v34 = *MEMORY[0x277D21260];
            if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
            {
              v35 = v34;
              lastSeenDate3 = [v16 lastSeenDate];
              lastSeenDate4 = [v22 lastSeenDate];
              *buf = v52;
              v65 = "#candidate-manager, ";
              v66 = 2112;
              v67 = v33;
              v68 = 2112;
              v69 = lastSeenDate3;
              v70 = 2112;
              v71 = lastSeenDate4;
              _os_log_impl(&dword_25543D000, v35, OS_LOG_TYPE_DEBUG, "%s[%@], Update candidate was requested but not needed, lastSeenDate: %@, currentDate: %@", buf, 0x2Au);

              v10 = MEMORY[0x277D21308];
            }

            selfCopy5 = self;
          }

          else
          {
LABEL_17:
            if (v16)
            {
              [v54 addObject:v16];
              selfCopy5 = self;
            }

            else
            {
              v41 = [(IRCandidateManager *)self _lastUsedDateForCandidate:v22 fromHistoryEventsContainer:containerCopy];
              v42 = [v22 copyWithReplacementLastUsedDate:v41];

              lastSeenDate5 = [v42 lastSeenDate];
              v22 = [v42 copyWithReplacementFirstSeenDate:lastSeenDate5];

              selfCopy5 = self;
            }

            [v57 addObject:v22];
            v56 = 1;
          }
        }

        else
        {
          v38 = *MEMORY[0x277D21260];
          if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
          {
            v39 = v38;
            v40 = [IRLogQEUtility getCandidateAsString:v22];
            *buf = 136315650;
            v65 = "#candidate-manager, ";
            v66 = 2112;
            v67 = v23;
            v68 = 2112;
            v69 = v40;
            _os_log_impl(&dword_25543D000, v39, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Candidate update error] Candidate is not valid to be updated:\n %@", buf, 0x20u);
          }
        }
      }

      v59 = [v7 countByEnumeratingWithState:&v60 objects:v72 count:16];
    }

    while (v59);

    v6 = v54;
    if (v56)
    {
      if ([v54 count])
      {
        [(IRCandidateManager *)selfCopy5 _deleteCandidates:v54];
      }

      [(IRCandidateManager *)selfCopy5 _addCandidates:v57];
      [(IRCandidateManager *)selfCopy5 _handleCandidatesCleanup];
      v44 = dispatch_get_specific(*MEMORY[0x277D21308]);
      v45 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
      {
        v46 = MEMORY[0x277CCABB0];
        v47 = v45;
        candidatesContainer2 = [(IRCandidateManager *)selfCopy5 candidatesContainer];
        candidates = [candidatesContainer2 candidates];
        v50 = [v46 numberWithUnsignedInteger:{objc_msgSend(candidates, "count")}];
        *buf = 136315650;
        v65 = "#candidate-manager, ";
        v66 = 2112;
        v67 = v44;
        v68 = 2112;
        v69 = v50;
        _os_log_impl(&dword_25543D000, v47, OS_LOG_TYPE_INFO, "%s[%@], Number of candidates: %@", buf, 0x20u);

        v7 = v55;
        selfCopy5 = self;
      }

      [(IRCandidateManager *)selfCopy5 _didUpdateContextWithReason:@"Update candidate"];
    }
  }

  else
  {
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)deleteBrokerCandidates
{
  v20 = *MEMORY[0x277D85DE8];
  candidatesContainer = [(IRCandidateManager *)self candidatesContainer];
  candidates = [candidatesContainer candidates];
  v5 = [candidates allWhere:&__block_literal_global_16];

  if ([v5 count])
  {
    [(IRCandidateManager *)self _deleteCandidates:v5];
    [(IRCandidateManager *)self _handleCandidatesCleanup];
    v6 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v7 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = v7;
      candidatesContainer2 = [(IRCandidateManager *)self candidatesContainer];
      candidates2 = [candidatesContainer2 candidates];
      v12 = [v8 numberWithUnsignedInteger:{objc_msgSend(candidates2, "count")}];
      v14 = 136315650;
      v15 = "#candidate-manager, ";
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_25543D000, v9, OS_LOG_TYPE_INFO, "%s[%@], Number of candidates: %@", &v14, 0x20u);
    }

    [(IRCandidateManager *)self _didUpdateContextWithReason:@"Delete Broker candidates"];
  }

  v13 = *MEMORY[0x277D85DE8];
}

BOOL __44__IRCandidateManager_deleteBrokerCandidates__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 nodes];
  v3 = [v2 firstWhere:&__block_literal_global_25];

  return v3 != 0;
}

uint64_t __44__IRCandidateManager_deleteBrokerCandidates__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 avOutputDevice];
  v3 = [v2 discoveredWithBroker];

  return v3;
}

- (void)deleteCandidate:(id)candidate
{
  v26 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  candidatesContainer = [(IRCandidateManager *)self candidatesContainer];
  candidateIdentifier = [candidateCopy candidateIdentifier];
  v7 = [candidatesContainer candidateForCandidateIdentifier:candidateIdentifier];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = candidateCopy;
  }

  v9 = v8;

  v10 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v11 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [IRLogQEUtility getCandidateAsString:v9];
    v14 = v13;
    v15 = @"YES";
    v18 = 136315906;
    v19 = "#candidate-manager, ";
    if (!v7)
    {
      v15 = @"NO";
    }

    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&dword_25543D000, v12, OS_LOG_TYPE_DEFAULT, "%s[%@], Deleting candidate:\n %@,\n is known candidate: %@", &v18, 0x2Au);
  }

  if (v7)
  {
    v16 = [MEMORY[0x277CBEB98] setWithObject:v7];
    [(IRCandidateManager *)self _deleteCandidates:v16];

    [(IRCandidateManager *)self _didUpdateContextWithReason:@"Delete candidate"];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)notifyAddEventForCandidateIdentifier:(id)identifier
{
  v39 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  candidatesContainer = [(IRCandidateManager *)self candidatesContainer];
  v6 = [candidatesContainer candidateForCandidateIdentifier:identifierCopy];

  if (v6)
  {
    v27 = identifierCopy;
    v7 = [MEMORY[0x277CBEB58] setWithObject:v6];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = v6;
    nodes = [v6 nodes];
    v9 = [nodes countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(nodes);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          avOutpuDeviceIdentifier = [v13 avOutpuDeviceIdentifier];

          if (avOutpuDeviceIdentifier)
          {
            candidatesContainer2 = [(IRCandidateManager *)self candidatesContainer];
            candidates = [candidatesContainer2 candidates];
            v32[0] = MEMORY[0x277D85DD0];
            v32[1] = 3221225472;
            v32[2] = __59__IRCandidateManager_notifyAddEventForCandidateIdentifier___block_invoke;
            v32[3] = &unk_2797E0CD0;
            v32[4] = v13;
            v17 = [candidates allWhere:v32];
            [v7 unionSet:v17];
          }
        }

        v10 = [nodes countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v10);
    }

    date = [MEMORY[0x277CBEAA8] date];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = v7;
    v20 = [v19 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v29;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v28 + 1) + 8 * j) copyWithReplacementLastUsedDate:date];
          [(IRCandidateManager *)self _updateCandidate:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v21);
    }

    [(IRCandidateManager *)self _handleCandidatesCleanup];
    v6 = v26;
    identifierCopy = v27;
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __59__IRCandidateManager_notifyAddEventForCandidateIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nodes];
  if ([v4 count] == 1)
  {
    v5 = [*(a1 + 32) avOutpuDeviceIdentifier];
    v6 = [v3 nodes];
    v7 = [v6 anyObject];
    v8 = [v7 avOutpuDeviceIdentifier];
    v9 = [v5 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)provider:(id)provider didUpdateAVOutputDevices:(id)devices
{
  devicesCopy = devices;
  queue = [(IRCandidateManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__IRCandidateManager_provider_didUpdateAVOutputDevices___block_invoke;
  v8[3] = &unk_2797E1E80;
  v9 = devicesCopy;
  v7 = devicesCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v8);
}

void __56__IRCandidateManager_provider_didUpdateAVOutputDevices___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setAvodDevices:*(a1 + 32)];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = [v3 avodDevices];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__IRCandidateManager_provider_didUpdateAVOutputDevices___block_invoke_2;
  v11[3] = &unk_2797E1E58;
  v11[4] = v3;
  v11[5] = &v12;
  [v4 enumerateObjectsUsingBlock:v11];

  v5 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v6 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = [v3 avodDevices];
    v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
    *buf = 136315650;
    v17 = "#candidate-manager, ";
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_25543D000, v6, OS_LOG_TYPE_DEBUG, "%s[%@], Memory: Number of Avod Devices: %@", buf, 0x20u);
  }

  if (*(v13 + 24) == 1)
  {
    [v3 _didUpdateContextWithReason:@"Avod device updated"];
  }

  _Block_object_dispose(&v12, 8);

  v10 = *MEMORY[0x277D85DE8];
}

void __56__IRCandidateManager_provider_didUpdateAVOutputDevices___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) candidatesContainer];
  v5 = [v4 candidates];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__IRCandidateManager_provider_didUpdateAVOutputDevices___block_invoke_3;
  v7[3] = &unk_2797E1E30;
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __56__IRCandidateManager_provider_didUpdateAVOutputDevices___block_invoke_3(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 nodes];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __56__IRCandidateManager_provider_didUpdateAVOutputDevices___block_invoke_4;
  v22[3] = &unk_2797E0D40;
  v23 = *(a1 + 32);
  v5 = [v4 firstWhere:v22];

  if (v5 && ([v5 avOutputDevice], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqual:", *(a1 + 32)), v6, (v7 & 1) == 0))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v9 = [v5 copyWithReplacementAvOutputDevice:*(a1 + 32)];

    v10 = [v3 nodes];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __56__IRCandidateManager_provider_didUpdateAVOutputDevices___block_invoke_5;
    v20 = &unk_2797E1E08;
    v5 = v9;
    v21 = v5;
    v11 = [v10 map:&v17];
    v8 = [v3 copyWithReplacementNodes:{v11, v17, v18, v19, v20}];

    [*(a1 + 40) _updateCandidate:v8];
    v12 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v13 = *MEMORY[0x277D21270];
    if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [v8 candidateIdentifier];
      *buf = 136315906;
      v25 = "#candidate-manager, ";
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v15;
      v30 = 2112;
      v31 = v8;
      _os_log_impl(&dword_25543D000, v14, OS_LOG_TYPE_DEFAULT, "%s[%@], Candidate [%@] updated with new avoutput device: %@", buf, 0x2Au);
    }
  }

  else
  {
    v8 = v3;
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __56__IRCandidateManager_provider_didUpdateAVOutputDevices___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 avOutpuDeviceIdentifier];
  v4 = [*(a1 + 32) deviceID];
  v5 = [v3 isEqual:v4];

  return v5;
}

void *__56__IRCandidateManager_provider_didUpdateAVOutputDevices___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 avOutpuDeviceIdentifier];
  v5 = [*(a1 + 32) avOutpuDeviceIdentifier];
  v6 = [v4 isEqual:v5];

  v7 = v3;
  if (v6)
  {
    v7 = *(a1 + 32);
  }

  v8 = v7;

  return v7;
}

- (void)provider:(id)provider didUpdateRapportDevices:(id)devices
{
  devicesCopy = devices;
  queue = [(IRCandidateManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke;
  v8[3] = &unk_2797E1E80;
  v9 = devicesCopy;
  v7 = devicesCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v8);
}

void __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setRapportDevices:*(a1 + 32)];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = [v3 rapportDevices];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_2;
  v11[3] = &unk_2797E1EA8;
  v11[4] = v3;
  v11[5] = &v12;
  [v4 enumerateObjectsUsingBlock:v11];

  v5 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v6 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = [v3 rapportDevices];
    v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
    *buf = 136315650;
    v17 = "#candidate-manager, ";
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_25543D000, v6, OS_LOG_TYPE_DEBUG, "%s[%@], Memory: Number of Rapport Devices: %@", buf, 0x20u);
  }

  if (*(v13 + 24) == 1)
  {
    [v3 _didUpdateContextWithReason:@"Raport device updated"];
  }

  _Block_object_dispose(&v12, 8);

  v10 = *MEMORY[0x277D85DE8];
}

void __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) candidatesContainer];
  v5 = [v4 candidates];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_3;
  v7[3] = &unk_2797E1E30;
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_3(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 nodes];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_4;
  v50[3] = &unk_2797E0D40;
  v51 = *(a1 + 32);
  v5 = [v4 firstWhere:v50];

  if (!v5)
  {
    v6 = [v3 nodes];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_5;
    v48[3] = &unk_2797E0D40;
    v49 = *(a1 + 32);
    v5 = [v6 firstWhere:v48];

    if (!v5)
    {
      v7 = [v3 nodes];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_6;
      v46[3] = &unk_2797E0D40;
      v47 = *(a1 + 32);
      v5 = [v7 firstWhere:v46];

      if (!v5)
      {
        v8 = [v3 nodes];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_7;
        v44[3] = &unk_2797E0D40;
        v45 = *(a1 + 32);
        v5 = [v8 firstWhere:v44];

        if (!v5)
        {
          v11 = 0;
          goto LABEL_7;
        }
      }
    }
  }

  v9 = [v5 rapportDevice];
  v10 = [v9 isEqual:*(a1 + 32)];

  if (v10)
  {
    v11 = v5;
LABEL_7:
    v12 = v3;
    goto LABEL_22;
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  v37 = a1;
  v11 = [v5 copyWithReplacementRapportDevice:*(a1 + 32)];

  v39 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v36 = v3;
  obj = [v3 nodes];
  v13 = [obj countByEnumeratingWithState:&v40 objects:v60 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v40 + 1) + 8 * i);
        v18 = [v17 rapportIdentifier];
        v19 = [v11 rapportIdentifier];
        v20 = [v18 isEqual:v19];

        v21 = [v17 avOutpuDeviceIdentifier];
        v22 = [v11 avOutpuDeviceIdentifier];
        v23 = [v21 isEqual:v22];

        v24 = [v17 idsIdentifier];
        v25 = [v11 idsIdentifier];
        v26 = [v24 isEqual:v25];

        v27 = v11;
        if ((v20 & 1) == 0)
        {
          v28 = [v11 rapportIdentifier];
          v29 = v28 == 0;

          if ((v29 & (v23 | v26)) != 0)
          {
            v27 = v11;
          }

          else
          {
            v27 = v17;
          }
        }

        v30 = v27;
        [v39 addObject:v30];
      }

      v14 = [obj countByEnumeratingWithState:&v40 objects:v60 count:16];
    }

    while (v14);
  }

  v12 = [v36 copyWithReplacementNodes:v39];
  [*(v37 + 40) _updateCandidate:v12];
  v31 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v32 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v33 = v32;
    v34 = [v12 candidateIdentifier];
    *buf = 136315906;
    v53 = "#candidate-manager, ";
    v54 = 2112;
    v55 = v31;
    v56 = 2112;
    v57 = v34;
    v58 = 2112;
    v59 = v12;
    _os_log_impl(&dword_25543D000, v33, OS_LOG_TYPE_DEFAULT, "%s[%@], Candidate [%@] updated with new rapport device: %@", buf, 0x2Au);
  }

LABEL_22:
  v35 = *MEMORY[0x277D85DE8];
}

uint64_t __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 rapportIdentifier];
  v4 = [*(a1 + 32) rapportEffectiveID];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 avOutpuDeviceIdentifier];
  v4 = [*(a1 + 32) mediaRemoteIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 avOutpuDeviceIdentifier];
  v4 = [*(a1 + 32) mediaRouteIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = [a2 idsIdentifier];
  v4 = [*(a1 + 32) idsID];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)synchronizeAndFetchFromDBOnDisk
{
  v21 = *MEMORY[0x277D85DE8];
  store = [(IRCandidateManager *)self store];
  fetchCandidatesContainer = [store fetchCandidatesContainer];
  [(IRCandidateManager *)self setCandidatesContainer:fetchCandidatesContainer];

  candidatesContainer = [(IRCandidateManager *)self candidatesContainer];

  v6 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v7 = *MEMORY[0x277D21260];
  v8 = *MEMORY[0x277D21260];
  if (candidatesContainer)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = MEMORY[0x277CCABB0];
      v10 = v7;
      candidatesContainer2 = [(IRCandidateManager *)self candidatesContainer];
      candidates = [candidatesContainer2 candidates];
      v13 = [v9 numberWithUnsignedInteger:{objc_msgSend(candidates, "count")}];
      v15 = 136315650;
      v16 = "#candidate-manager, ";
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_25543D000, v10, OS_LOG_TYPE_DEFAULT, "%s[%@], Loading candidates container from store with %@ candidates", &v15, 0x20u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v15 = 136315394;
    v16 = "#candidate-manager, ";
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Candidate container fetch error] Could not fetch candidates container", &v15, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_addCandidates:(id)candidates
{
  v19 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  candidatesContainer = [(IRCandidateManager *)self candidatesContainer];
  candidates = [candidatesContainer candidates];
  v7 = [candidates setByAddingObjectsFromSet:candidatesCopy];
  v8 = [IRCandidatesContainerDO candidatesContainerDOWithCandidates:v7];
  [(IRCandidateManager *)self setCandidatesContainer:v8];

  store = [(IRCandidateManager *)self store];
  LOBYTE(v8) = [store addCandidates:candidatesCopy];

  if ((v8 & 1) == 0)
  {
    v10 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v11 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315650;
      v14 = "#candidate-manager, ";
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = candidatesCopy;
      _os_log_impl(&dword_25543D000, v11, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Candidate Manager add error] Could not add a new candidates: %@", &v13, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateCandidate:(id)candidate
{
  v22 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  candidatesContainer = [(IRCandidateManager *)self candidatesContainer];
  candidates = [candidatesContainer candidates];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__IRCandidateManager__updateCandidate___block_invoke;
  v14[3] = &unk_2797E1ED0;
  v7 = candidateCopy;
  v15 = v7;
  v8 = [candidates map:v14];
  v9 = [IRCandidatesContainerDO candidatesContainerDOWithCandidates:v8];
  [(IRCandidateManager *)self setCandidatesContainer:v9];

  store = [(IRCandidateManager *)self store];
  LOBYTE(candidatesContainer) = [store updateCandidate:v7];

  if ((candidatesContainer & 1) == 0)
  {
    v11 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v12 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "#candidate-manager, ";
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_25543D000, v12, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Candidate Manager update error] Could not update candidate: %@", buf, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void *__39__IRCandidateManager__updateCandidate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 candidateIdentifier];
  v5 = [*(a1 + 32) candidateIdentifier];
  v6 = [v4 isEqual:v5];

  v7 = v3;
  if (v6)
  {
    v7 = *(a1 + 32);
  }

  v8 = v7;

  return v7;
}

- (void)_deleteCandidates:(id)candidates
{
  v22 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  candidatesContainer = [(IRCandidateManager *)self candidatesContainer];
  candidates = [candidatesContainer candidates];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __40__IRCandidateManager__deleteCandidates___block_invoke;
  v14[3] = &unk_2797E0CD0;
  v7 = candidatesCopy;
  v15 = v7;
  v8 = [candidates allWhere:v14];
  v9 = [IRCandidatesContainerDO candidatesContainerDOWithCandidates:v8];
  [(IRCandidateManager *)self setCandidatesContainer:v9];

  store = [(IRCandidateManager *)self store];
  LOBYTE(candidatesContainer) = [store deleteCandidates:v7];

  if ((candidatesContainer & 1) == 0)
  {
    v11 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v12 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "#candidate-manager, ";
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_25543D000, v12, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Candidate Manager delete error] Could not delete candidates: %@", buf, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

BOOL __40__IRCandidateManager__deleteCandidates___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 candidateIdentifier];
  v4 = [IRCandidateDO candidateForIdentifier:v3 within:*(a1 + 32)];

  return v4 == 0;
}

- (void)_didUpdateContextWithReason:(id)reason
{
  reasonCopy = reason;
  contextObserver = [(IRCandidateManager *)self contextObserver];
  [contextObserver didUpdateContextWithReason:reasonCopy andOverrides:0];
}

- (void)_handleCandidatesCleanup
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [MEMORY[0x277CBEB58] set];
  candidatesContainer = [(IRCandidateManager *)self candidatesContainer];
  candidates = [candidatesContainer candidates];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __46__IRCandidateManager__handleCandidatesCleanup__block_invoke;
  v26 = &unk_2797E13F8;
  v7 = v3;
  v27 = v7;
  v8 = v4;
  v28 = v8;
  [candidates enumerateObjectsUsingBlock:&v23];

  v9 = [MEMORY[0x277CBEB58] set];
  v10 = +[IRPreferences shared];
  numberOfUsedCandidates = [v10 numberOfUsedCandidates];
  v12 = -[IRCandidateManager _oldestCandidatesFrom:forKey:limit:](self, "_oldestCandidatesFrom:forKey:limit:", v7, @"lastUsedDate", [numberOfUsedCandidates unsignedIntegerValue]);
  [v9 addObjectsFromArray:v12];

  v13 = +[IRPreferences shared];
  numberOfSeenCandidates = [v13 numberOfSeenCandidates];
  v15 = -[IRCandidateManager _oldestCandidatesFrom:forKey:limit:](self, "_oldestCandidatesFrom:forKey:limit:", v8, @"lastSeenDate", [numberOfSeenCandidates unsignedIntegerValue]);
  [v9 addObjectsFromArray:v15];

  if ([v9 count])
  {
    v16 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v17 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      v18 = MEMORY[0x277CCABB0];
      v19 = v17;
      v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
      *buf = 136315906;
      v30 = "#candidate-manager, ";
      v31 = 2112;
      v32 = v16;
      v33 = 2112;
      v34 = v20;
      v35 = 2112;
      v36 = v21;
      _os_log_impl(&dword_25543D000, v19, OS_LOG_TYPE_INFO, "%s[%@], Candidates cleanup: usedCandidates: %@ seenCandidates: %@", buf, 0x2Au);
    }

    [(IRCandidateManager *)self _deleteCandidates:v9];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __46__IRCandidateManager__handleCandidatesCleanup__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 lastUsedDate];

  v4 = 32;
  if (!v3)
  {
    v4 = 40;
  }

  [*(a1 + v4) addObject:v5];
}

- (id)_lastUsedDateForCandidate:(id)candidate fromHistoryEventsContainer:(id)container
{
  candidateCopy = candidate;
  containerCopy = container;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__11;
  v18 = __Block_byref_object_dispose__11;
  v19 = 0;
  historyEvents = [containerCopy historyEvents];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__IRCandidateManager__lastUsedDateForCandidate_fromHistoryEventsContainer___block_invoke;
  v11[3] = &unk_2797E18B0;
  v8 = candidateCopy;
  v12 = v8;
  v13 = &v14;
  [historyEvents enumerateObjectsWithOptions:2 usingBlock:v11];

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

void __75__IRCandidateManager__lastUsedDateForCandidate_fromHistoryEventsContainer___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 candidateIdentifier];
  v7 = [*(a1 + 32) candidateIdentifier];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [v12 date];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

- (id)_nodesForCandidate:(id)candidate fromExistingCandidate:(id)existingCandidate
{
  existingCandidateCopy = existingCandidate;
  candidateCopy = candidate;
  v8 = objc_opt_new();
  nodes = [candidateCopy nodes];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke;
  v14[3] = &unk_2797E1F48;
  v14[4] = self;
  v15 = existingCandidateCopy;
  v16 = v8;
  v10 = v8;
  v11 = existingCandidateCopy;
  [nodes enumerateObjectsUsingBlock:v14];

  v12 = [v10 copy];

  return v12;
}

void __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) avodDevices];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_2;
  v34[3] = &unk_2797E1EF8;
  v5 = v3;
  v35 = v5;
  v6 = [v4 firstWhere:v34];

  if (!v6)
  {
    v7 = [*(a1 + 40) nodes];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_3;
    v32[3] = &unk_2797E0D40;
    v33 = v5;
    v8 = [v7 firstWhere:v32];

    v6 = [v8 avOutputDevice];
  }

  v9 = [*(a1 + 32) rapportDevices];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_4;
  v30[3] = &unk_2797E1F20;
  v10 = v5;
  v31 = v10;
  v11 = [v9 firstWhere:v30];

  if (!v11)
  {
    v12 = [*(a1 + 32) rapportDevices];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_5;
    v28[3] = &unk_2797E1F20;
    v13 = v10;
    v29 = v13;
    v11 = [v12 firstWhere:v28];

    if (!v11)
    {
      v14 = [*(a1 + 32) rapportDevices];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_6;
      v26[3] = &unk_2797E1F20;
      v15 = v13;
      v27 = v15;
      v11 = [v14 firstWhere:v26];

      if (!v11)
      {
        v16 = [*(a1 + 40) nodes];
        v21 = MEMORY[0x277D85DD0];
        v22 = 3221225472;
        v23 = __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_7;
        v24 = &unk_2797E0D40;
        v25 = v15;
        v17 = [v16 firstWhere:&v21];

        v11 = [v17 rapportDevice];
      }
    }
  }

  v18 = *(a1 + 48);
  v19 = [v10 copyWithReplacementRapportDevice:v11];
  v20 = [v19 copyWithReplacementAvOutputDevice:v6];
  [v18 addObject:v20];
}

uint64_t __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 deviceID];
  v4 = [*(a1 + 32) avOutpuDeviceIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 avOutpuDeviceIdentifier];
  v4 = [*(a1 + 32) avOutpuDeviceIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 rapportEffectiveID];
  v4 = [*(a1 + 32) rapportIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 mediaRemoteIdentifier];
  v4 = [*(a1 + 32) avOutpuDeviceIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 mediaRouteIdentifier];
  v4 = [*(a1 + 32) avOutpuDeviceIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = [a2 rapportIdentifier];
  v4 = [*(a1 + 32) rapportIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (id)_oldestCandidatesFrom:(id)from forKey:(id)key limit:(unint64_t)limit
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCAC98];
  fromCopy = from;
  v9 = [v7 sortDescriptorWithKey:key ascending:1];
  allObjects = [fromCopy allObjects];

  v17[0] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v12 = [allObjects sortedArrayUsingDescriptors:v11];

  if ([v12 count] <= limit)
  {
    v13 = 0;
  }

  else
  {
    v13 = [v12 count] - limit;
  }

  v14 = [v12 subarrayWithRange:{0, v13}];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (IRPolicyManagerContextObserver)contextObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_contextObserver);

  return WeakRetained;
}

@end