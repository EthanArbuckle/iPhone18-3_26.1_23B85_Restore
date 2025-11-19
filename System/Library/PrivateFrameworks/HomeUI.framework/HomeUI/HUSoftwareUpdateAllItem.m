@interface HUSoftwareUpdateAllItem
- (HUSoftwareUpdateAllItem)init;
- (HUSoftwareUpdateAllItem)initWithHome:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)description;
@end

@implementation HUSoftwareUpdateAllItem

- (HUSoftwareUpdateAllItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateAllItem.m" lineNumber:19 description:{@"%s is unavailable; use %@ instead", "-[HUSoftwareUpdateAllItem init]", v5}];

  return 0;
}

- (HUSoftwareUpdateAllItem)initWithHome:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUSoftwareUpdateAllItem;
  v6 = [(HUSoftwareUpdateAllItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = objc_alloc(MEMORY[0x277D14B28]);
  v5 = [(HUSoftwareUpdateAllItem *)self home];
  v6 = [v5 accessories];
  v7 = [v4 initWithAccessories:v6];

  v8 = objc_alloc_init(MEMORY[0x277D14858]);
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  [v8 setObject:v12 forKeyedSubscript:*MEMORY[0x277D13DA0]];

  v13 = MEMORY[0x277CBEC38];
  [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FA8]];
  [v8 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13FA0]];
  if ([v7 softwareUpdatesInProgress])
  {
    if ([v7 softwareUpdatesInstalling])
    {
      v22 = [v7 softwareUpdatesInstalling];
      v14 = HFLocalizedStringWithFormat();
      [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:{*MEMORY[0x277D140F0], v22}];
    }

    else
    {
      if ([v7 softwareUpdatesDownloading])
      {
        v23 = [v7 softwareUpdatesDownloading];
        v14 = HFLocalizedStringWithFormat();
        v15 = MEMORY[0x277D14B28];
        v16 = [v7 accessoriesDownloadingSoftwareUpdates];
        v17 = [v15 progressForAccessoriesDownloadingSoftwareUpdate:v16];
        [v8 setObject:v17 forKeyedSubscript:*MEMORY[0x277D14108]];
      }

      else if ([v7 softwareUpdatesRequested])
      {
        v24 = [v7 softwareUpdatesRequested];
        v14 = HFLocalizedStringWithFormat();
        [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:{*MEMORY[0x277D13DF8], v24}];
      }

      else
      {
        v14 = 0;
      }

      [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:{*MEMORY[0x277D140F0], v21}];
    }
  }

  else if ([v7 softwareUpdatesReadyToInstall])
  {
    v21 = [v7 softwareUpdatesReadyToInstall];
    v14 = HFLocalizedStringWithFormat();
  }

  else
  {
    [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
    v14 = 0;
  }

  [v8 setObject:v14 forKeyedSubscript:{*MEMORY[0x277D13F60], v21}];
  v18 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateControlTitle_UpdateAll", @"HUSoftwareUpdateControlTitle_UpdateAll", 1);
  [v8 setObject:v18 forKeyedSubscript:*MEMORY[0x277D13DE8]];

  [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13F18]];
  v19 = [MEMORY[0x277D2C900] futureWithResult:v8];

  return v19;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HUSoftwareUpdateAllItem *)self latestResults];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  v6 = [v3 appendBool:objc_msgSend(v5 withName:"BOOLValue") ifEqualTo:{@"hidden", 1}];

  v7 = [(HUSoftwareUpdateAllItem *)self latestResults];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v3 appendString:v8 withName:@"title" skipIfEmpty:1];

  v9 = [v3 build];

  return v9;
}

@end