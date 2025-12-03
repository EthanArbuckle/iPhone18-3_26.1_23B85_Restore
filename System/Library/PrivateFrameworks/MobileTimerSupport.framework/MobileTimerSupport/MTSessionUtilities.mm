@interface MTSessionUtilities
+ (void)logDebug:(id)debug;
+ (void)logError:(id)error;
+ (void)logInfo:(id)info;
@end

@implementation MTSessionUtilities

+ (void)logInfo:(id)info
{
  v11 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = infoCopy;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ INFO: %{public}@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)logError:(id)error
{
  errorCopy = error;
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    +[MTSessionUtilities logError:];
  }
}

+ (void)logDebug:(id)debug
{
  debugCopy = debug;
  v4 = MTLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = MTLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[MTSessionUtilities logDebug:];
    }
  }
}

+ (void)logError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_22D741000, v0, OS_LOG_TYPE_ERROR, "%{public}@ ERROR: %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)logDebug:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_22D741000, v0, OS_LOG_TYPE_DEBUG, "%{public}@ DEBUG: %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end