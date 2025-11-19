@interface HDBinarySampleSyncEntity
+ (BOOL)_insertObjectsFromCodableObjectCollection:(id)a3 syncStore:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4;
+ (id)_objectWithCodable:(id)a3 collection:(id)a4;
+ (id)_predicateForSyncSession:(id)a3;
+ (unint64_t)supportedNanoSyncDirectionsForProtocolVersion:(int)a3;
@end

@implementation HDBinarySampleSyncEntity

+ (unint64_t)supportedNanoSyncDirectionsForProtocolVersion:(int)a3
{
  if (a3 >= 6)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

+ (id)_objectWithCodable:(id)a3 collection:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 sample];
  [v6 dataType];
  v7 = _HKValidDataTypeCode();

  if (v7)
  {
    v8 = [MEMORY[0x277CCD8A8] createWithCodable:v5];
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v5 sample];
      v14 = 138543618;
      v15 = a1;
      v16 = 2048;
      v17 = [v11 dataType];
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignorning unknown data type code %lld", &v14, 0x16u);
    }

    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (BOOL)_insertObjectsFromCodableObjectCollection:(id)a3 syncStore:(id)a4 profile:(id)a5 error:(id *)a6
{
  v76 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [objc_msgSend(a1 "healthEntityClass")];
  v68 = 0;
  v60 = v10;
  v14 = [HDDataSyncUtilities provenanceFromCollection:v10 syncStore:v11 profile:v12 error:&v68];
  v62 = v68;
  v15 = v14 == 0;
  if (v14)
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = v13;
    v16 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
    if (v16)
    {
      v17 = v16;
      v53 = a6;
      v54 = v14 == 0;
      v55 = v13;
      v18 = *v65;
      v57 = v12;
      v58 = v11;
      v56 = *v65;
LABEL_4:
      v19 = 0;
      v59 = v17;
      while (1)
      {
        if (*v65 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v64 + 1) + 8 * v19);
        v21 = [v20 sample];
        v22 = [v21 dataType];

        if (v22 != 144)
        {
          break;
        }

        v63 = 0;
        v23 = [HDECGSampleEntity _insertECGWithCodableBinarySample:v20 syncStore:v11 profile:v12 provenance:v14 error:&v63];
        v24 = v63;
        v25 = v24;
        if (!v23)
        {
          if ([v24 hk_isHealthKitErrorWithCode:123])
          {
            v49 = v25;
            v48 = v49;
            v13 = v55;
            v15 = v54;
            if (v49)
            {
              if (v53)
              {
                v50 = v49;
                *v53 = v48;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            goto LABEL_40;
          }

          _HKInitializeLogging();
          v26 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v73 = v11;
            v74 = 2114;
            v75 = v25;
            _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "failed to insert ECG sample from binary sample synced from store %{public}@: %{public}@", buf, 0x16u);
          }

LABEL_25:
          v44 = [v12 daemon];
          v45 = [v44 autoBugCaptureReporter];
          [v45 reportApplyDataFailure:objc_opt_class() duringSyncFromStore:v11 error:v62];
        }

LABEL_26:

        if (v17 == ++v19)
        {
          v17 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
          v46 = 1;
          if (v17)
          {
            goto LABEL_4;
          }

          goto LABEL_34;
        }
      }

      v27 = v20;
      v28 = v12;
      v29 = v14;
      v30 = v14;
      v31 = v60;
      v32 = objc_opt_self();
      v33 = HKDefaultObjectValidationConfigurationIgnoringAllOptions();
      v35 = v34;
      v36 = [v32 _objectWithCodable:v27 collection:v31];

      if (v36)
      {
        v37 = [v36 _validateWithConfiguration:{v33, v35}];
        if (v37)
        {
          _HKInitializeLogging();
          v38 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v73 = v27;
            v74 = 2114;
            v75 = v37;
            _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "Codable object %@ failed validation: %{public}@", buf, 0x16u);
          }
        }

        v39 = [v28 dataManager];
        v71 = v36;
        v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
        v69 = 0;
        v41 = [v39 insertDataObjects:v40 withProvenance:v30 creationDate:1 skipInsertionFilter:0 updateSourceOrder:0 resolveAssociations:&v69 error:2.22507386e-308];

        v25 = 0;
        v12 = v57;
        v11 = v58;
        v14 = v29;
        v18 = v56;
        v17 = v59;
        if (v41)
        {
          goto LABEL_26;
        }
      }

      else
      {
        _HKInitializeLogging();
        v42 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v73 = v27;
          _os_log_error_impl(&dword_228986000, v42, OS_LOG_TYPE_ERROR, "failed to create client object with codable %@", buf, 0xCu);
        }

        v12 = v57;
        v11 = v58;
        v14 = v29;
        v18 = v56;
        v17 = v59;
      }

      if ([0 hk_isHealthKitErrorWithCode:123])
      {
        v46 = 0;
LABEL_34:
        v13 = v55;
        goto LABEL_41;
      }

      _HKInitializeLogging();
      v43 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v73 = v11;
        v74 = 2114;
        v75 = v62;
        _os_log_error_impl(&dword_228986000, v43, OS_LOG_TYPE_ERROR, "failed to insert objects synced from store %{public}@: %{public}@", buf, 0x16u);
      }

      v25 = 0;
      goto LABEL_25;
    }

    v46 = 1;
  }

  else
  {
    _HKInitializeLogging();
    v47 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v73 = v11;
      v74 = 2114;
      v75 = v62;
      _os_log_impl(&dword_228986000, v47, OS_LOG_TYPE_DEFAULT, "Failed to create provenance for codable object collection from store %{public}@: %{public}@", buf, 0x16u);
    }

    obj = [v12 daemon];
    v48 = [obj autoBugCaptureReporter];
    [v48 reportApplyDataFailure:objc_opt_class() duringSyncFromStore:v11 error:v62];
LABEL_40:

    v46 = v15;
  }

LABEL_41:

  v51 = *MEMORY[0x277D85DE8];
  return v46;
}

+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4
{
  v5 = a3;
  v6 = [a4 daemon];
  v7 = [v6 behavior];
  v8 = [v7 supportsSampleExpiration];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = [MEMORY[0x277CCD720] _allBinarySampleTypes];
    v11 = [v9 hd_predicateForSamplesWithTypes:v10 endingBeforeDate:v5 minusDays:*MEMORY[0x277CCCEE8]];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_predicateForSyncSession:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = a1;
  v16.super_class = &OBJC_METACLASS___HDBinarySampleSyncEntity;
  v5 = objc_msgSendSuper2(&v16, sel__predicateForSyncSession_, v4);
  v6 = [MEMORY[0x277CCD720] unprocessedBloodOxygenDataType];
  v17[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v8 = HDSampleEntityPredicateForDataTypes(v7);

  v9 = [MEMORY[0x277D10B20] negatedPredicate:v8];
  v10 = [v4 syncStore];
  v11 = [v10 syncStoreType];

  if (v11 == 2 || _isCompanionSyncToUSLegallyCompliantOxygenSaturationDeviceForSyncSession(v4))
  {
    v12 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v5 otherPredicate:v9];
  }

  else
  {
    v12 = v5;
  }

  v13 = v12;

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end