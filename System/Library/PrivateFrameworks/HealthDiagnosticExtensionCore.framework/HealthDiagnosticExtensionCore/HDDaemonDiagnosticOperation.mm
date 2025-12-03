@interface HDDaemonDiagnosticOperation
- (id)_daemonUserDefaultValueForKey:(id)key;
- (void)run;
@end

@implementation HDDaemonDiagnosticOperation

- (void)run
{
  v3 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v4 = [objc_alloc(MEMORY[0x277CCD330]) initWithHealthStore:v3];
  v5 = dispatch_semaphore_create(0);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __34__HDDaemonDiagnosticOperation_run__block_invoke;
  v23[3] = &unk_2796C0C18;
  v25 = &v26;
  v23[4] = self;
  v6 = v5;
  v24 = v6;
  [v4 fetchDiagnosticsForKeys:MEMORY[0x277CBEBF8] completion:v23];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  if ([mEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  [(HDDiagnosticOperation *)self appendFormat:@"Apple Internal: %s", v8];
  futureMigrationsEnabled = [mEMORY[0x277CCDD30] futureMigrationsEnabled];
  v10 = "disabled";
  if (futureMigrationsEnabled)
  {
    v10 = "ENABLED";
  }

  [(HDDiagnosticOperation *)self appendFormat:@"Future Migrations: %s", v10];
  if ([mEMORY[0x277CCDD30] isRunningStoreDemoMode])
  {
    v11 = "YES";
  }

  else
  {
    v11 = "NO";
  }

  [(HDDiagnosticOperation *)self appendFormat:@"Store Demo Mode: %s", v11];
  if ([mEMORY[0x277CCDD30] isTestingDevice])
  {
    v12 = "YES";
  }

  else
  {
    v12 = "NO";
  }

  [(HDDiagnosticOperation *)self appendFormat:@"Testing Device: %s", v12];
  if ([MEMORY[0x277CCDD68] usingDemoDataDatabase])
  {
    v13 = "YES";
  }

  else
  {
    v13 = "NO";
  }

  [(HDDiagnosticOperation *)self appendFormat:@"Using Demo Data Database: %s", v13];
  [(HDDiagnosticOperation *)self appendNewline];
  backupInfoUserDefaultsKey = [MEMORY[0x277D105C0] backupInfoUserDefaultsKey];
  v15 = [(HDDaemonDiagnosticOperation *)self _daemonUserDefaultValueForKey:backupInfoUserDefaultsKey];

  if (v15)
  {
    [(HDDiagnosticOperation *)self appendFormat:@"Authorization Backup Info: %@", v15];
  }

  [(HDDiagnosticOperation *)self appendNewline];
  [(HDDiagnosticOperation *)self appendFormat:@"HKBehavior:"];
  [(HDDiagnosticOperation *)self appendFormat:@"%@", mEMORY[0x277CCDD30]];
  v16 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v6, v16))
  {
    [(HDDiagnosticOperation *)self log:@"Timed out attempting collect healthd diagnostics."];
  }

  if (v27[5])
  {
    attachmentDirectoryURL = [(HDDiagnosticOperation *)self attachmentDirectoryURL];
    v18 = [attachmentDirectoryURL URLByAppendingPathComponent:@"healthd-diagnostics.txt"];

    v19 = v27[5];
    v22 = 0;
    v20 = [v19 writeToURL:v18 atomically:1 encoding:4 error:&v22];
    v21 = v22;
    if (v20)
    {
      [(HDDiagnosticOperation *)self log:@"Successfully captured healthd diagnostics to 'healthd-diagnostics.txt'."];
    }

    else
    {
      [(HDDiagnosticOperation *)self log:@"Failed to write out healthd diagnostics:\n%@", v27[5]];
    }
  }

  _Block_object_dispose(&v26, 8);
}

void __34__HDDaemonDiagnosticOperation_run__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else
  {
    [*(a1 + 32) log:{@"Failed to collect healthd diagnostics: %@", a3}];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)_daemonUserDefaultValueForKey:(id)key
{
  v3 = CFPreferencesCopyValue(key, *MEMORY[0x277CCE408], *MEMORY[0x277CBF020], *MEMORY[0x277CBF010]);

  return v3;
}

@end