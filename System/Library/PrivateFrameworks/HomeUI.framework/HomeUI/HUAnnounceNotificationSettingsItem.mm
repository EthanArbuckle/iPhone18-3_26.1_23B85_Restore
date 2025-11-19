@interface HUAnnounceNotificationSettingsItem
+ (unint64_t)sortOrderForMode:(unint64_t)a3;
- (HUAnnounceNotificationSettingsItem)initWithNotificationMode:(unint64_t)a3 user:(id)a4;
- (id)_notificationModeToString:(unint64_t)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUAnnounceNotificationSettingsItem

- (HUAnnounceNotificationSettingsItem)initWithNotificationMode:(unint64_t)a3 user:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HUAnnounceNotificationSettingsItem;
  v8 = [(HUAnnounceNotificationSettingsItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_notificationMode = a3;
    objc_storeStrong(&v8->_user, a4);
    v9->_sortOrder = [HUAnnounceNotificationSettingsItem sortOrderForMode:a3];
  }

  return v9;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v19[5] = *MEMORY[0x277D85DE8];
  v4 = [(HUAnnounceNotificationSettingsItem *)self user];
  v5 = [v4 announceUserSettings];

  v6 = [v5 deviceNotificationMode];
  v18[0] = *MEMORY[0x277D13F60];
  v7 = [(HUAnnounceNotificationSettingsItem *)self _notificationModeToString:[(HUAnnounceNotificationSettingsItem *)self notificationMode]];
  v19[0] = v7;
  v18[1] = *MEMORY[0x277D13FE8];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:{-[HUAnnounceNotificationSettingsItem notificationMode](self, "notificationMode") == v6}];
  v19[1] = v8;
  v18[2] = *MEMORY[0x277D13DA8];
  v9 = MEMORY[0x277CBEB98];
  v10 = [(HUAnnounceNotificationSettingsItem *)self user];
  v11 = [v9 setWithObject:v10];
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

+ (unint64_t)sortOrderForMode:(unint64_t)a3
{
  if (a3 == 3)
  {
    return 2;
  }

  else
  {
    return a3 == 2;
  }
}

- (id)_notificationModeToString:(unint64_t)a3
{
  if (a3 > 3)
  {
    v4 = &stru_2823E0EE8;
  }

  else
  {
    v4 = _HULocalizedStringWithDefaultValue(off_277DB9410[a3], off_277DB9410[a3], 1);
  }

  return v4;
}

@end