@interface HDInsertCodableContributorsOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDInsertCodableContributorsOperation)init;
- (HDInsertCodableContributorsOperation)initWithCoder:(id)a3;
- (HDInsertCodableContributorsOperation)initWithContributors:(id)a3 provenance:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
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

- (HDInsertCodableContributorsOperation)initWithContributors:(id)a3 provenance:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HDInsertCodableContributorsOperation;
  v7 = [(HDInsertCodableContributorsOperation *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    contributors = v7->_contributors;
    v7->_contributors = v8;

    v7->_provenance = a4;
  }

  return v7;
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v39 = a4;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v37 = self;
  obj = self->_contributors;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v43;
    v36 = v8;
    v38 = *v43;
    v41 = a5;
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
      v15 = [v13 uuid];
      v16 = [v14 hk_UUIDWithData:v15];

      if ([v13 deleted])
      {
        if (![HDContributorEntity deleteContributorWithUUID:v16 profile:v8 error:a5])
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      }

      v17 = [v8 syncIdentityManager];
      v18 = [v17 legacySyncIdentity];

      if (![v13 hasSyncIdentity])
      {
        goto LABEL_13;
      }

      v19 = [v13 syncIdentity];
      [HDSyncIdentity syncIdentityWithCodable:v19 error:a5];
      v21 = v20 = a5;

      if (v21)
      {
        v22 = [v8 syncIdentityManager];
        v23 = [v22 concreteIdentityForIdentity:v21 shouldCreate:1 transaction:v39 error:v20];

        if (v23)
        {

          v18 = v23;
LABEL_13:
          v24 = [v13 appleID];
          v25 = [v13 callerID];
          provenance = v37->_provenance;
          v27 = [v18 entity];
          v28 = +[HDContributorEntity insertWithUUID:appleID:callerID:primaryUser:syncProvenance:syncIdentity:transaction:error:](HDContributorEntity, "insertWithUUID:appleID:callerID:primaryUser:syncProvenance:syncIdentity:transaction:error:", v16, v24, v25, 0, provenance, [v27 persistentID], v39, v41);

          if (!v28)
          {

            v8 = v36;
LABEL_25:

            v33 = 0;
            goto LABEL_26;
          }

          v21 = v18;
          v8 = v36;
          goto LABEL_20;
        }

        _HKInitializeLogging();
        v30 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
        {
          v32 = *v41;
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
          v31 = *v41;
          *buf = 138543362;
          v47 = v31;
          _os_log_fault_impl(&dword_228986000, v29, OS_LOG_TYPE_FAULT, "SyncIdentity from received codable is nil %{public}@", buf, 0xCu);
        }

        v21 = 0;
      }

LABEL_20:
      v11 = v38;

      a5 = v41;
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

- (HDInsertCodableContributorsOperation)initWithCoder:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"contributors"];

  v9 = [v5 decodeInt64ForKey:@"provenance"];
  v10 = [(HDInsertCodableContributorsOperation *)self initWithContributors:v8 provenance:v9];

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  contributors = self->_contributors;
  v5 = a3;
  [v5 encodeObject:contributors forKey:@"contributors"];
  [v5 encodeInt64:self->_provenance forKey:@"provenance"];
}

@end