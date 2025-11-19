@interface HMOcclusionNotification
+ (HMOcclusionNotification)sharedInstance;
- (BOOL)_hasOcclusionNotificationsThresholdMet;
- (HMOcclusionNotification)init;
- (id)_deviceIconForProductID:(unsigned int)a3;
- (id)_getStringPreferencesForKey:(id)a3;
- (void)_hasOcclusionNotificationsThresholdMet;
- (void)_setPreferencesForKey:(id)a3 withStringValue:(id)a4;
- (void)invalidateHearingProtectionOcclusionNotification;
- (void)presentCleaningInfoArticle;
@end

@implementation HMOcclusionNotification

+ (HMOcclusionNotification)sharedInstance
{
  if (sharedInstance_sOnce_2 != -1)
  {
    +[HMOcclusionNotification sharedInstance];
  }

  v3 = sharedInstance_sSelf_2;

  return v3;
}

uint64_t __41__HMOcclusionNotification_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HMOcclusionNotification);
  v1 = sharedInstance_sSelf_2;
  sharedInstance_sSelf_2 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (HMOcclusionNotification)init
{
  v6.receiver = self;
  v6.super_class = HMOcclusionNotification;
  v2 = [(HMOcclusionNotification *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (void)invalidateHearingProtectionOcclusionNotification
{
  uiNotificationSessionHearingProtection = self->_uiNotificationSessionHearingProtection;
  if (uiNotificationSessionHearingProtection)
  {
    [(CUUserNotificationSession *)uiNotificationSessionHearingProtection invalidate];
    v4 = self->_uiNotificationSessionHearingProtection;
    self->_uiNotificationSessionHearingProtection = 0;
  }
}

- (void)presentCleaningInfoArticle
{
  v2 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"https://support.apple.com/120409?cid=mc-ols-airpods-article_120409-settings_ui-08232024"];
  v3 = v2;
  if (v2)
  {
    v6 = v2;
    if (gLogCategory_HMOcclusionNotification <= 30 && (gLogCategory_HMOcclusionNotification != -1 || _LogCategory_Initialize()))
    {
      [HMOcclusionNotification presentCleaningInfoArticle];
    }

    v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v5 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/120409?cid=mc-ols-airpods-article_120409-settings_ui-08232024"];
    [v4 openSensitiveURL:v5 withOptions:0];

    goto LABEL_6;
  }

  if (gLogCategory_HMOcclusionNotification <= 30)
  {
    v6 = 0;
    if (gLogCategory_HMOcclusionNotification != -1 || (v2 = _LogCategory_Initialize(), v3 = 0, v2))
    {
      v2 = [HMOcclusionNotification presentCleaningInfoArticle];
LABEL_6:
      v3 = v6;
    }
  }

  MEMORY[0x2821F96F8](v2, v3);
}

void __71__HMOcclusionNotification__showHearingProtectionOcclusionNotification___block_invoke(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    v8 = v5;
    if (gLogCategory_HMOcclusionNotification <= 30 && (gLogCategory_HMOcclusionNotification != -1 || _LogCategory_Initialize()))
    {
      __71__HMOcclusionNotification__showHearingProtectionOcclusionNotification___block_invoke_cold_1(a2);
    }

    if (a2 == 1)
    {
      v7 = +[HMDeviceManager sharedInstance];
      [v7 occlusionIndicationShownForDeviceAddress:*(*(a1 + 40) + 16) featureID:2 type:1 action:3];

      [*(a1 + 40) presentCleaningInfoArticle];
    }

    else if (a2 != 5)
    {
      v5 = v8;
      if (a2 != 2)
      {
        goto LABEL_11;
      }

      v6 = +[HMDeviceManager sharedInstance];
      [v6 occlusionIndicationShownForDeviceAddress:*(*(a1 + 40) + 16) featureID:2 type:1 action:1];
    }

    [*(a1 + 40) invalidateHearingProtectionOcclusionNotification];
    v5 = v8;
  }

LABEL_11:
}

- (BOOL)_hasOcclusionNotificationsThresholdMet
{
  v2 = [(HMOcclusionNotification *)self _getStringPreferencesForKey:@"OcclusionNotificationShownDate"];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v5 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    v6 = [v4 dateFromString:v2];

    v7 = objc_alloc(MEMORY[0x277CBEA80]);
    v8 = [v7 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v9 = [v8 components:28 fromDate:v6 toDate:v3 options:0];
    if (gLogCategory_HMOcclusionNotification <= 30 && (gLogCategory_HMOcclusionNotification != -1 || _LogCategory_Initialize()))
    {
      [(HMOcclusionNotification *)v4 _hasOcclusionNotificationsThresholdMet];
    }

    v10 = [v9 year] > 0 || objc_msgSend(v9, "month") > 0 || objc_msgSend(v9, "day") > 14;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)_setPreferencesForKey:(id)a3 withStringValue:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v5 UTF8String];
  [v5 length];

  CFPrefs_SetCString();

  CFPreferencesAppSynchronize(@"com.apple.HearingModeService");
}

- (id)_getStringPreferencesForKey:(id)a3
{
  v7[13] = *MEMORY[0x277D85DE8];
  LODWORD(v7[0]) = 0;
  v3 = a3;
  CFPreferencesAppSynchronize(@"com.apple.HearingModeService");
  CFPrefs_GetCString();

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v7 + 4, v7[0]}];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_deviceIconForProductID:(unsigned int)a3
{
  v4 = [(HMOcclusionNotification *)self _iconTypeForProductID:?];
  if (v4)
  {
    goto LABEL_6;
  }

  if (gLogCategory_HMOcclusionNotification <= 90 && (gLogCategory_HMOcclusionNotification != -1 || _LogCategory_Initialize()))
  {
    [HMOcclusionNotification _deviceIconForProductID:];
  }

  v4 = [(HMOcclusionNotification *)self _iconTypeForProductID:8212];
  if (v4)
  {
LABEL_6:
    v5 = v4;
    v6 = MEMORY[0x277CE1FB0];
    v7 = [v4 identifier];
    v8 = [v6 iconWithUTI:v7];
  }

  else
  {
    if (gLogCategory_HMOcclusionNotification <= 90 && (gLogCategory_HMOcclusionNotification != -1 || _LogCategory_Initialize()))
    {
      [HMOcclusionNotification _deviceIconForProductID:];
    }

    v8 = [MEMORY[0x277CE1FB0] iconForSystemImageNamed:@"airpods.pro"];
  }

  return v8;
}

- (void)_showHearingProtectionOcclusionNotification:(void *)a1 .cold.1(void *a1)
{
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = [a1 stringFromDate:v2];
  LogPrintF();
}

uint64_t __71__HMOcclusionNotification__showHearingProtectionOcclusionNotification___block_invoke_cold_1(unsigned int a1)
{
  if (a1 <= 5)
  {
    v1 = off_2796F06E8[a1];
  }

  return LogPrintF();
}

- (void)_hasOcclusionNotificationsThresholdMet
{
  v7 = [a1 stringFromDate:a2];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [a1 stringFromDate:v5];
  [a3 day];
  [a3 month];
  [a3 year];
  LogPrintF();
}

@end