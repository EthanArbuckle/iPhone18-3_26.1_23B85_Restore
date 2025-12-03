@interface _HDDeletedSampleInsertionJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (_HDDeletedSampleInsertionJournalEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HDDeletedSampleInsertionJournalEntry

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  v37 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  profileCopy = profile;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = entriesCopy;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    v27 = *v31;
    do
    {
      v10 = 0;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        if (v11)
        {
          v12 = *(v11 + 16);
          v13 = *(v11 + 24);
        }

        else
        {
          v12 = 0;
          v13 = 0;
        }

        v29 = 0;
        v14 = v13;
        v15 = [HDDeletedSampleEntity insertCodableDeletedSamples:v12 provenance:v14 profile:profileCopy error:&v29];
        v16 = v29;

        if (!v15)
        {
          _HKInitializeLogging();
          v17 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v35 = v16;
            _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "Failed to insert codable deleted samples: %{public}@", buf, 0xCu);
          }

          if ([v16 hk_isTransactionInterruptedError])
          {

            goto LABEL_22;
          }

          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", objc_opt_class()];
          daemon = [profileCopy daemon];
          autoBugCaptureReporter = [daemon autoBugCaptureReporter];
          if (v11)
          {
            v21 = *(v11 + 24);
          }

          else
          {
            v21 = 0;
          }

          v22 = MEMORY[0x277CCABB0];
          v23 = v21;
          v24 = [v22 numberWithLongLong:{objc_msgSend(v23, "syncProvenance")}];
          [autoBugCaptureReporter reportJournalFailureWithErrorDescription:v18 provenance:v24 error:v16];

          v9 = v27;
        }

        ++v10;
      }

      while (v8 != v10);
      v25 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      v8 = v25;
    }

    while (v25);
  }

LABEL_22:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_alloc_init(HDCodableObjectCollection);
  v5 = [(NSArray *)self->_samples mutableCopy];
  [(HDCodableObjectCollection *)v7 setDeletedSamples:v5];

  data = [(HDCodableObjectCollection *)v7 data];
  [coderCopy encodeObject:data forKey:@"codable_objects"];

  [coderCopy encodeObject:self->_provenance forKey:@"provenance"];
}

- (_HDDeletedSampleInsertionJournalEntry)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = _HDDeletedSampleInsertionJournalEntry;
  v5 = [(HDJournalEntry *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codable_objects"];
    if (v6)
    {
      v7 = [[HDCodableObjectCollection alloc] initWithData:v6];
      deletedSamples = [(HDCodableObjectCollection *)v7 deletedSamples];
      samples = v5->_samples;
      v5->_samples = deletedSamples;
    }

    else
    {
      v10 = MEMORY[0x277CBEB98];
      v18[0] = objc_opt_class();
      v18[1] = objc_opt_class();
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
      samples = [v10 setWithArray:v7];
      v11 = [coderCopy decodeObjectOfClasses:samples forKey:@"deleted_samples"];
      v12 = v5->_samples;
      v5->_samples = v11;
    }

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provenance"];
    provenance = v5->_provenance;
    v5->_provenance = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

@end