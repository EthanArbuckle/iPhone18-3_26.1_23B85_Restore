@interface HDQuantitySampleSyncEntity
+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4;
+ (id)_headphoneAudioExposureSamplesExpirationPredicateForNowDate:(uint64_t)a1;
+ (id)_objectWithCodable:(id)a3 collection:(id)a4;
+ (id)_predicateForSampleAgeInSyncSession:(id)a3 sampleTypeClass:(Class)a4;
+ (id)_predicateForSyncSession:(id)a3;
+ (id)_sedentaryAndBackgroundHeartRateContextPredicate;
+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)a3;
@end

@implementation HDQuantitySampleSyncEntity

+ (id)_objectWithCodable:(id)a3 collection:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 sample];
  v9 = [v8 dataType];

  if ((_HKValidDataTypeCode() & 1) == 0)
  {
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [v6 sample];
      v26 = 138543618;
      v27 = a1;
      v28 = 2048;
      v29 = [v18 dataType];
      _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignorning unknown data type code %lld", &v26, 0x16u);
    }

    goto LABEL_12;
  }

  if (v9 == 258)
  {
    v10 = [v7 provenance];
    v11 = [v10 originBuild];
    if (![v11 hk_isBetweenLowerBuildVersion:@"20R0" upperBuildVersion:@"20R279"])
    {
      v12 = [v7 provenance];
      v13 = [v12 originBuild];
      v14 = v13;
      v15 = @"20A275";
LABEL_11:
      v19 = [v13 hk_isBetweenLowerBuildVersion:@"20A0" upperBuildVersion:v15];

      if (v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      v21 = [MEMORY[0x277CCD800] createWithCodable:v6];
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = [MEMORY[0x277CCD800] migrateCodableObject:v6];
      }

      v20 = v23;

      goto LABEL_17;
    }
  }

  else
  {
    if (v9 != 272)
    {
      goto LABEL_13;
    }

    v10 = [v7 provenance];
    v11 = [v10 originBuild];
    if (![v11 hk_isBetweenLowerBuildVersion:@"20R0" upperBuildVersion:@"20R239"])
    {
      v12 = [v7 provenance];
      v13 = [v12 originBuild];
      v14 = v13;
      v15 = @"20A236";
      goto LABEL_11;
    }
  }

LABEL_12:
  v20 = 0;
LABEL_17:

  v24 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4
{
  v98[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 daemon];
  v9 = [v8 behavior];
  v10 = [v9 supportsSampleExpiration];

  if (v10)
  {
    v83 = a1;
    v11 = [MEMORY[0x277CCD8D8] dataTypeWithCode:249];
    v12 = [MEMORY[0x277CBEA80] currentCalendar];
    v86 = v11;
    v95 = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v95 count:1];
    v82 = [v12 hd_predicateForSamplesWithTypes:v13 endingBeforeDate:v6 minusDays:*MEMORY[0x277CCCF28]];

    v14 = [MEMORY[0x277CCD8D8] dataTypeWithCode:90];
    v94[0] = v14;
    v15 = [MEMORY[0x277CCD8D8] dataTypeWithCode:256];
    v94[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];

    v17 = [v7 daemon];
    v18 = [v17 behavior];
    v19 = [v18 features];
    v20 = [v19 extendedLocalWatchData];

    if (v20)
    {
      v21 = [MEMORY[0x277CCD830] _quantityTypeWithCode:139];
      v93[0] = v21;
      v22 = [MEMORY[0x277CCD830] _quantityTypeWithCode:14];
      v93[1] = v22;
      v23 = [MEMORY[0x277CCD830] _quantityTypeWithCode:61];
      v93[2] = v23;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:3];
      v25 = [v16 arrayByAddingObjectsFromArray:v24];

      v16 = v25;
    }

    v84 = v16;
    v30 = [MEMORY[0x277CBEA80] currentCalendar];
    v85 = [v30 hd_predicateForSamplesWithTypes:v16 endingBeforeDate:v6 minusDays:*MEMORY[0x277CCCF00]];

    v31 = [MEMORY[0x277CCD830] calorieGoal];
    v92[0] = v31;
    v32 = [MEMORY[0x277CCD830] moveMinuteGoal];
    v92[1] = v32;
    v33 = [MEMORY[0x277CCD830] _quantityTypeWithCode:105];
    v92[2] = v33;
    v34 = [MEMORY[0x277CCD830] _quantityTypeWithCode:104];
    v92[3] = v34;
    v35 = [MEMORY[0x277CCD830] sleepDurationGoalType];
    v92[4] = v35;
    v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:5];

    v36 = [MEMORY[0x277CCD8D8] dataTypeWithCode:118];
    v37 = [MEMORY[0x277CBEA80] currentCalendar];
    v91 = v36;
    v38 = v36;
    v81 = v36;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
    v75 = [v37 hd_predicateForSamplesWithTypes:v39 endingBeforeDate:v6 minusDays:*MEMORY[0x277CCCF08]];

    v40 = [MEMORY[0x277CCD8D8] dataTypeWithCode:298];
    v90[0] = v40;
    v41 = [MEMORY[0x277CCD8D8] dataTypeWithCode:304];
    v90[1] = v41;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];

    v43 = [MEMORY[0x277CBEA80] currentCalendar];
    v78 = v42;
    v80 = [v43 hd_predicateForSamplesWithTypes:v42 endingBeforeDate:v6 minusDays:*MEMORY[0x277CCCF30]];

    v44 = [MEMORY[0x277CBEA80] currentCalendar];
    v74 = *MEMORY[0x277CCCEE8];
    v76 = [v44 hd_predicateForSamplesWithTypes:0 endingBeforeDate:v6 minusDays:?];

    v45 = [MEMORY[0x277CCD8D8] dataTypeWithCode:5];
    v89[0] = v45;
    v89[1] = v86;
    v89[2] = v38;
    v46 = [MEMORY[0x277CCD8D8] dataTypeWithCode:283];
    v89[3] = v46;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:4];

    v48 = [v47 arrayByAddingObjectsFromArray:v16];

    v49 = [v48 arrayByAddingObjectsFromArray:v79];

    v77 = [v49 arrayByAddingObjectsFromArray:v42];

    v50 = MEMORY[0x277D10B20];
    v51 = HDSampleEntityPredicateForDataTypes(v77);
    v52 = [v50 negatedPredicate:v51];
    v73 = [v50 compoundPredicateWithPredicate:v76 otherPredicate:v52];

    v71 = MEMORY[0x277D10B20];
    v28 = v82;
    v88[0] = v73;
    v88[1] = v82;
    v88[2] = v75;
    v88[3] = v85;
    v72 = [(HDQuantitySampleSyncEntity *)v83 _headphoneAudioExposureSamplesExpirationPredicateForNowDate:v6];
    v88[4] = v72;
    v53 = v6;
    objc_opt_self();
    v70 = +[HDQuantitySampleSyncEntity _sedentaryAndBackgroundHeartRateContextPredicate];
    v54 = [MEMORY[0x277D10B20] negatedPredicate:v70];
    v55 = [MEMORY[0x277CBEA80] currentCalendar];
    v56 = [MEMORY[0x277CCD830] heartRateType];
    v98[0] = v56;
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:1];
    v58 = [v55 hd_predicateForSamplesWithTypes:v57 endingBeforeDate:v53 minusDays:*MEMORY[0x277CCCED8]];

    v59 = [MEMORY[0x277CBEA80] currentCalendar];
    v60 = [MEMORY[0x277CCD830] heartRateType];
    v97 = v60;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v97 count:1];
    v62 = [v59 hd_predicateForSamplesWithTypes:v61 endingBeforeDate:v53 minusDays:v74];

    v63 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v54 otherPredicate:v62];
    v64 = MEMORY[0x277D10B20];
    v96[0] = v58;
    v96[1] = v63;
    v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:2];
    v66 = [v64 predicateMatchingAnyPredicates:v65];

    v88[5] = v66;
    v88[6] = v80;
    v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:7];
    v29 = [v71 predicateMatchingAnyPredicates:v67];

    v27 = v86;
  }

  else
  {
    v26 = MEMORY[0x277D10B20];
    v27 = [(HDQuantitySampleSyncEntity *)a1 _headphoneAudioExposureSamplesExpirationPredicateForNowDate:v6];
    v87 = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
    v29 = [v26 predicateMatchingAnyPredicates:v28];
  }

  v68 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)_headphoneAudioExposureSamplesExpirationPredicateForNowDate:(uint64_t)a1
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x277CCD830] dataTypeWithCode:173];
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v12[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = [v4 hd_predicateForSamplesWithTypes:v5 endingBeforeDate:v2 minusDays:*MEMORY[0x277CCC180]];

  v7 = [MEMORY[0x277CBEB98] setWithObject:MEMORY[0x277CBEC38]];
  v8 = [HDMetadataValueEntityPredicate predicateWithMetadataKey:*MEMORY[0x277CCDFF8] allowedValues:v7];
  v9 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v6 otherPredicate:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_sedentaryAndBackgroundHeartRateContextPredicate
{
  objc_opt_self();
  v0 = _HKBackgroundAndSedentaryPrivateHeartRateContexts();
  v1 = [HDMetadataValueEntityPredicate predicateWithMetadataKey:*MEMORY[0x277CCE030] allowedValues:v0];

  return v1;
}

+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)a3
{
  if (a3 < 12)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  }

  return v4;
}

+ (id)_predicateForSampleAgeInSyncSession:(id)a3 sampleTypeClass:(Class)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_class();
  v18.receiver = a1;
  v18.super_class = &OBJC_METACLASS___HDQuantitySampleSyncEntity;
  v7 = objc_msgSendSuper2(&v18, sel__predicateForSampleAgeInSyncSession_sampleTypeClass_, v5, v6);
  if (v7)
  {
    v8 = +[HDQuantitySampleSyncEntity _sedentaryAndBackgroundHeartRateContextPredicate];
    v9 = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = [MEMORY[0x277CCD830] heartRateType];
    v19[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v12 = [v5 startDate];
    v13 = [v9 hd_predicateForSamplesWithTypes:v11 endingAfterDate:v12 minusDays:*MEMORY[0x277CCCED8]];

    v14 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v8 otherPredicate:v13];
    v15 = [MEMORY[0x277D10B70] disjunctionWithPredicate:v7 otherPredicate:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)_predicateForSyncSession:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___HDQuantitySampleSyncEntity;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v13, sel__predicateForSyncSession_, v3);
  isCompanionSyncToUSLegallyCompliantOxygenSaturationDeviceForSyncSession = _isCompanionSyncToUSLegallyCompliantOxygenSaturationDeviceForSyncSession(v3);

  if (isCompanionSyncToUSLegallyCompliantOxygenSaturationDeviceForSyncSession)
  {
    v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:{*MEMORY[0x277CCCBE8], v13.receiver, v13.super_class}];
    v14[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v8 = HDSampleEntityPredicateForDataTypes(v7);

    v9 = [MEMORY[0x277D10B20] negatedPredicate:v8];
    v10 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v4 otherPredicate:v9];

    v4 = v10;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

@end