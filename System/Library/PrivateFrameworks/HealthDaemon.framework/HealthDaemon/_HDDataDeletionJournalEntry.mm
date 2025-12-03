@interface _HDDataDeletionJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (_BYTE)initWithDataObject:(char)object restrictSource:;
- (_HDDataDeletionJournalEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HDDataDeletionJournalEntry

- (_BYTE)initWithDataObject:(char)object restrictSource:
{
  v6 = a2;
  if (self)
  {
    v7 = [self init];
    self = v7;
    if (v7)
    {
      objc_storeStrong((v7 + 16), a2);
      self[8] = object;
    }
  }

  return self;
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  v64 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  profileCopy = profile;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = entriesCopy;
  v7 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
  v46 = v6;
  if (!v7)
  {
    v9 = 0;
    goto LABEL_32;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v55;
  while (2)
  {
    v11 = 0;
    do
    {
      if (*v55 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v54 + 1) + 8 * v11);
      if (!v12 || *(v12 + 8) != 1)
      {
        string = [MEMORY[0x277CCACA8] string];
LABEL_14:
        v19 = string;
        daemon = [v6 objectForKeyedSubscript:v19];
        if (!daemon)
        {
          daemon = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v6 setObject:daemon forKeyedSubscript:v19];
        }

        if (v12)
        {
          v21 = *(v12 + 16);
        }

        else
        {
          v21 = 0;
        }

        [daemon addObject:v21];
        string = v19;
        goto LABEL_19;
      }

      v13 = *(v12 + 16);
      string = [v13 _sourceBundleIdentifier];

      v15 = [v47 objectForKeyedSubscript:string];
      if (v15)
      {
        v16 = v15;
LABEL_13:
        v6 = v46;

        goto LABEL_14;
      }

      sourceManager = [profileCopy sourceManager];
      v53 = v9;
      v16 = [sourceManager localSourceForBundleIdentifier:string copyIfNecessary:1 error:&v53];
      v18 = v53;

      if (v16)
      {
        [v47 setObject:v16 forKeyedSubscript:string];
        v9 = v18;
        goto LABEL_13;
      }

      _HKInitializeLogging();
      v22 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v60 = string;
        v61 = 2114;
        v62 = v18;
        _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "Missing source for %{public}@, skipping: %{public}@", buf, 0x16u);
      }

      if ([v18 hk_isTransactionInterruptedError])
      {
        allKeys = obj;
        v9 = v18;
LABEL_29:

        goto LABEL_30;
      }

      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", objc_opt_class(), string];
      daemon = [profileCopy daemon];
      autoBugCaptureReporter = [daemon autoBugCaptureReporter];
      [autoBugCaptureReporter reportJournalFailureWithErrorDescription:v19 provenance:0 error:v18];

      v9 = v18;
      v6 = v46;
LABEL_19:

      ++v11;
    }

    while (v8 != v11);
    v24 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
    v8 = v24;
    if (v24)
    {
      continue;
    }

    break;
  }

LABEL_32:

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  allKeys = [v6 allKeys];
  v25 = [allKeys countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v50;
    do
    {
      v28 = 0;
      v29 = v9;
      do
      {
        if (*v50 != v27)
        {
          objc_enumerationMutation(allKeys);
        }

        v30 = *(*(&v49 + 1) + 8 * v28);
        _HKInitializeLogging();
        v31 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
        {
          v39 = v31;
          v40 = [v46 objectForKeyedSubscript:v30];
          v41 = [v40 count];
          *buf = 134218242;
          v60 = v41;
          v61 = 2112;
          v62 = v30;
          _os_log_debug_impl(&dword_228986000, v39, OS_LOG_TYPE_DEBUG, "Deleting %ld objects for source: %@", buf, 0x16u);
        }

        string = [v47 objectForKeyedSubscript:v30];
        dataManager = [profileCopy dataManager];
        v33 = [v46 objectForKeyedSubscript:v30];
        if (string)
        {
          v6 = [MEMORY[0x277CBEB98] setWithObject:string];
          v34 = v6;
        }

        else
        {
          v34 = 0;
        }

        v48 = v29;
        [dataManager deleteDataObjects:v33 restrictedSourceEntities:v34 failIfNotFound:0 recursiveDeleteAuthorizationBlock:0 error:&v48];
        v9 = v48;

        if (string)
        {
        }

        if (v9)
        {
          _HKInitializeLogging();
          v35 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v60 = v30;
            v61 = 2114;
            v62 = v9;
            _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "Failed to apply for source: %@: %{public}@", buf, 0x16u);
          }

          if ([v9 hk_isTransactionInterruptedError])
          {
            goto LABEL_29;
          }

          v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v30];
          daemon2 = [profileCopy daemon];
          autoBugCaptureReporter2 = [daemon2 autoBugCaptureReporter];
          [autoBugCaptureReporter2 reportJournalFailureWithErrorDescription:v36 provenance:0 error:v9];
        }

        ++v28;
        v29 = v9;
      }

      while (v26 != v28);
      v26 = [allKeys countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v26);
LABEL_30:
    v6 = v46;
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (_HDDataDeletionJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataObject"];
  v6 = [coderCopy decodeBoolForKey:@"restrictSource"];

  v7 = [(_HDDataDeletionJournalEntry *)self initWithDataObject:v5 restrictSource:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  dataObject = self->_dataObject;
  coderCopy = coder;
  [coderCopy encodeObject:dataObject forKey:@"dataObject"];
  [coderCopy encodeBool:self->_restrictSource forKey:@"restrictSource"];
}

@end