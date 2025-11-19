@interface HDInsertCodableSummarySharingEntryOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDInsertCodableSummarySharingEntryOperation)init;
- (HDInsertCodableSummarySharingEntryOperation)initWithCodableEntries:(id)a3 ignoreIfExists:(BOOL)a4 provenance:(int64_t)a5 shouldResolveCNContact:(BOOL)a6;
- (HDInsertCodableSummarySharingEntryOperation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDInsertCodableSummarySharingEntryOperation

- (HDInsertCodableSummarySharingEntryOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDInsertCodableSummarySharingEntryOperation)initWithCodableEntries:(id)a3 ignoreIfExists:(BOOL)a4 provenance:(int64_t)a5 shouldResolveCNContact:(BOOL)a6
{
  v10 = a3;
  v16.receiver = self;
  v16.super_class = HDInsertCodableSummarySharingEntryOperation;
  v11 = [(HDInsertCodableSummarySharingEntryOperation *)&v16 init];
  if (v11)
  {
    v12 = [v10 copy];
    codableEntries = v11->_codableEntries;
    v11->_codableEntries = v12;

    v11->_provenance = a5;
    if (_HDIsUnitTesting)
    {
      v14 = 0;
    }

    else
    {
      v14 = a6;
    }

    v11->_shouldResolveCNContact = v14;
    v11->_ignoreIfExists = a4;
  }

  return v11;
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (self->_shouldResolveCNContact)
  {
    v40 = [MEMORY[0x277CBDAB8] hd_contactStoreWithHealthAppIdentity];
  }

  else
  {
    v40 = 0;
  }

  v10 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v38 = [v10 applicationIsInstalled:*MEMORY[0x277CCE3A8]];

  _HKInitializeLogging();
  v11 = HKLogSharing();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v48 = self;
    v49 = 1024;
    v50 = v38 ^ 1;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Inserting codable entries with current pause state: %d", buf, 0x12u);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = self->_codableEntries;
  v12 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (!v12)
  {
    v32 = 1;
    goto LABEL_42;
  }

  v13 = v12;
  v39 = *v43;
  v36 = v8;
  do
  {
    v14 = 0;
    do
    {
      if (*v43 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v42 + 1) + 8 * v14);
      if (!self->_shouldResolveCNContact || v40 == 0)
      {
        v17 = 0;
      }

      else
      {
        v17 = HDCNContactForCodableEntry(*(*(&v42 + 1) + 8 * v14), v40);
      }

      if (self->_ignoreIfExists)
      {
        v18 = objc_alloc(MEMORY[0x277CCAD78]);
        v19 = [v15 uuid];
        v20 = [v18 initWithUUIDString:v19];

        v41 = 0;
        v21 = [HDSummarySharingEntryEntity anyWithUUID:v20 transaction:v9 error:&v41];
        v22 = v41;
        v23 = v22;
        if (v21)
        {
          _HKInitializeLogging();
          v24 = HKLogSharing();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v48 = self;
            _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Entry not inserted because it already exists", buf, 0xCu);
          }

          goto LABEL_29;
        }

        if (v22)
        {
          if (a5)
          {
            v33 = v22;
            *a5 = v23;
          }

          else
          {
            _HKLogDroppedError();
          }

LABEL_41:
          v32 = 0;
          v8 = v36;
          goto LABEL_42;
        }
      }

      if ((v38 & 1) != 0 || [v15 direction])
      {
        v25 = 0;
      }

      else if ([v15 status])
      {
        v25 = [v15 status] == 1;
      }

      else
      {
        v25 = 1;
      }

      v26 = [v17 identifier];
      v27 = [HDSummarySharingEntryEntity insertOrReplaceCodableEntry:v15 CNContactIdentifier:v26 shouldPause:v25 syncProvenance:self->_provenance transaction:v9 error:a5];

      if (!v27)
      {
        goto LABEL_41;
      }

      v28 = [v15 sharingAuthorizations];
      v29 = HDSharingAuthorizationsFromCodableSharingAuthorizations(v28);

      v30 = [v15 sharingRecipientIdentifier];
      LOBYTE(v28) = [HDSharingAuthorizationsEntity insertOrReplaceWithRecipientIdentifier:v30 sharingAuthorizations:v29 databaseTransaction:v9 error:a5];

      if ((v28 & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_29:

      ++v14;
    }

    while (v13 != v14);
    v31 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    v13 = v31;
    v32 = 1;
    v8 = v36;
  }

  while (v31);
LABEL_42:

  v34 = *MEMORY[0x277D85DE8];
  return v32;
}

- (HDInsertCodableSummarySharingEntryOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"SharingEntries"];
  v6 = [v4 decodeBoolForKey:@"ignoreIfExists"];
  v7 = [v4 decodeInt64ForKey:@"provenance"];
  v8 = [v4 decodeBoolForKey:@"shouldResolveCNContact"];

  v9 = [(HDInsertCodableSummarySharingEntryOperation *)self initWithCodableEntries:v5 ignoreIfExists:v6 provenance:v7 shouldResolveCNContact:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  codableEntries = self->_codableEntries;
  v5 = a3;
  [v5 encodeObject:codableEntries forKey:@"SharingEntries"];
  [v5 encodeBool:self->_ignoreIfExists forKey:@"ignoreIfExists"];
  [v5 encodeInt64:self->_provenance forKey:@"provenance"];
  [v5 encodeBool:self->_shouldResolveCNContact forKey:@"shouldResolveCNContact"];
}

@end