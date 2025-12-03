@interface HUChimeOnAccessoriesListItem
- (HUChimeOnAccessoriesListItem)init;
- (HUChimeOnAccessoriesListItem)initWithAccessory:(id)accessory;
- (HUChimeOnAccessoriesListItem)initWithHome:(id)home;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUChimeOnAccessoriesListItem

- (HUChimeOnAccessoriesListItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUChimeOnAccessoriesListItem.m" lineNumber:20 description:{@"%s is unavailable; use %@ instead", "-[HUChimeOnAccessoriesListItem init]", v5}];

  return 0;
}

- (HUChimeOnAccessoriesListItem)initWithHome:(id)home
{
  homeCopy = home;
  v9.receiver = self;
  v9.super_class = HUChimeOnAccessoriesListItem;
  v6 = [(HUChimeOnAccessoriesListItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
    v7->_accessoryIsCameraWithDoorbell = 1;
  }

  return v7;
}

- (HUChimeOnAccessoriesListItem)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  home = [accessoryCopy home];
  v6 = [(HUChimeOnAccessoriesListItem *)self initWithHome:home];

  if (v6)
  {
    if ([accessoryCopy hf_isCamera])
    {
      v7 = [accessoryCopy hf_serviceOfType:*MEMORY[0x277CD0E38]];
      v6->_accessoryIsCameraWithDoorbell = v7 != 0;
    }

    else
    {
      v6->_accessoryIsCameraWithDoorbell = 0;
    }
  }

  return v6;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = objc_opt_new();
  home = [(HUChimeOnAccessoriesListItem *)self home];
  hf_allHomePodsOrStereoPairs = [home hf_allHomePodsOrStereoPairs];
  v7 = [hf_allHomePodsOrStereoPairs count];

  home2 = [(HUChimeOnAccessoriesListItem *)self home];
  if (![home2 hf_currentUserIsAdministrator] || !-[HUChimeOnAccessoriesListItem accessoryIsCameraWithDoorbell](self, "accessoryIsCameraWithDoorbell"))
  {

    goto LABEL_8;
  }

  if (!v7)
  {
LABEL_8:
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
    v20 = MEMORY[0x277D2C900];
    v21 = [MEMORY[0x277D14780] outcomeWithResults:v4];
    v22 = [v20 futureWithResult:v21];
    goto LABEL_9;
  }

  v9 = _HULocalizedStringWithDefaultValue(@"HUDoorbellChimeSetting", @"HUDoorbellChimeSetting", 1);
  [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x277D13F60]];

  home3 = [(HUChimeOnAccessoriesListItem *)self home];
  hf_allHomePodsOrStereoPairsThatWillChime = [home3 hf_allHomePodsOrStereoPairsThatWillChime];
  v12 = [hf_allHomePodsOrStereoPairsThatWillChime count];

  home4 = [(HUChimeOnAccessoriesListItem *)self home];
  hf_allSiriEndPointProfileContainersThatWillChime = [home4 hf_allSiriEndPointProfileContainersThatWillChime];
  v15 = [hf_allSiriEndPointProfileContainersThatWillChime count] + v12;

  home5 = [(HUChimeOnAccessoriesListItem *)self home];
  hf_allSiriEndPointProfileContainers = [home5 hf_allSiriEndPointProfileContainers];
  v18 = [hf_allSiriEndPointProfileContainers count];

  if (v15)
  {
    if (v15 != v18 + v7)
    {
      v24 = MEMORY[0x277CCABB8];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
      v21 = [v24 localizedStringFromNumber:v25 numberStyle:0];

      goto LABEL_15;
    }

    v19 = @"HUChimeOnAccessories_ValueAll";
  }

  else
  {
    v19 = @"HUChimeOnAccessories_ValueOff";
  }

  v21 = _HULocalizedStringWithDefaultValue(v19, v19, 1);
LABEL_15:
  [v4 setObject:v21 forKeyedSubscript:*MEMORY[0x277D13E20]];
  v26 = MEMORY[0x277CBEB58];
  home6 = [(HUChimeOnAccessoriesListItem *)self home];
  hf_homePods = [home6 hf_homePods];
  v29 = [v26 setWithArray:hf_homePods];
  [v4 setObject:v29 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v30 = MEMORY[0x277D2C900];
  v31 = [MEMORY[0x277D14780] outcomeWithResults:v4];
  v22 = [v30 futureWithResult:v31];

LABEL_9:

  return v22;
}

@end