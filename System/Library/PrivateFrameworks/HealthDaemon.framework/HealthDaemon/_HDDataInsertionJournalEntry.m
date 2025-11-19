@interface _HDDataInsertionJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (_HDDataInsertionJournalEntry)initWithCoder:(id)a3;
- (id)description;
- (id)initWithDataObject:(void *)a3 provenance:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HDDataInsertionJournalEntry

- (id)initWithDataObject:(void *)a3 provenance:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = [a1 init];
    a1 = v8;
    if (v8)
    {
      objc_storeStrong((v8 + 8), a2);
      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ - %@", v5, self->_dataObject];

  return v6;
}

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v95 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v77 = a4;
  v6 = [v77 deviceManager];
  v88 = 0;
  v71 = [v6 deviceEntityForNoDeviceWithError:&v88];
  v7 = v88;

  v72 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v84 objects:v94 count:16];
  v74 = v8;
  if (v9)
  {
    v10 = v9;
    v75 = *v85;
    do
    {
      v11 = 0;
      do
      {
        if (*v85 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v84 + 1) + 8 * v11);
        if (v12)
        {
          v13 = *(v12 + 16);
          v14 = *(v12 + 8);
        }

        else
        {
          v13 = 0;
          v14 = 0;
        }

        v15 = v14;
        v16 = [v15 _sourceBundleIdentifier];

        v17 = [v13 sourceID];

        if (v17)
        {
          v18 = v7;
          goto LABEL_12;
        }

        v19 = [v77 sourceManager];
        v83 = v7;
        v20 = [v19 localSourceForBundleIdentifier:v16 error:&v83];
        v18 = v83;

        if (v20)
        {
          v21 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v20, "persistentID")}];
          [v13 setSourceID:v21];

LABEL_12:
          v22 = [v13 deviceID];

          if (!v22)
          {
            if (!v71)
            {
              _HKInitializeLogging();
              v34 = *MEMORY[0x277CCC2A0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_228986000, v34, OS_LOG_TYPE_ERROR, "missing no device entity!", buf, 2u);
              }

              [MEMORY[0x277CCACA8] stringWithFormat:@"%@", objc_opt_class(), v69];
              goto LABEL_29;
            }

            v23 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v71, "persistentID")}];
            [v13 setDeviceID:v23];
          }

          v24 = [v13 sourceVersion];

          if (!v24)
          {
            [v13 setSourceVersion:&stru_283BF39C8];
          }

          v25 = [v13 sourceID];

          if (v25)
          {
            if (!v16)
            {
              goto LABEL_40;
            }

            v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-%ld", v16, objc_msgSend(v13, "hash")];
            v27 = [v8 objectForKeyedSubscript:v16];
            if (v27)
            {
              v28 = v27;
              v29 = [v8 objectForKeyedSubscript:v26];

              if (!v29)
              {
LABEL_33:
                [v8 setObject:v28 forKeyedSubscript:v26];
              }

              v35 = [v72 objectForKeyedSubscript:v26];
              if (!v35)
              {
                v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
                [v72 setObject:v35 forKeyedSubscript:v26];
                [v70 setObject:v13 forKeyedSubscript:v26];
              }

              if (v12)
              {
                v42 = *(v12 + 8);
              }

              else
              {
                v42 = 0;
              }

              [v35 addObject:v42];
              goto LABEL_39;
            }

            v40 = [HDSourceEntity alloc];
            v41 = [v13 sourceID];
            v28 = -[HDSQLiteEntity initWithPersistentID:](v40, "initWithPersistentID:", [v41 longLongValue]);

            [v8 setObject:v28 forKeyedSubscript:v16];
            goto LABEL_33;
          }

          _HKInitializeLogging();
          v30 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v91 = v16;
            v92 = 2114;
            v93 = v18;
            v31 = v30;
            v32 = "Missing source for %{public}@: %{public}@.";
LABEL_43:
            _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, v32, buf, 0x16u);
            goto LABEL_25;
          }

          goto LABEL_25;
        }

        _HKInitializeLogging();
        v33 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v91 = v16;
          v92 = 2114;
          v93 = v18;
          v31 = v33;
          v32 = "missing source for %{public}@: %{public}@";
          goto LABEL_43;
        }

LABEL_25:
        [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", objc_opt_class(), v16];
        v26 = LABEL_29:;
        v28 = [v77 daemon];
        v35 = [(HDSourceEntity *)v28 autoBugCaptureReporter];
        v36 = MEMORY[0x277CCABB0];
        if (v12)
        {
          v37 = *(v12 + 16);
        }

        else
        {
          v37 = 0;
        }

        v38 = v37;
        v39 = [v36 numberWithLongLong:{objc_msgSend(v38, "syncProvenance")}];
        [v35 reportJournalFailureWithErrorDescription:v26 provenance:v39 error:v18];

        v8 = v74;
LABEL_39:

LABEL_40:
        v7 = v18;

        ++v11;
      }

      while (v10 != v11);
      v43 = [obj countByEnumeratingWithState:&v84 objects:v94 count:16];
      v10 = v43;
    }

    while (v43);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v76 = [v72 allKeys];
  v44 = [v76 countByEnumeratingWithState:&v79 objects:v89 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v80;
    while (2)
    {
      v47 = 0;
      v48 = v7;
      do
      {
        if (*v80 != v46)
        {
          objc_enumerationMutation(v76);
        }

        v49 = *(*(&v79 + 1) + 8 * v47);
        _HKInitializeLogging();
        v50 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
        {
          v65 = v50;
          v66 = [v72 objectForKeyedSubscript:v49];
          v67 = [v66 count];
          *buf = 134218242;
          v91 = v67;
          v92 = 2112;
          v93 = v49;
          _os_log_debug_impl(&dword_228986000, v65, OS_LOG_TYPE_DEBUG, "Inserting %ld objects for source: %@", buf, 0x16u);
        }

        v51 = [v70 objectForKeyedSubscript:v49];
        if ([v51 syncIdentity] == -1)
        {
          v52 = [v77 syncIdentityManager];
          v53 = [v52 legacySyncIdentity];
          v54 = [v53 entity];
          [v51 setSyncIdentity:{objc_msgSend(v54, "persistentID")}];
        }

        v55 = [v77 dataManager];
        v56 = [v72 objectForKeyedSubscript:v49];
        v78 = v48;
        v57 = [v55 insertDataObjects:v56 withProvenance:v51 creationDate:1 skipInsertionFilter:1 updateSourceOrder:0 resolveAssociations:&v78 error:2.22507386e-308];
        v7 = v78;

        if ((v57 & 1) == 0)
        {
          _HKInitializeLogging();
          v58 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v91 = v49;
            v92 = 2114;
            v93 = v7;
            _os_log_error_impl(&dword_228986000, v58, OS_LOG_TYPE_ERROR, "Failed to apply for source: %@: %{public}@", buf, 0x16u);
          }

          if ([v7 hk_isTransactionInterruptedError])
          {

            v8 = v74;
            goto LABEL_66;
          }

          v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v49];
          v60 = [v77 daemon];
          v61 = [v60 autoBugCaptureReporter];
          v62 = MEMORY[0x277CCABB0];
          v63 = [v70 objectForKeyedSubscript:v49];
          v64 = [v62 numberWithLongLong:{objc_msgSend(v63, "syncProvenance")}];
          [v61 reportJournalFailureWithErrorDescription:v59 provenance:v64 error:v7];
        }

        ++v47;
        v48 = v7;
        v8 = v74;
      }

      while (v45 != v47);
      v45 = [v76 countByEnumeratingWithState:&v79 objects:v89 count:16];
      if (v45)
      {
        continue;
      }

      break;
    }
  }

LABEL_66:

  v68 = *MEMORY[0x277D85DE8];
}

- (_HDDataInsertionJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataObject"];
  if ([v4 containsValueForKey:@"source"])
  {
    if ([v4 decodeIntegerForKey:@"source"] == 16)
    {
      [HDDataOriginProvenance dataProvenanceWithSyncProvenance:"dataProvenanceWithSyncProvenance:syncIdentity:productType:systemBuild:operatingSystemVersion:sourceVersion:timeZoneName:sourceID:deviceID:contributorReference:" syncIdentity:1 productType:-1 systemBuild:@"UnknownDevice" operatingSystemVersion:@"[8.0 sourceVersion:8.2" timeZoneName:? sourceID:? deviceID:? contributorReference:?], &v10, &stru_283BF39C8, &stru_283BF39C8, 0, 0, 0, HDDataProvenanceOperatingSystemVersion8_0_0, 0);
    }

    else
    {
      [HDDataOriginProvenance dataProvenanceWithSyncProvenance:"dataProvenanceWithSyncProvenance:syncIdentity:productType:systemBuild:operatingSystemVersion:sourceVersion:timeZoneName:sourceID:deviceID:contributorReference:" syncIdentity:0 productType:-1 systemBuild:@"UnknownDevice" operatingSystemVersion:@"[8.0 sourceVersion:8.2" timeZoneName:? sourceID:? deviceID:? contributorReference:?], &v10, &stru_283BF39C8, &stru_283BF39C8, 0, 0, 0, HDDataProvenanceOperatingSystemVersion8_0_0, 0);
    }
  }

  else
  {
    if (![v4 containsValueForKey:@"provenance"])
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullProvenance"];
      goto LABEL_9;
    }

    +[HDDataOriginProvenance dataProvenanceWithSyncProvenance:syncIdentity:productType:systemBuild:operatingSystemVersion:sourceVersion:timeZoneName:sourceID:deviceID:contributorReference:](HDDataOriginProvenance, "dataProvenanceWithSyncProvenance:syncIdentity:productType:systemBuild:operatingSystemVersion:sourceVersion:timeZoneName:sourceID:deviceID:contributorReference:", [v4 decodeIntegerForKey:@"provenance"], -1, @"UnknownDevice", @"[8.2, 9.0"), &v10, &stru_283BF39C8, &stru_283BF39C8, 0, 0, 0, HDDataProvenanceOperatingSystemVersion8_2_0, 0);
  }
  v6 = ;
LABEL_9:
  v7 = v6;
  v8 = [(_HDDataInsertionJournalEntry *)&self->super.super.isa initWithDataObject:v5 provenance:v6];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  dataObject = self->_dataObject;
  v5 = a3;
  [v5 encodeObject:dataObject forKey:@"dataObject"];
  [v5 encodeObject:self->_provenance forKey:@"fullProvenance"];
}

@end