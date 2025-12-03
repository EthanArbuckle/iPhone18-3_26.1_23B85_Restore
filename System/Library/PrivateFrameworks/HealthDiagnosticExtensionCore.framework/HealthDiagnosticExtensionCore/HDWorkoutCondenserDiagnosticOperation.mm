@interface HDWorkoutCondenserDiagnosticOperation
- (void)_reportCondensableWorkoutsWithTaskClient:(id)client;
- (void)_reportCondensedWorkoutsWithTaskClient:(id)client;
- (void)_reportWorkoutCondenserTTRValuesWithDatabase:(id)database;
- (void)run;
@end

@implementation HDWorkoutCondenserDiagnosticOperation

- (void)run
{
  v7 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v3 = [objc_alloc(MEMORY[0x277CCDC30]) initWithHealthStore:v7];
  [(HDWorkoutCondenserDiagnosticOperation *)self _reportCondensedWorkoutsWithTaskClient:v3];
  [(HDWorkoutCondenserDiagnosticOperation *)self _reportCondensableWorkoutsWithTaskClient:v3];
  healthDirectoryURL = [(HDDiagnosticOperation *)self healthDirectoryURL];
  v5 = [healthDirectoryURL URLByAppendingPathComponent:@"healthdb.sqlite" isDirectory:0];

  v6 = [(HDDiagnosticOperation *)self openReadOnlyDatabaseAtURL:v5];
  [(HDWorkoutCondenserDiagnosticOperation *)self _reportWorkoutCondenserTTRValuesWithDatabase:v6];
  [v6 close];
}

- (void)_reportCondensedWorkoutsWithTaskClient:(id)client
{
  clientCopy = client;
  v5 = dispatch_semaphore_create(0);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __80__HDWorkoutCondenserDiagnosticOperation__reportCondensedWorkoutsWithTaskClient___block_invoke;
  v11 = &unk_2796C1100;
  selfCopy = self;
  v6 = v5;
  v13 = v6;
  [clientCopy condensedWorkoutsWithCompletion:&v8];

  v7 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    [(HDDiagnosticOperation *)self log:@"ERROR: Timed out attempting to get condensed workouts", v8, v9, v10, v11, selfCopy];
  }
}

void __80__HDWorkoutCondenserDiagnosticOperation__reportCondensedWorkoutsWithTaskClient___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 appendString:@"Condensed Workouts"];
    [*(a1 + 32) appendStrongSeparator];
    v7 = [v5 workouts];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [MEMORY[0x277CCDA90] formatterForCodableCondensedWorkouts];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = [v5 workouts];
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          v14 = 0;
          do
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [v9 appendWorkout:*(*(&v18 + 1) + 8 * v14++)];
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }

      v15 = *(a1 + 32);
      v16 = [v9 formattedTable];
      [v15 appendString:v16];
    }

    else
    {
      [*(a1 + 32) appendString:@"No condensed workouts found"];
    }

    [*(a1 + 32) appendNewline];
    [*(a1 + 32) appendNewline];
  }

  else
  {
    [v6 log:{@"ERROR: Failed to fetch condensed workouts: %@", a3}];
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_reportCondensableWorkoutsWithTaskClient:(id)client
{
  clientCopy = client;
  v5 = dispatch_semaphore_create(0);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __82__HDWorkoutCondenserDiagnosticOperation__reportCondensableWorkoutsWithTaskClient___block_invoke;
  v11 = &unk_2796C1100;
  selfCopy = self;
  v6 = v5;
  v13 = v6;
  [clientCopy condensableWorkoutsWithCompletion:&v8];

  v7 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    [(HDDiagnosticOperation *)self log:@"ERROR: Timed out attempting to get condensable workouts", v8, v9, v10, v11, selfCopy];
  }
}

void __82__HDWorkoutCondenserDiagnosticOperation__reportCondensableWorkoutsWithTaskClient___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 appendString:@"Condensable Workouts"];
    [*(a1 + 32) appendStrongSeparator];
    v7 = [v5 workouts];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [MEMORY[0x277CCDA90] formatterForCodableCondensedWorkouts];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = [v5 workouts];
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          v14 = 0;
          do
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [v9 appendWorkout:*(*(&v18 + 1) + 8 * v14++)];
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }

      v15 = *(a1 + 32);
      v16 = [v9 formattedTable];
      [v15 appendString:v16];
    }

    else
    {
      [*(a1 + 32) appendString:@"No condensable workouts found"];
    }

    [*(a1 + 32) appendNewline];
    [*(a1 + 32) appendNewline];
  }

  else
  {
    [v6 log:{@"ERROR: Failed to fetch condensable workouts: %@", a3}];
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_reportWorkoutCondenserTTRValuesWithDatabase:(id)database
{
  v4 = *MEMORY[0x277D10568];
  v8 = 0;
  v5 = [MEMORY[0x277D108F8] formattedPersistedValuesForDomainName:v4 database:database error:&v8];
  v6 = v8;
  v7 = v6;
  if (v5)
  {
    [(HDDiagnosticOperation *)self appendNewline];
    [(HDDiagnosticOperation *)self appendFormat:@"%@", v5];
  }

  else
  {
    [(HDDiagnosticOperation *)self log:@"ERROR: Failed to get TTR values for domain %@: %@", v4, v6];
  }
}

@end