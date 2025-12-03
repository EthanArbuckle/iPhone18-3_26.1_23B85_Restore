@interface EntitlementABCIssueReporter
- (BiometricAutoBugCapture)biometricABC;
- (EntitlementABCIssueReporter)initWithBiometricABC:(id)c;
- (id)issueForTag:(id)tag;
- (void)addIssue:(id)issue;
- (void)reportGraylistedClient:(id)client withProcessName:(id)name clientUUID:(id)d platform:(id)platform;
- (void)reportLegacyClient:(id)client withProcessName:(id)name clientUUID:(id)d platform:(id)platform;
- (void)rescheduleTimer;
- (void)rescheduleTimerMain;
@end

@implementation EntitlementABCIssueReporter

- (EntitlementABCIssueReporter)initWithBiometricABC:(id)c
{
  cCopy = c;
  v8.receiver = self;
  v8.super_class = EntitlementABCIssueReporter;
  v5 = [(EntitlementABCIssueReporter *)&v8 init];
  if (v5)
  {
    v6 = objc_opt_new();
    [(EntitlementABCIssueReporter *)v5 setIssues:v6];

    [(EntitlementABCIssueReporter *)v5 setBiometricABC:cCopy];
  }

  return v5;
}

- (void)reportLegacyClient:(id)client withProcessName:(id)name clientUUID:(id)d platform:(id)platform
{
  clientCopy = client;
  nameCopy = name;
  dCopy = d;
  platformCopy = platform;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [LegacyEntitlementABCIssue reportClient:clientCopy withProcessName:nameCopy clientUUID:dCopy platform:platformCopy forReporter:selfCopy];
  objc_sync_exit(selfCopy);
}

- (void)reportGraylistedClient:(id)client withProcessName:(id)name clientUUID:(id)d platform:(id)platform
{
  clientCopy = client;
  nameCopy = name;
  dCopy = d;
  platformCopy = platform;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [GraylistedClientABCIssue reportClient:clientCopy withProcessName:nameCopy clientUUID:dCopy platform:platformCopy forReporter:selfCopy];
  objc_sync_exit(selfCopy);
}

- (id)issueForTag:(id)tag
{
  tagCopy = tag;
  issues = [(EntitlementABCIssueReporter *)self issues];
  v6 = [issues objectForKeyedSubscript:tagCopy];

  return v6;
}

- (void)addIssue:(id)issue
{
  issueCopy = issue;
  issues = [(EntitlementABCIssueReporter *)self issues];
  v5 = [issueCopy tag];
  [issues setObject:issueCopy forKeyedSubscript:v5];
}

- (void)rescheduleTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__EntitlementABCIssueReporter_rescheduleTimer__block_invoke;
  block[3] = &unk_2784FA338;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)rescheduleTimerMain
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEFAULT, "rescheduleTimerMain\n", buf, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = selfCopy;
  timer = [(EntitlementABCIssueReporter *)selfCopy timer];
  [timer invalidate];

  [(EntitlementABCIssueReporter *)selfCopy setTimer:0];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  issues = [(EntitlementABCIssueReporter *)selfCopy issues];
  allValues = [issues allValues];

  v9 = [allValues countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v9)
  {
    nextAction5 = 0;
    v11 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        v14 = __osLog;
        if (!__osLog)
        {
          v14 = v3;
        }

        v15 = v14;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = v3;
          v17 = [v13 tag];
          nextAction = [v13 nextAction];
          *buf = 138412546;
          v39 = v17;
          v40 = 2112;
          v41 = nextAction;
          _os_log_impl(&dword_223E00000, v15, OS_LOG_TYPE_INFO, "rescheduleTimerMain: examining issue %@ nextAction=%@\n", buf, 0x16u);

          v3 = v16;
        }

        [v13 reportIfNeeded];
        nextAction2 = [v13 nextAction];

        if (nextAction2)
        {
          if (nextAction5)
          {
            nextAction3 = [v13 nextAction];
            v21 = [nextAction5 compare:nextAction3] == 1;

            if (v21)
            {
              nextAction4 = [v13 nextAction];

              nextAction5 = nextAction4;
            }
          }

          else
          {
            nextAction5 = [v13 nextAction];
          }
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v9);

    if (nextAction5)
    {
      v23 = [MEMORY[0x277CBEAA8] now];
      [nextAction5 timeIntervalSinceDate:v23];
      v25 = v24;

      if (__osLog)
      {
        v26 = __osLog;
      }

      else
      {
        v26 = v3;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v39 = nextAction5;
        v40 = 1024;
        LODWORD(v41) = v25;
        _os_log_impl(&dword_223E00000, v26, OS_LOG_TYPE_INFO, "Entitlement issue timer will fire at %@, interval=%d\n", buf, 0x12u);
      }

      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __50__EntitlementABCIssueReporter_rescheduleTimerMain__block_invoke;
      v33[3] = &unk_2784FA558;
      v33[4] = obj;
      v27 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v33 block:v25];
      [(EntitlementABCIssueReporter *)obj setTimer:v27];

      timer2 = [(EntitlementABCIssueReporter *)obj timer];
      [timer2 setTolerance:10.0];

      goto LABEL_36;
    }
  }

  else
  {
  }

  if (__osLog)
  {
    v29 = __osLog;
  }

  else
  {
    v29 = v3;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v29, OS_LOG_TYPE_INFO, "Entitlement issue timer not scheduled\n", buf, 2u);
  }

  nextAction5 = 0;
LABEL_36:
  objc_sync_exit(obj);

  if (__osLogTrace)
  {
    v30 = __osLogTrace;
  }

  else
  {
    v30 = v3;
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v30, OS_LOG_TYPE_DEFAULT, "rescheduleTimerMain -> void\n", buf, 2u);
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __50__EntitlementABCIssueReporter_rescheduleTimerMain__block_invoke(uint64_t a1)
{
  if (__osLog)
  {
    v2 = __osLog;
  }

  else
  {
    v2 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_223E00000, v2, OS_LOG_TYPE_INFO, "Entitlement issue timer fired\n", v4, 2u);
  }

  return [*(a1 + 32) rescheduleTimer];
}

- (BiometricAutoBugCapture)biometricABC
{
  WeakRetained = objc_loadWeakRetained(&self->_biometricABC);

  return WeakRetained;
}

@end