@interface HDCloudSyncStartSequenceOperation
- (BOOL)performWithError:(id *)a3;
- (HDCloudSyncStartSequenceOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (HDCloudSyncStartSequenceOperation)initWithConfiguration:(id)a3 cloudState:(id)a4 target:(id)a5 sequence:(id)a6 replacingSequence:(id)a7 shouldClearRebaselineDeadline:(BOOL)a8;
- (uint64_t)_updateDisplayNameForRegistryRecord:(uint64_t)a3 error:;
@end

@implementation HDCloudSyncStartSequenceOperation

- (HDCloudSyncStartSequenceOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncStartSequenceOperation)initWithConfiguration:(id)a3 cloudState:(id)a4 target:(id)a5 sequence:(id)a6 replacingSequence:(id)a7 shouldClearRebaselineDeadline:(BOOL)a8
{
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v21.receiver = self;
  v21.super_class = HDCloudSyncStartSequenceOperation;
  v18 = [(HDCloudSyncOperation *)&v21 initWithConfiguration:a3 cloudState:a4];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_target, a5);
    objc_storeStrong(&v19->_sequenceRecord, a6);
    objc_storeStrong(&v19->_replacedSequenceRecord, a7);
    v19->_shouldClearRebaselineDeadline = a8;
  }

  return v19;
}

- (BOOL)performWithError:(id *)a3
{
  v3 = self;
  v111[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    replacedSequenceRecord = self->_replacedSequenceRecord;
    if (replacedSequenceRecord)
    {
      v6 = [(HDCloudSyncRecord *)replacedSequenceRecord recordID];
      v111[0] = v6;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:1];
    }

    else
    {
      v7 = MEMORY[0x277CBEBF8];
    }

    v8 = [(HDCloudSyncTarget *)v3->_target zoneIdentifier];
    v9 = [v8 type];

    if (v9 != 2)
    {
      v33 = [HDCloudSyncSequenceState alloc];
      v34 = [(HDCloudSyncSequenceState *)v33 initWithRecordsToSave:MEMORY[0x277CBEBF8] recordIDsToDelete:v7 shouldClearRebaselineDeadline:v3->_shouldClearRebaselineDeadline];
      sequenceState = v3->_sequenceState;
      v3->_sequenceState = v34;
      LOBYTE(v3) = 1;
LABEL_45:

      goto LABEL_46;
    }

    v100 = v7;
    v10 = [(HDCloudSyncOperation *)v3 configuration];
    v11 = [v10 repository];
    v12 = [(HDCloudSyncOperation *)v3 configuration];
    v13 = [v12 repository];
    v14 = [v13 primaryCKContainer];
    v15 = [v11 cachedOwnerIdentifierForContainer:v14];
    sequenceState = [v15 string];

    v17 = [(HDCloudSyncOperation *)v3 configuration];
    v18 = [v17 repository];
    v19 = [v18 syncIdentityManager];
    v20 = [v19 currentSyncIdentity];
    v101 = [v20 identity];

    v21 = [HDCloudSyncCachedZone alloc];
    v22 = [(HDCloudSyncTarget *)v3->_target zoneIdentifier];
    v23 = [(HDCloudSyncOperation *)v3 configuration];
    v24 = [v23 repository];
    v25 = [(HDCloudSyncOperation *)v3 configuration];
    v26 = [v25 accessibilityAssertion];
    v27 = [(HDCloudSyncCachedZone *)v21 initForZoneIdentifier:v22 repository:v24 accessibilityAssertion:v26];

    v103 = 0;
    v28 = [v27 recordsForClass:objc_opt_class() error:&v103];
    v29 = v103;
    v30 = v29;
    if (!v28 && v29)
    {
      _HKInitializeLogging();
      v31 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        target = v3->_target;
        v87 = v31;
        v88 = [(HDCloudSyncTarget *)target zoneIdentifier];
        *buf = 138543874;
        *&buf[4] = v3;
        v107 = 2114;
        v108 = v88;
        v109 = 2114;
        v110 = v30;
        _os_log_error_impl(&dword_228986000, v87, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get registry records for %{public}@, %{public}@", buf, 0x20u);
      }

      if (a3)
      {
        v32 = v30;
        LOBYTE(v3) = 0;
        *a3 = v30;
      }

      else
      {
        _HKLogDroppedError();
        LOBYTE(v3) = 0;
      }

      v7 = v100;
      goto LABEL_44;
    }

    v94 = a3;
    v97 = sequenceState;
    if ([v28 count] >= 2)
    {
      _HKInitializeLogging();
      v35 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v89 = v3->_target;
        v90 = v35;
        v91 = [(HDCloudSyncTarget *)v89 zoneIdentifier];
        *buf = 138543618;
        *&buf[4] = v3;
        v107 = 2114;
        v108 = v91;
        _os_log_error_impl(&dword_228986000, v90, OS_LOG_TYPE_ERROR, "%{public}@ Retrieved multiple cached registry records for %{public}@,", buf, 0x16u);
      }
    }

    v36 = [v28 firstObject];
    v95 = v36 == 0;
    if (!v36)
    {
      v92 = v30;
      v98 = v27;
      v37 = [HDCloudSyncRegistryRecord alloc];
      v38 = [(HDCloudSyncTarget *)v3->_target zoneIdentifier];
      v39 = [v38 zoneIdentifier];
      v40 = [(HDCloudSyncOperation *)v3 configuration];
      v41 = [v40 repository];
      v42 = [v41 profile];
      v43 = [v42 profileIdentifier];
      v44 = [(HDCloudSyncRegistryRecord *)v37 initInZone:v39 ownerProfileIdentifier:v43];

      v36 = v44;
      *buf = 0;
      LODWORD(v43) = [(HDCloudSyncStartSequenceOperation *)v3 _updateDisplayNameForRegistryRecord:v44 error:buf];
      v45 = *buf;
      if (!v43)
      {
        v80 = v45;
        v27 = v98;
        v7 = v100;
        sequenceState = v97;
        v30 = v92;
        if (!v80)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      v27 = v98;
      v30 = v92;
    }

    v99 = v36;
    v46 = [v36 storeIdentifiersForSyncIdentity:v101];
    v47 = [(HDCloudSyncTarget *)v3->_target store];
    v48 = [v47 storeIdentifier];
    v49 = [v46 containsObject:v48];

    if ((v49 & 1) == 0)
    {
      v96 = [(HDCloudSyncTarget *)v3->_target store];
      v50 = [v96 storeIdentifier];
      v93 = [(HDCloudSyncOperation *)v3 configuration];
      v51 = [v93 repository];
      v52 = [v51 syncIdentityManager];
      [v52 currentSyncIdentity];
      v53 = v28;
      v55 = v54 = v27;
      [v55 identity];
      v57 = v56 = v30;
      [v99 addStoreIdentifier:v50 ownerIdentifier:v97 syncIdentity:v57];

      v30 = v56;
      v27 = v54;
      v28 = v53;

      v95 = 1;
    }

    v58 = [(HDCloudSyncTarget *)v3->_target zoneIdentifier];
    v59 = [v58 scope];

    if (v59 == 2)
    {
      v36 = v99;
      v60 = [v99 ownerProfileIdentifier];

      if (!v60)
      {
        v61 = [(HDCloudSyncOperation *)v3 configuration];
        v62 = [v61 repository];
        v63 = [v62 profile];
        v64 = [v63 profileIdentifier];
        [v99 setOwnerProfileIdentifier:v64];

        v36 = v99;
        v95 = 1;
      }

      v65 = [v36 sharedProfileIdentifier];

      if (!v65)
      {
        v66 = [(HDCloudSyncOperation *)v3 configuration];
        v67 = [v66 repository];
        v68 = [v67 profile];
        [v68 profileIdentifier];
        v69 = v30;
        v70 = v28;
        v72 = v71 = v27;
        v73 = [HDCloudSyncRegistryRecord sharedProfileIdentifierForOwnerProfileIdentifier:v72];
        [v99 setSharedProfileIdentifier:v73];

        v27 = v71;
        v28 = v70;
        v30 = v69;

        v36 = v99;
        v95 = 1;
      }
    }

    else
    {
      v36 = v99;
    }

    v74 = [(HDCloudSyncOperation *)v3 configuration];
    v75 = [v74 repository];
    v76 = [v75 profileType];

    if (v76 != 3)
    {
      v7 = v100;
      sequenceState = v97;
      if (!v95)
      {
        v80 = MEMORY[0x277CBEBF8];
        goto LABEL_37;
      }

LABEL_31:
      v79 = [v36 record];
      v105 = v79;
      v80 = [MEMORY[0x277CBEA60] arrayWithObjects:&v105 count:1];

LABEL_37:
      v81 = [[HDCloudSyncSequenceState alloc] initWithRecordsToSave:v80 recordIDsToDelete:v7 shouldClearRebaselineDeadline:v3->_shouldClearRebaselineDeadline];
      v82 = v3->_sequenceState;
      v3->_sequenceState = v81;

      v104 = 1;
LABEL_43:

      LOBYTE(v3) = v104;
LABEL_44:

      goto LABEL_45;
    }

    v102 = 0;
    v77 = [(HDCloudSyncStartSequenceOperation *)v3 _updateDisplayNameForRegistryRecord:v36 error:&v102];
    v78 = v102;
    v7 = v100;
    sequenceState = v97;
    if (v77)
    {

      goto LABEL_31;
    }

    v80 = v78;
    if (!v80)
    {
LABEL_42:

      v104 = v80 == 0;
      goto LABEL_43;
    }

LABEL_39:
    if (v94)
    {
      v83 = v80;
      *v94 = v80;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_42;
  }

LABEL_46:
  v84 = *MEMORY[0x277D85DE8];
  return v3;
}

- (uint64_t)_updateDisplayNameForRegistryRecord:(uint64_t)a3 error:
{
  v5 = a2;
  v6 = [a1 configuration];
  v7 = [v6 repository];
  v8 = [v7 profile];
  v9 = [v8 legacyRepositoryProfile];
  v14 = 0;
  v15 = 0;
  v10 = [v9 fetchDisplayFirstName:&v15 lastName:&v14 error:a3];
  v11 = v15;
  v12 = v14;

  if (v10)
  {
    if (v11)
    {
      [v5 setDisplayFirstName:v11];
    }

    if (v12)
    {
      [v5 setDisplayLastName:v12];
    }
  }

  return v10;
}

@end