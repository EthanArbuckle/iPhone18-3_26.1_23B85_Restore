@interface ICSearchProfiler
+ (void)logProfilingWithMessage:(id)message searchQueryOperation:(id)operation;
+ (void)resetProfileTimer;
@end

@implementation ICSearchProfiler

+ (void)resetProfileTimer
{
  date = [MEMORY[0x277CBEAA8] date];
  v3 = profilingTimer;
  profilingTimer = date;
}

+ (void)logProfilingWithMessage:(id)message searchQueryOperation:(id)operation
{
  messageCopy = message;
  operationCopy = operation;
  v7 = os_log_create("com.apple.notes", "SearchProfiling");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ICSearchProfiler *)operationCopy logProfilingWithMessage:messageCopy searchQueryOperation:v7];
  }
}

+ (void)logProfilingWithMessage:(NSObject *)a3 searchQueryOperation:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  [profilingTimer timeIntervalSinceNow];
  v7 = 138412802;
  v8 = a1;
  v9 = 2112;
  v10 = a2;
  v11 = 2048;
  v12 = -v6;
  _os_log_debug_impl(&dword_214D51000, a3, OS_LOG_TYPE_DEBUG, "%@: %@: %f", &v7, 0x20u);
}

@end