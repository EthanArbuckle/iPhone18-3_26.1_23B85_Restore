@interface HDAutoBugCaptureReporter
+ (void)reportNotFinalSeriesSampleWithClass:(Class)a3 count:(int64_t)a4 datumCount:(int64_t)a5 reason:(id)a6;
- (HDAutoBugCaptureReporter)initWithDaemon:(id)a3;
- (HDDaemon)daemon;
- (void)_reportSnapshotWithType:(void *)a3 subType:(void *)a4 context:(void *)a5 processIdentifier:(void *)a6 thresholdValues:;
- (void)reportApplyDataFailure:(Class)a3 duringSyncFromStore:(id)a4 error:(id)a5;
- (void)reportDataCollectionSeriesProblem:(id)a3 quantityType:(id)a4;
- (void)reportJournalFailureWithErrorDescription:(id)a3 provenance:(id)a4 error:(id)a5;
- (void)reportMissingSource:(id)a3 duringSyncFromStore:(id)a4;
- (void)reportQueryDurationWithServer:(id)a3 dataCount:(int64_t)a4 duration:(double)a5;
- (void)reportSummarySharingInvitationFailureForOperation:(id)a3 error:(id)a4;
@end

@implementation HDAutoBugCaptureReporter

- (HDAutoBugCaptureReporter)initWithDaemon:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDAutoBugCaptureReporter;
  v5 = [(HDAutoBugCaptureReporter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, v4);
  }

  return v6;
}

- (void)reportQueryDurationWithServer:(id)a3 dataCount:(int64_t)a4 duration:(double)a5
{
  v8 = MEMORY[0x277CCACA8];
  v9 = a3;
  v15 = [v8 stringWithFormat:@"%lld, %lf", a4, *&a5];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 client];

  v13 = [v12 process];
  v14 = [v13 applicationIdentifier];
  [(HDAutoBugCaptureReporter *)self _reportSnapshotWithType:@"Duration" subType:v11 context:v14 processIdentifier:v15 thresholdValues:?];
}

- (void)_reportSnapshotWithType:(void *)a3 subType:(void *)a4 context:(void *)a5 processIdentifier:(void *)a6 thresholdValues:
{
  v19 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (a1)
  {
    v15 = _Block_copy(*(a1 + 16));
    v16 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, a1, v19, v11, v12, v13, v14);
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x277D6AFC8]);
      v18 = [v17 signatureWithDomain:@"HealthKit" type:v19 subType:v11 subtypeContext:v12 detectedProcess:v13 triggerThresholdValues:v14];
      [v17 snapshotWithSignature:v18 duration:0 event:0 payload:&__block_literal_global_185 reply:0.0];
    }
  }
}

- (void)reportDataCollectionSeriesProblem:(id)a3 quantityType:(id)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = [a4 identifier];
  v9 = [v6 stringWithFormat:@"%@-%@", v7, v8];

  [(HDAutoBugCaptureReporter *)self _reportSnapshotWithType:@"Series" subType:v9 context:*MEMORY[0x277CCE408] processIdentifier:0 thresholdValues:?];
}

+ (void)reportNotFinalSeriesSampleWithClass:(Class)a3 count:(int64_t)a4 datumCount:(int64_t)a5 reason:(id)a6
{
  v9 = a6;
  v14 = objc_alloc_init(HDAutoBugCaptureReporter);
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld, %ld", a4, a5];
  v11 = MEMORY[0x277CCACA8];
  v12 = NSStringFromClass(a3);
  v13 = [v11 stringWithFormat:@"%@-%@", v12, v9];

  [(HDAutoBugCaptureReporter *)v14 _reportSnapshotWithType:@"Series" subType:v13 context:*MEMORY[0x277CCE408] processIdentifier:v10 thresholdValues:?];
}

- (void)reportSummarySharingInvitationFailureForOperation:(id)a3 error:(id)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v8 = a3;
  v9 = [v7 domain];
  v10 = MEMORY[0x277CCABB0];
  v11 = [v7 code];

  v12 = [v10 numberWithInteger:v11];
  v13 = [v6 stringWithFormat:@"%@-%@-%@", v8, v9, v12];

  [(HDAutoBugCaptureReporter *)self _reportSnapshotWithType:@"Invitation" subType:v13 context:*MEMORY[0x277CCE408] processIdentifier:0 thresholdValues:?];
}

- (void)reportMissingSource:(id)a3 duringSyncFromStore:(id)a4
{
  v11 = a4;
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  if (v11)
  {
    [v6 stringWithFormat:@"%ld-%ld-%@", objc_msgSend(v11, "syncStoreType"), objc_msgSend(v11, "protocolVersion"), v7];
  }

  else
  {
    [v6 stringWithFormat:@"NoStore-%@", v7, v9, v10];
  }
  v8 = ;

  [(HDAutoBugCaptureReporter *)self _reportSnapshotWithType:@"MissingSource" subType:v8 context:*MEMORY[0x277CCE408] processIdentifier:0 thresholdValues:?];
}

- (void)reportApplyDataFailure:(Class)a3 duringSyncFromStore:(id)a4 error:(id)a5
{
  v17 = a4;
  v8 = a5;
  v9 = [v8 domain];
  if ((![v9 isEqualToString:*MEMORY[0x277D10A78]] || objc_msgSend(v8, "code") != 2) && (objc_msgSend(v8, "hk_isDuplicateObjectError") & 1) == 0 && (objc_msgSend(v8, "hk_isTransactionInterruptedError") & 1) == 0 && (objc_msgSend(v8, "hk_isHealthKitErrorWithCode:", 123) & 1) == 0)
  {
    v10 = [v8 hk_isHealthKitErrorWithCode:100];

    if (v10)
    {
      goto LABEL_9;
    }

    v11 = MEMORY[0x277CCACA8];
    v12 = [v17 syncStoreType];
    v13 = [v17 protocolVersion];
    v14 = NSStringFromClass(a3);
    v15 = [v8 domain];
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "code")}];
    v9 = [v11 stringWithFormat:@"%ld-%ld-%@ error: %@-%@", v12, v13, v14, v15, v16];

    [(HDAutoBugCaptureReporter *)self _reportSnapshotWithType:@"ApplyDataFailure" subType:v9 context:*MEMORY[0x277CCE408] processIdentifier:0 thresholdValues:?];
  }

LABEL_9:
}

- (void)reportJournalFailureWithErrorDescription:(id)a3 provenance:(id)a4 error:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 domain];
  if ((![v10 isEqualToString:*MEMORY[0x277D10A78]] || objc_msgSend(v9, "code") != 2) && (objc_msgSend(v9, "hk_isTransactionInterruptedError") & 1) == 0)
  {
    v11 = [v9 hk_isHealthKitErrorWithCode:123];

    if (v11)
    {
      goto LABEL_9;
    }

    v12 = MEMORY[0x277CCACA8];
    v13 = [v9 domain];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "code")}];
    v15 = v14;
    v16 = &stru_283BF39C8;
    if (v8)
    {
      v16 = v8;
    }

    v10 = [v12 stringWithFormat:@"%@-%@-%@-%@", v17, v13, v14, v16];

    [(HDAutoBugCaptureReporter *)self _reportSnapshotWithType:@"ApplyDataFailure" subType:v10 context:*MEMORY[0x277CCE408] processIdentifier:0 thresholdValues:?];
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