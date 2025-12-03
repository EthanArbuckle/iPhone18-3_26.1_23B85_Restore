@interface CellularDataDiagnosticsSuiteController
- (void)start;
@end

@implementation CellularDataDiagnosticsSuiteController

- (void)start
{
  result = [(DKDiagnosticController *)self result];
  [result setStatusCode:&unk_2856154B8];

  v4 = objc_alloc_init(SpeedTestConfig);
  cellularTestStartRef = self->cellularTestStartRef;
  self->cellularTestStartRef = v4;

  v6 = self->cellularTestStartRef;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CellularDataDiagnosticsSuiteController_start__block_invoke;
  v7[3] = &unk_278DAE570;
  v7[4] = self;
  [(SpeedTestConfig *)v6 startDownloadTest:v7];
}

uint64_t __47__CellularDataDiagnosticsSuiteController_start__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_24335C000, v2, OS_LOG_TYPE_INFO, "CellularThroughput: speed test passed", &v9, 2u);
  }

  v3 = [*(a1 + 32) result];
  [v3 setStatusCode:&unk_2856154D0];

  v4 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) result];
    v6 = [v5 statusCode];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_24335C000, v4, OS_LOG_TYPE_INFO, "CellularThroughput: status code: %@", &v9, 0xCu);
  }

  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) setFinished:1];
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

@end