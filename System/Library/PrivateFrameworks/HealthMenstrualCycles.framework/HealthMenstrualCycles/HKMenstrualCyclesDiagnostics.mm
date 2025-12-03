@interface HKMenstrualCyclesDiagnostics
- (HKMenstrualCyclesDiagnostics)initWithHealthStore:(id)store;
- (id)_actionCompletionOnClientQueue:(id)queue;
- (void)triggerAnalysisForDiagnosticsWithCompletion:(id)completion;
@end

@implementation HKMenstrualCyclesDiagnostics

- (HKMenstrualCyclesDiagnostics)initWithHealthStore:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = HKMenstrualCyclesDiagnostics;
  v6 = [(HKMenstrualCyclesDiagnostics *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v8 = objc_alloc(MEMORY[0x277CCDAA0]);
    uUID = [MEMORY[0x277CCAD78] UUID];
    v10 = [v8 initWithHealthStore:storeCopy taskIdentifier:@"HKMCDiagnosticsServer" exportedObject:v7 taskUUID:uUID];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v10;

    [(HKTaskServerProxyProvider *)v7->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v7;
}

- (void)triggerAnalysisForDiagnosticsWithCompletion:(id)completion
{
  v4 = [(HKMenstrualCyclesDiagnostics *)self _actionCompletionOnClientQueue:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HKMenstrualCyclesDiagnostics_triggerAnalysisForDiagnosticsWithCompletion___block_invoke;
  v9[3] = &unk_2796D4938;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HKMenstrualCyclesDiagnostics_triggerAnalysisForDiagnosticsWithCompletion___block_invoke_2;
  v7[3] = &unk_2796D4960;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (id)_actionCompletionOnClientQueue:(id)queue
{
  queueCopy = queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HKMenstrualCyclesDiagnostics__actionCompletionOnClientQueue___block_invoke;
  v8[3] = &unk_2796D49B0;
  v8[4] = self;
  v9 = queueCopy;
  v5 = queueCopy;
  v6 = [v8 copy];

  return v6;
}

void __63__HKMenstrualCyclesDiagnostics__actionCompletionOnClientQueue___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 16) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HKMenstrualCyclesDiagnostics__actionCompletionOnClientQueue___block_invoke_2;
  block[3] = &unk_2796D4988;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __63__HKMenstrualCyclesDiagnostics__actionCompletionOnClientQueue___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

@end