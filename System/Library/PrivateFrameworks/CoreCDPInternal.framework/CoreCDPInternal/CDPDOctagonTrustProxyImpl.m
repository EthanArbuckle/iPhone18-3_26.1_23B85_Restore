@interface CDPDOctagonTrustProxyImpl
- (BOOL)cacheRecoveryKey:(id)a3 forAltDSID:(id)a4 error:(id *)a5;
- (BOOL)disableRecoveryKey:(id *)a3;
- (BOOL)registerRecoveryKey:(id)a3 error:(id *)a4;
- (CDPDOctagonTrustProxyImpl)initWithContext:(id)a3;
- (id)tlkRecoverabilityForEscrow:(id)a3 record:(id)a4 source:(int64_t)a5 error:(id *)a6;
- (unint64_t)_cdpEscrowRecordViabilityStateFromRepairReason:(int64_t)a3;
- (void)_retryableFetchAllEscrowRecordWithContext:(id)a3 completion:(id)a4;
- (void)_retryableFetchEscrowRecordWithContext:(id)a3 completion:(id)a4;
- (void)escrowCheckWithIsBackground:(BOOL)a3 completion:(id)a4;
- (void)fetchAllEscrowRecords:(id)a3 forceFetch:(BOOL)a4 completion:(id)a5;
- (void)fetchAllEscrowRecords:(id)a3 source:(int64_t)a4 completion:(id)a5;
- (void)fetchEscrowRecords:(id)a3 forceFetch:(BOOL)a4 completion:(id)a5;
- (void)fetchEscrowRecords:(id)a3 source:(int64_t)a4 completion:(id)a5;
@end

@implementation CDPDOctagonTrustProxyImpl

- (CDPDOctagonTrustProxyImpl)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDPDOctagonTrustProxyImpl;
  v6 = [(CDPDOctagonTrustProxyImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cdpContext, a3);
  }

  return v7;
}

- (void)fetchEscrowRecords:(id)a3 forceFetch:(BOOL)a4 completion:(id)a5
{
  if (a4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [(CDPDOctagonTrustProxyImpl *)self fetchEscrowRecords:a3 source:v5 completion:a5];
}

- (void)fetchEscrowRecords:(id)a3 source:(int64_t)a4 completion:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = MEMORY[0x277CDBD50];
  v10 = a3;
  v11 = objc_alloc_init(v9);
  [v11 setContext:*MEMORY[0x277CDBD90]];
  v12 = [(CDPContext *)self->_cdpContext altDSID];
  [v11 setAltDSID:v12];

  v13 = [MEMORY[0x277D36DA0] dictionaryToEscrowAuthenticationInfo:v10];

  [v11 setEscrowAuth:v13];
  if (objc_opt_respondsToSelector())
  {
    v14 = [(CDPContext *)self->_cdpContext telemetryFlowID];
    [v11 setFlowID:v14];
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [(CDPContext *)self->_cdpContext telemetryDeviceSessionID];
    [v11 setDeviceSessionID:v15];
  }

  if (objc_opt_respondsToSelector())
  {
    [v11 setEscrowFetchSource:a4];
  }

  v16 = _CDPSignpostLogSystem();
  v17 = _CDPSignpostCreate();
  v19 = v18;

  v20 = _CDPSignpostLogSystem();
  v21 = v20;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v17, "FetchEscrowRecords", " enableTelemetry=YES ", buf, 2u);
  }

  v22 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v41 = v17;
    _os_log_impl(&dword_24510B000, v22, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchEscrowRecords  enableTelemetry=YES ", buf, 0xCu);
  }

  v23 = *MEMORY[0x277CFD930];
  v24 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD738] category:*MEMORY[0x277CFD930]];
  v25 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v25 sendEvent:v24];

  v26 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD730] category:v23];
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v26 setObject:v27 forKeyedSubscript:*MEMORY[0x277CFD718]];

  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = __66__CDPDOctagonTrustProxyImpl_fetchEscrowRecords_source_completion___block_invoke;
  v35 = &unk_278E24C70;
  v38 = v17;
  v39 = v19;
  v36 = v26;
  v37 = v8;
  v28 = v8;
  v29 = v26;
  v30 = _Block_copy(&v32);
  [(CDPDOctagonTrustProxyImpl *)self _retryableFetchEscrowRecordWithContext:v11 completion:v30, v32, v33, v34, v35];

  v31 = *MEMORY[0x277D85DE8];
}

void __66__CDPDOctagonTrustProxyImpl_fetchEscrowRecords_source_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = !v8;
  if (v8)
  {
    v10 = MEMORY[0x277CBEC38];
  }

  else
  {
    v10 = MEMORY[0x277CBEC28];
  }

  [*(a1 + 32) setObject:v10 forKeyedSubscript:*MEMORY[0x277CE4590]];
  [*(a1 + 32) populateUnderlyingErrorsStartingWithRootError:v7];
  v11 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v11 sendEvent:*(a1 + 32)];

  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  Nanoseconds = _CDPSignpostGetNanoseconds();
  v15 = _CDPSignpostLogSystem();
  v16 = v15;
  v17 = *(a1 + 48);
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v28 = 67240192;
    LODWORD(v29) = [v7 code];
    _os_signpost_emit_with_name_impl(&dword_24510B000, v16, OS_SIGNPOST_INTERVAL_END, v17, "FetchEscrowRecords", " fetchError=%{public,signpost.telemetry:number1,name=fetchError}d ", &v28, 8u);
  }

  v18 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = Nanoseconds / 1000000000.0;
    v20 = *(a1 + 48);
    v21 = [v7 code];
    v28 = 134218496;
    v29 = v20;
    v30 = 2048;
    v31 = v19;
    v32 = 1026;
    v33 = v21;
    _os_log_impl(&dword_24510B000, v18, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchEscrowRecords  fetchError=%{public,signpost.telemetry:number1,name=fetchError}d ", &v28, 0x1Cu);
  }

  v22 = _CDPLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    __66__CDPDOctagonTrustProxyImpl_fetchEscrowRecords_source_completion___block_invoke_cold_1();
  }

  if (v9)
  {
    v23 = _CDPLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __66__CDPDOctagonTrustProxyImpl_fetchEscrowRecords_source_completion___block_invoke_cold_2();
    }

    v24 = *(a1 + 40);
    if (v24)
    {
      v25 = *(v24 + 16);
LABEL_24:
      v25();
    }
  }

  else
  {
    v26 = *(a1 + 40);
    if (v26)
    {
      v25 = *(v26 + 16);
      goto LABEL_24;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_retryableFetchEscrowRecordWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(_TtC15CoreCDPInternal28CDPExponentialRetryScheduler);
  [(CDPExponentialRetryScheduler *)v8 retryFetchEscrowRecord:v7 cdpContext:self->_cdpContext completionHandler:v6];
}

- (void)fetchAllEscrowRecords:(id)a3 forceFetch:(BOOL)a4 completion:(id)a5
{
  if (a4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [(CDPDOctagonTrustProxyImpl *)self fetchAllEscrowRecords:a3 source:v5 completion:a5];
}

- (void)fetchAllEscrowRecords:(id)a3 source:(int64_t)a4 completion:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = MEMORY[0x277CDBD50];
  v10 = a3;
  v11 = objc_alloc_init(v9);
  [v11 setContext:*MEMORY[0x277CDBD90]];
  v12 = [(CDPContext *)self->_cdpContext altDSID];
  [v11 setAltDSID:v12];

  v13 = [MEMORY[0x277D36DA0] dictionaryToEscrowAuthenticationInfo:v10];

  [v11 setEscrowAuth:v13];
  if (objc_opt_respondsToSelector())
  {
    v14 = [(CDPContext *)self->_cdpContext telemetryFlowID];
    [v11 setFlowID:v14];
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [(CDPContext *)self->_cdpContext telemetryDeviceSessionID];
    [v11 setDeviceSessionID:v15];
  }

  if (objc_opt_respondsToSelector())
  {
    [v11 setEscrowFetchSource:a4];
  }

  v16 = *MEMORY[0x277CFD930];
  v17 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD738] category:*MEMORY[0x277CFD930]];
  v18 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v18 sendEvent:v17];

  v19 = _CDPSignpostLogSystem();
  v20 = _CDPSignpostCreate();
  v22 = v21;

  v23 = _CDPSignpostLogSystem();
  v24 = v23;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v20, "FetchEscrowRecords", " enableTelemetry=YES ", buf, 2u);
  }

  v25 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v41 = v20;
    _os_log_impl(&dword_24510B000, v25, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchEscrowRecords  enableTelemetry=YES ", buf, 0xCu);
  }

  v26 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD730] category:v16];
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v26 setObject:v27 forKeyedSubscript:*MEMORY[0x277CFD718]];

  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = __69__CDPDOctagonTrustProxyImpl_fetchAllEscrowRecords_source_completion___block_invoke;
  v35 = &unk_278E24C70;
  v38 = v20;
  v39 = v22;
  v36 = v26;
  v37 = v8;
  v28 = v8;
  v29 = v26;
  v30 = _Block_copy(&v32);
  [(CDPDOctagonTrustProxyImpl *)self _retryableFetchAllEscrowRecordWithContext:v11 completion:v30, v32, v33, v34, v35];

  v31 = *MEMORY[0x277D85DE8];
}

void __69__CDPDOctagonTrustProxyImpl_fetchAllEscrowRecords_source_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = !v8;
  if (v8)
  {
    v10 = MEMORY[0x277CBEC38];
  }

  else
  {
    v10 = MEMORY[0x277CBEC28];
  }

  [*(a1 + 32) setObject:v10 forKeyedSubscript:*MEMORY[0x277CE4590]];
  [*(a1 + 32) populateUnderlyingErrorsStartingWithRootError:v7];
  v11 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v11 sendEvent:*(a1 + 32)];

  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  Nanoseconds = _CDPSignpostGetNanoseconds();
  v15 = _CDPSignpostLogSystem();
  v16 = v15;
  v17 = *(a1 + 48);
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v28 = 67240192;
    LODWORD(v29) = [v7 code];
    _os_signpost_emit_with_name_impl(&dword_24510B000, v16, OS_SIGNPOST_INTERVAL_END, v17, "FetchEscrowRecords", " fetchError=%{public,signpost.telemetry:number1,name=fetchError}d ", &v28, 8u);
  }

  v18 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = Nanoseconds / 1000000000.0;
    v20 = *(a1 + 48);
    v21 = [v7 code];
    v28 = 134218496;
    v29 = v20;
    v30 = 2048;
    v31 = v19;
    v32 = 1026;
    v33 = v21;
    _os_log_impl(&dword_24510B000, v18, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchEscrowRecords  fetchError=%{public,signpost.telemetry:number1,name=fetchError}d ", &v28, 0x1Cu);
  }

  v22 = _CDPLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    __69__CDPDOctagonTrustProxyImpl_fetchAllEscrowRecords_source_completion___block_invoke_cold_1();
  }

  if (v9)
  {
    v23 = _CDPLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __69__CDPDOctagonTrustProxyImpl_fetchAllEscrowRecords_source_completion___block_invoke_cold_2();
    }

    v24 = *(a1 + 40);
    if (v24)
    {
      v25 = *(v24 + 16);
LABEL_24:
      v25();
    }
  }

  else
  {
    v26 = *(a1 + 40);
    if (v26)
    {
      v25 = *(v26 + 16);
      goto LABEL_24;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_retryableFetchAllEscrowRecordWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(_TtC15CoreCDPInternal28CDPExponentialRetryScheduler);
  [(CDPExponentialRetryScheduler *)v8 retryFetchAllEscrowRecord:v7 cdpContext:self->_cdpContext completionHandler:v6];
}

- (id)tlkRecoverabilityForEscrow:(id)a3 record:(id)a4 source:(int64_t)a5 error:(id *)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CDBD50];
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(v10);
  [v13 setContext:*MEMORY[0x277CDBD90]];
  if (objc_opt_respondsToSelector())
  {
    v14 = [(CDPContext *)self->_cdpContext telemetryFlowID];
    [v13 setFlowID:v14];
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [(CDPContext *)self->_cdpContext telemetryDeviceSessionID];
    [v13 setDeviceSessionID:v15];
  }

  v16 = [MEMORY[0x277CFD480] sharedInstance];
  v17 = [v16 primaryAccountAltDSID];

  [v13 setAltDSID:v17];
  v18 = [MEMORY[0x277D36DA0] dictionaryToEscrowAuthenticationInfo:v12];

  [v13 setEscrowAuth:v18];
  if (objc_opt_respondsToSelector())
  {
    [v13 setEscrowFetchSource:a5];
  }

  v19 = _CDPSignpostLogSystem();
  v20 = _CDPSignpostCreate();

  v21 = _CDPSignpostLogSystem();
  v22 = v21;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "TLKRecoverability", " enableTelemetry=YES ", buf, 2u);
  }

  v23 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v41 = v20;
    _os_log_impl(&dword_24510B000, v23, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: TLKRecoverability  enableTelemetry=YES ", buf, 0xCu);
  }

  v24 = [objc_alloc(MEMORY[0x277CDBD48]) initWithContextData:v13];
  v39 = 0;
  v25 = [v24 tlkRecoverabilityForEscrowRecord:v11 error:&v39];

  v26 = v39;
  Nanoseconds = _CDPSignpostGetNanoseconds();
  v28 = _CDPSignpostLogSystem();
  v29 = v28;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    v30 = [v26 code];
    *buf = 67240192;
    LODWORD(v41) = v30;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v29, OS_SIGNPOST_INTERVAL_END, v20, "TLKRecoverability", " resultError=%{public,signpost.telemetry:number1,name=resultError}d ", buf, 8u);
  }

  v31 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [v26 code];
    *buf = 134218496;
    v41 = v20;
    v42 = 2048;
    v43 = Nanoseconds / 1000000000.0;
    v44 = 1026;
    v45 = v32;
    _os_log_impl(&dword_24510B000, v31, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: TLKRecoverability  resultError=%{public,signpost.telemetry:number1,name=resultError}d ", buf, 0x1Cu);
  }

  v33 = _CDPLogSystem();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    [CDPDOctagonTrustProxyImpl tlkRecoverabilityForEscrow:record:source:error:];
  }

  if (v26 || !v25)
  {
    v35 = _CDPLogSystem();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [CDPDOctagonTrustProxyImpl tlkRecoverabilityForEscrow:record:source:error:];
    }

    if (a6)
    {
      v36 = v26;
      v34 = 0;
      *a6 = v26;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = v25;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v34;
}

- (BOOL)disableRecoveryKey:(id *)a3
{
  v4 = [(CDPContext *)self->_cdpContext cliqueConfiguration];
  v5 = [objc_alloc(MEMORY[0x277CDBD48]) initWithContextData:v4];
  LOBYTE(a3) = [v5 removeRecoveryKey:v4 error:a3];

  return a3;
}

- (BOOL)cacheRecoveryKey:(id)a3 forAltDSID:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = +[CDPRecoveryKeyCache sharedInstance];
  v9 = [(CDPContext *)self->_cdpContext altDSID];
  LOBYTE(a5) = [v8 cacheRecoveryKey:v7 forAltDSID:v9 error:a5];

  return a5;
}

- (BOOL)registerRecoveryKey:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  cdpContext = self->_cdpContext;
  v6 = a3;
  v7 = [(CDPContext *)cdpContext octagonConfigurationContext];
  [v7 setContext:*MEMORY[0x277CDBD90]];
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 141558274;
    v15 = 1752392040;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Registering recovery key with context %{mask.hash}@", &v14, 0x16u);
  }

  v9 = [MEMORY[0x277CDBD48] registerRecoveryKeyWithContext:v7 recoveryKey:v6 error:a4];
  if (v9)
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "Successfully registered recovery key", &v14, 2u);
    }
  }

  else
  {
    v10 = _CDPLogSystem();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (a4)
    {
      if (v11)
      {
        [CDPDOctagonTrustProxyImpl registerRecoveryKey:a4 error:?];
      }
    }

    else if (v11)
    {
      [CDPDOctagonTrustProxyImpl registerRecoveryKey:error:];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)escrowCheckWithIsBackground:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(CDPContext *)self->_cdpContext octagonConfigurationContext];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__3;
  v27[4] = __Block_byref_object_dispose__3;
  v28 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__3;
  v25[4] = __Block_byref_object_dispose__3;
  v26 = 0;
  v8 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD6E8] category:*MEMORY[0x277CFD930]];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__CDPDOctagonTrustProxyImpl_escrowCheckWithIsBackground_completion___block_invoke;
  aBlock[3] = &unk_278E24C98;
  v23 = v27;
  aBlock[4] = self;
  v9 = v8;
  v21 = v9;
  v24 = v25;
  v10 = v6;
  v22 = v10;
  v11 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__CDPDOctagonTrustProxyImpl_escrowCheckWithIsBackground_completion___block_invoke_32;
  v15[3] = &unk_278E24CC0;
  v17 = v27;
  v12 = v7;
  v19 = a3;
  v16 = v12;
  v18 = v25;
  v13 = _Block_copy(v15);
  v14 = [objc_alloc(MEMORY[0x277CE4698]) initWithMaxRetries:2];
  [v14 scheduleTask:v13 shouldRetry:&__block_literal_global_3 completionHandler:v11];

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
}

void __68__CDPDOctagonTrustProxyImpl_escrowCheckWithIsBackground_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [*(*(*(a1 + 56) + 8) + 40) repairReason];
  v6 = [*(a1 + 32) _cdpEscrowRecordViabilityStateFromRepairReason:v5];
  v7 = *(a1 + 40);
  v8 = *MEMORY[0x277CE4590];
  if (v4)
  {
    [v7 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v8];
  }

  else
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v8];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
    [*(a1 + 40) setObject:v9 forKeyedSubscript:*MEMORY[0x277CEC8F0]];
  }

  [*(a1 + 40) populateUnderlyingErrorsStartingWithRootError:v4];
  v10 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v10 sendEvent:*(a1 + 40)];

  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 134218240;
    v27 = v5;
    v28 = 2048;
    v29 = v6;
    _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "Escrow check completed with repair reason: %ld and viabilityState: %lu", &v26, 0x16u);
  }

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __68__CDPDOctagonTrustProxyImpl_escrowCheckWithIsBackground_completion___block_invoke_cold_1();
    }

    goto LABEL_9;
  }

  v15 = *(*(*(a1 + 56) + 8) + 40);
  if (!v15)
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __68__CDPDOctagonTrustProxyImpl_escrowCheckWithIsBackground_completion___block_invoke_cold_2();
    }

LABEL_9:

    v13 = *(a1 + 48);
    if (v13)
    {
      v14 = *(v13 + 16);
LABEL_32:
      v14();
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  if (([v15 octagonTrusted] & 1) == 0)
  {
    v18 = _CDPLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_24510B000, v18, OS_LOG_TYPE_DEFAULT, "Escrow check - Failed to perform escrow check because octagon untrusted", &v26, 2u);
    }

    v19 = *(a1 + 48);
    if (v19)
    {
      v14 = *(v19 + 16);
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (![*(*(*(a1 + 56) + 8) + 40) secureTermsNeeded])
  {
    v20 = [*(*(*(a1 + 56) + 8) + 40) needsReenroll];
    v21 = _CDPLogSystem();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (!v22)
      {
        goto LABEL_30;
      }

      v26 = 134217984;
      v27 = v6;
      v23 = "Escrow check - needs reenroll with viability state: %lu";
    }

    else
    {
      if (!v22)
      {
        goto LABEL_30;
      }

      v26 = 134217984;
      v27 = v5;
      v23 = "Escrow check - recoverable with repairReason: %ld";
    }

    _os_log_impl(&dword_24510B000, v21, OS_LOG_TYPE_DEFAULT, v23, &v26, 0xCu);
LABEL_30:

    v24 = *(a1 + 48);
    if (v24)
    {
      v14 = *(v24 + 16);
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v16 = _CDPLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_24510B000, v16, OS_LOG_TYPE_DEFAULT, "Escrow check - Failed to perform escrow check because secure terms needed", &v26, 2u);
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    v14 = *(v17 + 16);
    goto LABEL_32;
  }

LABEL_33:

  v25 = *MEMORY[0x277D85DE8];
}

void __68__CDPDOctagonTrustProxyImpl_escrowCheckWithIsBackground_completion___block_invoke_32(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CDBD48];
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = a2;
  v8 = [v3 escrowCheck:v4 isBackgroundCheck:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = objc_alloc_init(MEMORY[0x277D36D90]);
  v7[2](v7, v11, *(*(*(a1 + 48) + 8) + 40));
}

- (unint64_t)_cdpEscrowRecordViabilityStateFromRepairReason:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_245199B20[a3 - 1];
  }
}

void __66__CDPDOctagonTrustProxyImpl_fetchEscrowRecords_source_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24510B000, v0, v1, "Fetched escrow records: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__CDPDOctagonTrustProxyImpl_fetchEscrowRecords_source_completion___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __69__CDPDOctagonTrustProxyImpl_fetchAllEscrowRecords_source_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24510B000, v0, v1, "Fetched all escrow records: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__CDPDOctagonTrustProxyImpl_fetchAllEscrowRecords_source_completion___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)tlkRecoverabilityForEscrow:record:source:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24510B000, v0, v1, "Checked for recoverability: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)tlkRecoverabilityForEscrow:record:source:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)registerRecoveryKey:(uint64_t *)a1 error:.cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__CDPDOctagonTrustProxyImpl_escrowCheckWithIsBackground_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end