@interface CDPDBootSessionIDProvider
+ (id)bootSessionUUID;
@end

@implementation CDPDBootSessionIDProvider

+ (id)bootSessionUUID
{
  if (bootSessionUUID_onceToken != -1)
  {
    +[CDPDBootSessionIDProvider bootSessionUUID];
  }

  v3 = bootSessionUUID__bootSessionUUID;

  return v3;
}

void __44__CDPDBootSessionIDProvider_bootSessionUUID__block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7 = 37;
  v0 = sysctlbyname("kern.bootsessionuuid", v8, &v7, 0, 0);
  if (v0)
  {
    v1 = v0;
    v2 = _CDPLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __44__CDPDBootSessionIDProvider_bootSessionUUID__block_invoke_cold_1(v1, v2);
    }

    v3 = bootSessionUUID__bootSessionUUID;
    bootSessionUUID__bootSessionUUID = 0;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v8];
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v3];
    v5 = bootSessionUUID__bootSessionUUID;
    bootSessionUUID__bootSessionUUID = v4;
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __44__CDPDBootSessionIDProvider_bootSessionUUID__block_invoke_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_24510B000, a2, OS_LOG_TYPE_FAULT, "Failed to retrieve boot session UUID with exit code %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end