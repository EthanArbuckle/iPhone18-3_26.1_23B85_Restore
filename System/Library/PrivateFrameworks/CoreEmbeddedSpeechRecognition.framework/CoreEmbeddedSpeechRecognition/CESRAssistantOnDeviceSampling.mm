@interface CESRAssistantOnDeviceSampling
+ (id)sharedManager;
- (BOOL)isRequestSelectedForSamplingForTask:(id)task;
- (CESRAssistantOnDeviceSampling)init;
@end

@implementation CESRAssistantOnDeviceSampling

- (BOOL)isRequestSelectedForSamplingForTask:(id)task
{
  v12 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  siriDataSharingOptInStatus = [mEMORY[0x277CEF368] siriDataSharingOptInStatus];

  if (siriDataSharingOptInStatus == 1)
  {
    if ([taskCopy isEqualToString:@"SearchOrMessaging"] & 1) != 0 || (objc_msgSend(taskCopy, "isEqualToString:", @"SiriDictation") & 1) != 0 || (objc_msgSend(taskCopy, "isEqualToString:", @"Beto"))
    {
      v6 = 1;
    }

    else
    {
      v6 = [taskCopy isEqualToString:@"BetoDictation"];
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