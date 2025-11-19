@interface _HDDataBatchInsertionJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (_HDDataBatchInsertionJournalEntry)initWithCoder:(id)a3;
- (id)description;
- (id)initWithCodableObjectCollection:(void *)a3 provenance:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HDDataBatchInsertionJournalEntry

- (id)initWithCodableObjectCollection:(void *)a3 provenance:
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
  v6 = [v3 stringWithFormat:@"%@ - %@", v5, self->_collection];

  return v6;
}

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v113 = *MEMORY[0x277D85DE8];
  v87 = a3;
  v95 = a4;
  v5 = [v95 deviceManager];
  v106 = 0;
  v6 = [v5 deviceEntityForNoDeviceWithError:&v106];
  v7 = v106;

  v88 = v6;
  if (!v6 && [v7 hk_isTransactionInterruptedError])
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "Aborting merge of _HDDataBatchInsertionJournalEntry due to interruption", buf, 2u);
    }

    goto LABEL_109;
  }

  v91 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v92 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v89 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = v87;
  v94 = [obj countByEnumeratingWithState:&v102 objects:v112 count:16];
  if (v94)
  {
    v93 = *v103;
    v9 = 0x280D58000uLL;
LABEL_7:
    v10 = 0;
    while (1)
    {
      if (*v103 != v93)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v102 + 1) + 8 * v10);
      if (v11)
      {
        v12 = *(v11 + 8);
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v14 = [v13 sourceBundleIdentifier];
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v16 = [v13 source];
        v15 = [v16 bundleIdentifier];

        if (!v15)
        {
          _HKInitializeLogging();
          v55 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_228986000, v55, OS_LOG_TYPE_ERROR, "missing collection source identifier during journal application", buf, 2u);
          }

          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", objc_opt_class()];
          v31 = [v95 daemon];
          v33 = [v31 autoBugCaptureReporter];
          v56 = MEMORY[0x277CCABB0];
          if (v11)
          {
            v57 = *(v11 + *(v9 + 2944));
          }

          else
          {
            v57 = 0;
          }

          v46 = v57;
          v42 = [v56 numberWithLongLong:{objc_msgSend(v46, "syncProvenance")}];
          [(HDSourceEntity *)v33 reportJournalFailureWithErrorDescription:v15 provenance:v42 error:v7];
          goto LABEL_74;
        }
      }

      if (v11)
      {
        v17 = *(v11 + *(v9 + 2944));
      }

      else
      {
        v17 = 0;
      }

      v18 = [v17 sourceID];

      if (v18)
      {
        v19 = v7;
        v20 = v92;
        if (!v11)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v35 = [v95 sourceManager];
        v101 = v7;
        v36 = [v35 localSourceForBundleIdentifier:v15 error:&v101];
        v19 = v101;

        if (!v36)
        {
          _HKInitializeLogging();
          v58 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v109 = v15;
            v110 = 2114;
            v111 = v19;
            _os_log_error_impl(&dword_228986000, v58, OS_LOG_TYPE_ERROR, "missing source for %{public}@: %{public}@", buf, 0x16u);
          }

          if ([v19 hk_isTransactionInterruptedError])
          {

            v7 = v19;
LABEL_107:

            goto LABEL_108;
          }

          [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", objc_opt_class(), v15];
          goto LABEL_70;
        }

        v20 = v92;
        if (v11)
        {
          v37 = *(v11 + 16);
        }

        else
        {
          v37 = 0;
        }

        v38 = MEMORY[0x277CCABB0];
        v39 = v37;
        v40 = [v38 numberWithLongLong:{objc_msgSend(v36, "persistentID")}];
        [v39 setSourceID:v40];

        v9 = 0x280D58000;
        if (!v11)
        {
LABEL_39:
          v21 = 0;
          goto LABEL_20;
        }
      }

      v21 = *(v11 + *(v9 + 2944));
LABEL_20:
      v22 = [v21 sourceID];

      if (!v22)
      {
        _HKInitializeLogging();
        v41 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v109 = v15;
          _os_log_error_impl(&dword_228986000, v41, OS_LOG_TYPE_ERROR, "Found a source for identifier %@, but it had no ID; skipping", buf, 0xCu);
        }

        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", objc_opt_class(), v15];
        v33 = [v95 daemon];
        v42 = [(HDSourceEntity *)v33 autoBugCaptureReporter];
        v43 = MEMORY[0x277CCABB0];
        if (v11)
        {
          v44 = *(v11 + 16);
        }

        else
        {
          v44 = 0;
        }

        v45 = v44;
        v46 = [v43 numberWithLongLong:{objc_msgSend(v45, "syncProvenance")}];
        [v42 reportJournalFailureWithErrorDescription:v31 provenance:v46 error:v19];

        goto LABEL_73;
      }

      if (v11)
      {
        v23 = *(v11 + *(v9 + 2944));
      }

      else
      {
        v23 = 0;
      }

      v24 = [v23 deviceID];

      if (v24)
      {
        if (v11)
        {
          goto LABEL_25;
        }

LABEL_49:
        v25 = 0;
        goto LABEL_26;
      }

      if (v88)
      {
        if (v11)
        {
          v47 = *(v11 + *(v9 + 2944));
        }

        else
        {
          v47 = 0;
        }

        v48 = MEMORY[0x277CCABB0];
        v49 = v47;
        v50 = [v48 numberWithLongLong:{objc_msgSend(v88, "persistentID")}];
        [v49 setDeviceID:v50];

        if (!v11)
        {
          goto LABEL_49;
        }

LABEL_25:
        v25 = *(v11 + *(v9 + 2944));
LABEL_26:
        v26 = [v25 sourceVersion];

        if (!v26)
        {
          if (v11)
          {
            v27 = *(v11 + *(v9 + 2944));
          }

          else
          {
            v27 = 0;
          }

          [v27 setSourceVersion:&stru_283BF39C8];
        }

        v28 = objc_alloc(MEMORY[0x277CCACA8]);
        if (v11)
        {
          v29 = *(v11 + *(v9 + 2944));
        }

        else
        {
          v29 = 0;
        }

        v30 = v29;
        v31 = [v28 initWithFormat:@"%@-%ld", v15, objc_msgSend(v30, "hash")];

        v32 = [v20 objectForKeyedSubscript:v15];
        if (v32)
        {
          v33 = v32;
          v34 = [v20 objectForKeyedSubscript:v31];

          if (!v34)
          {
            goto LABEL_53;
          }
        }

        else
        {
          v51 = [HDSourceEntity alloc];
          if (v11)
          {
            v52 = *(v11 + *(v9 + 2944));
          }

          else
          {
            v52 = 0;
          }

          v53 = [v52 sourceID];
          v33 = -[HDSQLiteEntity initWithPersistentID:](v51, "initWithPersistentID:", [v53 longLongValue]);

          [v20 setObject:v33 forKeyedSubscript:v15];
LABEL_53:
          [v20 setObject:v33 forKeyedSubscript:v31];
        }

        v42 = [v91 objectForKeyedSubscript:v31];
        if (!v42)
        {
          v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v91 setObject:v42 forKeyedSubscript:v31];
          if (v11)
          {
            v54 = *(v11 + 16);
          }

          else
          {
            v54 = 0;
          }

          [v89 setObject:v54 forKeyedSubscript:v31];
        }

        v46 = [v13 decodedObjects];
        if (v46)
        {
          [v42 addObjectsFromArray:v46];
        }

        goto LABEL_73;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"%@", objc_opt_class(), v86];
      v31 = LABEL_70:;
      v33 = [v95 daemon];
      v42 = [(HDSourceEntity *)v33 autoBugCaptureReporter];
      if (v11)
      {
        v59 = *(v11 + 16);
      }

      else
      {
        v59 = 0;
      }

      v60 = MEMORY[0x277CCABB0];
      v61 = v59;
      v46 = [v60 numberWithLongLong:{objc_msgSend(v61, "syncProvenance")}];
      [v42 reportJournalFailureWithErrorDescription:v31 provenance:v46 error:v19];

LABEL_73:
      v7 = v19;
LABEL_74:

      ++v10;
      v9 = 0x280D58000;
      if (v94 == v10)
      {
        v62 = [obj countByEnumeratingWithState:&v102 objects:v112 count:16];
        v94 = v62;
        if (v62)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = [v91 allKeys];
  v63 = [obj countByEnumeratingWithState:&v97 objects:v107 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v98;
    do
    {
      v66 = 0;
      v67 = v7;
      do
      {
        if (*v98 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v68 = *(*(&v97 + 1) + 8 * v66);
        _HKInitializeLogging();
        v69 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
        {
          v82 = v69;
          v83 = [v91 objectForKeyedSubscript:v68];
          v84 = [v83 count];
          *buf = 134218242;
          v109 = v84;
          v110 = 2112;
          v111 = v68;
          _os_log_debug_impl(&dword_228986000, v82, OS_LOG_TYPE_DEBUG, "Inserting %ld objects for source: %@", buf, 0x16u);
        }

        v13 = [v89 objectForKeyedSubscript:v68];
        if ([v13 syncIdentity] == -1)
        {
          v70 = [v95 syncIdentityManager];
          v71 = [v70 legacySyncIdentity];
          v72 = [v71 entity];
          [v13 setSyncIdentity:{objc_msgSend(v72, "persistentID")}];
        }

        v73 = [v95 dataManager];
        v74 = [v91 objectForKeyedSubscript:v68];
        v75 = [v13 syncProvenance] == 0;
        v96 = v67;
        v76 = [v73 insertDataObjects:v74 withProvenance:v13 creationDate:1 skipInsertionFilter:v75 updateSourceOrder:0 resolveAssociations:&v96 error:2.22507386e-308];
        v7 = v96;

        if ((v76 & 1) == 0)
        {
          _HKInitializeLogging();
          v77 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v109 = v68;
            v110 = 2114;
            v111 = v7;
            _os_log_error_impl(&dword_228986000, v77, OS_LOG_TYPE_ERROR, "Failed to apply for source: %@: %{public}@", buf, 0x16u);
          }

          if ([v7 hk_isTransactionInterruptedError])
          {
            goto LABEL_107;
          }

          v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v68];
          v79 = [v95 daemon];
          v80 = [v79 autoBugCaptureReporter];
          v81 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v13, "syncProvenance")}];
          [v80 reportJournalFailureWithErrorDescription:v78 provenance:v81 error:v7];
        }

        ++v66;
        v67 = v7;
      }

      while (v64 != v66);
      v64 = [obj countByEnumeratingWithState:&v97 objects:v107 count:16];
    }

    while (v64);
  }

LABEL_108:

LABEL_109:
  v85 = *MEMORY[0x277D85DE8];
}

- (_HDDataBatchInsertionJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"codableCollectionData"];
  v6 = [[HDCodableObjectCollection alloc] initWithData:v5];
  if ([v4 containsValueForKey:@"provenance"])
  {
    +[HDDataOriginProvenance dataProvenanceWithSyncProvenance:syncIdentity:productType:systemBuild:operatingSystemVersion:sourceVersion:timeZoneName:sourceID:deviceID:contributorReference:](HDDataOriginProvenance, "dataProvenanceWithSyncProvenance:syncIdentity:productType:systemBuild:operatingSystemVersion:sourceVersion:timeZoneName:sourceID:deviceID:contributorReference:", [v4 decodeIntegerForKey:@"provenance"], -1, @"UnknownDevice", @"[8.2, 9.0"), &v11, &stru_283BF39C8, &stru_283BF39C8, 0, 0, 0, HDDataProvenanceOperatingSystemVersion8_2_0, 0);
    v7 = LABEL_6:;
    goto LABEL_7;
  }

  if (![v4 containsValueForKey:@"fullProvenance"])
  {
    [HDDataOriginProvenance dataProvenanceWithSyncProvenance:"dataProvenanceWithSyncProvenance:syncIdentity:productType:systemBuild:operatingSystemVersion:sourceVersion:timeZoneName:sourceID:deviceID:contributorReference:" syncIdentity:0 productType:-1 systemBuild:@"UnknownDevice" operatingSystemVersion:@"[8.0 sourceVersion:8.2" timeZoneName:? sourceID:? deviceID:? contributorReference:?], &v11, &stru_283BF39C8, &stru_283BF39C8, 0, 0, 0, HDDataProvenanceOperatingSystemVersion8_0_0, 0);
    goto LABEL_6;
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullProvenance"];
LABEL_7:
  v8 = v7;
  v9 = [(_HDDataBatchInsertionJournalEntry *)&self->super.super.isa initWithCodableObjectCollection:v6 provenance:v7];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  collection = self->_collection;
  v6 = a3;
  v5 = [(HDCodableObjectCollection *)collection data];
  [v6 encodeObject:v5 forKey:@"codableCollectionData"];

  [v6 encodeObject:self->_provenance forKey:@"fullProvenance"];
}

@end