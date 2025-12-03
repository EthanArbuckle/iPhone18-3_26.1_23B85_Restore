@interface EDSearchableIndexDiagnosticsController
+ (OS_os_log)log;
- (EDPersistence)persistence;
- (EDSearchableIndexDiagnosticsController)initWithPersistence:(id)persistence;
- (id)_localDiagnosticsFromStatistics:(id)statistics;
- (id)_remoteDiagnosticsFromStatistics:(id)statistics;
- (void)_logDebuggingDiagnostics:(id)diagnostics forKey:(id)key;
- (void)_registerDebuggingDiagnosticsCaptureHandler;
- (void)_startLoggingDebuggingDiagnostics;
- (void)_stopCollection;
- (void)_stopLoggingDebuggingDiagnostics;
- (void)_unregisterDebuggingDiagnosticsCaptureHandler;
- (void)dealloc;
- (void)scheduleRecurringActivity;
@end

@implementation EDSearchableIndexDiagnosticsController

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__EDSearchableIndexDiagnosticsController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_86 != -1)
  {
    dispatch_once(&log_onceToken_86, block);
  }

  v2 = log_log_86;

  return v2;
}

void __45__EDSearchableIndexDiagnosticsController_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_86;
  log_log_86 = v1;
}

- (EDSearchableIndexDiagnosticsController)initWithPersistence:(id)persistence
{
  persistenceCopy = persistence;
  v8.receiver = self;
  v8.super_class = EDSearchableIndexDiagnosticsController;
  v5 = [(EDSearchableIndexDiagnosticsController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_persistence, persistenceCopy);
  }

  return v6;
}

- (void)dealloc
{
  [(EDSearchableIndexDiagnosticsController *)self _stopCollection];
  v3.receiver = self;
  v3.super_class = EDSearchableIndexDiagnosticsController;
  [(EDSearchableIndexDiagnosticsController *)&v3 dealloc];
}

- (void)scheduleRecurringActivity
{
  v3 = +[EDSearchableIndexDiagnosticsController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Starting background collection of indexing diagnostics", v4, 2u);
  }

  [(EDSearchableIndexDiagnosticsController *)self _startLoggingDebuggingDiagnostics];
  [(EDSearchableIndexDiagnosticsController *)self _registerDebuggingDiagnosticsCaptureHandler];
}

- (void)_stopCollection
{
  v3 = +[EDSearchableIndexDiagnosticsController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Stopping background collection of indexing diagnostics", v4, 2u);
  }

  [(EDSearchableIndexDiagnosticsController *)self _unregisterDebuggingDiagnosticsCaptureHandler];
  [(EDSearchableIndexDiagnosticsController *)self _stopLoggingDebuggingDiagnostics];
}

- (id)_localDiagnosticsFromStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v4 = [EDSearchableIndexDiagnosticsSnapshot alloc];
  date = [MEMORY[0x1E695DF00] date];
  v6 = [statisticsCopy objectForKeyedSubscript:*MEMORY[0x1E699AA20]];
  v7 = [statisticsCopy objectForKeyedSubscript:*MEMORY[0x1E699AA88]];
  v8 = [statisticsCopy objectForKeyedSubscript:*MEMORY[0x1E699AAA0]];
  v9 = [(EDSearchableIndexDiagnosticsSnapshot *)v4 initWithDate:date indexableMessages:v6 messagesIndexed:v7 messagesToRedonate:v8 turboMode:+[EDSearchableIndexScheduler isTurboModeIndexingEnabled]];

  return v9;
}

- (id)_remoteDiagnosticsFromStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v4 = [EDSearchableIndexDiagnosticsSnapshot alloc];
  date = [MEMORY[0x1E695DF00] date];
  v6 = [statisticsCopy objectForKeyedSubscript:*MEMORY[0x1E699AA30]];
  v7 = [statisticsCopy objectForKeyedSubscript:*MEMORY[0x1E699AAE8]];
  v8 = [statisticsCopy objectForKeyedSubscript:*MEMORY[0x1E699AAF8]];
  v9 = [(EDSearchableIndexDiagnosticsSnapshot *)v4 initWithDate:date indexableMessages:v6 messagesIndexed:v7 messagesToRedonate:v8 turboMode:0];

  return v9;
}

- (void)_logDebuggingDiagnostics:(id)diagnostics forKey:(id)key
{
  diagnosticsCopy = diagnostics;
  keyCopy = key;
  if (diagnosticsCopy)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x1E695DF70]);
    em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
    v9 = [em_userDefaults objectForKey:keyCopy];
    v10 = [v7 initWithArray:v9];

    if ([v10 count] >= 0x151)
    {
      [v10 removeObjectAtIndex:0];
    }

    dictionaryRepresentation = [diagnosticsCopy dictionaryRepresentation];
    [v10 addObject:dictionaryRepresentation];

    em_userDefaults2 = [MEMORY[0x1E695E000] em_userDefaults];
    v13 = [v10 copy];
    [em_userDefaults2 setObject:v13 forKey:keyCopy];

    objc_autoreleasePoolPop(v6);
  }
}

- (void)_startLoggingDebuggingDiagnostics
{
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  isInternal = [currentDevice isInternal];

  if (isInternal)
  {
    indexingDiagnosticsScheduler = [(EDSearchableIndexDiagnosticsController *)self indexingDiagnosticsScheduler];
    if (!indexingDiagnosticsScheduler)
    {
      indexingDiagnosticsScheduler = [objc_alloc(MEMORY[0x1E696AAD0]) initWithIdentifier:@"com.apple.mail.searchableIndex.indexingDiagnosticsCollector"];
      [indexingDiagnosticsScheduler setQualityOfService:9];
      [indexingDiagnosticsScheduler setRepeats:1];
      [indexingDiagnosticsScheduler setInterval:1800.0];
      [indexingDiagnosticsScheduler setTolerance:300.0];
      objc_initWeak(&location, self);
      v6 = MEMORY[0x1E69E9820];
      v7 = 3221225472;
      v8 = __75__EDSearchableIndexDiagnosticsController__startLoggingDebuggingDiagnostics__block_invoke;
      v9 = &unk_1E82532E0;
      objc_copyWeak(&v10, &location);
      [indexingDiagnosticsScheduler scheduleWithBlock:&v6];
      [(EDSearchableIndexDiagnosticsController *)self setIndexingDiagnosticsScheduler:indexingDiagnosticsScheduler, v6, v7, v8, v9];
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __75__EDSearchableIndexDiagnosticsController__startLoggingDebuggingDiagnostics__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained persistence];
    v6 = [v5 searchableIndexStatistics];

    if (v6)
    {
      v7 = [v4 _localDiagnosticsFromStatistics:v6];
      [v4 _logDebuggingDiagnostics:v7 forKey:@"InternalIndexingDiagnostics"];

      v8 = [v4 _remoteDiagnosticsFromStatistics:v6];
      [v4 _logDebuggingDiagnostics:v8 forKey:@"InternalRemoteIndexingDiagnostics"];
    }

    v9[2](v9, 1);
  }
}

- (void)_registerDebuggingDiagnosticsCaptureHandler
{
  v3 = EFLogRegisterStateCaptureBlock();
  [(EDSearchableIndexDiagnosticsController *)self setStateCancelable:v3];

  v4 = EFLogRegisterStateCaptureBlock();
  [(EDSearchableIndexDiagnosticsController *)self setStateCancelable:v4];

  v5 = MEMORY[0x1E69E96A0];
}

id __85__EDSearchableIndexDiagnosticsController__registerDebuggingDiagnosticsCaptureHandler__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = [MEMORY[0x1E695E000] em_userDefaults];
  v2 = [v1 objectForKey:@"InternalIndexingDiagnostics"];
  [v0 setObject:v2 forKeyedSubscript:@"InternalIndexingDiagnostics"];

  v3 = [v0 copy];

  return v3;
}

id __85__EDSearchableIndexDiagnosticsController__registerDebuggingDiagnosticsCaptureHandler__block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = [MEMORY[0x1E695E000] em_userDefaults];
  v2 = [v1 objectForKey:@"InternalRemoteIndexingDiagnostics"];
  [v0 setObject:v2 forKeyedSubscript:@"InternalRemoteIndexingDiagnostics"];

  v3 = [v0 copy];

  return v3;
}

- (void)_stopLoggingDebuggingDiagnostics
{
  indexingDiagnosticsScheduler = [(EDSearchableIndexDiagnosticsController *)self indexingDiagnosticsScheduler];
  [indexingDiagnosticsScheduler invalidate];
}

- (void)_unregisterDebuggingDiagnosticsCaptureHandler
{
  stateCancelable = [(EDSearchableIndexDiagnosticsController *)self stateCancelable];
  [stateCancelable cancel];

  [(EDSearchableIndexDiagnosticsController *)self setStateCancelable:0];
}

- (EDPersistence)persistence
{
  WeakRetained = objc_loadWeakRetained(&self->_persistence);

  return WeakRetained;
}

@end