@interface HUCameraUsageOptionItem
+ (unint64_t)sortOrderForUsage:(unint64_t)usage;
- (HUCameraUsageOptionItem)initWithPresence:(unint64_t)presence cameraUsage:(unint64_t)usage cameraProfiles:(id)profiles;
- (NSString)privacyDescription;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUCameraUsageOptionItem

- (HUCameraUsageOptionItem)initWithPresence:(unint64_t)presence cameraUsage:(unint64_t)usage cameraProfiles:(id)profiles
{
  profilesCopy = profiles;
  v14.receiver = self;
  v14.super_class = HUCameraUsageOptionItem;
  v9 = [(HUCameraUsageOptionItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_presence = presence;
    v9->_usage = usage;
    v9->_sortOrder = [HUCameraUsageOptionItem sortOrderForUsage:usage];
    v11 = [profilesCopy copy];
    cameraProfiles = v10->_cameraProfiles;
    v10->_cameraProfiles = v11;
  }

  return v10;
}

- (NSString)privacyDescription
{
  usage = [(HUCameraUsageOptionItem *)self usage];
  if (usage > 3)
  {
    v3 = &stru_2823E0EE8;
  }

  else
  {
    v3 = _HULocalizedStringWithDefaultValue(off_277DC3988[usage], off_277DC3988[usage], 1);
  }

  return v3;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v26[8] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CD1920];
  cameraProfiles = [(HUCameraUsageOptionItem *)self cameraProfiles];
  v6 = [v4 hf_cameraAccessModeSelectedOptionForCameraProfiles:cameraProfiles presenceType:{-[HUCameraUsageOptionItem presence](self, "presence")}];

  cameraProfiles2 = [(HUCameraUsageOptionItem *)self cameraProfiles];
  anyObject = [cameraProfiles2 anyObject];
  accessory = [anyObject accessory];
  home = [accessory home];
  hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

  v25[0] = *MEMORY[0x277D13F60];
  [(HUCameraUsageOptionItem *)self usage];
  v12 = HFLocalizedStringFromHMCameraAccessMode();
  v26[0] = v12;
  v25[1] = *MEMORY[0x277D13E20];
  privacyDescription = [(HUCameraUsageOptionItem *)self privacyDescription];
  v26[1] = privacyDescription;
  v25[2] = *MEMORY[0x277D13FE8];
  v14 = [MEMORY[0x277CCABB0] numberWithInt:{-[HUCameraUsageOptionItem usage](self, "usage") == v6}];
  v26[2] = v14;
  v25[3] = *MEMORY[0x277D13DA8];
  cameraProfiles3 = [(HUCameraUsageOptionItem *)self cameraProfiles];
  v26[3] = cameraProfiles3;
  v25[4] = @"HUCameraSettingResultKey";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HUCameraUsageOptionItem usage](self, "usage")}];
  v26[4] = v16;
  v25[5] = *MEMORY[0x277D13FF0];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HUCameraUsageOptionItem sortOrder](self, "sortOrder")}];
  v26[5] = v17;
  v25[6] = *MEMORY[0x277D13EA8];
  v18 = [MEMORY[0x277CCABB0] numberWithBool:hf_currentUserIsAdministrator ^ 1u];
  v26[6] = v18;
  v25[7] = *MEMORY[0x277D140F0];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[HUCameraUsageOptionItem updateInProgress](self, "updateInProgress")}];
  v26[7] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:8];

  v21 = MEMORY[0x277D2C900];
  v22 = [MEMORY[0x277D14780] outcomeWithResults:v20];
  v23 = [v21 futureWithResult:v22];

  return v23;
}

+ (unint64_t)sortOrderForUsage:(unint64_t)usage
{
  if (usage - 1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_20D5CB350[usage - 1];
  }
}

@end