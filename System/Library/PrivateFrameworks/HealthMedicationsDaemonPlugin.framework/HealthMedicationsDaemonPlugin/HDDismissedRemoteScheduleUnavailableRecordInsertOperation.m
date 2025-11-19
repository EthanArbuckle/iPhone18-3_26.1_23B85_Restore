@interface HDDismissedRemoteScheduleUnavailableRecordInsertOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDDismissedRemoteScheduleUnavailableRecordInsertOperation)initWithCoder:(id)a3;
- (HDDismissedRemoteScheduleUnavailableRecordInsertOperation)initWithRemoteScheduleUnavailableRecords:(id)a3;
@end

@implementation HDDismissedRemoteScheduleUnavailableRecordInsertOperation

- (HDDismissedRemoteScheduleUnavailableRecordInsertOperation)initWithRemoteScheduleUnavailableRecords:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDDismissedRemoteScheduleUnavailableRecordInsertOperation;
  v5 = [(HDDismissedRemoteScheduleUnavailableRecordInsertOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    dismissedRecords = v5->_dismissedRecords;
    v5->_dismissedRecords = v6;
  }

  return v5;
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if ([(NSArray *)self->_dismissedRecords count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = self->_dismissedRecords;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (![HDDismissedRemoteScheduleUnavailableRecordEntity _insertRemoteScheduleUnavailableRecord:v7 transaction:a5 error:?])
          {
            v13 = 0;
            goto LABEL_12;
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_12:
  }

  else
  {
    v13 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (HDDismissedRemoteScheduleUnavailableRecordInsertOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDDismissedRemoteScheduleUnavailableRecordInsertOperation;
  v5 = [(HDDismissedRemoteScheduleUnavailableRecordInsertOperation *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"dismissed_remote_schedule_unavailable_records"];
    dismissedRecords = v5->_dismissedRecords;
    v5->_dismissedRecords = v7;
  }

  return v5;
}

@end