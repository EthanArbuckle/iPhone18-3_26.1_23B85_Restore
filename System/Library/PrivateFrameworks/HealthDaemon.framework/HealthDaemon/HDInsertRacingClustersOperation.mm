@interface HDInsertRacingClustersOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDInsertRacingClustersOperation)initWithClusters:(id)a3 provenance:(int64_t)a4;
- (HDInsertRacingClustersOperation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDInsertRacingClustersOperation

- (HDInsertRacingClustersOperation)initWithClusters:(id)a3 provenance:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HDInsertRacingClustersOperation;
  v7 = [(HDInsertRacingClustersOperation *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    clusters = v7->_clusters;
    v7->_clusters = v8;

    v7->_provenance = a4;
  }

  return v7;
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v40 = a3;
  v8 = a4;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v42 = self;
  obj = self->_clusters;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (!v9)
  {
    goto LABEL_24;
  }

  v11 = v9;
  v12 = *v49;
  *&v10 = 138543362;
  v37 = v10;
  v38 = a5;
  v39 = v8;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v49 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v48 + 1) + 8 * i);
      v15 = [v14 eligibleClusterUUIDs];
      v16 = [v15 count];

      if (!v16)
      {
        v20 = [v40 syncIdentityManager];
        v21 = [v20 legacySyncIdentity];

        if ([v14 hasSyncIdentity])
        {
          v22 = [v14 syncIdentity];
          v44 = 0;
          v23 = [HDSyncIdentity syncIdentityWithCodable:v22 error:&v44];
          v24 = v44;

          if (v23)
          {
            v25 = [v40 syncIdentityManager];
            v43 = v24;
            v26 = [v25 concreteIdentityForIdentity:v23 shouldCreate:1 transaction:v39 error:&v43];
            v27 = v43;

            if (v26)
            {

              v21 = v26;
              v8 = v39;
              goto LABEL_13;
            }

            _HKInitializeLogging();
            v33 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
            {
              *buf = v37;
              v53 = v27;
              _os_log_fault_impl(&dword_228986000, v33, OS_LOG_TYPE_FAULT, "ConcreteSyncIdentity from received codable is nil %{public}@", buf, 0xCu);
            }

            v21 = 0;
            v24 = v27;
            a5 = v38;
          }

          else
          {
            _HKInitializeLogging();
            v32 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
            {
              *buf = v37;
              v53 = v24;
              _os_log_fault_impl(&dword_228986000, v32, OS_LOG_TYPE_FAULT, "SyncIdentity from received codable is nil %{public}@", buf, 0xCu);
            }
          }

          v8 = v39;
        }

        else
        {
LABEL_13:
          provenance = v42->_provenance;
          v29 = [v21 entity];
          v30 = [v29 persistentID];
          v31 = provenance;
          a5 = v38;
          v34 = [HDRaceRouteClusterEntity insertCodableCluster:v14 syncProvenance:v31 syncIdentity:v30 transaction:v8 error:v38];

          if (!v34)
          {

            goto LABEL_25;
          }
        }

        continue;
      }

      v17 = [v14 eligibleClusterUUIDs];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __72__HDInsertRacingClustersOperation_performWithProfile_transaction_error___block_invoke;
      v45[3] = &unk_278623BD0;
      v18 = v8;
      v46 = v18;
      v47 = v42;
      v19 = [v17 hk_map:v45];

      LOBYTE(v17) = [HDRaceRouteClusterEntity pruneRaceRouteClustersWithEligibleEntities:v19 transaction:v18 error:a5];
      if ((v17 & 1) == 0)
      {
        LOBYTE(v34) = 0;
        goto LABEL_25;
      }
    }

    v11 = [(NSArray *)obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  }

  while (v11);
LABEL_24:
  LOBYTE(v34) = 1;
LABEL_25:

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

id __72__HDInsertRacingClustersOperation_performWithProfile_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAD78] hk_UUIDWithData:a2];
  v4 = *(a1 + 32);
  v14 = 0;
  v5 = [HDRaceRouteClusterEntity entityForClusterUUID:v3 transaction:v4 error:&v14];
  v6 = v14;
  if (!v5)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_FAULT))
    {
      v10 = *(a1 + 40);
      v11 = v7;
      v12 = objc_opt_class();
      *buf = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = v3;
      v19 = 2114;
      v20 = v6;
      v13 = v12;
      _os_log_fault_impl(&dword_228986000, v11, OS_LOG_TYPE_FAULT, "%{public}@: Failed to find eligible cluster (%{public}@) during pruning: %{public}@", buf, 0x20u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (HDInsertRacingClustersOperation)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [v4 alloc];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v8 = [v6 initWithArray:v7];

  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"clusters"];
  v10 = [v5 decodeInt64ForKey:@"provenance"];

  v11 = [(HDInsertRacingClustersOperation *)self initWithClusters:v9 provenance:v10];
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  clusters = self->_clusters;
  v5 = a3;
  [v5 encodeObject:clusters forKey:@"clusters"];
  [v5 encodeInt64:self->_provenance forKey:@"provenance"];
}

@end