@interface HUChimeOnAccessoriesListItem
- (HUChimeOnAccessoriesListItem)init;
- (HUChimeOnAccessoriesListItem)initWithAccessory:(id)a3;
- (HUChimeOnAccessoriesListItem)initWithHome:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUChimeOnAccessoriesListItem

- (HUChimeOnAccessoriesListItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUChimeOnAccessoriesListItem.m" lineNumber:20 description:{@"%s is unavailable; use %@ instead", "-[HUChimeOnAccessoriesListItem init]", v5}];

  return 0;
}

- (HUChimeOnAccessoriesListItem)initWithHome:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUChimeOnAccessoriesListItem;
  v6 = [(HUChimeOnAccessoriesListItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
    v7->_accessoryIsCameraWithDoorbell = 1;
  }

  return v7;
}

- (HUChimeOnAccessoriesListItem)initWithAccessory:(id)a3
{
  v4 = a3;
  v5 = [v4 home];
  v6 = [(HUChimeOnAccessoriesListItem *)self initWithHome:v5];

  if (v6)
  {
    if ([v4 hf_isCamera])
    {
      v7 = [v4 hf_serviceOfType:*MEMORY[0x277CD0E38]];
      v6->_accessoryIsCameraWithDoorbell = v7 != 0;
    }

    else
    {
      v6->_accessoryIsCameraWithDoorbell = 0;
    }
  }

  return v6;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = objc_opt_new();
  v5 = [(HUChimeOnAccessoriesListItem *)self home];
  v6 = [v5 hf_allHomePodsOrStereoPairs];
  v7 = [v6 count];

  v8 = [(HUChimeOnAccessoriesListItem *)self home];
  if (![v8 hf_currentUserIsAdministrator] || !-[HUChimeOnAccessoriesListItem accessoryIsCameraWithDoorbell](self, "accessoryIsCameraWithDoorbell"))
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

  v10 = [(HUChimeOnAccessoriesListItem *)self home];
  v11 = [v10 hf_allHomePodsOrStereoPairsThatWillChime];
  v12 = [v11 count];

  v13 = [(HUChimeOnAccessoriesListItem *)self home];
  v14 = [v13 hf_allSiriEndPointProfileContainersThatWillChime];
  v15 = [v14 count] + v12;

  v16 = [(HUChimeOnAccessoriesListItem *)self home];
  v17 = [v16 hf_allSiriEndPointProfileContainers];
  v18 = [v17 count];

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
  v27 = [(HUChimeOnAccessoriesListItem *)self home];
  v28 = [v27 hf_homePods];
  v29 = [v26 setWithArray:v28];
  [v4 setObject:v29 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v30 = MEMORY[0x277D2C900];
  v31 = [MEMORY[0x277D14780] outcomeWithResults:v4];
  v22 = [v30 futureWithResult:v31];

LABEL_9:

  return v22;
}

@end