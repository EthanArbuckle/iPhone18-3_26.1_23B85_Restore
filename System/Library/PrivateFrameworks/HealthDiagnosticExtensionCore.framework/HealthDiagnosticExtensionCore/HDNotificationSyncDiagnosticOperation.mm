@interface HDNotificationSyncDiagnosticOperation
- (void)_appendCSVLine:(id)line;
- (void)_appendNotificationInstructions:(id)instructions;
- (void)run;
@end

@implementation HDNotificationSyncDiagnosticOperation

- (void)run
{
  v3 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v4 = dispatch_semaphore_create(0);
  v5 = objc_alloc(MEMORY[0x277CCD6D0]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__HDNotificationSyncDiagnosticOperation_run__block_invoke;
  v8[3] = &unk_2796C0D50;
  v8[4] = self;
  v6 = [v5 initWithResultsHandler:v8];
  [v3 executeQuery:v6];
  v7 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v4, v7))
  {
    [(HDDiagnosticOperation *)self log:@"ERROR: Timed out attempting collect Notification Sync instructions"];
  }
}

void __44__HDNotificationSyncDiagnosticOperation_run__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = *(a1 + 32);
  v9 = v6;
  if (v6)
  {
    v8 = [MEMORY[0x277CCD6C8] propertyNames];
    [v7 _appendCSVLine:v8];

    [*(a1 + 32) _appendNotificationInstructions:v9];
  }

  else
  {
    [v7 log:{@"ERROR: Failed to collect Notification Sync instructions: %@", a4}];
  }
}

- (void)_appendNotificationInstructions:(id)instructions
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  instructionsCopy = instructions;
  v5 = [instructionsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(instructionsCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        propertyValues = [v9 propertyValues];
        [(HDNotificationSyncDiagnosticOperation *)self _appendCSVLine:propertyValues];

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [instructionsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_appendCSVLine:(id)line
{
  v5 = [line hk_map:&__block_literal_global];
  v4 = [v5 componentsJoinedByString:{@", "}];
  [(HDDiagnosticOperation *)self appendString:v4];
}

id __56__HDNotificationSyncDiagnosticOperation__appendCSVLine___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 stringByReplacingOccurrencesOfString:@" withString:@"\];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v2];

  return v3;
}

@end