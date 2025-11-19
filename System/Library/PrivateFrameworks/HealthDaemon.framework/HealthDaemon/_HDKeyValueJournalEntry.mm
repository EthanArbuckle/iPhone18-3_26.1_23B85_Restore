@interface _HDKeyValueJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (_HDKeyValueJournalEntry)initWithCoder:(id)a3;
- (_HDKeyValueJournalEntry)initWithValue:(id)a3 key:(id)a4 domain:(id)a5 category:(int64_t)a6 provenance:(int64_t)a7 syncIdentity:(int64_t)a8 updatePolicy:(int64_t)a9 modificationDate:(id)a10;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HDKeyValueJournalEntry

- (_HDKeyValueJournalEntry)initWithValue:(id)a3 key:(id)a4 domain:(id)a5 category:(int64_t)a6 provenance:(int64_t)a7 syncIdentity:(int64_t)a8 updatePolicy:(int64_t)a9 modificationDate:(id)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a10;
  v28.receiver = self;
  v28.super_class = _HDKeyValueJournalEntry;
  v21 = [(_HDKeyValueJournalEntry *)&v28 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_value, a3);
    v23 = [v18 copy];
    key = v22->_key;
    v22->_key = v23;

    v25 = [v19 copy];
    domain = v22->_domain;
    v22->_domain = v25;

    v22->_category = a6;
    v22->_provenance = a7;
    v22->_syncIdentity = a8;
    v22->_updatePolicy = a9;
    objc_storeStrong(&v22->_modificationDate, a10);
  }

  return v22;
}

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v5;
  v51 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
  v7 = 0;
  if (v51)
  {
    v50 = *v56;
    v48 = v6;
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

          v19 = [v6 daemon];
          v20 = [v19 autoBugCaptureReporter];
          if (v9)
          {
            v21 = *(v9 + 40);
          }

          else
          {
            v21 = 0;
          }

          v22 = [MEMORY[0x277CCABB0] numberWithLongLong:v21];
          [v20 reportJournalFailureWithErrorDescription:v18 provenance:v22 error:v7];
          goto LABEL_41;
        }

        v23 = v14;
        if (!v9)
        {
          v18 = &stru_283BF39C8;
          v45 = &stru_283BF39C8;
          v25 = 0;
          goto LABEL_31;
        }

        v24 = *(v9 + 24);
        if (!v24)
        {
          v24 = &stru_283BF39C8;
        }

        v18 = v24;
        v25 = *(v9 + 48);
        if (v25 == -2)
        {
          v26 = [v6 syncIdentityManager];
          v27 = [v26 currentSyncIdentity];
          goto LABEL_30;
        }

        if (v25 == -1)
        {
          v26 = [v6 syncIdentityManager];
          v27 = [v26 legacySyncIdentity];
LABEL_30:
          v28 = v27;
          v29 = [v27 entity];
          v25 = [v29 persistentID];
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

        v6 = v48;
        v54 = v7;
        v34 = [(objc_class *)v23 _insertKeysAndValues:v30 modificationDate:v31 domain:v18 category:v10 provenance:v32 syncIdentity:v25 updatePolicy:v33 profile:v48 error:&v54];
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

        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%ld", objc_opt_class(), v10];
        v20 = [v48 daemon];
        v22 = [v20 autoBugCaptureReporter];
        if (v9)
        {
          v37 = *(v9 + 40);
        }

        else
        {
          v37 = 0;
        }

        v38 = [MEMORY[0x277CCABB0] numberWithLongLong:v37];
        [v22 reportJournalFailureWithErrorDescription:v19 provenance:v38 error:v35];

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

- (_HDKeyValueJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
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
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"value"];
    value = v5->_value;
    v5->_value = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    key = v5->_key;
    v5->_key = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    domain = v5->_domain;
    v5->_domain = v16;

    v5->_category = [v4 decodeIntegerForKey:@"category"];
    v5->_provenance = [v4 decodeInt64ForKey:@"provenance"];
    v5->_syncIdentity = -1;
    if ([v4 containsValueForKey:@"sync_identity"])
    {
      v5->_syncIdentity = [v4 decodeInt64ForKey:@"sync_identity"];
    }

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mod_date"];
    modificationDate = v5->_modificationDate;
    v5->_modificationDate = v18;

    if ([v4 containsValueForKey:@"updatePolicy"])
    {
      v20 = [v4 decodeIntegerForKey:@"updatePolicy"];
    }

    else
    {
      v20 = 2;
    }

    v5->_updatePolicy = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  value = self->_value;
  v5 = a3;
  [v5 encodeObject:value forKey:@"value"];
  [v5 encodeObject:self->_key forKey:@"key"];
  [v5 encodeObject:self->_domain forKey:@"domain"];
  [v5 encodeInteger:self->_category forKey:@"category"];
  [v5 encodeInt64:self->_provenance forKey:@"provenance"];
  [v5 encodeInt64:self->_syncIdentity forKey:@"sync_identity"];
  [v5 encodeObject:self->_modificationDate forKey:@"mod_date"];
  [v5 encodeInteger:self->_updatePolicy forKey:@"updatePolicy"];
}

@end