@interface _HDDataManagerDeletionJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (_HDDataManagerDeletionJournalEntry)initWithCoder:(id)a3;
- (_HDDataManagerDeletionJournalEntry)initWithConfiguration:(id)a3 objectUUIDs:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HDDataManagerDeletionJournalEntry

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [v6 dataManager];
        v13 = [v11 UUIDCollection];
        v14 = [v11 configuration];
        v26 = 0;
        v15 = [v12 deleteObjectsWithUUIDCollection:v13 configuration:v14 error:&v26];
        v16 = v26;

        if ((v15 & 1) == 0)
        {
          _HKInitializeLogging();
          v17 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            v21 = v17;
            v22 = objc_opt_class();
            *buf = 138543618;
            v32 = v22;
            v33 = 2114;
            v34 = v16;
            v23 = v22;
            _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "Failed to apply %{public}@: %{public}@", buf, 0x16u);
          }

          if ([v16 hk_isTransactionInterruptedError])
          {

            goto LABEL_15;
          }

          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", objc_opt_class()];
          v19 = [v6 daemon];
          v20 = [v19 autoBugCaptureReporter];
          [v20 reportJournalFailureWithErrorDescription:v18 provenance:0 error:v16];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v24 = *MEMORY[0x277D85DE8];
}

- (_HDDataManagerDeletionJournalEntry)initWithConfiguration:(id)a3 objectUUIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _HDDataManagerDeletionJournalEntry;
  v8 = [(_HDDataManagerDeletionJournalEntry *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    configuration = v8->_configuration;
    v8->_configuration = v9;

    objc_storeStrong(&v8->_UUIDCollection, a4);
  }

  return v8;
}

- (_HDDataManagerDeletionJournalEntry)initWithCoder:(id)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _HDDataManagerDeletionJournalEntry;
  v5 = [(HDJournalEntry *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = objc_autoreleasePoolPush();
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuids_data"];
    UUIDCollection = v5->_UUIDCollection;
    v5->_UUIDCollection = v9;

    if (!v5->_UUIDCollection)
    {
      v11 = MEMORY[0x277CBEB98];
      v19[0] = objc_opt_class();
      v19[1] = objc_opt_class();
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
      v13 = [v11 setWithArray:v12];
      v14 = [v4 decodeObjectOfClasses:v13 forKey:@"object_uuids"];
      v15 = v5->_UUIDCollection;
      v5->_UUIDCollection = v14;
    }

    objc_autoreleasePoolPop(v8);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _HDDataManagerDeletionJournalEntry;
  [(HDJournalEntry *)&v7 encodeWithCoder:v4];
  [v4 encodeObject:self->_configuration forKey:@"configuration"];
  v5 = objc_autoreleasePoolPush();
  v6 = [(HKUUIDCollection *)self->_UUIDCollection hk_dataForAllUUIDs];
  [v4 encodeObject:v6 forKey:@"uuids_data"];

  objc_autoreleasePoolPop(v5);
}

@end