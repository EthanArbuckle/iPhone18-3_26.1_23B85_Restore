@interface HUCameraAccessLevelOptionItem
- (HUCameraAccessLevelOptionItem)initWithUser:(id)user home:(id)home accessLevel:(unint64_t)level;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUCameraAccessLevelOptionItem

- (HUCameraAccessLevelOptionItem)initWithUser:(id)user home:(id)home accessLevel:(unint64_t)level
{
  userCopy = user;
  homeCopy = home;
  v14.receiver = self;
  v14.super_class = HUCameraAccessLevelOptionItem;
  v11 = [(HUCameraAccessLevelOptionItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_user, user);
    objc_storeStrong(&v12->_home, home);
    v12->_accessLevel = level;
  }

  return v12;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v21[5] = *MEMORY[0x277D85DE8];
  home = [(HUCameraAccessLevelOptionItem *)self home];
  user = [(HUCameraAccessLevelOptionItem *)self user];
  v6 = [home homeAccessControlForUser:user];
  camerasAccessLevel = [v6 camerasAccessLevel];

  v20[0] = *MEMORY[0x277D13F60];
  [(HUCameraAccessLevelOptionItem *)self accessLevel];
  v8 = HFLocalizedStringFromHMUserCameraAccessLevel();
  v21[0] = v8;
  v20[1] = *MEMORY[0x277D13FE8];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:{-[HUCameraAccessLevelOptionItem accessLevel](self, "accessLevel") == camerasAccessLevel}];
  v21[1] = v9;
  v20[2] = *MEMORY[0x277D13DA8];
  v10 = MEMORY[0x277CBEB98];
  user2 = [(HUCameraAccessLevelOptionItem *)self user];
  v12 = [v10 setWithObject:user2];
  v21[2] = v12;
  v20[3] = @"HUCameraSettingResultKey";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HUCameraAccessLevelOptionItem accessLevel](self, "accessLevel")}];
  v21[3] = v13;
  v20[4] = *MEMORY[0x277D13FF0];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HUCameraAccessLevelOptionItem accessLevel](self, "accessLevel") + 1}];
  v21[4] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:5];

  v16 = MEMORY[0x277D2C900];
  v17 = [MEMORY[0x277D14780] outcomeWithResults:v15];
  v18 = [v16 futureWithResult:v17];

  return v18;
}

@end