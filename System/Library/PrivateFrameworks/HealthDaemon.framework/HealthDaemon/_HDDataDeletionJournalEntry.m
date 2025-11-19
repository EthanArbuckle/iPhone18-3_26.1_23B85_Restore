@interface _HDDataDeletionJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (_BYTE)initWithDataObject:(char)a3 restrictSource:;
- (_HDDataDeletionJournalEntry)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HDDataDeletionJournalEntry

- (_BYTE)initWithDataObject:(char)a3 restrictSource:
{
  v6 = a2;
  if (a1)
  {
    v7 = [a1 init];
    a1 = v7;
    if (v7)
    {
      objc_storeStrong((v7 + 16), a2);
      a1[8] = a3;
    }
  }

  return a1;
}

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v44 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v5;
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
        v14 = [MEMORY[0x277CCACA8] string];
LABEL_14:
        v19 = v14;
        v20 = [v6 objectForKeyedSubscript:v19];
        if (!v20)
        {
          v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v6 setObject:v20 forKeyedSubscript:v19];
        }

        if (v12)
        {
          v21 = *(v12 + 16);
        }

        else
        {
          v21 = 0;
        }

        [v20 addObject:v21];
        v14 = v19;
        goto LABEL_19;
      }

      v13 = *(v12 + 16);
      v14 = [v13 _sourceBundleIdentifier];

      v15 = [v47 objectForKeyedSubscript:v14];
      if (v15)
      {
        v16 = v15;
LABEL_13:
        v6 = v46;

        goto LABEL_14;
      }

      v17 = [v44 sourceManager];
      v53 = v9;
      v16 = [v17 localSourceForBundleIdentifier:v14 copyIfNecessary:1 error:&v53];
      v18 = v53;

      if (v16)
      {
        [v47 setObject:v16 forKeyedSubscript:v14];
        v9 = v18;
        goto LABEL_13;
      }

      _HKInitializeLogging();
      v22 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v60 = v14;
        v61 = 2114;
        v62 = v18;
        _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "Missing source for %{public}@, skipping: %{public}@", buf, 0x16u);
      }

      if ([v18 hk_isTransactionInterruptedError])
      {
        v43 = obj;
        v9 = v18;
LABEL_29:

        goto LABEL_30;
      }

      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", objc_opt_class(), v14];
      v20 = [v44 daemon];
      v23 = [v20 autoBugCaptureReporter];
      [v23 reportJournalFailureWithErrorDescription:v19 provenance:0 error:v18];

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
  v43 = [v6 allKeys];
  v25 = [v43 countByEnumeratingWithState:&v49 objects:v58 count:16];
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
          objc_enumerationMutation(v43);
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

        v14 = [v47 objectForKeyedSubscript:v30];
        v32 = [v44 dataManager];
        v33 = [v46 objectForKeyedSubscript:v30];
        if (v14)
        {
          v6 = [MEMORY[0x277CBEB98] setWithObject:v14];
          v34 = v6;
        }

        else
        {
          v34 = 0;
        }

        v48 = v29;
        [v32 deleteDataObjects:v33 restrictedSourceEntities:v34 failIfNotFound:0 recursiveDeleteAuthorizationBlock:0 error:&v48];
        v9 = v48;

        if (v14)
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
          v37 = [v44 daemon];
          v38 = [v37 autoBugCaptureReporter];
          [v38 reportJournalFailureWithErrorDescription:v36 provenance:0 error:v9];
        }

        ++v28;
        v29 = v9;
      }

      while (v26 != v28);
      v26 = [v43 countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v26);
LABEL_30:
    v6 = v46;
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (_HDDataDeletionJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataObject"];
  v6 = [v4 decodeBoolForKey:@"restrictSource"];

  v7 = [(_HDDataDeletionJournalEntry *)self initWithDataObject:v5 restrictSource:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  dataObject = self->_dataObject;
  v5 = a3;
  [v5 encodeObject:dataObject forKey:@"dataObject"];
  [v5 encodeBool:self->_restrictSource forKey:@"restrictSource"];
}

@end