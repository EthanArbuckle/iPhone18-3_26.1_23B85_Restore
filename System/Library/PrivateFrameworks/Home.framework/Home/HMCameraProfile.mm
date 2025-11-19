@interface HMCameraProfile
@end

@implementation HMCameraProfile

BOOL __54__HMCameraProfile_HFAdditions__hf_thermalShutdownMode__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasOperatingState])
  {
    v3 = [v2 lastKnownOperatingState] == 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __66__HMCameraProfile_HFAdditions__hf_doorbellChimeMuteCharacteristic__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 serviceType];
  v8 = [v7 isEqualToString:*MEMORY[0x277CD0E38]];

  if (v8)
  {
    v9 = [v6 characteristics];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__HMCameraProfile_HFAdditions__hf_doorbellChimeMuteCharacteristic__block_invoke_2;
    v10[3] = &unk_277DF9E08;
    v10[4] = *(a1 + 32);
    [v9 enumerateObjectsUsingBlock:v10];
  }

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a4 = 1;
  }
}

void __66__HMCameraProfile_HFAdditions__hf_doorbellChimeMuteCharacteristic__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 characteristicType];
  v8 = [v7 isEqualToString:*MEMORY[0x277CCF980]];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

uint64_t __96__HMCameraProfile_HFAdditions__hf_cameraAccessModeSelectedOptionForCameraProfiles_presenceType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_277DF9ED8[v2];
  }

  return [a2 isEqualToString:v3];
}

void __66__HMCameraProfile_HFAdditions__hf_significantEventWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained clipManager];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:*(a1 + 32)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__HMCameraProfile_HFAdditions__hf_significantEventWithIdentifier___block_invoke_2;
  v8[3] = &unk_277DF9E78;
  objc_copyWeak(&v11, (a1 + 40));
  v9 = *(a1 + 32);
  v7 = v3;
  v10 = v7;
  [v5 fetchSignificantEventsWithUUIDs:v6 completion:v8];

  objc_destroyWeak(&v11);
}

void __66__HMCameraProfile_HFAdditions__hf_significantEventWithIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    if ([v5 count])
    {
      v11 = *(a1 + 40);
      v9 = [v5 anyObject];
      [v11 finishWithResult:v9];
      goto LABEL_8;
    }

    v8 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
  }

  v9 = v8;
  v10 = HFLogForCategory(0xEuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v14 = *(a1 + 32);
    v15 = 138412802;
    v16 = WeakRetained;
    v17 = 2112;
    v18 = v14;
    v19 = 2112;
    v20 = v9;
    _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "%@: Unable to fetch significant event with identifier:%@ (error:%@)", &v15, 0x20u);
  }

  [*(a1 + 40) finishWithError:v9];
LABEL_8:

  v12 = *MEMORY[0x277D85DE8];
}

void __68__HMCameraProfile_HFAdditions__hf_faceCropImageForSignificantEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 clipManager];
  v5 = [*(a1 + 40) uniqueIdentifier];
  [v6 fetchFaceCropDataRepresentationForSignificantEventWithUUID:v5 completion:v4];
}

id __68__HMCameraProfile_HFAdditions__hf_faceCropImageForSignificantEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D755B8];
  v3 = a2;
  v4 = [[v2 alloc] initWithData:v3];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v5;
}

void __68__HMCameraProfile_HFAdditions__hf_faceCropImageForSignificantEvent___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x13uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v6;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Error %@ fetching face crop for significant event %@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end