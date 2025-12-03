@interface HDInsertCodableContributorsOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDInsertCodableContributorsOperation)init;
- (HDInsertCodableContributorsOperation)initWithCoder:(id)coder;
- (HDInsertCodableContributorsOperation)initWithContributors:(id)contributors provenance:(int64_t)provenance;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDInsertCodableContributorsOperation

- (HDInsertCodableContributorsOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDInsertCodableContributorsOperation)initWithContributors:(id)contributors provenance:(int64_t)provenance
{
  contributorsCopy = contributors;
  v11.receiver = self;
  v11.super_class = HDInsertCodableContributorsOperation;
  v7 = [(HDInsertCodableContributorsOperation *)&v11 init];
  if (v7)
  {
    v8 = [contributorsCopy copy];
    contributors = v7->_contributors;
    v7->_contributors = v8;

    v7->_provenance = provenance;
  }

  return v7;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  transactionCopy = transaction;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  selfCopy = self;
  obj = self->_contributors;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v43;
    v36 = profileCopy;
    v38 = *v43;
    errorCopy = error;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v43 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v42 + 1) + 8 * v12);
      v14 = MEMORY[0x277CCAD78];
      uuid = [v13 uuid];
      v16 = [v14 hk_UUIDWithData:uuid];

      if ([v13 deleted])
      {
        if (![HDContributorEntity deleteContributorWithUUID:v16 profile:profileCopy error:error])
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      }

      syncIdentityManager = [profileCopy syncIdentityManager];
      legacySyncIdentity = [syncIdentityManager legacySyncIdentity];

      if (![v13 hasSyncIdentity])
      {
        goto LABEL_13;
      }

      syncIdentity = [v13 syncIdentity];
      [HDSyncIdentity syncIdentityWithCodable:syncIdentity error:error];
      v21 = v20 = error;

      if (v21)
      {
        syncIdentityManager2 = [profileCopy syncIdentityManager];
        v23 = [syncIdentityManager2 concreteIdentityForIdentity:v21 shouldCreate:1 transaction:transactionCopy error:v20];

        if (v23)
        {

          legacySyncIdentity = v23;
LABEL_13:
          appleID = [v13 appleID];
          callerID = [v13 callerID];
          provenance = selfCopy->_provenance;
          entity = [legacySyncIdentity entity];
          v28 = +[HDContributorEntity insertWithUUID:appleID:callerID:primaryUser:syncProvenance:syncIdentity:transaction:error:](HDContributorEntity, "insertWithUUID:appleID:callerID:primaryUser:syncProvenance:syncIdentity:transaction:error:", v16, appleID, callerID, 0, provenance, [entity persistentID], transactionCopy, errorCopy);

          if (!v28)
          {

            profileCopy = v36;
LABEL_25:

            v33 = 0;
            goto LABEL_26;
          }

          v21 = legacySyncIdentity;
          profileCopy = v36;
          goto LABEL_20;
        }

        _HKInitializeLogging();
        v30 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
        {
          v32 = *errorCopy;
          *buf = 138543362;
          v47 = v32;
          _os_log_fault_impl(&dword_228986000, v30, OS_LOG_TYPE_FAULT, "ConcreteSyncIdentity from received codable is nil %{public}@", buf, 0xCu);
        }
      }

      else
      {
        _HKInitializeLogging();
        v29 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
        {
          v31 = *errorCopy;
          *buf = 138543362;
          v47 = v31;
          _os_log_fault_impl(&dword_228986000, v29, OS_LOG_TYPE_FAULT, "SyncIdentity from received codable is nil %{public}@", buf, 0xCu);
        }

        v21 = 0;
      }

LABEL_20:
      v11 = v38;

      error = errorCopy;
LABEL_21:

      if (v10 == ++v12)
      {
        v10 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v48 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v33 = 1;
LABEL_26:

  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

- (HDInsertCodableContributorsOperation)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"contributors"];

  v9 = [coderCopy decodeInt64ForKey:@"provenance"];
  v10 = [(HDInsertCodableContributorsOperation *)self initWithContributors:v8 provenance:v9];

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  contributors = self->_contributors;
  coderCopy = coder;
  [coderCopy encodeObject:contributors forKey:@"contributors"];
  [coderCopy encodeInt64:self->_provenance forKey:@"provenance"];
}

@end