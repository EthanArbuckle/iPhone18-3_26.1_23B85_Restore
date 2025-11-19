@interface CESRAssistantOnDeviceSampling
+ (id)sharedManager;
- (BOOL)isRequestSelectedForSamplingForTask:(id)a3;
- (CESRAssistantOnDeviceSampling)init;
@end

@implementation CESRAssistantOnDeviceSampling

- (BOOL)isRequestSelectedForSamplingForTask:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CEF368] sharedPreferences];
  v5 = [v4 siriDataSharingOptInStatus];

  if (v5 == 1)
  {
    if ([v3 isEqualToString:@"SearchOrMessaging"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"SiriDictation") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Beto"))
    {
      v6 = 1;
    }

    else
    {
      v6 = [v3 isEqualToString:@"BetoDictation"];
    }
  }

  else
  {
    v7 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[CESRAssistantOnDeviceSampling isRequestSelectedForSamplingForTask:]";
      _os_log_impl(&dword_225EEB000, v7, OS_LOG_TYPE_INFO, "%s Assistant Sampling: User is NOT opted in.", &v10, 0xCu);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (CESRAssistantOnDeviceSampling)init
{
  v3.receiver = self;
  v3.super_class = CESRAssistantOnDeviceSampling;
  return [(CESRAssistantOnDeviceSampling *)&v3 init];
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_220);
  }

  v3 = sharedManager_sharedMyManager;

  return v3;
}

uint64_t __46__CESRAssistantOnDeviceSampling_sharedManager__block_invoke()
{
  sharedManager_sharedMyManager = objc_alloc_init(CESRAssistantOnDeviceSampling);

  return MEMORY[0x2821F96F8]();
}

@end