@interface _HDKeyValueJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (_HDKeyValueJournalEntry)initWithCoder:(id)coder;
- (_HDKeyValueJournalEntry)initWithValue:(id)value key:(id)key domain:(id)domain category:(int64_t)category provenance:(int64_t)provenance syncIdentity:(int64_t)identity updatePolicy:(int64_t)policy modificationDate:(id)self0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HDKeyValueJournalEntry

- (_HDKeyValueJournalEntry)initWithValue:(id)value key:(id)key domain:(id)domain category:(int64_t)category provenance:(int64_t)provenance syncIdentity:(int64_t)identity updatePolicy:(int64_t)policy modificationDate:(id)self0
{
  valueCopy = value;
  keyCopy = key;
  domainCopy = domain;
  dateCopy = date;
  v28.receiver = self;
  v28.super_class = _HDKeyValueJournalEntry;
  v21 = [(_HDKeyValueJournalEntry *)&v28 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_value, value);
    v23 = [keyCopy copy];
    key = v22->_key;
    v22->_key = v23;

    v25 = [domainCopy copy];
    domain = v22->_domain;
    v22->_domain = v25;

    v22->_category = category;
    v22->_provenance = provenance;
    v22->_syncIdentity = identity;
    v22->_updatePolicy = policy;
    objc_storeStrong(&v22->_modificationDate, date);
  }

  return v22;
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  v68 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  profileCopy = profile;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = entriesCopy;
  v51 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
  v7 = 0;
  if (v51)
  {
    v50 = *v56;
    v48 = profileCopy;
    do
    {
      v8 = 0;
      do
      {
        if (*v56 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v55 + 1) + 8 * v8);
        if (v9)
        {
          v10 = *(v9 + 32);
          v11 = *(v9 + 16);
          v12 = *(v9 + 8);
        }

        else
        {
          v11 = 0;
          v10 = 0;
          v12 = 0;
        }

        v13 = v12;
        v14 = [HDKeyValueEntity _entityClassForKeyValueCategory:v10];
        if (v14)
        {
          v15 = v11 == 0;
        }

        else
        {
          v15 = 1;
        }

        v52 = v13;
        v53 = v11;
        if (v15 || v13 == 0)
        {
          _HKInitializeLogging();
          v17 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            v39 = v17;
            v40 = objc_opt_class();
            *buf = 138543362;
            v60 = v40;
            v41 = v40;
            _os_log_error_impl(&dword_228986000, v39, OS_LOG_TYPE_ERROR, "%{public}@: Invalid entity/key/value set", buf, 0xCu);
          }

          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", objc_opt_class()];
          if (!v7)
          {
            v7 = [MEMORY[0x277CCA9B8] hk_error:3 description:v18];
          }

          daemon = [profileCopy daemon];
          autoBugCaptureReporter = [daemon autoBugCaptureReporter];
          if (v9)
          {
            v21 = *(v9 + 40);
          }

          else
          {
            v21 = 0;
          }

          v20AutoBugCaptureReporter = [MEMORY[0x277CCABB0] numberWithLongLong:v21];
          [autoBugCaptureReporter reportJournalFailureWithErrorDescription:v18 provenance:v20AutoBugCaptureReporter error:v7];
          goto LABEL_41;
        }

        v23 = v14;
        if (!v9)
        {
          v18 = &stru_283BF39C8;
          v45 = &stru_283BF39C8;
          persistentID = 0;
          goto LABEL_31;
        }

        v24 = *(v9 + 24);
        if (!v24)
        {
          v24 = &stru_283BF39C8;
        }

        v18 = v24;
        persistentID = *(v9 + 48);
        if (persistentID == -2)
        {
          syncIdentityManager = [profileCopy syncIdentityManager];
          currentSyncIdentity = [syncIdentityManager currentSyncIdentity];
          goto LABEL_30;
        }

        if (persistentID == -1)
        {
          syncIdentityManager = [profileCopy syncIdentityManager];
          currentSyncIdentity = [syncIdentityManager legacySyncIdentity];
LABEL_30:
          v28 = currentSyncIdentity;
          entity = [currentSyncIdentity entity];
          persistentID = [entity persistentID];
        }

LABEL_31:
        v65 = v53;
        v66 = v52;
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
        if (v9)
        {
          v31 = *(v9 + 56);
          v32 = *(v9 + 40);
          v33 = *(v9 + 64);
        }

        else
        {
          v32 = 0;
          v31 = 0;
          v33 = 0;
        }

        profileCopy = v48;
        v54 = v7;
        v34 = [(objc_class *)v23 _insertKeysAndValues:v30 modificationDate:v31 domain:v18 category:v10 provenance:v32 syncIdentity:persistentID updatePolicy:v33 profile:v48 error:&v54];
        v35 = v54;

        if (v34)
        {
          v7 = v35;
          goto LABEL_42;
        }

        _HKInitializeLogging();
        v36 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          v42 = v36;
          v43 = objc_opt_class();
          *buf = 138543874;
          v60 = v43;
          v61 = 2048;
          v62 = v10;
          v63 = 2114;
          v64 = v35;
          v44 = v43;
          _os_log_error_impl(&dword_228986000, v42, OS_LOG_TYPE_ERROR, "%{public}@: Failed to apply value of category %ld, %{public}@", buf, 0x20u);
        }

        if ([v35 hk_isTransactionInterruptedError])
        {

          v7 = v35;
          goto LABEL_52;
        }

        daemon = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%ld", objc_opt_class(), v10];
        autoBugCaptureReporter = [v48 daemon];
        v20AutoBugCaptureReporter = [autoBugCaptureReporter autoBugCaptureReporter];
        if (v9)
        {
          v37 = *(v9 + 40);
        }

        else
        {
          v37 = 0;
        }

        v38 = [MEMORY[0x277CCABB0] numberWithLongLong:v37];
        [v20AutoBugCaptureReporter reportJournalFailureWithErrorDescription:daemon provenance:v38 error:v35];

        v7 = v35;
LABEL_41:

LABEL_42:
        ++v8;
      }

      while (v51 != v8);
      v46 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
      v51 = v46;
    }

    while (v46);
  }

LABEL_52:

  v47 = *MEMORY[0x277D85DE8];
}

- (_HDKeyValueJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = _HDKeyValueJournalEntry;
  v5 = [(_HDKeyValueJournalEntry *)&v22 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"value"];
    value = v5->_value;
    v5->_value = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    key = v5->_key;
    v5->_key = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    domain = v5->_domain;
    v5->_domain = v16;

    v5->_category = [coderCopy decodeIntegerForKey:@"category"];
    v5->_provenance = [coderCopy decodeInt64ForKey:@"provenance"];
    v5->_syncIdentity = -1;
    if ([coderCopy containsValueForKey:@"sync_identity"])
    {
      v5->_syncIdentity = [coderCopy decodeInt64ForKey:@"sync_identity"];
    }

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mod_date"];
    modificationDate = v5->_modificationDate;
    v5->_modificationDate = v18;

    if ([coderCopy containsValueForKey:@"updatePolicy"])
    {
      v20 = [coderCopy decodeIntegerForKey:@"updatePolicy"];
    }

    else
    {
      v20 = 2;
    }

    v5->_updatePolicy = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  value = self->_value;
  coderCopy = coder;
  [coderCopy encodeObject:value forKey:@"value"];
  [coderCopy encodeObject:self->_key forKey:@"key"];
  [coderCopy encodeObject:self->_domain forKey:@"domain"];
  [coderCopy encodeInteger:self->_category forKey:@"category"];
  [coderCopy encodeInt64:self->_provenance forKey:@"provenance"];
  [coderCopy encodeInt64:self->_syncIdentity forKey:@"sync_identity"];
  [coderCopy encodeObject:self->_modificationDate forKey:@"mod_date"];
  [coderCopy encodeInteger:self->_updatePolicy forKey:@"updatePolicy"];
}

@end