@interface CSCPUMonitorHelper
+ (int)clearMonitorForPID:(int)a3;
@end

@implementation CSCPUMonitorHelper

+ (int)clearMonitorForPID:(int)a3
{
  *__error() = 0;
  result = proc_disable_cpumon();
  if (result)
  {
    v5 = +[CSLogger defaultCategory];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CSCPUMonitorHelper *)a3 clearMonitorForPID:v5];
    }

    return *__error();
  }

  return result;
}

+ (void)setThreshold:(NSObject *)a1 overTimeWindow:forPID:withFatalEffect:.cold.2(NSObject *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v6[0] = 67109378;
  v6[1] = v2;
  v7 = 2080;
  v8 = v4;
  _os_log_error_impl(&dword_243DC3000, a1, OS_LOG_TYPE_ERROR, "Error enabling CPU monitoring: %d (%s)", v6, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)clearMonitorForPID:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *__error();
  v5 = __error();
  v6 = strerror(*v5);
  v8[0] = 67109634;
  v8[1] = v4;
  v9 = 2080;
  v10 = v6;
  v11 = 1024;
  v12 = a1;
  _os_log_error_impl(&dword_243DC3000, a2, OS_LOG_TYPE_ERROR, "clearMonitorForPID: Error disabling CPU monitoring: %d (%s) for pid %d", v8, 0x18u);
  v7 = *MEMORY[0x277D85DE8];
}

@end