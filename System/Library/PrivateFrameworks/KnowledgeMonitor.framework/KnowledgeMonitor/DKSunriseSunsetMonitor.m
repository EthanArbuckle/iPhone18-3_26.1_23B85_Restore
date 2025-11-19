@interface DKSunriseSunsetMonitor
@end

@implementation DKSunriseSunsetMonitor

void __31___DKSunriseSunsetMonitor_init__block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBFC10]);
  v6 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/LocationBundles/SystemCustomization.bundle"];
  v3 = *(a1 + 32);
  v4 = [v3 queue];
  v5 = [v2 initWithEffectiveBundle:v6 delegate:v3 onQueue:v4];
  [*(a1 + 32) setManager:v5];
}

void __31___DKSunriseSunsetMonitor_init__block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277CBFC10];
  v3 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/LocationBundles/SystemCustomization.bundle"];
  [*(a1 + 32) setAuthorizationStatus:{objc_msgSend(v2, "authorizationStatusForBundle:", v3)}];
}

void __31___DKSunriseSunsetMonitor_init__block_invoke_32(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31___DKSunriseSunsetMonitor_init__block_invoke_2_33;
  v6[3] = &unk_27856F060;
  v7 = *(a1 + 32);
  v3 = v6;
  v4 = os_transaction_create();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_9;
  block[3] = &unk_27856F178;
  v9 = v4;
  v10 = v3;
  v5 = v4;
  dispatch_async(v2, block);
}

void __62___DKSunriseSunsetMonitor_locationManager_didUpdateLocations___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) lastObject];
  [v1 unprotectedUpdateSunriseSunsetTime:v2];
}

@end