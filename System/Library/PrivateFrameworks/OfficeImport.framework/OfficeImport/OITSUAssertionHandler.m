@interface OITSUAssertionHandler
+ (id)p_performBlockIgnoringAssertions:(id)a3 onlyFatal:(BOOL)a4;
+ (void)logBacktrace;
+ (void)logBacktraceWithCallStackSymbols:(id)a3;
@end

@implementation OITSUAssertionHandler

+ (id)p_performBlockIgnoringAssertions:(id)a3 onlyFatal:(BOOL)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v4 = _ignoreAssertionsCallback;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__OITSUAssertionHandler_p_performBlockIgnoringAssertions_onlyFatal___block_invoke;
  v8[3] = &unk_2799C6148;
  v9 = a4;
  v8[4] = &v10;
  _ignoreAssertionsCallback = v8;
  (*(a3 + 2))(a3, a2);
  _ignoreAssertionsCallback = v4;
  v5 = v11[5];
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v6;
}

void __68__OITSUAssertionHandler_p_performBlockIgnoringAssertions_onlyFatal___block_invoke(uint64_t a1, void *a2, char a3)
{
  if (TSUDefaultCat_init_token == -1)
  {
    if (a3)
    {
LABEL_3:
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Terminating application due to %@", a2];
      goto LABEL_7;
    }
  }

  else
  {
    __68__OITSUAssertionHandler_p_performBlockIgnoringAssertions_onlyFatal___block_invoke_cold_1();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  if (*(a1 + 40))
  {
    return;
  }

  v6 = [a2 copy];
LABEL_7:
  *(*(*(a1 + 32) + 8) + 40) = v6;
}

os_log_t __68__OITSUAssertionHandler_p_performBlockIgnoringAssertions_onlyFatal___block_invoke_2()
{
  result = TSULogCreateCategory("TSUDefaultCat");
  TSUDefaultCat_log_t = result;
  return result;
}

+ (void)logBacktrace
{
  v3 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  v4 = [v3 objectForKeyedSubscript:@"logBacktrace_lastStackAddress"];
  v5 = [objc_msgSend(MEMORY[0x277CCACC8] "callStackReturnAddresses")];
  if (v4 && [v4 isEqualToArray:v5])
  {
    [a1 logBacktraceWithCallStackSymbols:&unk_286F6D218];
  }

  else
  {
    [a1 logBacktraceWithCallStackSymbols:{objc_msgSend(MEMORY[0x277CCACC8], "callStackSymbols")}];
    [v3 setObject:v5 forKeyedSubscript:@"logBacktrace_lastStackAddress"];
  }
}

+ (void)logBacktraceWithCallStackSymbols:(id)a3
{
  if (TSUDefaultCat_init_token != -1)
  {
    +[OITSUAssertionHandler logBacktraceWithCallStackSymbols:];
  }

  [a1 simulateCrashWithMessage:@"+[TSUAssert logBacktrace]"];
}

os_log_t __58__OITSUAssertionHandler_logBacktraceWithCallStackSymbols___block_invoke()
{
  result = TSULogCreateCategory("TSUDefaultCat");
  TSUDefaultCat_log_t = result;
  return result;
}

@end