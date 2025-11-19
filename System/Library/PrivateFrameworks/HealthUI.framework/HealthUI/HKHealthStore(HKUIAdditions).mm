@interface HKHealthStore(HKUIAdditions)
+ (__CFString)localizationStringSuffixForWheelchairUser:()HKUIAdditions;
+ (id)_mostRecentEndDateSortDescriptorForQuantityType:()HKUIAdditions;
+ (id)_queryForMostRecentSampleOfType:()HKUIAdditions predicate:sortDescriptors:completion:;
+ (id)localizationStringAdditionForWheelchairUser;
+ (id)queryForMostRecentAttenuatedEAEQuantityWithHealthStore:()HKUIAdditions completion:;
+ (id)queryForMostRecentQuantityOfType:()HKUIAdditions healthStore:predicate:completion:;
+ (id)queryForMostRecentQuantityOfType:()HKUIAdditions predicate:completion:;
+ (id)queryForMostRecentSampleOfType:()HKUIAdditions predicate:completion:;
+ (uint64_t)_assignMostRecentQuantity:()HKUIAdditions dateInterval:forQuantitySample:;
+ (uint64_t)_isAudioExposureQuantityType:()HKUIAdditions;
+ (void)_processQuantitySample:()HKUIAdditions error:completion:;
+ (void)_processStatisticsCollection:()HKUIAdditions error:completion:;
+ (void)_queryForMostRecentAudioExposureQuantityOfType:()HKUIAdditions sample:healthStore:attenuated:completion:;
+ (void)localizationStringAdditionForWheelchairUser;
- (void)_fetchFirstAndLastNamesForInfoWrapper:()HKUIAdditions meContact:completion:;
- (void)_nonPrimaryProfileFetchFirstAndLastNamesForInfoWrapper:()HKUIAdditions completion:;
- (void)_populateDemographicsWrapper:()HKUIAdditions withFirstName:lastName:meContact:;
- (void)_primaryProfileFetchFirstAndLastNamesForInfoWrapper:()HKUIAdditions meContact:completion:;
- (void)hk_fetchExistingDemographicInformationWithOptions:()HKUIAdditions completion:;
@end

@implementation HKHealthStore(HKUIAdditions)

+ (id)localizationStringAdditionForWheelchairUser
{
  v2 = objc_alloc_init(MEMORY[0x1E696C1C0]);
  v11 = 0;
  v3 = [v2 wheelchairUseWithError:&v11];
  v4 = v11;
  v5 = v4;
  if (v3)
  {
    v6 = [v3 wheelchairUse] == 2;
  }

  else
  {
    v7 = [v4 hk_isDatabaseAccessibilityError];
    _HKInitializeLogging();
    v8 = *MEMORY[0x1E696B940];
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        +[HKHealthStore(HKUIAdditions) localizationStringAdditionForWheelchairUser];
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[HKHealthStore(HKUIAdditions) localizationStringAdditionForWheelchairUser];
    }

    v6 = 0;
  }

  v9 = [a1 localizationStringSuffixForWheelchairUser:v6];

  return v9;
}

+ (__CFString)localizationStringSuffixForWheelchairUser:()HKUIAdditions
{
  if (a3)
  {
    return @"_WHEELCHAIR";
  }

  else
  {
    return &stru_1F42FFBE0;
  }
}

+ (id)_queryForMostRecentSampleOfType:()HKUIAdditions predicate:sortDescriptors:completion:
{
  v9 = a6;
  v10 = MEMORY[0x1E696C3C8];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 alloc];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __101__HKHealthStore_HKUIAdditions___queryForMostRecentSampleOfType_predicate_sortDescriptors_completion___block_invoke;
  v18[3] = &unk_1E81B7CD0;
  v19 = v9;
  v15 = v9;
  v16 = [v14 initWithSampleType:v13 predicate:v12 limit:1 sortDescriptors:v11 resultsHandler:v18];

  return v16;
}

+ (id)queryForMostRecentSampleOfType:()HKUIAdditions predicate:completion:
{
  v8 = MEMORY[0x1E696C3C8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 sortDescriptorsForMostRecentSamples];
  v13 = [a1 _queryForMostRecentSampleOfType:v11 predicate:v10 sortDescriptors:v12 completion:v9];

  return v13;
}

+ (id)queryForMostRecentQuantityOfType:()HKUIAdditions predicate:completion:
{
  v8 = a5;
  v9 = MEMORY[0x1E696C3C8];
  v10 = a4;
  v11 = a3;
  v12 = [v9 sortDescriptorsForMostRecentSamples];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __86__HKHealthStore_HKUIAdditions__queryForMostRecentQuantityOfType_predicate_completion___block_invoke;
  v16[3] = &unk_1E81BA250;
  v17 = v8;
  v18 = a1;
  v13 = v8;
  v14 = [a1 _queryForMostRecentSampleOfType:v11 predicate:v10 sortDescriptors:v12 completion:v16];

  return v14;
}

+ (id)queryForMostRecentQuantityOfType:()HKUIAdditions healthStore:predicate:completion:
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = MEMORY[0x1E696C3C8];
  v14 = a5;
  v15 = [v13 sortDescriptorsForMostRecentSamples];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __98__HKHealthStore_HKUIAdditions__queryForMostRecentQuantityOfType_healthStore_predicate_completion___block_invoke;
  v21[3] = &unk_1E81BA278;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = a1;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = [a1 _queryForMostRecentSampleOfType:v18 predicate:v14 sortDescriptors:v15 completion:v21];

  return v19;
}

+ (id)queryForMostRecentAttenuatedEAEQuantityWithHealthStore:()HKUIAdditions completion:
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696C3C8] sortDescriptorsForMostRecentSamples];
  v9 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BD08]];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__HKHealthStore_HKUIAdditions__queryForMostRecentAttenuatedEAEQuantityWithHealthStore_completion___block_invoke;
  v15[3] = &unk_1E81BA278;
  v16 = v9;
  v17 = v6;
  v18 = v7;
  v19 = a1;
  v10 = v7;
  v11 = v6;
  v12 = v9;
  v13 = [a1 _queryForMostRecentSampleOfType:v12 predicate:0 sortDescriptors:v8 completion:v15];

  return v13;
}

+ (void)_queryForMostRecentAudioExposureQuantityOfType:()HKUIAdditions sample:healthStore:attenuated:completion:
{
  v12 = a3;
  v13 = a7;
  v14 = MEMORY[0x1E696C378];
  v15 = a5;
  v16 = a4;
  v17 = [v16 startDate];
  v18 = [v14 predicateForSamplesWithStartDate:v17 endDate:0 options:1];

  if (a6 && ([v12 identifier], v19 = objc_claimAutoreleasedReturnValue(), v20 = *MEMORY[0x1E696BD08], v19, v19 == v20))
  {
    v21 = _HKStatisticsOptionAttenuateSamples() | 0x20;
  }

  else
  {
    v21 = 32;
  }

  v22 = [MEMORY[0x1E695DEE8] currentCalendar];
  v23 = [v16 startDate];

  v24 = [v22 startOfDayForDate:v23];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = [MEMORY[0x1E695DF00] date];
  }

  v27 = v26;

  v28 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v28 setDay:1];
  v29 = [objc_alloc(MEMORY[0x1E696C4D8]) initWithQuantityType:v12 quantitySamplePredicate:v18 options:v21 anchorDate:v27 intervalComponents:v28];
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __120__HKHealthStore_HKUIAdditions___queryForMostRecentAudioExposureQuantityOfType_sample_healthStore_attenuated_completion___block_invoke;
  v34 = &unk_1E81BA2A0;
  v35 = v13;
  v36 = a1;
  v30 = v13;
  [v29 setInitialResultsHandler:&v31];
  [v15 executeQuery:{v29, v31, v32, v33, v34}];
}

+ (void)_processQuantitySample:()HKUIAdditions error:completion:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
  {
    v12 = 0;
    v13 = 0;
    if (!v10)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0;
  v15 = 0;
  [a1 _assignMostRecentQuantity:&v15 dateInterval:&v14 forQuantitySample:v8];
  v12 = v15;
  v13 = v14;
  if (v11)
  {
LABEL_3:
    (v11)[2](v11, v12, v13, v9);
  }

LABEL_4:
}

+ (void)_processStatisticsCollection:()HKUIAdditions error:completion:
{
  v11 = a4;
  v7 = a5;
  v8 = a3;
  v9 = [v8 _mostRecentQuantityStatistics];
  v10 = [v8 _mostRecentQuantityDateInterval];

  if (v7)
  {
    v7[2](v7, v9, v10, v11);
  }
}

+ (uint64_t)_isAudioExposureQuantityType:()HKUIAdditions
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E696BD28];
  v10[0] = *MEMORY[0x1E696BD08];
  v10[1] = v3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v10 count:2];
  v7 = [v5 identifier];

  v8 = [v6 containsObject:v7];
  return v8;
}

+ (id)_mostRecentEndDateSortDescriptorForQuantityType:()HKUIAdditions
{
  [a3 dataObjectClass];
  objc_opt_class();
  objc_opt_isKindOfClass();
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:*MEMORY[0x1E696BE30] ascending:0];

  return v3;
}

+ (uint64_t)_assignMostRecentQuantity:()HKUIAdditions dateInterval:forQuantitySample:
{
  v7 = a5;
  if (a3)
  {
    v8 = a4 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *a3 = [v7 mostRecentQuantity];
      *a4 = [v7 mostRecentQuantityDateInterval];
    }

    else
    {
      *a3 = [v7 quantity];
      v10 = objc_alloc(MEMORY[0x1E696AB80]);
      v11 = [v7 startDate];
      v12 = [v7 endDate];
      *a4 = [v10 initWithStartDate:v11 endDate:v12];
    }
  }

  return v9;
}

- (void)hk_fetchExistingDemographicInformationWithOptions:()HKUIAdditions completion:
{
  v44[6] = *MEMORY[0x1E69E9840];
  v35 = a4;
  if ((a3 & 1) != 0 || [MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] != 3)
  {
    v11 = 0;
  }

  else
  {
    v6 = objc_opt_new();
    v7 = *MEMORY[0x1E695C2F0];
    v44[0] = *MEMORY[0x1E695C240];
    v44[1] = v7;
    v8 = *MEMORY[0x1E695C1D0];
    v44[2] = *MEMORY[0x1E695C230];
    v44[3] = v8;
    v9 = *MEMORY[0x1E695C208];
    v44[4] = *MEMORY[0x1E695C360];
    v44[5] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:6];
    v11 = [v6 _ios_meContactWithKeysToFetch:v10 error:0];
  }

  v12 = objc_alloc_init(HKDemographicsInformationWrapper);
  v43 = 0;
  v13 = [a1 dateOfBirthComponentsWithError:&v43];
  v14 = v43;
  if (v14 && (_HKInitializeLogging(), os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR)))
  {
    [HKHealthStore(HKUIAdditions) hk_fetchExistingDemographicInformationWithOptions:completion:];
    if (v13)
    {
      goto LABEL_13;
    }
  }

  else if (v13)
  {
    goto LABEL_13;
  }

  if (v11)
  {
    v15 = [v11 birthday];
    if ([v15 year] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
    }

    else
    {
      v13 = v15;
    }
  }

LABEL_13:
  v34 = v11;
  if (v13)
  {
    [(HKDemographicsInformationWrapper *)v12 setDateOfBirthComponents:v13];
  }

  v42 = v14;
  v16 = [a1 biologicalSexWithError:&v42];
  v17 = v42;

  v18 = MEMORY[0x1E696B988];
  if (v17)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      [HKHealthStore(HKUIAdditions) hk_fetchExistingDemographicInformationWithOptions:completion:];
    }
  }

  v33 = v16;
  [(HKDemographicsInformationWrapper *)v12 setBiologicalSexObject:v16];
  v41 = v17;
  v19 = [a1 _heightCharacteristicQuantityWithError:&v41];
  v20 = v41;

  if (v20)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      [HKHealthStore(HKUIAdditions) hk_fetchExistingDemographicInformationWithOptions:completion:];
    }
  }

  [(HKDemographicsInformationWrapper *)v12 setHeightQuantity:v19];
  v40 = v20;
  v21 = [a1 _bodyMassCharacteristicQuantityWithError:&v40];
  v22 = v40;

  if (v22)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      [HKHealthStore(HKUIAdditions) hk_fetchExistingDemographicInformationWithOptions:completion:];
    }
  }

  [(HKDemographicsInformationWrapper *)v12 setWeightQuantity:v21, v21];
  v39 = v22;
  v23 = [a1 fitzpatrickSkinTypeWithError:&v39];
  v24 = v39;

  if (v24)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      [HKHealthStore(HKUIAdditions) hk_fetchExistingDemographicInformationWithOptions:completion:];
    }
  }

  [(HKDemographicsInformationWrapper *)v12 setFitzpatrickSkinTypeObject:v23];
  v38 = v24;
  v25 = [a1 bloodTypeWithError:&v38];
  v26 = v38;

  if (v26)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      [HKHealthStore(HKUIAdditions) hk_fetchExistingDemographicInformationWithOptions:completion:];
    }
  }

  v27 = v19;
  [(HKDemographicsInformationWrapper *)v12 setBloodTypeObject:v25];
  v37 = v26;
  v28 = [a1 wheelchairUseWithError:&v37];
  v29 = v37;

  if (v29)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x1E696B988], OS_LOG_TYPE_ERROR))
    {
      [HKHealthStore(HKUIAdditions) hk_fetchExistingDemographicInformationWithOptions:completion:];
    }
  }

  [(HKDemographicsInformationWrapper *)v12 setWheelchairUseObject:v28];
  v36 = v29;
  v30 = [a1 _cardioFitnessMedicationsUseWithError:&v36];
  v31 = v36;

  if (v31)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x1E696B988], OS_LOG_TYPE_ERROR))
    {
      [HKHealthStore(HKUIAdditions) hk_fetchExistingDemographicInformationWithOptions:completion:];
    }
  }

  [(HKDemographicsInformationWrapper *)v12 setCardioFitnessMedicationsUseObject:v30];
  [a1 _fetchFirstAndLastNamesForInfoWrapper:v12 meContact:v34 completion:v35];
}

- (void)_fetchFirstAndLastNamesForInfoWrapper:()HKUIAdditions meContact:completion:
{
  v12 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [a1 profileIdentifier];
  v11 = [v10 type];

  if (v11 == 1)
  {
    [a1 _primaryProfileFetchFirstAndLastNamesForInfoWrapper:v9 meContact:v12 completion:v8];
  }

  else
  {
    [a1 _nonPrimaryProfileFetchFirstAndLastNamesForInfoWrapper:v9 completion:v8];
  }
}

- (void)_primaryProfileFetchFirstAndLastNamesForInfoWrapper:()HKUIAdditions meContact:completion:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E696C210] healthAppDefaultsDomainWithHealthStore:a1];
  v12 = *MEMORY[0x1E696C918];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __105__HKHealthStore_HKUIAdditions___primaryProfileFetchFirstAndLastNamesForInfoWrapper_meContact_completion___block_invoke;
  v16[3] = &unk_1E81BA2F0;
  v16[4] = a1;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  [v11 propertyListValueForKey:v12 completion:v16];
}

- (void)_nonPrimaryProfileFetchFirstAndLastNamesForInfoWrapper:()HKUIAdditions completion:
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E696C340]) initWithHealthStore:a1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __98__HKHealthStore_HKUIAdditions___nonPrimaryProfileFetchFirstAndLastNamesForInfoWrapper_completion___block_invoke;
  v11[3] = &unk_1E81BA318;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 fetchDisplayName:v11];
}

- (void)_populateDemographicsWrapper:()HKUIAdditions withFirstName:lastName:meContact:
{
  v17 = a4;
  v9 = a5;
  v10 = a6;
  v11 = a3;
  v12 = [v10 middleName];
  if (![v17 length])
  {
    v13 = [v10 givenName];

    v17 = v13;
  }

  if (![v9 length])
  {
    v14 = [v10 familyName];

    v9 = v14;
  }

  [v11 setFirstName:v17];
  [v11 setMiddleName:v12];
  [v11 setLastName:v9];
  v15 = [v10 postalAddresses];
  [v11 setPostalAddresses:v15];

  v16 = [v10 emailAddresses];
  [v11 setEmailAddresses:v16];
}

+ (void)localizationStringAdditionForWheelchairUser
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(&dword_1C3942000, v0, OS_LOG_TYPE_DEBUG, "Failed to fetch wheelchair use: %{public}@", v1, 0xCu);
}

@end