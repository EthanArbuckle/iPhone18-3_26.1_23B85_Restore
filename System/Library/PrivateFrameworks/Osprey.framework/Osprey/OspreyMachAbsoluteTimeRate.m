@interface OspreyMachAbsoluteTimeRate
@end

@implementation OspreyMachAbsoluteTimeRate

void ___OspreyMachAbsoluteTimeRate_block_invoke()
{
  info = 0;
  v0 = mach_timebase_info(&info);
  if (v0)
  {
    v3 = v0;
    OspreyLoggingInit();
    v4 = OspreyLogContextUtility;
    if (os_log_type_enabled(OspreyLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      ___OspreyMachAbsoluteTimeRate_block_invoke_cold_1(v3, v4);
    }
  }

  else
  {
    LODWORD(v1) = info.numer;
    LODWORD(v2) = info.denom;
    *&_OspreyMachAbsoluteTimeRate_rate = v1 / v2;
    OspreyLoggingInit();
    v5 = OspreyLogContextUtility;
    if (os_log_type_enabled(OspreyLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      ___OspreyMachAbsoluteTimeRate_block_invoke_cold_2(&info, &info.denom, v5);
    }
  }
}

void ___OspreyMachAbsoluteTimeRate_block_invoke_cold_1(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "_OspreyMachAbsoluteTimeRate_block_invoke";
  v4 = 1024;
  v5 = a1;
  _os_log_debug_impl(&dword_25DDE6000, a2, OS_LOG_TYPE_DEBUG, "%s mach_timebase_info() failed with %d.", &v2, 0x12u);
}

void ___OspreyMachAbsoluteTimeRate_block_invoke_cold_2(int *a1, int *a2, os_log_t log)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v5 = 136315906;
  v6 = "_OspreyMachAbsoluteTimeRate_block_invoke";
  v7 = 1024;
  v8 = v3;
  v9 = 1024;
  v10 = v4;
  v11 = 2048;
  v12 = _OspreyMachAbsoluteTimeRate_rate;
  _os_log_debug_impl(&dword_25DDE6000, log, OS_LOG_TYPE_DEBUG, "%s machTimebaseInfo.numer = %u, machTimebaseInfo.denom = %u, rate = %f", &v5, 0x22u);
}

@end