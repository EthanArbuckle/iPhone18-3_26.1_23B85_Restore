@interface MXMProxyServiceManager
+ (MXMProxyServiceManager)shared;
- (BOOL)wake;
- (MetricMeasurementHelperProtocol_Internal)_proxyObject;
- (id)_sampleWithProxyMetric:(id)a3 timeout:(double)a4 stopReason:(unint64_t *)a5;
- (id)initInternal;
- (void)_quiesceBeforeIteration:(double)a3 timeout:(double)a4 response:(id)a5;
- (void)_startFunctionCoverageCollection:(id)a3 response:(id)a4;
- (void)_startPerformanceTrace:(id)a3 response:(id)a4;
- (void)_stopFunctionCoverageCollection:(id)a3;
- (void)_stopPerformanceTrace:(id)a3;
- (void)_terminateProcessesBeforeIteration:(id)a3 response:(id)a4;
- (void)_uncacheBeforeIteration:(id)a3 response:(id)a4;
- (void)dealloc;
@end

@implementation MXMProxyServiceManager

+ (MXMProxyServiceManager)shared
{
  if (shared_onceToken != -1)
  {
    +[MXMProxyServiceManager shared];
  }

  v3 = shared__shared;

  return v3;
}

uint64_t __32__MXMProxyServiceManager_shared__block_invoke()
{
  shared__shared = [[MXMProxyServiceManager alloc] initInternal];

  return MEMORY[0x2821F96F8]();
}

- (id)initInternal
{
  v7.receiver = self;
  v7.super_class = MXMProxyServiceManager;
  v2 = [(MXMProxyServiceManager *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.metricmeasurement.MetricMeasurementHelper"];
    serviceConnection = v2->__serviceConnection;
    v2->__serviceConnection = v3;

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286A2D650];
    [(NSXPCConnection *)v2->__serviceConnection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->__serviceConnection resume];
  }

  return v2;
}

- (MetricMeasurementHelperProtocol_Internal)_proxyObject
{
  v2 = [(MXMProxyServiceManager *)self _serviceConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_75];

  return v3;
}

void __38__MXMProxyServiceManager__proxyObject__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _MXMGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_258DAA000, v3, OS_LOG_TYPE_ERROR, "Error occured with connection: %@. Nilling the manager.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)wake
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v2 = [(MXMProxyServiceManager *)self _proxyObject];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__MXMProxyServiceManager_wake__block_invoke;
  v6[3] = &unk_2798C9438;
  v6[4] = &v7;
  [v2 _wakeWithPhrase:@"Copyright © 2019 Apple" response:v6];

  v3 = v8[5];
  v4 = [@"Copyright © 2019 Apple" stringByAppendingString:@"ACK"];
  LOBYTE(v3) = [v3 isEqualToString:v4];

  _Block_object_dispose(&v7, 8);
  return v3;
}

- (id)_sampleWithProxyMetric:(id)a3 timeout:(double)a4 stopReason:(unint64_t *)a5
{
  v8 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = [(MXMProxyServiceManager *)self _proxyObject];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__MXMProxyServiceManager__sampleWithProxyMetric_timeout_stopReason___block_invoke;
  v12[3] = &unk_2798C9460;
  v12[4] = &v17;
  v12[5] = &v13;
  [v9 _sampleWithProxyMetric:v8 timeout:v12 response:a4];

  if (a5)
  {
    *a5 = v14[3];
  }

  v10 = v18[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v10;
}

void __68__MXMProxyServiceManager__sampleWithProxyMetric_timeout_stopReason___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) = a3;
}

- (void)_startPerformanceTrace:(id)a3 response:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v8 = [(MXMProxyServiceManager *)self _proxyObject];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__MXMProxyServiceManager__startPerformanceTrace_response___block_invoke;
  v9[3] = &unk_2798C9488;
  v9[4] = &v28;
  v9[5] = &v22;
  v9[6] = &v16;
  v9[7] = &v10;
  [v8 _startPerformanceTraceHelper:v6 response:v9];

  v7[2](v7, *(v29 + 24), v23[5], v17[5], v11[5]);
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
}

void __58__MXMProxyServiceManager__startPerformanceTrace_response___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  *(*(a1[4] + 8) + 24) = (v7 | v8 | v9) == 0;
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[6] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[7] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

- (void)_stopPerformanceTrace:(id)a3
{
  v50[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy_;
  v47 = __Block_byref_object_dispose_;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy_;
  v41 = __Block_byref_object_dispose_;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = [(MXMProxyServiceManager *)self _proxyObject];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__MXMProxyServiceManager__stopPerformanceTrace___block_invoke;
  v12[3] = &unk_2798C94B0;
  v12[4] = &v31;
  v12[5] = &v25;
  v12[6] = &v19;
  v12[7] = &v13;
  v12[8] = &v43;
  v12[9] = &v37;
  [v5 _stopPerformanceTraceHelper:v12];

  v6 = v44[5];
  if (v6 && (v7 = v38[5]) != 0)
  {
    v8 = 0;
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v49 = *MEMORY[0x277CCA450];
    v50[0] = @"Unable to access performance trace file.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v8 = [v9 errorWithDomain:@"InstrumentErrorDomain" code:0 userInfo:v10];

    v6 = v44[5];
    v7 = v38[5];
  }

  v4[2](v4, v6, v7, v8, v32[5], v26[5], v20[5], v14[5]);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  v11 = *MEMORY[0x277D85DE8];
}

void __48__MXMProxyServiceManager__stopPerformanceTrace___block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = *(a1[4] + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v15;
  v35 = v15;

  v21 = *(a1[5] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v16;
  v23 = v16;

  v24 = *(a1[6] + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v17;
  v26 = v17;

  v27 = *(a1[7] + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v18;
  v29 = v18;

  v30 = *(a1[8] + 8);
  v31 = *(v30 + 40);
  *(v30 + 40) = v13;
  v32 = v13;

  v33 = *(a1[9] + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v14;
}

- (void)_startFunctionCoverageCollection:(id)a3 response:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v8 = [(MXMProxyServiceManager *)self _proxyObject];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__MXMProxyServiceManager__startFunctionCoverageCollection_response___block_invoke;
  v9[3] = &unk_2798C94D8;
  v9[4] = &v16;
  v9[5] = &v10;
  [v8 _startFunctionCoverageCollectionHelper:v6 response:v9];

  (*(v7 + 2))(v7, *(v17 + 24), v11[5], 0);
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
}

- (void)_stopFunctionCoverageCollection:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v5 = [(MXMProxyServiceManager *)self _proxyObject];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__MXMProxyServiceManager__stopFunctionCoverageCollection___block_invoke;
  v6[3] = &unk_2798C9500;
  v6[4] = &v13;
  v6[5] = &v7;
  [v5 _stopFunctionCoverageCollectionHelper:v6];

  v4[2](v4, v14[5], v8[5]);
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
}

void __58__MXMProxyServiceManager__stopFunctionCoverageCollection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)_quiesceBeforeIteration:(double)a3 timeout:(double)a4 response:(id)a5
{
  v8 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v9 = [(MXMProxyServiceManager *)self _proxyObject];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__MXMProxyServiceManager__quiesceBeforeIteration_timeout_response___block_invoke;
  v10[3] = &unk_2798C9528;
  v10[4] = &v17;
  v10[5] = &v11;
  [v9 _quiesceBeforeIterationHelper:v10 timeout:a3 response:a4];

  v8[2](v8, *(v18 + 24), v12[5]);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
}

- (void)_uncacheBeforeIteration:(id)a3 response:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v8 = [(MXMProxyServiceManager *)self _proxyObject];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__MXMProxyServiceManager__uncacheBeforeIteration_response___block_invoke;
  v9[3] = &unk_2798C9528;
  v9[4] = &v16;
  v9[5] = &v10;
  [v8 _uncacheBeforeIterationHelper:v6 response:v9];

  v7[2](v7, *(v17 + 24), v11[5]);
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
}

- (void)_terminateProcessesBeforeIteration:(id)a3 response:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v8 = [(MXMProxyServiceManager *)self _proxyObject];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__MXMProxyServiceManager__terminateProcessesBeforeIteration_response___block_invoke;
  v9[3] = &unk_2798C9528;
  v9[4] = &v16;
  v9[5] = &v10;
  [v8 _terminateProcessesBeforeIterationHelper:v6 response:v9];

  v7[2](v7, *(v17 + 24), v11[5]);
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
}

- (void)dealloc
{
  v3 = [(MXMProxyServiceManager *)self _serviceConnection];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = MXMProxyServiceManager;
  [(MXMProxyServiceManager *)&v4 dealloc];
}

@end