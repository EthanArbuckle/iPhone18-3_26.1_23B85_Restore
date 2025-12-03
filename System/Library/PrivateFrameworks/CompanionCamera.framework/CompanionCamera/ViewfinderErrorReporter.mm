@interface ViewfinderErrorReporter
+ (void)_logError:(id)error;
@end

@implementation ViewfinderErrorReporter

uint64_t __41__ViewfinderErrorReporter_report_status___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return AnalyticsSendEventLazy();
}

id __41__ViewfinderErrorReporter_report_status___block_invoke_2(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"code";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v7[1] = @"status";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)_logError:(id)error
{
  errorCopy = error;
  if (_logError__onceToken != -1)
  {
    +[ViewfinderErrorReporter _logError:];
  }

  v4 = _logError__log;
  if (os_log_type_enabled(_logError__log, OS_LOG_TYPE_ERROR))
  {
    [(ViewfinderErrorReporter *)v4 _logError:errorCopy];
  }
}

uint64_t __37__ViewfinderErrorReporter__logError___block_invoke()
{
  _logError__log = os_log_create("com.apple.NanoCamera", "ViewfinderErrorReporter");

  return MEMORY[0x2821F96F8]();
}

+ (void)_logError:(void *)a1 .cold.2(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 loggingDescription];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_243CBC000, v3, OS_LOG_TYPE_ERROR, "Reporting error %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end