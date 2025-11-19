@interface GTMTLDiagnosticsService
- (GTMTLDiagnosticsService)init;
- (void)notifyCommandBufferIssue:(id)a3;
- (void)notifyDiagnosticsIssue:(id)a3;
- (void)raiseRuntimeIssue:(id)a3;
@end

@implementation GTMTLDiagnosticsService

- (GTMTLDiagnosticsService)init
{
  v8.receiver = self;
  v8.super_class = GTMTLDiagnosticsService;
  v2 = [(GTMTLDiagnosticsService *)&v8 init];
  if (v2)
  {
    if (GTCoreLogUseOsLog())
    {
      v3 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        [(GTMTLDiagnosticsService *)v3 init];
      }
    }

    else
    {
      v4 = *MEMORY[0x277D85E08];
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Create Diagnostics Service"];
      fprintf(v4, "%s\n", [v3 UTF8String]);
    }

    v5 = objc_opt_new();
    observers = v2->_observers;
    v2->_observers = v5;
  }

  return v2;
}

- (void)raiseRuntimeIssue:(id)a3
{
  v3 = a3;
  if (GTCoreLogUseOsLog())
  {
    v4 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [GTMTLDiagnosticsService raiseRuntimeIssue:v4];
    }

    if (v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *MEMORY[0x277D85E08];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"raiseRuntimeIssue"];
    fprintf(v6, "%s\n", [v7 UTF8String]);

    if (v3)
    {
LABEL_5:
      v5 = os_log_create("com.apple.runtime-issues", "Metal Diagnostics");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(GTMTLDiagnosticsService *)v3 raiseRuntimeIssue:v5];
      }

      goto LABEL_13;
    }
  }

  if (GTCoreLogUseOsLog())
  {
    v5 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [GTMTLDiagnosticsService raiseRuntimeIssue:v5];
    }
  }

  else
  {
    v8 = *MEMORY[0x277D85DF8];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"raiseRuntimeIssue: Invalid messagePrefix:(nil)"];
    fprintf(v8, "%s\n", [v5 UTF8String]);
  }

LABEL_13:
}

- (void)notifyDiagnosticsIssue:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__GTMTLDiagnosticsService_notifyDiagnosticsIssue___block_invoke;
  v7[3] = &unk_2796613F0;
  v8 = v4;
  v6 = v4;
  [(GTObservableService *)observers notifyAll:v7];
}

- (void)notifyCommandBufferIssue:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__GTMTLDiagnosticsService_notifyCommandBufferIssue___block_invoke;
  v7[3] = &unk_2796613F0;
  v8 = v4;
  v6 = v4;
  [(GTObservableService *)observers notifyAll:v7];
}

- (void)raiseRuntimeIssue:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 136315138;
  v5 = [a1 cStringUsingEncoding:4];
  _os_log_fault_impl(&dword_24DBC9000, a2, OS_LOG_TYPE_FAULT, "%s", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end