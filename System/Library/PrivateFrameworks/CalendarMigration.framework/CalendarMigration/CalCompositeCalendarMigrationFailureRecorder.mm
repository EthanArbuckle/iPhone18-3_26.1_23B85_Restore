@interface CalCompositeCalendarMigrationFailureRecorder
- (CalCompositeCalendarMigrationFailureRecorder)initWithFailureRecorders:(id)recorders;
- (void)recordMigrationFailure:(id)failure;
- (void)reportRecordedFailures;
@end

@implementation CalCompositeCalendarMigrationFailureRecorder

- (CalCompositeCalendarMigrationFailureRecorder)initWithFailureRecorders:(id)recorders
{
  recordersCopy = recorders;
  v9.receiver = self;
  v9.super_class = CalCompositeCalendarMigrationFailureRecorder;
  v5 = [(CalCompositeCalendarMigrationFailureRecorder *)&v9 init];
  if (v5)
  {
    v6 = [recordersCopy copy];
    failureRecorders = v5->_failureRecorders;
    v5->_failureRecorders = v6;
  }

  return v5;
}

- (void)recordMigrationFailure:(id)failure
{
  v16 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  failureRecorders = [(CalCompositeCalendarMigrationFailureRecorder *)self failureRecorders];
  v6 = [failureRecorders countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(failureRecorders);
        }

        [*(*(&v11 + 1) + 8 * v9++) recordMigrationFailure:failureCopy];
      }

      while (v7 != v9);
      v7 = [failureRecorders countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  failureRecorders = [(CalCompositeCalendarMigrationFailureRecorder *)self failureRecorders];
  v3 = [failureRecorders countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(failureRecorders);
        }

        [*(*(&v8 + 1) + 8 * v6++) reportRecordedFailures];
      }

      while (v4 != v6);
      v4 = [failureRecorders countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end