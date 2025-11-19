@interface HDInsertWorkoutZonesAssociationOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDInsertWorkoutZonesAssociationOperation)initWithCodableWorkoutZoneAssociations:(id)a3 syncProvenance:(int64_t)a4;
- (HDInsertWorkoutZonesAssociationOperation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDInsertWorkoutZonesAssociationOperation

- (HDInsertWorkoutZonesAssociationOperation)initWithCodableWorkoutZoneAssociations:(id)a3 syncProvenance:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HDInsertWorkoutZonesAssociationOperation;
  v7 = [(HDInsertWorkoutZonesAssociationOperation *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    workoutZoneAssociations = v7->_workoutZoneAssociations;
    v7->_workoutZoneAssociations = v8;

    v7->_syncProvenance = a4;
  }

  return v7;
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v30 = a4;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = self->_workoutZoneAssociations;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v33;
    *&v6 = 138543618;
    v26 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = MEMORY[0x277CCAD78];
        v12 = [v10 workoutUUID];
        v13 = [v11 hk_UUIDWithData:v12];

        v14 = MEMORY[0x277CCAD78];
        v15 = [v10 zonesSampleUUID];
        v16 = [v14 hk_UUIDWithData:v15];

        v17 = [v10 syncIdentity];
        v31 = 0;
        v18 = [HDSyncIdentity syncIdentityWithCodable:v17 error:&v31];
        v19 = v31;

        if (v18)
        {
          v36 = v16;
          v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
          v21 = [HDWorkoutZonesAssociationEntity associateSyncedZonesSamplesWithUUIDs:v20 withWorkoutUUID:v13 syncIdentity:v18 syncProvenance:self->_syncProvenance transaction:v30 error:a5];

          if (!v21)
          {

            v23 = 0;
            goto LABEL_14;
          }
        }

        else
        {
          _HKInitializeLogging();
          v22 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_FAULT))
          {
            *buf = v26;
            v38 = self;
            v39 = 2114;
            v40 = v19;
            _os_log_fault_impl(&dword_228986000, v22, OS_LOG_TYPE_FAULT, "[database] %{public}@: ConcreteSyncIdentity from received codable is nil %{public}@", buf, 0x16u);
          }
        }
      }

      v7 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v7);
  }

  v23 = 1;
LABEL_14:

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (HDInsertWorkoutZonesAssociationOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"associations"];
  v6 = [v4 decodeInt64ForKey:@"syncProvenance"];

  v7 = [(HDInsertWorkoutZonesAssociationOperation *)self initWithCodableWorkoutZoneAssociations:v5 syncProvenance:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  workoutZoneAssociations = self->_workoutZoneAssociations;
  v5 = a3;
  [v5 encodeObject:workoutZoneAssociations forKey:@"associations"];
  [v5 encodeInt64:self->_syncProvenance forKey:@"syncProvenance"];
}

@end