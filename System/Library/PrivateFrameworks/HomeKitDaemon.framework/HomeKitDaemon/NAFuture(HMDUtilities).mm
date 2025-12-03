@interface NAFuture(HMDUtilities)
+ (id)combineAllFuturesFlatteningArrayResults:()HMDUtilities;
+ (id)combineAllFuturesIgnoringEmptyResults:()HMDUtilities;
+ (id)futureWithRetries:()HMDUtilities timeInterval:workQueue:block:;
+ (id)futureWithRetryIntervals:()HMDUtilities workQueue:block:;
- (id)hmfFuture;
@end

@implementation NAFuture(HMDUtilities)

- (id)hmfFuture
{
  v10 = 0;
  v2 = [MEMORY[0x277D0F7C0] futureWithPromise:&v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__NAFuture_HMDUtilities__hmfFuture__block_invoke;
  v8[3] = &unk_278688450;
  v9 = v10;
  v3 = [self addSuccessBlock:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__NAFuture_HMDUtilities__hmfFuture__block_invoke_2;
  v6[3] = &unk_27868A250;
  v7 = v10;
  v4 = [v3 addFailureBlock:v6];

  return v2;
}

+ (id)combineAllFuturesIgnoringEmptyResults:()HMDUtilities
{
  v3 = MEMORY[0x277D2C900];
  v4 = MEMORY[0x277D2C938];
  v5 = a3;
  immediateScheduler = [v4 immediateScheduler];
  v7 = [v3 combineAllFutures:v5 scheduler:immediateScheduler];

  v8 = [v7 flatMap:&__block_literal_global_755];

  return v8;
}

+ (id)combineAllFuturesFlatteningArrayResults:()HMDUtilities
{
  v3 = MEMORY[0x277D2C900];
  v4 = MEMORY[0x277D2C938];
  v5 = a3;
  immediateScheduler = [v4 immediateScheduler];
  v7 = [v3 combineAllFutures:v5 scheduler:immediateScheduler];

  v8 = [v7 flatMap:&__block_literal_global_750];

  return v8;
}

+ (id)futureWithRetryIntervals:()HMDUtilities workQueue:block:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x277D2C900]);
  v12 = v10[2](v10, v8);
  v13 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:v9];
  v14 = [v12 reschedule:v13];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __67__NAFuture_HMDUtilities__futureWithRetryIntervals_workQueue_block___block_invoke;
  v31[3] = &unk_278688450;
  v15 = v11;
  v32 = v15;
  v16 = [v14 addSuccessBlock:v31];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __67__NAFuture_HMDUtilities__futureWithRetryIntervals_workQueue_block___block_invoke_2;
  v25[3] = &unk_2786767F0;
  v26 = v8;
  v17 = v15;
  v27 = v17;
  v28 = v9;
  v29 = v10;
  selfCopy = self;
  v18 = v10;
  v19 = v9;
  v20 = v8;
  v21 = [v14 addFailureBlock:v25];
  v22 = v29;
  v23 = v17;

  return v17;
}

+ (id)futureWithRetries:()HMDUtilities timeInterval:workQueue:block:
{
  v10 = a5;
  v11 = a6;
  v12 = objc_alloc_init(MEMORY[0x277D2C900]);
  v13 = v11[2](v11, a4);
  v14 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:v10];
  v15 = [v13 reschedule:v14];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __73__NAFuture_HMDUtilities__futureWithRetries_timeInterval_workQueue_block___block_invoke;
  v32[3] = &unk_278688450;
  v16 = v12;
  v33 = v16;
  v17 = [v15 addSuccessBlock:v32];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __73__NAFuture_HMDUtilities__futureWithRetries_timeInterval_workQueue_block___block_invoke_2;
  v25[3] = &unk_2786767C8;
  v29 = a4;
  v18 = v16;
  v30 = a2;
  v26 = v18;
  v27 = v10;
  selfCopy = self;
  v28 = v11;
  v19 = v11;
  v20 = v10;
  v21 = [v15 addFailureBlock:v25];
  v22 = v28;
  v23 = v18;

  return v18;
}

@end