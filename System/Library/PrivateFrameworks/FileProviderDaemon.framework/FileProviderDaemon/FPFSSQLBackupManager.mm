@interface FPFSSQLBackupManager
- (FPFSSQLBackupManager)initWithUserURL:(id)l outputUserURL:(id)rL;
- (void)backUpWithCompletionHandler:(id)handler;
- (void)reportCompletionTelemetryWithError:(id)error;
@end

@implementation FPFSSQLBackupManager

- (FPFSSQLBackupManager)initWithUserURL:(id)l outputUserURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v15.receiver = self;
  v15.super_class = FPFSSQLBackupManager;
  v8 = [(FPFSSQLBackupManager *)&v15 init];
  if (v8)
  {
    v9 = [[_TtC18FileProviderDaemon19FPFSSQLBackupEngine alloc] initWithUserURL:lCopy outputUserURL:rLCopy];
    backupEngine = v8->_backupEngine;
    v8->_backupEngine = v9;

    defaultManager = [MEMORY[0x1E699C730] defaultManager];
    v12 = [defaultManager sessionForProviderID:@"d2d_backup_global" version:0];
    rtcReporting = v8->_rtcReporting;
    v8->_rtcReporting = v12;
  }

  return v8;
}

- (void)backUpWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  backupEngine = self->_backupEngine;
  if (backupEngine)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__FPFSSQLBackupManager_backUpWithCompletionHandler___block_invoke;
    v7[3] = &unk_1E83C0270;
    v7[4] = self;
    v8 = handlerCopy;
    [(FPFSSQLBackupEngine *)backupEngine backUpWithCompletionHandler:v7];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __52__FPFSSQLBackupManager_backUpWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 reportCompletionTelemetryWithError:v6];
  (*(*(a1 + 40) + 16))();
}

- (void)reportCompletionTelemetryWithError:(id)error
{
  errorCopy = error;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(FPFSSQLBackupManager *)errorCopy reportCompletionTelemetryWithError:v5];
  }

  if (errorCopy)
  {
    v6 = errorCopy;
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"success" code:0 userInfo:0];
  }

  v7 = v6;
  [(FPRTCReportingSession *)self->_rtcReporting postReportWithCategory:1 type:1 payload:MEMORY[0x1E695E0F8] error:v6];
}

- (void)reportCompletionTelemetryWithError:(__CFString *)a1 .cold.1(__CFString *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = @"success";
  if (a1)
  {
    v2 = a1;
  }

  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] reporting d2d backup telemetry with %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end