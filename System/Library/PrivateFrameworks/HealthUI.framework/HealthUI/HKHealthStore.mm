@interface HKHealthStore
@end

@implementation HKHealthStore

void __58__HKHealthStore_HKMedicalIDAdditions__createMedicalIDData__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __101__HKHealthStore_HKUIAdditions___queryForMostRecentSampleOfType_predicate_sortDescriptors_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = a4;
    v7 = [a3 lastObject];
    (*(v4 + 16))(v4, v7, v6);
  }
}

void __98__HKHealthStore_HKUIAdditions__queryForMostRecentQuantityOfType_healthStore_predicate_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a1[7];
  v6 = a1[4];
  v7 = a2;
  v8 = [v5 _isAudioExposureQuantityType:v6];
  v9 = a1[7];
  if (v8)
  {
    [v9 _queryForMostRecentAudioExposureQuantityOfType:a1[4] sample:v7 healthStore:a1[5] attenuated:0 completion:a1[6]];
  }

  else
  {
    [v9 _processQuantitySample:v7 error:v10 completion:a1[6]];
  }
}

void __105__HKHealthStore_HKUIAdditions___primaryProfileFetchFirstAndLastNamesForInfoWrapper_meContact_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x1E696B988], OS_LOG_TYPE_ERROR))
    {
      __105__HKHealthStore_HKUIAdditions___primaryProfileFetchFirstAndLastNamesForInfoWrapper_meContact_completion___block_invoke_cold_1();
    }
  }

  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696C900]];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1F42FFBE0;
  }

  v10 = v9;

  v11 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696C908]];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F42FFBE0;
  }

  v14 = v13;

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __105__HKHealthStore_HKUIAdditions___primaryProfileFetchFirstAndLastNamesForInfoWrapper_meContact_completion___block_invoke_392;
  v18[3] = &unk_1E81BA2C8;
  v15 = *(a1 + 40);
  v18[4] = *(a1 + 32);
  v19 = v15;
  v20 = v10;
  v21 = v14;
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  v16 = v14;
  v17 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], v18);
}

uint64_t __105__HKHealthStore_HKUIAdditions___primaryProfileFetchFirstAndLastNamesForInfoWrapper_meContact_completion___block_invoke_392(uint64_t a1)
{
  [*(a1 + 32) _populateDemographicsWrapper:*(a1 + 40) withFirstName:*(a1 + 48) lastName:*(a1 + 56) meContact:*(a1 + 64)];
  result = *(a1 + 72);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __98__HKHealthStore_HKUIAdditions___nonPrimaryProfileFetchFirstAndLastNamesForInfoWrapper_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x1E696B988], OS_LOG_TYPE_ERROR))
    {
      __98__HKHealthStore_HKUIAdditions___nonPrimaryProfileFetchFirstAndLastNamesForInfoWrapper_completion___block_invoke_cold_1();
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98__HKHealthStore_HKUIAdditions___nonPrimaryProfileFetchFirstAndLastNamesForInfoWrapper_completion___block_invoke_396;
  v12[3] = &unk_1E81B5FD0;
  v13 = *(a1 + 32);
  v14 = v7;
  v15 = v8;
  v16 = *(a1 + 40);
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

uint64_t __98__HKHealthStore_HKUIAdditions___nonPrimaryProfileFetchFirstAndLastNamesForInfoWrapper_completion___block_invoke_396(uint64_t a1)
{
  v4 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = *(v4 + 8);
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1F42FFBE0;
  }

  [v2 setFirstName:v5];
  if (*(a1 + 48))
  {
    v6 = *(a1 + 48);
  }

  else
  {
    v6 = &stru_1F42FFBE0;
  }

  [*(a1 + 32) setLastName:v6];
  result = *(a1 + 56);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

@end