@interface HUCameraManageCloudPlanItem
- (HUCameraManageCloudPlanItem)initWithCameraProfile:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUCameraManageCloudPlanItem

- (HUCameraManageCloudPlanItem)initWithCameraProfile:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUCameraManageCloudPlanItem;
  v6 = [(HFStaticItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cameraProfile, a3);
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D13F60];
  v4 = _HULocalizedStringWithDefaultValue(@"HUCameraManageCloudPlan", @"HUCameraManageCloudPlan", 1);
  v14[0] = v4;
  v13[1] = *MEMORY[0x277D13DA8];
  v5 = MEMORY[0x277CBEB98];
  v6 = [(HUCameraManageCloudPlanItem *)self cameraProfile];
  v7 = [v5 setWithObject:v6];
  v14[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v9 = MEMORY[0x277D2C900];
  v10 = [MEMORY[0x277D14780] outcomeWithResults:v8];
  v11 = [v9 futureWithResult:v10];

  return v11;
}

@end