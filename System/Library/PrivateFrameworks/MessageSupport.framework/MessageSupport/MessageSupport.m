id MFLogGeneral()
{
  if (MFLogGeneral_mf_once_token_0 != -1)
  {
    MFLogGeneral_cold_1();
  }

  v1 = MFLogGeneral_mf_once_object_0;

  return v1;
}

uint64_t __MFLogGeneral_block_invoke()
{
  MFLogGeneral_mf_once_object_0 = os_log_create([@"com.apple.mobilemail" UTF8String], "General");

  return MEMORY[0x2821F96F8]();
}

id MFAccountsLog()
{
  if (MFAccountsLog_mf_once_token_5 != -1)
  {
    MFAccountsLog_cold_1();
  }

  v1 = MFAccountsLog_mf_once_object_5;

  return v1;
}

uint64_t __MFAccountsLog_block_invoke()
{
  MFAccountsLog_mf_once_object_5 = os_log_create("com.apple.email", "Accounts");

  return MEMORY[0x2821F96F8]();
}

id MFMessageListLoadingSignpostLog()
{
  if (MFMessageListLoadingSignpostLog_mf_once_token_10 != -1)
  {
    MFMessageListLoadingSignpostLog_cold_1();
  }

  v1 = MFMessageListLoadingSignpostLog_mf_once_object_10;

  return v1;
}

uint64_t __MFMessageListLoadingSignpostLog_block_invoke()
{
  MFMessageListLoadingSignpostLog_mf_once_object_10 = os_log_create("com.apple.email.signposts", "MFMessageListLoading");

  return MEMORY[0x2821F96F8]();
}

id MFAutoFetchLog()
{
  if (MFAutoFetchLog_mf_once_token_3 != -1)
  {
    MFAutoFetchLog_cold_1();
  }

  v1 = MFAutoFetchLog_mf_once_object_3;

  return v1;
}

id MFPowerLog()
{
  if (MFPowerLog_mf_once_token_2 != -1)
  {
    MFPowerLog_cold_1();
  }

  v1 = MFPowerLog_mf_once_object_2;

  return v1;
}

uint64_t MFIsMobileMail()
{
  if (MFIsMobileMail_onceToken != -1)
  {
    MFIsMobileMail_cold_1();
  }

  return MFIsMobileMail_sIsMobileMail;
}

void __MFIsMobileMail_block_invoke()
{
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v1 bundleIdentifier];
  MFIsMobileMail_sIsMobileMail = [v0 isEqualToString:@"com.apple.mobilemail"];
}

uint64_t MFMobileMailContainerPath()
{
  if (MFMobileMailContainerPath_onceToken != -1)
  {
    MFMobileMailContainerPath_cold_1();
  }

  return MFMobileMailContainerPath_containerPath;
}

void __MFMobileMailContainerPath_block_invoke()
{
  v4 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:@"com.apple.mobilemail"];
  v0 = [v4 dataContainerURL];
  v1 = [v0 path];
  v2 = [v1 copy];
  v3 = MFMobileMailContainerPath_containerPath;
  MFMobileMailContainerPath_containerPath = v2;
}

uint64_t MFDeviceSupportsHighRefreshRate()
{
  if (MFDeviceSupportsHighRefreshRate_onceToken != -1)
  {
    MFDeviceSupportsHighRefreshRate_cold_1();
  }

  return MFDeviceSupportsHighRefreshRate_deviceSupportsHighRefreshRate;
}

uint64_t __MFDeviceSupportsHighRefreshRate_block_invoke()
{
  result = MGGetBoolAnswer();
  MFDeviceSupportsHighRefreshRate_deviceSupportsHighRefreshRate = result;
  return result;
}

__CFString *mf_defaultsKeyForFeature(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"ShowSendEml";
  }

  v3 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *mf_defaultsKeyForFeature(MFMobileMailFeature)"];
  [v3 handleFailureInFunction:v4 file:@"MFFeaturePreferences.m" lineNumber:29 description:{@"Invalid MFMailFeature %d passed to mf_defaultsKeyForFeature", a1}];

  return 0;
}

uint64_t mf_isFeatureEnabled(uint64_t a1)
{
  v2 = mf_defaultsKeyForFeature(a1);
  v3 = v2;
  if (a1 != 1)
  {
    if (a1)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL mf_isFeatureEnabled(MFMobileMailFeature)"];
    [v4 handleFailureInFunction:v5 file:@"MFFeaturePreferences.m" lineNumber:38 description:@"MFMailFeatureInvalid passed to mf_isFeatureEnabled"];
    goto LABEL_6;
  }

  v4 = v2;
  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v6 valueForKey:v4];

  if (!v5)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = [v5 BOOLValue];
LABEL_7:

LABEL_9:
  return v7;
}

id MFLogNetwork()
{
  if (MFLogNetwork_mf_once_token_1 != -1)
  {
    MFLogNetwork_cold_1();
  }

  v1 = MFLogNetwork_mf_once_object_1;

  return v1;
}

uint64_t __MFLogNetwork_block_invoke()
{
  MFLogNetwork_mf_once_object_1 = os_log_create([@"com.apple.mobilemail" UTF8String], "Network");

  return MEMORY[0x2821F96F8]();
}

uint64_t __MFPowerLog_block_invoke()
{
  MFPowerLog_mf_once_object_2 = os_log_create([@"com.apple.mobilemail" UTF8String], "Power");

  return MEMORY[0x2821F96F8]();
}

uint64_t __MFAutoFetchLog_block_invoke()
{
  MFAutoFetchLog_mf_once_object_3 = os_log_create("com.apple.email", "AutoFetch");

  return MEMORY[0x2821F96F8]();
}

id MFPersistenceLog()
{
  if (MFPersistenceLog_mf_once_token_4 != -1)
  {
    MFPersistenceLog_cold_1();
  }

  v1 = MFPersistenceLog_mf_once_object_4;

  return v1;
}

uint64_t __MFPersistenceLog_block_invoke()
{
  MFPersistenceLog_mf_once_object_4 = os_log_create("com.apple.email", "Persistence");

  return MEMORY[0x2821F96F8]();
}

id MFExchangeLog()
{
  if (MFExchangeLog_mf_once_token_6 != -1)
  {
    MFExchangeLog_cold_1();
  }

  v1 = MFExchangeLog_mf_once_object_6;

  return v1;
}

uint64_t __MFExchangeLog_block_invoke()
{
  MFExchangeLog_mf_once_object_6 = os_log_create("com.apple.email", "Exchange");

  return MEMORY[0x2821F96F8]();
}

id MFComposeLog()
{
  if (MFComposeLog_mf_once_token_7 != -1)
  {
    MFComposeLog_cold_1();
  }

  v1 = MFComposeLog_mf_once_object_7;

  return v1;
}

uint64_t __MFComposeLog_block_invoke()
{
  MFComposeLog_mf_once_object_7 = os_log_create("com.apple.email", "Compose");

  return MEMORY[0x2821F96F8]();
}

id MFReconciliationLog()
{
  if (MFReconciliationLog_mf_once_token_8 != -1)
  {
    MFReconciliationLog_cold_1();
  }

  v1 = MFReconciliationLog_mf_once_object_8;

  return v1;
}

uint64_t __MFReconciliationLog_block_invoke()
{
  MFReconciliationLog_mf_once_object_8 = os_log_create("com.apple.email", "Reconciliation");

  return MEMORY[0x2821F96F8]();
}

id MFMessageSelectionLifecycleSignpostLog()
{
  if (MFMessageSelectionLifecycleSignpostLog_mf_once_token_6 != -1)
  {
    MFMessageSelectionLifecycleSignpostLog_cold_1();
  }

  v1 = MFMessageSelectionLifecycleSignpostLog_mf_once_object_6;

  return v1;
}

uint64_t __MFMessageSelectionLifecycleSignpostLog_block_invoke()
{
  MFMessageSelectionLifecycleSignpostLog_mf_once_object_6 = os_log_create("com.apple.email.signposts", "MFMessageSelectionLifecycleSignpostLog");

  return MEMORY[0x2821F96F8]();
}

id MFMessageLoadingSignpostLog()
{
  if (MFMessageLoadingSignpostLog_mf_once_token_7 != -1)
  {
    MFMessageLoadingSignpostLog_cold_1();
  }

  v1 = MFMessageLoadingSignpostLog_mf_once_object_7;

  return v1;
}

uint64_t __MFMessageLoadingSignpostLog_block_invoke()
{
  MFMessageLoadingSignpostLog_mf_once_object_7 = os_log_create("com.apple.email.signposts", "MFMessageLoading");

  return MEMORY[0x2821F96F8]();
}

id MFReconciliationSignpostLog()
{
  if (MFReconciliationSignpostLog_mf_once_token_8 != -1)
  {
    MFReconciliationSignpostLog_cold_1();
  }

  v1 = MFReconciliationSignpostLog_mf_once_object_8;

  return v1;
}

uint64_t __MFReconciliationSignpostLog_block_invoke()
{
  MFReconciliationSignpostLog_mf_once_object_8 = os_log_create("com.apple.email.signposts", "MFReconciliation");

  return MEMORY[0x2821F96F8]();
}

id MFMessageComposeLoadingSignpostLog()
{
  if (MFMessageComposeLoadingSignpostLog_mf_once_token_9 != -1)
  {
    MFMessageComposeLoadingSignpostLog_cold_1();
  }

  v1 = MFMessageComposeLoadingSignpostLog_mf_once_object_9;

  return v1;
}

uint64_t __MFMessageComposeLoadingSignpostLog_block_invoke()
{
  MFMessageComposeLoadingSignpostLog_mf_once_object_9 = os_log_create("com.apple.email.signposts", "MFMessageComposeLoading");

  return MEMORY[0x2821F96F8]();
}