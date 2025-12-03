@interface HDAutoBugCaptureReporter
+ (void)reportNotFinalSeriesSampleWithClass:(Class)class count:(int64_t)count datumCount:(int64_t)datumCount reason:(id)reason;
- (HDAutoBugCaptureReporter)initWithDaemon:(id)daemon;
- (HDDaemon)daemon;
- (void)_reportSnapshotWithType:(void *)type subType:(void *)subType context:(void *)context processIdentifier:(void *)identifier thresholdValues:;
- (void)reportApplyDataFailure:(Class)failure duringSyncFromStore:(id)store error:(id)error;
- (void)reportDataCollectionSeriesProblem:(id)problem quantityType:(id)type;
- (void)reportJournalFailureWithErrorDescription:(id)description provenance:(id)provenance error:(id)error;
- (void)reportMissingSource:(id)source duringSyncFromStore:(id)store;
- (void)reportQueryDurationWithServer:(id)server dataCount:(int64_t)count duration:(double)duration;
- (void)reportSummarySharingInvitationFailureForOperation:(id)operation error:(id)error;
@end

@implementation HDAutoBugCaptureReporter

- (HDAutoBugCaptureReporter)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v8.receiver = self;
  v8.super_class = HDAutoBugCaptureReporter;
  v5 = [(HDAutoBugCaptureReporter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, daemonCopy);
  }

  return v6;
}

- (void)reportQueryDurationWithServer:(id)server dataCount:(int64_t)count duration:(double)duration
{
  v8 = MEMORY[0x277CCACA8];
  serverCopy = server;
  v15 = [v8 stringWithFormat:@"%lld, %lf", count, *&duration];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  client = [serverCopy client];

  process = [client process];
  applicationIdentifier = [process applicationIdentifier];
  [(HDAutoBugCaptureReporter *)self _reportSnapshotWithType:@"Duration" subType:v11 context:applicationIdentifier processIdentifier:v15 thresholdValues:?];
}

- (void)_reportSnapshotWithType:(void *)type subType:(void *)subType context:(void *)context processIdentifier:(void *)identifier thresholdValues:
{
  v19 = a2;
  typeCopy = type;
  subTypeCopy = subType;
  contextCopy = context;
  identifierCopy = identifier;
  if (self)
  {
    v15 = _Block_copy(*(self + 16));
    v16 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, self, v19, typeCopy, subTypeCopy, contextCopy, identifierCopy);
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x277D6AFC8]);
      v18 = [v17 signatureWithDomain:@"HealthKit" type:v19 subType:typeCopy subtypeContext:subTypeCopy detectedProcess:contextCopy triggerThresholdValues:identifierCopy];
      [v17 snapshotWithSignature:v18 duration:0 event:0 payload:&__block_literal_global_185 reply:0.0];
    }
  }
}

- (void)reportDataCollectionSeriesProblem:(id)problem quantityType:(id)type
{
  v6 = MEMORY[0x277CCACA8];
  problemCopy = problem;
  identifier = [type identifier];
  v9 = [v6 stringWithFormat:@"%@-%@", problemCopy, identifier];

  [(HDAutoBugCaptureReporter *)self _reportSnapshotWithType:@"Series" subType:v9 context:*MEMORY[0x277CCE408] processIdentifier:0 thresholdValues:?];
}

+ (void)reportNotFinalSeriesSampleWithClass:(Class)class count:(int64_t)count datumCount:(int64_t)datumCount reason:(id)reason
{
  reasonCopy = reason;
  v14 = objc_alloc_init(HDAutoBugCaptureReporter);
  datumCount = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld, %ld", count, datumCount];
  v11 = MEMORY[0x277CCACA8];
  v12 = NSStringFromClass(class);
  reasonCopy = [v11 stringWithFormat:@"%@-%@", v12, reasonCopy];

  [(HDAutoBugCaptureReporter *)v14 _reportSnapshotWithType:@"Series" subType:reasonCopy context:*MEMORY[0x277CCE408] processIdentifier:datumCount thresholdValues:?];
}

- (void)reportSummarySharingInvitationFailureForOperation:(id)operation error:(id)error
{
  v6 = MEMORY[0x277CCACA8];
  errorCopy = error;
  operationCopy = operation;
  domain = [errorCopy domain];
  v10 = MEMORY[0x277CCABB0];
  code = [errorCopy code];

  v12 = [v10 numberWithInteger:code];
  v13 = [v6 stringWithFormat:@"%@-%@-%@", operationCopy, domain, v12];

  [(HDAutoBugCaptureReporter *)self _reportSnapshotWithType:@"Invitation" subType:v13 context:*MEMORY[0x277CCE408] processIdentifier:0 thresholdValues:?];
}

- (void)reportMissingSource:(id)source duringSyncFromStore:(id)store
{
  storeCopy = store;
  v6 = MEMORY[0x277CCACA8];
  sourceCopy = source;
  if (storeCopy)
  {
    [v6 stringWithFormat:@"%ld-%ld-%@", objc_msgSend(storeCopy, "syncStoreType"), objc_msgSend(storeCopy, "protocolVersion"), sourceCopy];
  }

  else
  {
    [v6 stringWithFormat:@"NoStore-%@", sourceCopy, v9, v10];
  }
  v8 = ;

  [(HDAutoBugCaptureReporter *)self _reportSnapshotWithType:@"MissingSource" subType:v8 context:*MEMORY[0x277CCE408] processIdentifier:0 thresholdValues:?];
}

- (void)reportApplyDataFailure:(Class)failure duringSyncFromStore:(id)store error:(id)error
{
  storeCopy = store;
  errorCopy = error;
  domain = [errorCopy domain];
  if ((![domain isEqualToString:*MEMORY[0x277D10A78]] || objc_msgSend(errorCopy, "code") != 2) && (objc_msgSend(errorCopy, "hk_isDuplicateObjectError") & 1) == 0 && (objc_msgSend(errorCopy, "hk_isTransactionInterruptedError") & 1) == 0 && (objc_msgSend(errorCopy, "hk_isHealthKitErrorWithCode:", 123) & 1) == 0)
  {
    v10 = [errorCopy hk_isHealthKitErrorWithCode:100];

    if (v10)
    {
      goto LABEL_9;
    }

    v11 = MEMORY[0x277CCACA8];
    syncStoreType = [storeCopy syncStoreType];
    protocolVersion = [storeCopy protocolVersion];
    v14 = NSStringFromClass(failure);
    domain2 = [errorCopy domain];
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    domain = [v11 stringWithFormat:@"%ld-%ld-%@ error: %@-%@", syncStoreType, protocolVersion, v14, domain2, v16];

    [(HDAutoBugCaptureReporter *)self _reportSnapshotWithType:@"ApplyDataFailure" subType:domain context:*MEMORY[0x277CCE408] processIdentifier:0 thresholdValues:?];
  }

LABEL_9:
}

- (void)reportJournalFailureWithErrorDescription:(id)description provenance:(id)provenance error:(id)error
{
  descriptionCopy = description;
  provenanceCopy = provenance;
  errorCopy = error;
  domain = [errorCopy domain];
  if ((![domain isEqualToString:*MEMORY[0x277D10A78]] || objc_msgSend(errorCopy, "code") != 2) && (objc_msgSend(errorCopy, "hk_isTransactionInterruptedError") & 1) == 0)
  {
    v11 = [errorCopy hk_isHealthKitErrorWithCode:123];

    if (v11)
    {
      goto LABEL_9;
    }

    v12 = MEMORY[0x277CCACA8];
    domain2 = [errorCopy domain];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    v15 = v14;
    v16 = &stru_283BF39C8;
    if (provenanceCopy)
    {
      v16 = provenanceCopy;
    }

    domain = [v12 stringWithFormat:@"%@-%@-%@-%@", descriptionCopy, domain2, v14, v16];

    [(HDAutoBugCaptureReporter *)self _reportSnapshotWithType:@"ApplyDataFailure" subType:domain context:*MEMORY[0x277CCE408] processIdentifier:0 thresholdValues:?];
  }

LABEL_9:
}

void __102__HDAutoBugCaptureReporter__reportSnapshotWithType_subType_context_processIdentifier_thresholdValues___block_invoke(uint64_t a1, void *a2)
{
  *&v23[5] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6B198]];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6B188]];
    _HKInitializeLogging();
    v6 = HKLogAnalytics();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      *v23 = v5;
      v7 = "Diagnostic reporter snapshot accepted with sessionID %@";
      v8 = v6;
      v9 = 12;
LABEL_17:
      _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, v7, &v22, v9);
    }
  }

  else
  {
    v10 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6B168]];
    v11 = [v10 intValue];

    v5 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6B180]];
    v12 = *MEMORY[0x277D6B040];
    v13 = *MEMORY[0x277D6B058];
    v14 = *MEMORY[0x277D6B038];
    v15 = *MEMORY[0x277D6B088];
    _HKInitializeLogging();
    v16 = HKLogAnalytics();
    v6 = v16;
    if (v12 == v11 || v13 == v11 || v14 == v11 || v15 == v11)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 67109378;
        v23[0] = v11;
        LOWORD(v23[1]) = 2112;
        *(&v23[1] + 2) = v5;
        v7 = "Diagnostic reporter snapshot rejected with expected reason %d (%@)";
        v8 = v6;
        v9 = 18;
        goto LABEL_17;
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v22 = 67109378;
      v23[0] = v11;
      LOWORD(v23[1]) = 2112;
      *(&v23[1] + 2) = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Diagnostic reporter snapshot rejected with unexpected reason %d (%@)", &v22, 0x12u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

@end