@interface HDInsertCodableSummarySharingEntryOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDInsertCodableSummarySharingEntryOperation)init;
- (HDInsertCodableSummarySharingEntryOperation)initWithCodableEntries:(id)entries ignoreIfExists:(BOOL)exists provenance:(int64_t)provenance shouldResolveCNContact:(BOOL)contact;
- (HDInsertCodableSummarySharingEntryOperation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (HDInsertCodableSummarySharingEntryOperation)initWithCodableEntries:(id)entries ignoreIfExists:(BOOL)exists provenance:(int64_t)provenance shouldResolveCNContact:(BOOL)contact
{
  entriesCopy = entries;
  v16.receiver = self;
  v16.super_class = HDInsertCodableSummarySharingEntryOperation;
  v11 = [(HDInsertCodableSummarySharingEntryOperation *)&v16 init];
  if (v11)
  {
    v12 = [entriesCopy copy];
    codableEntries = v11->_codableEntries;
    v11->_codableEntries = v12;

    v11->_provenance = provenance;
    if (_HDIsUnitTesting)
    {
      contactCopy = 0;
    }

    else
    {
      contactCopy = contact;
    }

    v11->_shouldResolveCNContact = contactCopy;
    v11->_ignoreIfExists = exists;
  }

  return v11;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  transactionCopy = transaction;
  if (self->_shouldResolveCNContact)
  {
    hd_contactStoreWithHealthAppIdentity = [MEMORY[0x277CBDAB8] hd_contactStoreWithHealthAppIdentity];
  }

  else
  {
    hd_contactStoreWithHealthAppIdentity = 0;
  }

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v38 = [defaultWorkspace applicationIsInstalled:*MEMORY[0x277CCE3A8]];

  _HKInitializeLogging();
  v11 = HKLogSharing();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
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
  v36 = profileCopy;
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
      if (!self->_shouldResolveCNContact || hd_contactStoreWithHealthAppIdentity == 0)
      {
        v17 = 0;
      }

      else
      {
        v17 = HDCNContactForCodableEntry(*(*(&v42 + 1) + 8 * v14), hd_contactStoreWithHealthAppIdentity);
      }

      if (self->_ignoreIfExists)
      {
        v18 = objc_alloc(MEMORY[0x277CCAD78]);
        uuid = [v15 uuid];
        v20 = [v18 initWithUUIDString:uuid];

        v41 = 0;
        v21 = [HDSummarySharingEntryEntity anyWithUUID:v20 transaction:transactionCopy error:&v41];
        v22 = v41;
        v23 = v22;
        if (v21)
        {
          _HKInitializeLogging();
          v24 = HKLogSharing();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            selfCopy2 = self;
            _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Entry not inserted because it already exists", buf, 0xCu);
          }

          goto LABEL_29;
        }

        if (v22)
        {
          if (error)
          {
            v33 = v22;
            *error = v23;
          }

          else
          {
            _HKLogDroppedError();
          }

LABEL_41:
          v32 = 0;
          profileCopy = v36;
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

      identifier = [v17 identifier];
      v27 = [HDSummarySharingEntryEntity insertOrReplaceCodableEntry:v15 CNContactIdentifier:identifier shouldPause:v25 syncProvenance:self->_provenance transaction:transactionCopy error:error];

      if (!v27)
      {
        goto LABEL_41;
      }

      sharingAuthorizations = [v15 sharingAuthorizations];
      v29 = HDSharingAuthorizationsFromCodableSharingAuthorizations(sharingAuthorizations);

      sharingRecipientIdentifier = [v15 sharingRecipientIdentifier];
      LOBYTE(sharingAuthorizations) = [HDSharingAuthorizationsEntity insertOrReplaceWithRecipientIdentifier:sharingRecipientIdentifier sharingAuthorizations:v29 databaseTransaction:transactionCopy error:error];

      if ((sharingAuthorizations & 1) == 0)
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
    profileCopy = v36;
  }

  while (v31);
LABEL_42:

  v34 = *MEMORY[0x277D85DE8];
  return v32;
}

- (HDInsertCodableSummarySharingEntryOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"SharingEntries"];
  v6 = [coderCopy decodeBoolForKey:@"ignoreIfExists"];
  v7 = [coderCopy decodeInt64ForKey:@"provenance"];
  v8 = [coderCopy decodeBoolForKey:@"shouldResolveCNContact"];

  v9 = [(HDInsertCodableSummarySharingEntryOperation *)self initWithCodableEntries:v5 ignoreIfExists:v6 provenance:v7 shouldResolveCNContact:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  codableEntries = self->_codableEntries;
  coderCopy = coder;
  [coderCopy encodeObject:codableEntries forKey:@"SharingEntries"];
  [coderCopy encodeBool:self->_ignoreIfExists forKey:@"ignoreIfExists"];
  [coderCopy encodeInt64:self->_provenance forKey:@"provenance"];
  [coderCopy encodeBool:self->_shouldResolveCNContact forKey:@"shouldResolveCNContact"];
}

@end