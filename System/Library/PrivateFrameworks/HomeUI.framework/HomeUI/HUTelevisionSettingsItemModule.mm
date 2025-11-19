@interface HUTelevisionSettingsItemModule
+ (BOOL)_supportsAccessory:(id)a3;
+ (id)_powerModeSelectionCharacteristicForAccessory:(id)a3;
- (HUTelevisionSettingsItemModule)initWithItemUpdater:(id)a3 home:(id)a4 accessory:(id)a5;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)showPowerModeSelection;
- (void)_createItemProviders;
@end

@implementation HUTelevisionSettingsItemModule

+ (id)_powerModeSelectionCharacteristicForAccessory:(id)a3
{
  v3 = [a3 hf_serviceOfType:*MEMORY[0x277CD0F20]];
  v4 = [v3 hf_characteristicOfType:*MEMORY[0x277CCF9E8]];

  return v4;
}

+ (BOOL)_supportsAccessory:(id)a3
{
  v3 = [a1 _powerModeSelectionCharacteristicForAccessory:a3];
  v4 = v3 != 0;

  return v4;
}

- (HUTelevisionSettingsItemModule)initWithItemUpdater:(id)a3 home:(id)a4 accessory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([objc_opt_class() _supportsAccessory:v10])
  {
    v15.receiver = self;
    v15.super_class = HUTelevisionSettingsItemModule;
    v11 = [(HFItemModule *)&v15 initWithItemUpdater:v8];
    p_isa = &v11->super.super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_home, a4);
      objc_storeStrong(p_isa + 7, a5);
      [p_isa _createItemProviders];
    }

    self = p_isa;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_createItemProviders
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D14B38]);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __54__HUTelevisionSettingsItemModule__createItemProviders__block_invoke;
  v16 = &unk_277DB7448;
  objc_copyWeak(&v17, &location);
  v4 = [v3 initWithResultsBlock:&v13];
  showPowerModeSelectionItem = self->_showPowerModeSelectionItem;
  self->_showPowerModeSelectionItem = v4;

  v6 = objc_alloc(MEMORY[0x277D14B40]);
  v7 = MEMORY[0x277CBEB98];
  v8 = [(HUTelevisionSettingsItemModule *)self showPowerModeSelectionItem:v13];
  v9 = [v7 setWithObject:v8];
  v10 = [v6 initWithItems:v9];

  v11 = [MEMORY[0x277CBEB98] setWithObject:v10];
  itemProviders = self->_itemProviders;
  self->_itemProviders = v11;

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

id __54__HUTelevisionSettingsItemModule__createItemProviders__block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277D2C900];
  v10[0] = *MEMORY[0x277D13F60];
  v3 = _HULocalizedStringWithDefaultValue(@"HUTelevisionSettingPowerModeSelectionButtonTitle", @"HUTelevisionSettingPowerModeSelectionButtonTitle", 1);
  v11[0] = v3;
  v10[1] = *MEMORY[0x277D13EA8];
  v4 = MEMORY[0x277CCABB0];
  v5 = [WeakRetained accessory];
  v6 = [v4 numberWithInt:{objc_msgSend(v5, "hf_canSyncExternalSettings") ^ 1}];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = [v2 futureWithResult:v7];

  return v8;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"TVSettings"];
  v5 = _HULocalizedStringWithDefaultValue(@"HUTelevisionSettingPowerModeSelectionSectionFooterTitle", @"HUTelevisionSettingPowerModeSelectionSectionFooterTitle", 1);
  [v4 setFooterTitle:v5];

  v6 = [(HUTelevisionSettingsItemModule *)self showPowerModeSelectionItem];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v4 setItems:v7];

  v10 = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];

  return v8;
}

- (id)showPowerModeSelection
{
  v3 = objc_opt_class();
  v4 = [(HUTelevisionSettingsItemModule *)self accessory];
  v5 = [v3 _powerModeSelectionCharacteristicForAccessory:v4];

  if (!v5)
  {
    v6 = [(HUTelevisionSettingsItemModule *)self accessory];
    v7 = [v6 hf_prettyDescription];
    NSLog(&cfstr_MissingPowerMo.isa, v7);
  }

  v8 = [(HUTelevisionSettingsItemModule *)self home];
  v9 = [v8 hf_characteristicValueManager];
  v10 = [v9 writeValue:&unk_282492558 forCharacteristic:v5];

  return v10;
}

@end