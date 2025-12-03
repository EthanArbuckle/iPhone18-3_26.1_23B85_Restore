@interface FPFSSQLRestoreManager
- (FPFSSQLRestoreManager)initWithUserURL:(id)l fromBuild:(id)build restoreType:(id)type cleanupOnSuccess:(BOOL)success;
- (void)reportDatabaseRestoreCompletionTelemetryWithError:(id)error atStep:(id)step;
- (void)reportPurgencyRestoreCompletionTelemetryWithError:(id)error;
- (void)restoreWithCompletionHandler:(id)handler;
@end

@implementation FPFSSQLRestoreManager

- (FPFSSQLRestoreManager)initWithUserURL:(id)l fromBuild:(id)build restoreType:(id)type cleanupOnSuccess:(BOOL)success
{
  lCopy = l;
  buildCopy = build;
  typeCopy = type;
  v23.receiver = self;
  v23.super_class = FPFSSQLRestoreManager;
  v13 = [(FPFSSQLRestoreManager *)&v23 init];
  if (v13)
  {
    v14 = [[_TtC18FileProviderDaemon20FPFSSQLRestoreEngine alloc] initWithUserURL:lCopy backupBuild:buildCopy restoreType:typeCopy];
    restoreEngine = v13->_restoreEngine;
    v13->_restoreEngine = v14;

    defaultManager = [MEMORY[0x1E699C730] defaultManager];
    v17 = [defaultManager sessionForProviderID:@"d2d_restore_global" version:0];
    rtcReportingDatabase = v13->_rtcReportingDatabase;
    v13->_rtcReportingDatabase = v17;

    defaultManager2 = [MEMORY[0x1E699C730] defaultManager];
    v20 = [defaultManager2 sessionForProviderID:@"d2d_restore_purgency" version:0];
    rtcReportingPurgency = v13->_rtcReportingPurgency;
    v13->_rtcReportingPurgency = v20;

    v13->_cleanupOnSuccess = success;
    objc_storeStrong(&v13->_backupBuild, build);
    objc_storeStrong(&v13->_restoreType, type);
  }

  return v13;
}

- (void)restoreWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  restoreEngine = self->_restoreEngine;
  if (restoreEngine)
  {
    cleanupOnSuccess = self->_cleanupOnSuccess;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__FPFSSQLRestoreManager_restoreWithCompletionHandler___block_invoke;
    v8[3] = &unk_1E83C0D78;
    v8[4] = self;
    v9 = handlerCopy;
    [(FPFSSQLRestoreEngine *)restoreEngine restoreWithCleanupOnSuccess:cleanupOnSuccess completionHandler:v8];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 1, 0);
  }
}

void __54__FPFSSQLRestoreManager_restoreWithCompletionHandler___block_invoke(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v7 = a3;
  [*(a1 + 32) reportDatabaseRestoreCompletionTelemetryWithError:v7 atStep:a4];
  if (v7)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(v9 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__FPFSSQLRestoreManager_restoreWithCompletionHandler___block_invoke_2;
    v11[3] = &unk_1E83C0D50;
    v11[4] = v9;
    v14 = a2;
    v12 = 0;
    v13 = v8;
    [v10 restorePurgenciesAndResidencyReasonsWithCompletionHandler:v11];
  }
}

uint64_t __54__FPFSSQLRestoreManager_restoreWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) reportPurgencyRestoreCompletionTelemetryWithError:a2];
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 48) + 16);

  return v5();
}

- (void)reportDatabaseRestoreCompletionTelemetryWithError:(id)error atStep:(id)step
{
  v23 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  stepCopy = step;
  if (errorCopy)
  {
    v8 = errorCopy;
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"success" code:0 userInfo:0];
  }

  v9 = v8;
  v10 = @"no step";
  if (stepCopy)
  {
    v10 = stepCopy;
  }

  v11 = v10;
  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v15 = @"nil";
    if (errorCopy)
    {
      v15 = errorCopy;
    }

    *buf = 138412546;
    v20 = v15;
    v21 = 2112;
    v22 = stepCopy;
    _os_log_debug_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] reporting d2d database restore telemetry with error %@, step %@", buf, 0x16u);
  }

  v16[0] = @"operationType";
  v16[1] = @"reason";
  v16[2] = @"operationSide";
  v17 = v11;
  v18 = vbslq_s8(vceqzq_s64(*&self->_backupBuild), vdupq_n_s64(@"na"), *&self->_backupBuild);
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:v16 count:3];
  [(FPRTCReportingSession *)self->_rtcReportingDatabase postReportWithCategory:1 type:1 payload:v13 error:v9];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)reportPurgencyRestoreCompletionTelemetryWithError:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    v6 = errorCopy;
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"success" code:0 userInfo:0];
  }

  v7 = v6;
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = @"nil";
    if (v5)
    {
      v11 = v5;
    }

    *buf = 138412290;
    v15 = v11;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] reporting d2d purgency restore telemetry with error %@", buf, 0xCu);
  }

  v12[0] = @"reason";
  v12[1] = @"operationSide";
  v13 = vbslq_s8(vceqzq_s64(*&self->_backupBuild), vdupq_n_s64(@"na"), *&self->_backupBuild);
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:v12 count:2];
  [(FPRTCReportingSession *)self->_rtcReportingPurgency postReportWithCategory:1 type:1 payload:v9 error:v7];

  v10 = *MEMORY[0x1E69E9840];
}

@end