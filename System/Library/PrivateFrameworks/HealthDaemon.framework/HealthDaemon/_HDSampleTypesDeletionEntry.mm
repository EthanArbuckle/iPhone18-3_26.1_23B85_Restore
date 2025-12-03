@interface _HDSampleTypesDeletionEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (_HDSampleTypesDeletionEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)initWithSourceIDs:(void *)ds types:;
@end

@implementation _HDSampleTypesDeletionEntry

- (void)initWithSourceIDs:(void *)ds types:
{
  v5 = a2;
  dsCopy = ds;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = _HDSampleTypesDeletionEntry;
    self = objc_msgSendSuper2(&v12, sel_init);
    if (self)
    {
      v7 = [v5 copy];
      v8 = self[1];
      self[1] = v7;

      v9 = [dsCopy copy];
      v10 = self[2];
      self[2] = v9;
    }
  }

  return self;
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  v38 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  profileCopy = profile;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = entriesCopy;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v25 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        if (v10)
        {
          v11 = *(v10 + 8);
          v12 = *(v10 + 16);
        }

        else
        {
          v11 = 0;
          v12 = 0;
        }

        v13 = v12;
        v14 = [v11 hk_map:&__block_literal_global_505];
        dataManager = [profileCopy dataManager];
        v26 = 0;
        v16 = [dataManager deleteSamplesWithTypes:v13 sourceEntities:v14 recursiveDeleteAuthorizationBlock:0 error:&v26];
        v17 = v26;

        if ((v16 & 1) == 0)
        {
          _HKInitializeLogging();
          v18 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v32 = v11;
            v33 = 2112;
            v34 = v13;
            v35 = 2114;
            v36 = v17;
            _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "Failed to delete samples for deleted source identifiers (%@) and types (%@): %{public}@.", buf, 0x20u);
          }

          if ([v17 hk_isTransactionInterruptedError])
          {

            goto LABEL_19;
          }

          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@, %@", objc_opt_class(), v11, v13];
          daemon = [profileCopy daemon];
          autoBugCaptureReporter = [daemon autoBugCaptureReporter];
          [autoBugCaptureReporter reportJournalFailureWithErrorDescription:v19 provenance:0 error:v17];
        }

        ++v9;
      }

      while (v8 != v9);
      v22 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
      v8 = v22;
    }

    while (v22);
  }

LABEL_19:

  v23 = *MEMORY[0x277D85DE8];
}

- (_HDSampleTypesDeletionEntry)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"sids"];

  if (!v8)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sid"];
    if (v9)
    {
      v10 = [MEMORY[0x277CBEB98] setWithObject:v9];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }

    v8 = v10;
  }

  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"types"];
  v15 = [(_HDSampleTypesDeletionEntry *)self initWithSourceIDs:v8 types:v14];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  sourceIDs = self->_sourceIDs;
  coderCopy = coder;
  [coderCopy encodeObject:sourceIDs forKey:@"sids"];
  [coderCopy encodeObject:self->_types forKey:@"types"];
}

@end