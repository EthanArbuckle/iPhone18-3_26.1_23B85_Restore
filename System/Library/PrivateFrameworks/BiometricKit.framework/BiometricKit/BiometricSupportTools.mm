@interface BiometricSupportTools
+ (id)dateFromNanoTime:(unint64_t)a3 nanoseconds:(unsigned int *)a4;
+ (void)analyticsOSLogNSDictionary:(id)a3 forEvent:(id)a4 toLogPath:(id)a5 withPrefix:(id)a6;
@end

@implementation BiometricSupportTools

+ (id)dateFromNanoTime:(unint64_t)a3 nanoseconds:(unsigned int *)a4
{
  result = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:a3 / 1000000000.0];
  if (a4)
  {
    *a4 = a3 % 0x3B9ACA00;
  }

  return result;
}

+ (void)analyticsOSLogNSDictionary:(id)a3 forEvent:(id)a4 toLogPath:(id)a5 withPrefix:(id)a6
{
  v49 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v35 = a4;
  v10 = a5;
  v11 = a6;
  v32 = os_transaction_create();
  v12 = [v9 description];
  v13 = [v12 length];
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v14 = [MEMORY[0x1E695DF70] array];
  queue = dispatch_queue_create("com.apple.biometrickit.analyticsFileLog", 0);
  if (queue)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[BiometricSupportTools analyticsOSLogNSDictionary:forEvent:toLogPath:withPrefix:];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  +[BiometricSupportTools analyticsOSLogNSDictionary:forEvent:toLogPath:withPrefix:];
LABEL_3:
  if (isInternalBuild_onceToken == -1)
  {
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    +[BiometricSupportTools analyticsOSLogNSDictionary:forEvent:toLogPath:withPrefix:];
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  if (isInternalBuild_isInternal)
  {
    v15 = +[BioUserDefaults sharedInstance];
    v16 = [v15 BOOLForKey:@"analyticsSaveToFile"];

    if (v16)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v47 = __Block_byref_object_copy__1;
      *v48 = __Block_byref_object_dispose__1;
      v17 = MEMORY[0x1E696AEC0];
      v18 = [MEMORY[0x1E695DF00] date];
      [v18 timeIntervalSince1970];
      *&v48[8] = [v17 stringWithFormat:@"%@/%d_%@.plist", v10, v19, v35];

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __82__BiometricSupportTools_analyticsOSLogNSDictionary_forEvent_toLogPath_withPrefix___block_invoke;
      block[3] = &unk_1E8304380;
      v37 = v32;
      v38 = v10;
      v42 = buf;
      v39 = v35;
      v40 = v11;
      v41 = v9;
      dispatch_async(queue, block);

      _Block_object_dispose(buf, 8);
    }
  }

LABEL_8:
  if (v13)
  {
    v20 = 0;
    do
    {
      [v12 getParagraphStart:&v45 end:&v44 contentsEnd:&v43 forRange:{v20, 0}];
      v21 = [v12 substringWithRange:{v45, v43 - v45}];
      [v14 addObject:v21];

      v20 = v44;
    }

    while (v44 < v13);
  }

  v34 = v11;
  v30 = v10;
  v33 = [v14 count] / 0x19uLL + 1;
  v22 = [MEMORY[0x1E696AD60] string];
  if ([v14 count])
  {
    v23 = 0;
    v24 = 1;
    do
    {
      v25 = [v14 objectAtIndexedSubscript:v23];
      [v22 appendString:v25];

      [v22 appendString:@"\n"];
      if (v24 - 1 < v23 / 0x19)
      {
        if (__osLog)
        {
          v26 = __osLog;
        }

        else
        {
          v26 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413314;
          *&buf[4] = v34;
          *&buf[12] = 2112;
          *&buf[14] = v35;
          *&buf[22] = 2048;
          v47 = v24;
          *v48 = 2048;
          *&v48[2] = v33;
          *&v48[10] = 2112;
          *&v48[12] = v22;
          _os_log_impl(&dword_1C82AD000, v26, OS_LOG_TYPE_DEBUG, "%@: sendEvent: %@ (print %ld of %ld): \n%@\n", buf, 0x34u);
        }

        v27 = [MEMORY[0x1E696AD60] string];

        ++v24;
        v22 = v27;
      }

      ++v23;
    }

    while (v23 < [v14 count]);
  }

  else
  {
    v24 = 1;
  }

  if (__osLog)
  {
    v28 = __osLog;
  }

  else
  {
    v28 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    *&buf[4] = v34;
    *&buf[12] = 2112;
    *&buf[14] = v35;
    *&buf[22] = 2048;
    v47 = v24;
    *v48 = 2048;
    *&v48[2] = v33;
    *&v48[10] = 2112;
    *&v48[12] = v22;
    _os_log_impl(&dword_1C82AD000, v28, OS_LOG_TYPE_DEBUG, "%@: sendEvent: %@ (print %ld of %ld): \n%@\n", buf, 0x34u);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __82__BiometricSupportTools_analyticsOSLogNSDictionary_forEvent_toLogPath_withPrefix___block_invoke(uint64_t a1)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 fileExistsAtPath:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = *MEMORY[0x1E696A3A0];
    v29[0] = *MEMORY[0x1E696A360];
    v29[1] = v5;
    v6 = *(a1 + 40);
    v7 = *MEMORY[0x1E696A3A8];
    v30[0] = @"mobile";
    v30[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
    LOBYTE(v6) = [v4 createDirectoryAtPath:v6 withIntermediateDirectories:0 attributes:v8 error:0];

    if ((v6 & 1) == 0)
    {
      __82__BiometricSupportTools_analyticsOSLogNSDictionary_forEvent_toLogPath_withPrefix___block_invoke_cold_1();
    }
  }

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v9 fileExistsAtPath:*(*(*(a1 + 72) + 8) + 40)];

  if (v10)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = *(a1 + 40);
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSince1970];
    v15 = [v11 stringWithFormat:@"%@/%d_%@.plist", v12, (v14 + 1), *(a1 + 48)];
    v16 = *(*(a1 + 72) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  if (__osLog)
  {
    v18 = __osLog;
  }

  else
  {
    v18 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 48);
    v19 = *(a1 + 56);
    v21 = *(*(*(a1 + 72) + 8) + 40);
    *buf = 138412802;
    v24 = v19;
    v25 = 2112;
    v26 = v20;
    v27 = 2112;
    v28 = v21;
    _os_log_impl(&dword_1C82AD000, v18, OS_LOG_TYPE_DEBUG, "%@: write event: %@ to file: %@\n", buf, 0x20u);
  }

  if (([*(a1 + 64) writeToFile:*(*(*(a1 + 72) + 8) + 40) atomically:1] & 1) == 0)
  {
    __82__BiometricSupportTools_analyticsOSLogNSDictionary_forEvent_toLogPath_withPrefix___block_invoke_cold_2();
  }

  v22 = *MEMORY[0x1E69E9840];
}

+ (void)analyticsOSLogNSDictionary:forEvent:toLogPath:withPrefix:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)analyticsOSLogNSDictionary:forEvent:toLogPath:withPrefix:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __82__BiometricSupportTools_analyticsOSLogNSDictionary_forEvent_toLogPath_withPrefix___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __82__BiometricSupportTools_analyticsOSLogNSDictionary_forEvent_toLogPath_withPrefix___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end