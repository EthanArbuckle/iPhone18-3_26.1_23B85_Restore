@interface CalCompositeCalendarMigrationFailureRecorder
- (CalCompositeCalendarMigrationFailureRecorder)initWithFailureRecorders:(id)a3;
- (void)recordMigrationFailure:(id)a3;
- (void)reportRecordedFailures;
@end

@implementation CalCompositeCalendarMigrationFailureRecorder

- (CalCompositeCalendarMigrationFailureRecorder)initWithFailureRecorders:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CalCompositeCalendarMigrationFailureRecorder;
  v5 = [(CalCompositeCalendarMigrationFailureRecorder *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    failureRecorders = v5->_failureRecorders;
    v5->_failureRecorders = v6;
  }

  return v5;
}

- (void)recordMigrationFailure:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CalCompositeCalendarMigrationFailureRecorder *)self failureRecorders];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) recordMigrationFailure:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)reportRecordedFailures
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(CalCompositeCalendarMigrationFailureRecorder *)self failureRecorders];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) reportRecordedFailures];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end