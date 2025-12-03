@interface HMIVideoAnalyzerClient
- (HMIVideoAnalyzerClient)initWithConfiguration:(id)configuration identifier:(id)identifier;
- (id)ensureSession;
- (void)_didFailWithError:(id)error;
- (void)_sendMessage:(SEL)message arguments:(id)arguments asynchronous:(BOOL)asynchronous completionHandler:(id)handler;
- (void)_sendMessageWithOptions:(id)options asynchronous:(BOOL)asynchronous completionHandler:(id)handler;
- (void)analyzeFragment:(id)fragment configuration:(id)configuration;
- (void)dealloc;
- (void)finishWithCompletionHandler:(id)handler;
- (void)setAnalysisFPS:(double)s;
- (void)setBoosted:(BOOL)boosted;
- (void)setDecodeMode:(int64_t)mode;
- (void)setEncode:(BOOL)encode;
- (void)setMonitored:(BOOL)monitored;
@end

@implementation HMIVideoAnalyzerClient

- (HMIVideoAnalyzerClient)initWithConfiguration:(id)configuration identifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = HMIVideoAnalyzerClient;
  v4 = [(HMIVideoAnalyzer *)&v10 initWithConfiguration:configuration identifier:identifier];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("HMIVideoAnalyzerClient", v5);
    workQueue = v4->_workQueue;
    v4->_workQueue = v6;

    session = v4->_session;
    v4->_session = 0;

    v4->_sessionCreationAttempted = 0;
    v4->_hasFailed = 0;
  }

  return v4;
}

- (id)ensureSession
{
  v37 = *MEMORY[0x277D85DE8];
  session = [(HMIVideoAnalyzerClient *)self session];
  if (session)
  {

LABEL_4:
    session2 = [(HMIVideoAnalyzerClient *)self session];
    goto LABEL_5;
  }

  if ([(HMIVideoAnalyzerClient *)self sessionCreationAttempted])
  {
    goto LABEL_4;
  }

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v9;
    _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Creating Remote Session", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  objc_initWeak(&location, selfCopy);
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v10 = getVCPHomeKitAnalysisSessionClass_softClass;
  v31 = getVCPHomeKitAnalysisSessionClass_softClass;
  if (!getVCPHomeKitAnalysisSessionClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getVCPHomeKitAnalysisSessionClass_block_invoke;
    v35 = &unk_2787529F8;
    v36 = &v28;
    __getVCPHomeKitAnalysisSessionClass_block_invoke(buf);
    v10 = v29[3];
  }

  v11 = v10;
  _Block_object_dispose(&v28, 8);
  v32[0] = @"configuration";
  configuration = [(HMIVideoAnalyzer *)selfCopy configuration];
  v32[1] = @"identifier";
  v33[0] = configuration;
  identifier = [(HMIVideoAnalyzer *)selfCopy identifier];
  v33[1] = identifier;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __39__HMIVideoAnalyzerClient_ensureSession__block_invoke;
  v25[3] = &unk_278755D20;
  objc_copyWeak(&v26, &location);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __39__HMIVideoAnalyzerClient_ensureSession__block_invoke_228;
  v23[3] = &unk_278755D48;
  objc_copyWeak(&v24, &location);
  v15 = [v10 sessionWithProperties:v14 withResultsHandler:v25 andInterruptionHandler:v23];
  [(HMIVideoAnalyzerClient *)selfCopy setSession:v15];

  session3 = [(HMIVideoAnalyzerClient *)selfCopy session];
  LODWORD(configuration) = session3 == 0;

  if (configuration)
  {
    v17 = [MEMORY[0x277CCA9B8] hmiErrorWithCode:-1 description:@"VCPHomeKitAnalysisSession connection failed."];
    [(HMIVideoAnalyzerClient *)selfCopy _didFailWithError:v17];
  }

  v18 = objc_autoreleasePoolPush();
  v19 = selfCopy;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = HMFGetLogIdentifier();
    session4 = [(HMIVideoAnalyzerClient *)v19 session];
    *buf = 138543618;
    *&buf[4] = v21;
    *&buf[12] = 2112;
    *&buf[14] = session4;
    _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Created Remote Session %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  [(HMIVideoAnalyzerClient *)v19 setSessionCreationAttempted:1];
  session2 = [(HMIVideoAnalyzerClient *)v19 session];
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
LABEL_5:

  return session2;
}

void __39__HMIVideoAnalyzerClient_ensureSession__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Received Result: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v6 delegate];
  v10 = [v3 objectForKeyedSubscript:@"selector"];
  v11 = NSSelectorFromString(v10);
  if (v11 == sel_analyzer_didAnalyzeFrameWithResult_)
  {
    v12 = [v3 objectForKeyedSubscript:@"arguments"];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_22;
    }

    v13 = [v12 objectAtIndexedSubscript:0];
    [v9 analyzer:v6 didAnalyzeFrameWithResult:v13];
LABEL_21:

    goto LABEL_22;
  }

  if (v11 == sel_analyzer_didAnalyzeFragmentWithResult_)
  {
    v12 = [v3 objectForKeyedSubscript:@"arguments"];
    v16 = [v12 objectAtIndexedSubscript:0];
    v17 = [v6 homePersonManager];
    v18 = [v6 analysisStateManager];
    v13 = [v6 finalizeFragmentResult:v16 homePersonManager:v17 analysisStateManager:v18];

    if (objc_opt_respondsToSelector())
    {
      [v9 analyzer:v6 didAnalyzeFragmentWithResult:v13];
    }

    goto LABEL_21;
  }

  if (v11 == sel_analyzer_didFailWithError_)
  {
    v12 = [v3 objectForKeyedSubscript:@"arguments"];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_22;
    }

    v13 = [v12 objectAtIndexedSubscript:0];
    [v9 analyzer:v6 didFailWithError:v13];
    goto LABEL_21;
  }

  if (v11 == sel_analyzer_didCreateTimelapseFragment_)
  {
    v12 = [v3 objectForKeyedSubscript:@"arguments"];
    if (objc_opt_respondsToSelector())
    {
      v13 = [v12 objectAtIndexedSubscript:0];
      [v9 analyzer:v6 didCreateTimelapseFragment:v13];
      goto LABEL_21;
    }

LABEL_22:

    goto LABEL_23;
  }

  if (v11 == sel_analyzer_didProduceAnalysisStateUpdate_)
  {
    v12 = [v3 objectForKeyedSubscript:@"arguments"];
    v13 = [v12 objectAtIndexedSubscript:0];
    v14 = [v6 analysisStateManager];

    if (v14 && v13)
    {
      v15 = [v6 analysisStateManager];
      [v15 publishLocalState:v13];
    }

    if (objc_opt_respondsToSelector())
    {
      [v9 analyzer:v6 didProduceAnalysisStateUpdate:v13];
    }

    goto LABEL_21;
  }

LABEL_23:
}

void __39__HMIVideoAnalyzerClient_ensureSession__block_invoke_228(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x277CCA9B8] hmiErrorWithCode:-1 description:@"VCPHomeKitAnalysisSession connection was invalidated / interrupted."];
  [WeakRetained _didFailWithError:v1];
}

- (void)_didFailWithError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if ([(HMIVideoAnalyzerClient *)self hasFailed])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Analyzer has already failed.", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    HMIErrorLog(self, errorCopy);
    delegate = [(HMIVideoAnalyzer *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate analyzer:self didFailWithError:errorCopy];
    }

    [(HMIVideoAnalyzerClient *)self setHasFailed:1];
  }
}

- (void)_sendMessageWithOptions:(id)options asynchronous:(BOOL)asynchronous completionHandler:(id)handler
{
  asynchronousCopy = asynchronous;
  v30 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v13;
    v28 = 2112;
    v29 = optionsCopy;
    _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Sending Message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  ensureSession = [(HMIVideoAnalyzerClient *)selfCopy ensureSession];
  v15 = ensureSession;
  if (ensureSession)
  {
    workQueue = selfCopy->_workQueue;
    if (asynchronousCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __81__HMIVideoAnalyzerClient__sendMessageWithOptions_asynchronous_completionHandler___block_invoke;
      block[3] = &unk_2787526C0;
      v23 = ensureSession;
      v24 = optionsCopy;
      v25 = handlerCopy;
      dispatch_async(workQueue, block);

      v17 = v23;
    }

    else
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __81__HMIVideoAnalyzerClient__sendMessageWithOptions_asynchronous_completionHandler___block_invoke_3;
      v18[3] = &unk_2787526C0;
      v19 = ensureSession;
      v20 = optionsCopy;
      v21 = handlerCopy;
      dispatch_sync(workQueue, v18);

      v17 = v19;
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] hmiErrorWithCode:-1 description:@"VCPHomeKitAnalysisSession is not available."];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v17);
    }
  }
}

void __81__HMIVideoAnalyzerClient__sendMessageWithOptions_asynchronous_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __81__HMIVideoAnalyzerClient__sendMessageWithOptions_asynchronous_completionHandler___block_invoke_2;
  v3[3] = &unk_278753FB8;
  v4 = *(a1 + 48);
  [v1 processMessageWithOptions:v2 andCompletionHandler:v3];
}

uint64_t __81__HMIVideoAnalyzerClient__sendMessageWithOptions_asynchronous_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __81__HMIVideoAnalyzerClient__sendMessageWithOptions_asynchronous_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HMIVideoAnalyzerClient__sendMessageWithOptions_asynchronous_completionHandler___block_invoke_4;
  v7[3] = &unk_278755D70;
  v5 = *(a1 + 48);
  v8 = v2;
  v9 = v5;
  v6 = v2;
  [v3 processMessageWithOptions:v4 andCompletionHandler:v7];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t __81__HMIVideoAnalyzerClient__sendMessageWithOptions_asynchronous_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

- (void)_sendMessage:(SEL)message arguments:(id)arguments asynchronous:(BOOL)asynchronous completionHandler:(id)handler
{
  asynchronousCopy = asynchronous;
  v16[1] = *MEMORY[0x277D85DE8];
  argumentsCopy = arguments;
  handlerCopy = handler;
  v15 = @"selector";
  v12 = NSStringFromSelector(message);
  v16[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v14 = [v13 mutableCopy];

  if (argumentsCopy)
  {
    [v14 setObject:argumentsCopy forKey:@"arguments"];
  }

  [(HMIVideoAnalyzerClient *)self _sendMessageWithOptions:v14 asynchronous:asynchronousCopy completionHandler:handlerCopy];
}

- (void)analyzeFragment:(id)fragment configuration:(id)configuration
{
  v11[2] = *MEMORY[0x277D85DE8];
  v11[0] = fragment;
  v11[1] = configuration;
  v7 = MEMORY[0x277CBEA60];
  configurationCopy = configuration;
  fragmentCopy = fragment;
  v10 = [v7 arrayWithObjects:v11 count:2];

  [(HMIVideoAnalyzerClient *)self _sendMessage:a2 arguments:v10 asynchronous:0 completionHandler:0];
}

- (void)finishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HMIVideoAnalyzerClient_finishWithCompletionHandler___block_invoke;
  v7[3] = &unk_278753FB8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(HMIVideoAnalyzerClient *)self _sendMessage:a2 arguments:0 asynchronous:1 completionHandler:v7];
}

- (void)setAnalysisFPS:(double)s
{
  v7[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:s];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(HMIVideoAnalyzerClient *)self _sendMessage:a2 arguments:v6 asynchronous:0];
}

- (void)setMonitored:(BOOL)monitored
{
  v7[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:monitored];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(HMIVideoAnalyzerClient *)self _sendMessage:a2 arguments:v6 asynchronous:0];
}

- (void)setEncode:(BOOL)encode
{
  v7[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:encode];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(HMIVideoAnalyzerClient *)self _sendMessage:a2 arguments:v6 asynchronous:0];
}

- (void)setDecodeMode:(int64_t)mode
{
  v7[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(HMIVideoAnalyzerClient *)self _sendMessage:a2 arguments:v6 asynchronous:0];
}

- (void)setBoosted:(BOOL)boosted
{
  v7[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:boosted];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(HMIVideoAnalyzerClient *)self _sendMessage:a2 arguments:v6 asynchronous:0];
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Invalidating XPC Connection", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  session = [(HMIVideoAnalyzerClient *)selfCopy session];

  if (session)
  {
    session2 = [(HMIVideoAnalyzerClient *)selfCopy session];
    [session2 invalidate];
  }

  v9.receiver = selfCopy;
  v9.super_class = HMIVideoAnalyzerClient;
  [(HMIVideoAnalyzer *)&v9 dealloc];
}

@end