@interface HUAnnounceNotificationSettingsItem
+ (unint64_t)sortOrderForMode:(unint64_t)mode;
- (HUAnnounceNotificationSettingsItem)initWithNotificationMode:(unint64_t)mode user:(id)user;
- (id)_notificationModeToString:(unint64_t)string;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUAnnounceNotificationSettingsItem

- (HUAnnounceNotificationSettingsItem)initWithNotificationMode:(unint64_t)mode user:(id)user
{
  userCopy = user;
  v11.receiver = self;
  v11.super_class = HUAnnounceNotificationSettingsItem;
  v8 = [(HUAnnounceNotificationSettingsItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_notificationMode = mode;
    objc_storeStrong(&v8->_user, user);
    v9->_sortOrder = [HUAnnounceNotificationSettingsItem sortOrderForMode:mode];
  }

  return v9;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v19[5] = *MEMORY[0x277D85DE8];
  user = [(HUAnnounceNotificationSettingsItem *)self user];
  announceUserSettings = [user announceUserSettings];

  deviceNotificationMode = [announceUserSettings deviceNotificationMode];
  v18[0] = *MEMORY[0x277D13F60];
  v7 = [(HUAnnounceNotificationSettingsItem *)self _notificationModeToString:[(HUAnnounceNotificationSettingsItem *)self notificationMode]];
  v19[0] = v7;
  v18[1] = *MEMORY[0x277D13FE8];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:{-[HUAnnounceNotificationSettingsItem notificationMode](self, "notificationMode") == deviceNotificationMode}];
  v19[1] = v8;
  v18[2] = *MEMORY[0x277D13DA8];
  v9 = MEMORY[0x277CBEB98];
  user2 = [(HUAnnounceNotificationSettingsItem *)self user];
  v11 = [v9 setWithObject:user2];
  v19[2] = v11;
  v18[3] = *MEMORY[0x277D13FF0];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HUAnnounceNotificationSettingsItem sortOrder](self, "sortOrder")}];
  v18[4] = *MEMORY[0x277D13F10];
  v19[3] = v12;
  v19[4] = MEMORY[0x277CBEC28];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];

  v14 = MEMORY[0x277D2C900];
  v15 = [MEMORY[0x277D14780] outcomeWithResults:v13];
  v16 = [v14 futureWithResult:v15];

  return v16;
}

+ (unint64_t)sortOrderForMode:(unint64_t)mode
{
  if (mode == 3)
  {
    return 2;
  }

  else
  {
    return mode == 2;
  }
}

- (id)_notificationModeToString:(unint64_t)string
{
  if (string > 3)
  {
    v4 = &stru_2823E0EE8;
  }

  else
  {
    v4 = _HULocalizedStringWithDefaultValue(off_277DB9410[string], off_277DB9410[string], 1);
  }

  return v4;
}

@end