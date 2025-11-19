@interface HUSoftwareUpdateFetchItem
+ (id)_dateFormatter;
- (HUSoftwareUpdateFetchItem)init;
- (HUSoftwareUpdateFetchItem)initWithHome:(id)a3 softwareUpdateFetchFuture:(id)a4;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)description;
@end

@implementation HUSoftwareUpdateFetchItem

+ (id)_dateFormatter
{
  if (qword_27C837FF0 != -1)
  {
    dispatch_once(&qword_27C837FF0, &__block_literal_global_176);
  }

  v3 = _MergedGlobals_3_9;

  return v3;
}

void __43__HUSoftwareUpdateFetchItem__dateFormatter__block_invoke()
{
  v2 = [MEMORY[0x277D146A0] sharedInstance];
  v0 = [v2 timeFormatter];
  v1 = _MergedGlobals_3_9;
  _MergedGlobals_3_9 = v0;
}

- (HUSoftwareUpdateFetchItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_softwareUpdateFetchFuture_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateFetchItem.m" lineNumber:39 description:{@"%s is unavailable; use %@ instead", "-[HUSoftwareUpdateFetchItem init]", v5}];

  return 0;
}

- (HUSoftwareUpdateFetchItem)initWithHome:(id)a3 softwareUpdateFetchFuture:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HUSoftwareUpdateFetchItem;
  v9 = [(HUSoftwareUpdateFetchItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a3);
    objc_storeStrong(&v10->_softwareUpdateFetchFuture, a4);
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x277D14858]);
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277D13DA0]];

  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FA8]];
  v9 = objc_alloc(MEMORY[0x277D14B28]);
  v10 = [(HUSoftwareUpdateFetchItem *)self home];
  v11 = [v10 accessories];
  v12 = [v9 initWithAccessories:v11];

  if ([v12 softwareUpdatesRequested])
  {
    v13 = [MEMORY[0x277D755D0] configurationWithPointSize:22.0];
    v14 = [objc_alloc(MEMORY[0x277D14728]) initWithSystemImageNamed:@"clock" configuration:v13];
    [v4 setObject:v14 forKeyedSubscript:*MEMORY[0x277D13E88]];

    v15 = [v12 accessoriesWithRequestedSoftwareUpdates];
    v16 = [v15 count];
    v17 = [v12 accessoriesDownloadingSoftwareUpdates];
    if ([v17 count] + v16 == 1)
    {
      v18 = @"HUSoftwareUpdateFetchMessageRequested_One";
    }

    else
    {
      v18 = @"HUSoftwareUpdateFetchMessageRequested_Multiple";
    }

    v19 = _HULocalizedStringWithDefaultValue(v18, v18, 1);
    [v4 setObject:v19 forKeyedSubscript:*MEMORY[0x277D13F60]];
  }

  else
  {
    if ([v12 updatesReadyToInstall] || objc_msgSend(v12, "softwareUpdatesInProgress") || (-[HUSoftwareUpdateFetchItem home](self, "home"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "hf_canUpdateToHH2"), v20, v21))
    {
      v22 = *MEMORY[0x277D13FB8];
      v23 = MEMORY[0x277CBEC38];
    }

    else
    {
      v26 = [(HUSoftwareUpdateFetchItem *)self softwareUpdateFetchFuture];
      v27 = [v26 isFinished];

      if (v27)
      {
        v28 = [MEMORY[0x277D755D0] configurationWithPointSize:22.0];
        v29 = [objc_alloc(MEMORY[0x277D14728]) initWithSystemImageNamed:@"checkmark.circle" configuration:v28];
        [v4 setObject:v29 forKeyedSubscript:*MEMORY[0x277D13E88]];

        v30 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateFetchMessageUpToDate", @"HUSoftwareUpdateFetchMessageUpToDate", 1);
        v31 = [MEMORY[0x277D146E8] sharedDispatcher];
        v32 = [v31 homeManager];
        if ([v32 hasOptedToHH2])
        {
          v33 = [(HUSoftwareUpdateFetchItem *)self home];
          v34 = [v33 hf_displayName];
          v41 = HULocalizedStringWithFormat(@"HUSoftwareUpdateFetchMessageUpToDateWithHH2", @"%@", v35, v36, v37, v38, v39, v40, v34);

          v30 = v33;
        }

        else
        {
          v41 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateFetchMessageUpToDate", @"HUSoftwareUpdateFetchMessageUpToDate", 1);
        }

        [v4 setObject:v41 forKeyedSubscript:*MEMORY[0x277D13F60]];
        v43 = [objc_opt_class() _dateFormatter];
        v44 = [MEMORY[0x277CBEAA8] date];
        v45 = [v43 stringFromDate:v44];
        v52 = HULocalizedStringWithFormat(@"HUSoftwareUpdateFetchLastChecked", @"%@", v46, v47, v48, v49, v50, v51, v45);
        [v4 setObject:v52 forKeyedSubscript:*MEMORY[0x277D13E20]];

        goto LABEL_11;
      }

      v42 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateFetchMessageCheckingForUpdate", @"HUSoftwareUpdateFetchMessageCheckingForUpdate", 1);
      [v4 setObject:v42 forKeyedSubscript:*MEMORY[0x277D13F60]];

      [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D140F0]];
      v22 = @"instructionsStyle";
      v23 = &unk_282491B20;
    }

    [v4 setObject:v23 forKeyedSubscript:v22];
  }

LABEL_11:
  v24 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v24;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HUSoftwareUpdateFetchItem *)self latestResults];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  v6 = [v3 appendBool:objc_msgSend(v5 withName:"BOOLValue") ifEqualTo:{@"hidden", 1}];

  v7 = [(HUSoftwareUpdateFetchItem *)self latestResults];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v9 = [v3 appendObject:v8 withName:@"title" skipIfNil:1];

  v10 = [v3 build];

  return v10;
}

@end