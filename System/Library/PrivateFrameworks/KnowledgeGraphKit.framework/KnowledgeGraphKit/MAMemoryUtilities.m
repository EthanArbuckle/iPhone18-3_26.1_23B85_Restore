@interface MAMemoryUtilities
+ (id)humanReadableMemoryFootprint;
+ (id)humanReadableMemorySizeWithSize:(unint64_t)a3;
+ (id)humanReadablePeakMemoryFootprint;
+ (id)humanReadableResidentMemory;
+ (unint64_t)footprintBytes;
+ (unint64_t)peakFootprintBytes;
+ (unint64_t)residentBytes;
@end

@implementation MAMemoryUtilities

+ (unint64_t)residentBytes
{
  v6 = 0;
  if (report_memory(&v6, 0, 0))
  {
    return v6;
  }

  v3 = +[MALogging sharedLogging];
  v4 = [v3 loggingConnection];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_255870000, v4, OS_LOG_TYPE_ERROR, "failed to calculate resident memory", v5, 2u);
  }

  return 0;
}

+ (unint64_t)peakFootprintBytes
{
  v6 = 0;
  if (report_memory(0, 0, &v6))
  {
    return v6;
  }

  v3 = +[MALogging sharedLogging];
  v4 = [v3 loggingConnection];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_255870000, v4, OS_LOG_TYPE_ERROR, "failed to calculate peak memory footprint", v5, 2u);
  }

  return 0;
}

+ (unint64_t)footprintBytes
{
  v6 = 0;
  if (report_memory(0, &v6, 0))
  {
    return v6;
  }

  v3 = +[MALogging sharedLogging];
  v4 = [v3 loggingConnection];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_255870000, v4, OS_LOG_TYPE_ERROR, "failed to calculate memory footprint", v5, 2u);
  }

  return 0;
}

+ (id)humanReadablePeakMemoryFootprint
{
  v8 = 0;
  if (report_memory(0, 0, &v8))
  {
    v3 = [a1 humanReadableMemorySizeWithSize:v8];
  }

  else
  {
    v4 = +[MALogging sharedLogging];
    v5 = [v4 loggingConnection];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_255870000, v5, OS_LOG_TYPE_ERROR, "failed to calculate peak memory footprint", v7, 2u);
    }

    v3 = @"0";
  }

  return v3;
}

+ (id)humanReadableMemoryFootprint
{
  v8 = 0;
  if (report_memory(0, &v8, 0))
  {
    v3 = [a1 humanReadableMemorySizeWithSize:v8];
  }

  else
  {
    v4 = +[MALogging sharedLogging];
    v5 = [v4 loggingConnection];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_255870000, v5, OS_LOG_TYPE_ERROR, "failed to calculate memory footprint", v7, 2u);
    }

    v3 = @"0";
  }

  return v3;
}

+ (id)humanReadableResidentMemory
{
  v8 = 0;
  if (report_memory(&v8, 0, 0))
  {
    v3 = [a1 humanReadableMemorySizeWithSize:v8];
  }

  else
  {
    v4 = +[MALogging sharedLogging];
    v5 = [v4 loggingConnection];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_255870000, v5, OS_LOG_TYPE_ERROR, "failed to calculate resident memory", v7, 2u);
    }

    v3 = @"0";
  }

  return v3;
}

+ (id)humanReadableMemorySizeWithSize:(unint64_t)a3
{
  if (a3 >= 0x100000)
  {
    v6 = 0;
    v7 = a3;
    do
    {
      a3 = v7 >> 10;
      v5 = v6 + 1;
      if (v6 > 4)
      {
        break;
      }

      v8 = v7 >> 30;
      v7 >>= 10;
      ++v6;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%lld %s", a3, off_2797FEAF0[v5], v3, v4];
}

@end