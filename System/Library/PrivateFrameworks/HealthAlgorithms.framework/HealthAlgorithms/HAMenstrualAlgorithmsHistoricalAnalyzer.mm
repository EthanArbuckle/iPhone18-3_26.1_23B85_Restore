@interface HAMenstrualAlgorithmsHistoricalAnalyzer
- (HAMenstrualAlgorithmsHistoricalAnalyzer)init;
- (id)analyzeWithError:(id *)error;
- (void)appendDay:(id)day;
- (void)dealloc;
@end

@implementation HAMenstrualAlgorithmsHistoricalAnalyzer

- (HAMenstrualAlgorithmsHistoricalAnalyzer)init
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = ha_get_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v30 = "[HAMenstrualAlgorithmsHistoricalAnalyzer init]";
    _os_log_impl(&dword_251282000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v27.receiver = self;
  v27.super_class = HAMenstrualAlgorithmsHistoricalAnalyzer;
  v4 = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)&v27 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:100];
    dayInputBuffer = v4->_dayInputBuffer;
    v4->_dayInputBuffer = v5;

    v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.HealthAlgorithms.HistoricalAnalyzerService"];
    connectionToService = v4->_connectionToService;
    v4->_connectionToService = v7;

    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28635B770];
    [(NSXPCConnection *)v4->_connectionToService setRemoteObjectInterface:v9];

    v10 = MEMORY[0x277CBEB98];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    v12 = [v10 setWithArray:v11];

    remoteObjectInterface = [(NSXPCConnection *)v4->_connectionToService remoteObjectInterface];
    [remoteObjectInterface setClasses:v12 forSelector:sel_finishSessionWithReply_ argumentIndex:0 ofReply:1];

    objc_initWeak(buf, v4);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __47__HAMenstrualAlgorithmsHistoricalAnalyzer_init__block_invoke;
    v25[3] = &unk_2796B3C48;
    objc_copyWeak(&v26, buf);
    [(NSXPCConnection *)v4->_connectionToService setInvalidationHandler:v25];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __47__HAMenstrualAlgorithmsHistoricalAnalyzer_init__block_invoke_563;
    v23 = &unk_2796B3C48;
    objc_copyWeak(&v24, buf);
    [(NSXPCConnection *)v4->_connectionToService setInterruptionHandler:&v20];
    [(NSXPCConnection *)v4->_connectionToService resume:v20];
    remoteObjectProxy = [(NSXPCConnection *)v4->_connectionToService remoteObjectProxy];
    remoteObjectProxy = v4->_remoteObjectProxy;
    v4->_remoteObjectProxy = remoteObjectProxy;

    remoteObjectProxy2 = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)v4 remoteObjectProxy];
    [remoteObjectProxy2 beginSession];

    v17 = v4;
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v4;
}

void __47__HAMenstrualAlgorithmsHistoricalAnalyzer_init__block_invoke(uint64_t a1)
{
  v2 = ha_get_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_251282000, v2, OS_LOG_TYPE_DEFAULT, "HistoricalAnalyzerService connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnectionToService:0];
}

void __47__HAMenstrualAlgorithmsHistoricalAnalyzer_init__block_invoke_563(uint64_t a1)
{
  v2 = ha_get_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __47__HAMenstrualAlgorithmsHistoricalAnalyzer_init__block_invoke_563_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained connectionToService];
  [v4 invalidate];
}

- (void)dealloc
{
  connectionToService = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self connectionToService];
  [connectionToService invalidate];

  v4.receiver = self;
  v4.super_class = HAMenstrualAlgorithmsHistoricalAnalyzer;
  [(HAMenstrualAlgorithmsHistoricalAnalyzer *)&v4 dealloc];
}

- (void)appendDay:(id)day
{
  dayCopy = day;
  dayInputBuffer = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self dayInputBuffer];
  [dayInputBuffer addObject:dayCopy];

  dayInputBuffer2 = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self dayInputBuffer];
  v6 = [dayInputBuffer2 count];

  if (v6 == 100)
  {
    remoteObjectProxy = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self remoteObjectProxy];
    dayInputBuffer3 = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self dayInputBuffer];
    [remoteObjectProxy appendDays:dayInputBuffer3];

    dayInputBuffer4 = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self dayInputBuffer];
    [dayInputBuffer4 removeAllObjects];
  }
}

- (id)analyzeWithError:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = ha_get_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "[HAMenstrualAlgorithmsHistoricalAnalyzer analyzeWithError:]";
    _os_log_impl(&dword_251282000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
  }

  dayInputBuffer = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self dayInputBuffer];
  v7 = [dayInputBuffer count] == 0;

  if (!v7)
  {
    remoteObjectProxy = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self remoteObjectProxy];
    dayInputBuffer2 = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self dayInputBuffer];
    [remoteObjectProxy appendDays:dayInputBuffer2];

    dayInputBuffer3 = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self dayInputBuffer];
    [dayInputBuffer3 removeAllObjects];
  }

  connectionToService = [(HAMenstrualAlgorithmsHistoricalAnalyzer *)self connectionToService];
  v12 = [connectionToService synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_565];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __60__HAMenstrualAlgorithmsHistoricalAnalyzer_analyzeWithError___block_invoke_566;
  v20[3] = &unk_2796B3CB8;
  v20[4] = &buf;
  [v12 finishSessionWithReply:v20];
  if (!*(*(&buf + 1) + 40))
  {
    v13 = ha_get_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [HAMenstrualAlgorithmsHistoricalAnalyzer analyzeWithError:];
    }

    if (error)
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      bundleIdentifier = [v15 bundleIdentifier];
      *error = [v14 errorWithDomain:bundleIdentifier code:-1 userInfo:0];
    }
  }

  v17 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __60__HAMenstrualAlgorithmsHistoricalAnalyzer_analyzeWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ha_get_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __100__HAMenstrualAlgorithmsDayStreamProcessor_analyzeWithMostRecentMenstrualFlowJulianDayUpdated_error___block_invoke_cold_1();
  }
}

void __47__HAMenstrualAlgorithmsHistoricalAnalyzer_init__block_invoke_563_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end