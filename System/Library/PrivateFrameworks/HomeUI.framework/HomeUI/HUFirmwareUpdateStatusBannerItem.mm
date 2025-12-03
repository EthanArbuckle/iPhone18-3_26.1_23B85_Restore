@interface HUFirmwareUpdateStatusBannerItem
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUFirmwareUpdateStatusBannerItem

- (id)_subclass_updateWithOptions:(id)options
{
  v8.receiver = self;
  v8.super_class = HUFirmwareUpdateStatusBannerItem;
  v4 = [(HUStatusBannerItem *)&v8 _subclass_updateWithOptions:options];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HUFirmwareUpdateStatusBannerItem__subclass_updateWithOptions___block_invoke;
  v7[3] = &unk_277DBB878;
  v7[4] = self;
  v5 = [v4 flatMap:v7];

  return v5;
}

id __64__HUFirmwareUpdateStatusBannerItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x277D13FB8];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [MEMORY[0x277D2C900] futureWithResult:v3];
  }

  else
  {
    v8 = [v3 mutableCopy];
    v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277D14078]];
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__20;
    v23 = __Block_byref_object_dispose__20;
    v24 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __64__HUFirmwareUpdateStatusBannerItem__subclass_updateWithOptions___block_invoke_1;
    v18[3] = &unk_277DBFB38;
    v18[4] = &v19;
    v10 = [v9 na_filter:v18];
    if ([v10 count])
    {
      v11 = [v10 count];
      v12 = @"HUBannerFirmwareUpdate_Title_Multiple";
      if (v11 == 1)
      {
        v12 = @"HUBannerFirmwareUpdate_Title";
      }

      v13 = v12;
      [v8 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13F68]];
      v14 = _HULocalizedStringWithDefaultValue(v13, v13, 1);
      [v8 setObject:v14 forKeyedSubscript:*MEMORY[0x277D13F60]];

      v15 = [*(a1 + 32) _descriptionForLocalizedStringKey:@"HUBannerFirmwareUpdate_Description" representedHomeKitObjects:v10];
      [v8 setObject:v15 forKeyedSubscript:*MEMORY[0x277D13E20]];

      v16 = [objc_alloc(MEMORY[0x277D14728]) initWithSystemImageNamed:@"square.and.arrow.down.fill"];
      [v8 setObject:v16 forKeyedSubscript:*MEMORY[0x277D13E88]];

      [v8 setObject:&unk_282491A60 forKeyedSubscript:@"bannerItemCategory"];
      if ([v20[5] hf_currentUserIsRestrictedGuest])
      {
        [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v4];
      }
    }

    else
    {
      [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v4];
    }

    v7 = [MEMORY[0x277D2C900] futureWithResult:v8];

    _Block_object_dispose(&v19, 8);
  }

  return v7;
}

uint64_t __64__HUFirmwareUpdateStatusBannerItem__subclass_updateWithOptions___block_invoke_1(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 home];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if ([v6 hf_isReadyToInstallSoftwareUpdate] && objc_msgSend(v6, "isControllable"))
  {
    v10 = [v6 hf_isHomePod];
    v11 = [v6 home];
    v12 = v11;
    if (v10)
    {
      v13 = [v11 isAutomaticSoftwareUpdateEnabled];
    }

    else
    {
      v13 = [v11 hf_isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];
    }

    v14 = v13 ^ 1u;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end