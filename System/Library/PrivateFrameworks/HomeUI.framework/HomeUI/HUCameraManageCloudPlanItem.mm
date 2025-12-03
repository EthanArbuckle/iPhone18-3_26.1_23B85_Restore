@interface HUCameraManageCloudPlanItem
- (HUCameraManageCloudPlanItem)initWithCameraProfile:(id)profile;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUCameraManageCloudPlanItem

- (HUCameraManageCloudPlanItem)initWithCameraProfile:(id)profile
{
  profileCopy = profile;
  v9.receiver = self;
  v9.super_class = HUCameraManageCloudPlanItem;
  v6 = [(HFStaticItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cameraProfile, profile);
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D13F60];
  v4 = _HULocalizedStringWithDefaultValue(@"HUCameraManageCloudPlan", @"HUCameraManageCloudPlan", 1);
  v14[0] = v4;
  v13[1] = *MEMORY[0x277D13DA8];
  v5 = MEMORY[0x277CBEB98];
  cameraProfile = [(HUCameraManageCloudPlanItem *)self cameraProfile];
  v7 = [v5 setWithObject:cameraProfile];
  v14[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v9 = MEMORY[0x277D2C900];
  v10 = [MEMORY[0x277D14780] outcomeWithResults:v8];
  v11 = [v9 futureWithResult:v10];

  return v11;
}

@end