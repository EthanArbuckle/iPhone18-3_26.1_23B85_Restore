@interface HFFirmwareUpdateStatusItem
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFFirmwareUpdateStatusItem

- (id)_subclass_updateWithOptions:(id)options
{
  v50[1] = *MEMORY[0x277D85DE8];
  v4 = [options objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
  bOOLValue = [v4 BOOLValue];

  if (!bOOLValue)
  {
    room = [(HFStatusItem *)self room];
    if (room)
    {
      [(HFStatusItem *)self room];
    }

    else
    {
      [(HFStatusItem *)self home];
    }
    v11 = ;
    accessories = [v11 accessories];

    v13 = [[HFSoftwareUpdateCounter alloc] initWithAccessories:accessories];
    if ([(HFSoftwareUpdateCounter *)v13 softwareUpdatesInProgress])
    {
      if ([(HFSoftwareUpdateCounter *)v13 softwareUpdatesInstalling])
      {
        softwareUpdatesInstalling = [(HFSoftwareUpdateCounter *)v13 softwareUpdatesInstalling];
        HFLocalizedStringWithFormat(@"HFStatusTitleFirmwareUpdateInstalling", @"%lu", v14, v15, v16, v17, v18, v19, softwareUpdatesInstalling);
        v32 = LABEL_13:;
LABEL_15:
        v33 = objc_alloc_init(HFMutableItemUpdateOutcome);
        v34 = MEMORY[0x277CBEB98];
        v35 = objc_opt_class();
        v36 = objc_opt_class();
        v37 = objc_opt_class();
        v38 = [v34 setWithObjects:{v35, v36, v37, objc_opt_class(), 0}];
        [(HFMutableItemUpdateOutcome *)v33 setObject:v38 forKeyedSubscript:@"dependentHomeKitClasses"];

        [(HFMutableItemUpdateOutcome *)v33 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasSoftwareUpdateV2Dependency"];
        if (v32)
        {
          v39 = [MEMORY[0x277CBEB98] setWithArray:accessories];
          v40 = [v39 na_filter:&__block_literal_global_73];

          v41 = [MEMORY[0x277D755D0] configurationWithPointSize:24.0];
          v42 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"square.and.arrow.down.fill" configuration:v41];
          [(HFMutableItemUpdateOutcome *)v33 setObject:v42 forKeyedSubscript:@"icon"];

          [(HFMutableItemUpdateOutcome *)v33 setObject:&unk_282523D30 forKeyedSubscript:@"statusItemCategory"];
          [(HFMutableItemUpdateOutcome *)v33 setObject:v40 forKeyedSubscript:@"representedHomeKitObjects"];
          [(HFMutableItemUpdateOutcome *)v33 setObject:v32 forKeyedSubscript:@"title"];
          v43 = _HFLocalizedStringWithDefaultValue(@"HFStatusSortKeyFirmwareUpdate", @"HFStatusSortKeyFirmwareUpdate", 1);
          [(HFMutableItemUpdateOutcome *)v33 setObject:v43 forKeyedSubscript:@"sortKey"];

          [(HFMutableItemUpdateOutcome *)v33 setObject:&unk_282523D48 forKeyedSubscript:@"priority"];
          [(HFMutableItemUpdateOutcome *)v33 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"shouldHideForNonAdminUsers"];
        }

        else
        {
          [(HFMutableItemUpdateOutcome *)v33 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
        }

        v9 = [MEMORY[0x277D2C900] futureWithResult:v33];

        goto LABEL_19;
      }

      if ([(HFSoftwareUpdateCounter *)v13 softwareUpdatesDownloading])
      {
        softwareUpdatesDownloading = [(HFSoftwareUpdateCounter *)v13 softwareUpdatesDownloading];
        HFLocalizedStringWithFormat(@"HFStatusTitleFirmwareUpdateDownloading", @"%lu", v26, v27, v28, v29, v30, v31, softwareUpdatesDownloading);
        goto LABEL_13;
      }
    }

    else if ([(HFSoftwareUpdateCounter *)v13 updatesReadyToInstall])
    {
      updatesReadyToInstall = [(HFSoftwareUpdateCounter *)v13 updatesReadyToInstall];
      HFLocalizedStringWithFormat(@"HFStatusTitleFirmwareUpdateAvailable", @"%lu", v20, v21, v22, v23, v24, v25, updatesReadyToInstall);
      goto LABEL_13;
    }

    v32 = 0;
    goto LABEL_15;
  }

  v6 = MEMORY[0x277D2C900];
  v49 = @"hidden";
  v50[0] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
  v8 = [HFItemUpdateOutcome outcomeWithResults:v7];
  v9 = [v6 futureWithResult:v8];

LABEL_19:
  v44 = *MEMORY[0x277D85DE8];

  return v9;
}

@end