@interface _HDDataBatchInsertionJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (_HDDataBatchInsertionJournalEntry)initWithCoder:(id)coder;
- (id)description;
- (id)initWithCodableObjectCollection:(void *)collection provenance:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HDDataBatchInsertionJournalEntry

- (id)initWithCodableObjectCollection:(void *)collection provenance:
{
  v6 = a2;
  collectionCopy = collection;
  if (self)
  {
    v8 = [self init];
    self = v8;
    if (v8)
    {
      objc_storeStrong((v8 + 8), a2);
      objc_storeStrong(self + 2, collection);
    }
  }

  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ - %@", v5, self->_collection];

  return v6;
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  v113 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  profileCopy = profile;
  deviceManager = [profileCopy deviceManager];
  v106 = 0;
  v6 = [deviceManager deviceEntityForNoDeviceWithError:&v106];
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
  obj = entriesCopy;
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
      sourceBundleIdentifier = [v13 sourceBundleIdentifier];
      if (sourceBundleIdentifier)
      {
        bundleIdentifier = sourceBundleIdentifier;
      }

      else
      {
        source = [v13 source];
        bundleIdentifier = [source bundleIdentifier];

        if (!bundleIdentifier)
        {
          _HKInitializeLogging();
          v55 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_228986000, v55, OS_LOG_TYPE_ERROR, "missing collection source identifier during journal application", buf, 2u);
          }

          bundleIdentifier = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", objc_opt_class()];
          daemon = [profileCopy daemon];
          autoBugCaptureReporter = [daemon autoBugCaptureReporter];
          v56 = MEMORY[0x277CCABB0];
          if (v11)
          {
            v57 = *(v11 + *(v9 + 2944));
          }

          else
          {
            v57 = 0;
          }

          decodedObjects = v57;
          v33AutoBugCaptureReporter = [v56 numberWithLongLong:{objc_msgSend(decodedObjects, "syncProvenance")}];
          [(HDSourceEntity *)autoBugCaptureReporter reportJournalFailureWithErrorDescription:bundleIdentifier provenance:v33AutoBugCaptureReporter error:v7];
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

      sourceID = [v17 sourceID];

      if (sourceID)
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
        sourceManager = [profileCopy sourceManager];
        v101 = v7;
        v36 = [sourceManager localSourceForBundleIdentifier:bundleIdentifier error:&v101];
        v19 = v101;

        if (!v36)
        {
          _HKInitializeLogging();
          v58 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v109 = bundleIdentifier;
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

          [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", objc_opt_class(), bundleIdentifier];
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
      sourceID2 = [v21 sourceID];

      if (!sourceID2)
      {
        _HKInitializeLogging();
        v41 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v109 = bundleIdentifier;
          _os_log_error_impl(&dword_228986000, v41, OS_LOG_TYPE_ERROR, "Found a source for identifier %@, but it had no ID; skipping", buf, 0xCu);
        }

        daemon = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", objc_opt_class(), bundleIdentifier];
        autoBugCaptureReporter = [profileCopy daemon];
        v33AutoBugCaptureReporter = [(HDSourceEntity *)autoBugCaptureReporter autoBugCaptureReporter];
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
        decodedObjects = [v43 numberWithLongLong:{objc_msgSend(v45, "syncProvenance")}];
        [v33AutoBugCaptureReporter reportJournalFailureWithErrorDescription:daemon provenance:decodedObjects error:v19];

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

      deviceID = [v23 deviceID];

      if (deviceID)
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
        sourceVersion = [v25 sourceVersion];

        if (!sourceVersion)
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
        daemon = [v28 initWithFormat:@"%@-%ld", bundleIdentifier, objc_msgSend(v30, "hash")];

        v32 = [v20 objectForKeyedSubscript:bundleIdentifier];
        if (v32)
        {
          autoBugCaptureReporter = v32;
          v34 = [v20 objectForKeyedSubscript:daemon];

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

          sourceID3 = [v52 sourceID];
          autoBugCaptureReporter = -[HDSQLiteEntity initWithPersistentID:](v51, "initWithPersistentID:", [sourceID3 longLongValue]);

          [v20 setObject:autoBugCaptureReporter forKeyedSubscript:bundleIdentifier];
LABEL_53:
          [v20 setObject:autoBugCaptureReporter forKeyedSubscript:daemon];
        }

        v33AutoBugCaptureReporter = [v91 objectForKeyedSubscript:daemon];
        if (!v33AutoBugCaptureReporter)
        {
          v33AutoBugCaptureReporter = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v91 setObject:v33AutoBugCaptureReporter forKeyedSubscript:daemon];
          if (v11)
          {
            v54 = *(v11 + 16);
          }

          else
          {
            v54 = 0;
          }

          [v89 setObject:v54 forKeyedSubscript:daemon];
        }

        decodedObjects = [v13 decodedObjects];
        if (decodedObjects)
        {
          [v33AutoBugCaptureReporter addObjectsFromArray:decodedObjects];
        }

        goto LABEL_73;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"%@", objc_opt_class(), v86];
      daemon = LABEL_70:;
      autoBugCaptureReporter = [profileCopy daemon];
      v33AutoBugCaptureReporter = [(HDSourceEntity *)autoBugCaptureReporter autoBugCaptureReporter];
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
      decodedObjects = [v60 numberWithLongLong:{objc_msgSend(v61, "syncProvenance")}];
      [v33AutoBugCaptureReporter reportJournalFailureWithErrorDescription:daemon provenance:decodedObjects error:v19];

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
          syncIdentityManager = [profileCopy syncIdentityManager];
          legacySyncIdentity = [syncIdentityManager legacySyncIdentity];
          entity = [legacySyncIdentity entity];
          [v13 setSyncIdentity:{objc_msgSend(entity, "persistentID")}];
        }

        dataManager = [profileCopy dataManager];
        v74 = [v91 objectForKeyedSubscript:v68];
        v75 = [v13 syncProvenance] == 0;
        v96 = v67;
        v76 = [dataManager insertDataObjects:v74 withProvenance:v13 creationDate:1 skipInsertionFilter:v75 updateSourceOrder:0 resolveAssociations:&v96 error:2.22507386e-308];
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
          daemon2 = [profileCopy daemon];
          autoBugCaptureReporter2 = [daemon2 autoBugCaptureReporter];
          v81 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v13, "syncProvenance")}];
          [autoBugCaptureReporter2 reportJournalFailureWithErrorDescription:v78 provenance:v81 error:v7];
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

- (_HDDataBatchInsertionJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codableCollectionData"];
  v6 = [[HDCodableObjectCollection alloc] initWithData:v5];
  if ([coderCopy containsValueForKey:@"provenance"])
  {
    +[HDDataOriginProvenance dataProvenanceWithSyncProvenance:syncIdentity:productType:systemBuild:operatingSystemVersion:sourceVersion:timeZoneName:sourceID:deviceID:contributorReference:](HDDataOriginProvenance, "dataProvenanceWithSyncProvenance:syncIdentity:productType:systemBuild:operatingSystemVersion:sourceVersion:timeZoneName:sourceID:deviceID:contributorReference:", [coderCopy decodeIntegerForKey:@"provenance"], -1, @"UnknownDevice", @"[8.2, 9.0"), &v11, &stru_283BF39C8, &stru_283BF39C8, 0, 0, 0, HDDataProvenanceOperatingSystemVersion8_2_0, 0);
    v7 = LABEL_6:;
    goto LABEL_7;
  }

  if (![coderCopy containsValueForKey:@"fullProvenance"])
  {
    [HDDataOriginProvenance dataProvenanceWithSyncProvenance:"dataProvenanceWithSyncProvenance:syncIdentity:productType:systemBuild:operatingSystemVersion:sourceVersion:timeZoneName:sourceID:deviceID:contributorReference:" syncIdentity:0 productType:-1 systemBuild:@"UnknownDevice" operatingSystemVersion:@"[8.0 sourceVersion:8.2" timeZoneName:? sourceID:? deviceID:? contributorReference:?], &v11, &stru_283BF39C8, &stru_283BF39C8, 0, 0, 0, HDDataProvenanceOperatingSystemVersion8_0_0, 0);
    goto LABEL_6;
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullProvenance"];
LABEL_7:
  v8 = v7;
  v9 = [(_HDDataBatchInsertionJournalEntry *)&self->super.super.isa initWithCodableObjectCollection:v6 provenance:v7];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  collection = self->_collection;
  coderCopy = coder;
  data = [(HDCodableObjectCollection *)collection data];
  [coderCopy encodeObject:data forKey:@"codableCollectionData"];

  [coderCopy encodeObject:self->_provenance forKey:@"fullProvenance"];
}

@end