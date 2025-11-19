@interface HAMenstrualAlgorithmsDayStreamProcessor
- (HAMenstrualAlgorithmsDayStreamProcessor)initWithConfig:(id)a3;
- (void)appendDay:(id)a3;
- (void)dealloc;
@end

@implementation HAMenstrualAlgorithmsDayStreamProcessor

- (HAMenstrualAlgorithmsDayStreamProcessor)initWithConfig:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ha_get_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v29 = "[HAMenstrualAlgorithmsDayStreamProcessor initWithConfig:]";
    _os_log_impl(&dword_251282000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v26.receiver = self;
  v26.super_class = HAMenstrualAlgorithmsDayStreamProcessor;
  v6 = [(HAMenstrualAlgorithmsDayStreamProcessor *)&v26 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:100];
    dayInputBuffer = v6->_dayInputBuffer;
    v6->_dayInputBuffer = v7;

    v9 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.HealthAlgorithms.DayStreamProcessorService"];
    connectionToService = v6->_connectionToService;
    v6->_connectionToService = v9;

    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28635B710];
    [(NSXPCConnection *)v6->_connectionToService setRemoteObjectInterface:v11];

    v12 = MEMORY[0x277CBEB98];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v27[2] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
    v14 = [v12 setWithArray:v13];

    v15 = [(NSXPCConnection *)v6->_connectionToService remoteObjectInterface];
    [v15 setClasses:v14 forSelector:sel_finishSessionWithMostRecentMenstrualFlowJulianDayUpdated_withReply_ argumentIndex:0 ofReply:1];

    objc_initWeak(buf, v6);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__HAMenstrualAlgorithmsDayStreamProcessor_initWithConfig___block_invoke;
    v24[3] = &unk_2796B3C48;
    objc_copyWeak(&v25, buf);
    [(NSXPCConnection *)v6->_connectionToService setInvalidationHandler:v24];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __58__HAMenstrualAlgorithmsDayStreamProcessor_initWithConfig___block_invoke_460;
    v22[3] = &unk_2796B3C48;
    objc_copyWeak(&v23, buf);
    [(NSXPCConnection *)v6->_connectionToService setInterruptionHandler:v22];
    [(NSXPCConnection *)v6->_connectionToService resume];
    v16 = [(NSXPCConnection *)v6->_connectionToService remoteObjectProxy];
    remoteObjectProxy = v6->_remoteObjectProxy;
    v6->_remoteObjectProxy = v16;

    v18 = [(HAMenstrualAlgorithmsDayStreamProcessor *)v6 remoteObjectProxy];
    [v18 beginSessionWithConfig:v4];

    v19 = v6;
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v6;
}

void __58__HAMenstrualAlgorithmsDayStreamProcessor_initWithConfig___block_invoke(uint64_t a1)
{
  v2 = ha_get_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_251282000, v2, OS_LOG_TYPE_DEFAULT, "DayStreamProcessorService connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnectionToService:0];
}

void __58__HAMenstrualAlgorithmsDayStreamProcessor_initWithConfig___block_invoke_460(uint64_t a1)
{
  v2 = ha_get_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __58__HAMenstrualAlgorithmsDayStreamProcessor_initWithConfig___block_invoke_460_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained connectionToService];
  [v4 invalidate];
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = ha_get_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v8 = "[HAMenstrualAlgorithmsDayStreamProcessor dealloc]";
    _os_log_impl(&dword_251282000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v4 = [(HAMenstrualAlgorithmsDayStreamProcessor *)self connectionToService];
  [v4 invalidate];

  v6.receiver = self;
  v6.super_class = HAMenstrualAlgorithmsDayStreamProcessor;
  [(HAMenstrualAlgorithmsDayStreamProcessor *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)appendDay:(id)a3
{
  v10 = a3;
  v4 = [(HAMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer];
  [v4 addObject:v10];

  v5 = [(HAMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer];
  v6 = [v5 count];

  if (v6 == 100)
  {
    v7 = [(HAMenstrualAlgorithmsDayStreamProcessor *)self remoteObjectProxy];
    v8 = [(HAMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer];
    [v7 appendDays:v8];

    v9 = [(HAMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer];
    [v9 removeAllObjects];
  }
}

void __100__HAMenstrualAlgorithmsDayStreamProcessor_analyzeWithMostRecentMenstrualFlowJulianDayUpdated_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ha_get_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __100__HAMenstrualAlgorithmsDayStreamProcessor_analyzeWithMostRecentMenstrualFlowJulianDayUpdated_error___block_invoke_cold_1();
  }
}

void __58__HAMenstrualAlgorithmsDayStreamProcessor_initWithConfig___block_invoke_460_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __100__HAMenstrualAlgorithmsDayStreamProcessor_analyzeWithMostRecentMenstrualFlowJulianDayUpdated_error___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end