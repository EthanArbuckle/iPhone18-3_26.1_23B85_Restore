@interface HFAccessoryInfoDetailsItemProvider
+ (id)_displayValueForCachedValue:(id)value characteristicType:(id)type accessoryInfoService:(id)service;
+ (id)preferredCharacteristicOrderArray;
- (BOOL)canShowWiFiPickerForItem:(id)item;
- (BOOL)canToggleAccessoryInfoItem:(id)item;
- (BOOL)supportsWiFiStrengthDisplay:(id)display;
- (HFAccessoryInfoDetailsItemProvider)init;
- (HFAccessoryInfoDetailsItemProvider)initWithHome:(id)home accessory:(id)accessory;
- (HFCharacteristicValueSource)valueSource;
- (NSMutableSet)accessoryInfoDetailItems;
- (id)invalidationReasons;
- (id)reloadItems;
- (void)toggleAccessoryInfoItem:(id)item;
@end

@implementation HFAccessoryInfoDetailsItemProvider

+ (id)preferredCharacteristicOrderArray
{
  if (qword_280E023F8 != -1)
  {
    dispatch_once(&qword_280E023F8, &__block_literal_global_82);
  }

  v3 = _MergedGlobals_3_0;

  return v3;
}

void __71__HFAccessoryInfoDetailsItemProvider_preferredCharacteristicOrderArray__block_invoke()
{
  v5[6] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCFA58];
  v5[0] = *MEMORY[0x277CCF968];
  v5[1] = v0;
  v5[2] = *MEMORY[0x277CCF970];
  v5[3] = @"HFAccessoryInfoTypeNetworkPreferredOrderKey";
  v1 = *MEMORY[0x277CCFA88];
  v5[4] = *MEMORY[0x277CCF8B8];
  v5[5] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v3 = _MergedGlobals_3_0;
  _MergedGlobals_3_0 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (HFAccessoryInfoDetailsItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_accessory_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessoryInfoDetailsItemProvider.m" lineNumber:60 description:{@"%s is unavailable; use %@ instead", "-[HFAccessoryInfoDetailsItemProvider init]", v5}];

  return 0;
}

- (HFAccessoryInfoDetailsItemProvider)initWithHome:(id)home accessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  v12.receiver = self;
  v12.super_class = HFAccessoryInfoDetailsItemProvider;
  v9 = [(HFItemProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
    objc_storeStrong(&v10->_accessory, accessory);
  }

  return v10;
}

- (BOOL)supportsWiFiStrengthDisplay:(id)display
{
  displayCopy = display;
  networkItem = [(HFAccessoryInfoDetailsItemProvider *)self networkItem];

  if (networkItem != displayCopy)
  {
    return 0;
  }

  networkItem2 = [(HFAccessoryInfoDetailsItemProvider *)self networkItem];
  supportsWiFiStrengthDisplay = [networkItem2 supportsWiFiStrengthDisplay];

  return supportsWiFiStrengthDisplay;
}

- (BOOL)canToggleAccessoryInfoItem:(id)item
{
  itemCopy = item;
  items = [(HFAccessoryInfoDetailsItemProvider *)self items];
  v6 = [items containsObject:itemCopy];

  if (v6)
  {
    networkItem = [(HFAccessoryInfoDetailsItemProvider *)self networkItem];
    v8 = networkItem == itemCopy;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)canShowWiFiPickerForItem:(id)item
{
  itemCopy = item;
  items = [(HFAccessoryInfoDetailsItemProvider *)self items];
  v6 = [items containsObject:itemCopy];

  if (!v6)
  {
    goto LABEL_6;
  }

  networkItem = [(HFAccessoryInfoDetailsItemProvider *)self networkItem];

  if (networkItem != itemCopy)
  {
    goto LABEL_6;
  }

  accessory = [(HFAccessoryInfoDetailsItemProvider *)self accessory];
  hf_isHomePod = [accessory hf_isHomePod];

  if (!hf_isHomePod)
  {
    goto LABEL_6;
  }

  home = [(HFAccessoryInfoDetailsItemProvider *)self home];
  hf_currentUserIsOwner = [home hf_currentUserIsOwner];

  if (hf_currentUserIsOwner)
  {
    home2 = [(HFAccessoryInfoDetailsItemProvider *)self home];
    accessory2 = [(HFAccessoryInfoDetailsItemProvider *)self accessory];
    mediaProfile = [accessory2 mediaProfile];
    v15 = [home2 hf_relatedHomeTheaterMediaProfileContainerFor:mediaProfile];
    v16 = v15 == 0;
  }

  else
  {
LABEL_6:
    v16 = 0;
  }

  return v16;
}

- (void)toggleAccessoryInfoItem:(id)item
{
  itemCopy = item;
  items = [(HFAccessoryInfoDetailsItemProvider *)self items];
  v5 = [items containsObject:itemCopy];

  if (v5)
  {
    networkItem = [(HFAccessoryInfoDetailsItemProvider *)self networkItem];

    if (networkItem == itemCopy)
    {
      networkItem2 = [(HFAccessoryInfoDetailsItemProvider *)self networkItem];
      [networkItem2 toggleNetworkInfoType];
    }
  }
}

- (HFCharacteristicValueSource)valueSource
{
  valueSource = self->_valueSource;
  if (valueSource)
  {
    hf_characteristicValueManager = valueSource;
  }

  else
  {
    home = [(HFAccessoryInfoDetailsItemProvider *)self home];
    hf_characteristicValueManager = [home hf_characteristicValueManager];
  }

  return hf_characteristicValueManager;
}

- (id)reloadItems
{
  accessoryInfoDetailItems = [(HFAccessoryInfoDetailsItemProvider *)self accessoryInfoDetailItems];
  accessoryInfoDetailItems2 = [(HFAccessoryInfoDetailsItemProvider *)self accessoryInfoDetailItems];
  v5 = [HFItemProviderReloadResults alloc];
  v6 = [MEMORY[0x277CBEB98] set];
  v7 = [(HFItemProviderReloadResults *)v5 initWithAddedItems:accessoryInfoDetailItems removedItems:v6 existingItems:accessoryInfoDetailItems2];

  v8 = [MEMORY[0x277D2C900] futureWithResult:v7];

  return v8;
}

- (id)invalidationReasons
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HFAccessoryInfoDetailsItemProvider;
  invalidationReasons = [(HFItemProvider *)&v7 invalidationReasons];
  v8[0] = @"service";
  v8[1] = @"accessory";
  v8[2] = @"room";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  v4 = [invalidationReasons setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __74__HFAccessoryInfoDetailsItemProvider_accessoryInfoServiceDetailComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestResults];
  v6 = [v5 objectForKeyedSubscript:@"accessoryInfoDetailPreferredOrder"];

  v7 = [v4 latestResults];

  v8 = [v7 objectForKeyedSubscript:@"accessoryInfoDetailPreferredOrder"];

  v15 = MEMORY[0x277D85DD0];
  v9 = v6;
  v16 = v9;
  v10 = v8;
  v11 = v10;
  v17 = v10;
  if (v9)
  {
    v12 = -1;
  }

  else
  {
    v12 = v10 != 0;
  }

  v13 = v10;
  if (v9 && v10)
  {
    v12 = [v9 compare:{v10, v15, 3221225472, __74__HFAccessoryInfoDetailsItemProvider_accessoryInfoServiceDetailComparator__block_invoke_2, &unk_277DF72E0, v9}];
    v13 = v17;
  }

  return v12;
}

- (NSMutableSet)accessoryInfoDetailItems
{
  accessoryInfoDetailItems = self->_accessoryInfoDetailItems;
  if (accessoryInfoDetailItems)
  {
    v3 = accessoryInfoDetailItems;
    goto LABEL_9;
  }

  v5 = [HFAccessoryInfoItem alloc];
  accessory = [(HFAccessoryInfoDetailsItemProvider *)self accessory];
  home = [(HFAccessoryInfoDetailsItemProvider *)self home];
  v8 = [(HFAccessoryInfoItem *)v5 initWithAccessory:accessory infoType:1 home:home];
  firmwareItem = self->_firmwareItem;
  self->_firmwareItem = v8;

  v10 = [HFAccessoryInfoItem alloc];
  accessory2 = [(HFAccessoryInfoDetailsItemProvider *)self accessory];
  home2 = [(HFAccessoryInfoDetailsItemProvider *)self home];
  v13 = [(HFAccessoryInfoItem *)v10 initWithAccessory:accessory2 infoType:2 home:home2];
  softwareItem = self->_softwareItem;
  self->_softwareItem = v13;

  v15 = [HFAccessoryNetworkInfoItem alloc];
  accessory3 = [(HFAccessoryInfoDetailsItemProvider *)self accessory];
  home3 = [(HFAccessoryInfoDetailsItemProvider *)self home];
  v18 = [(HFAccessoryNetworkInfoItem *)v15 initWithAccessory:accessory3 home:home3];
  networkItem = self->_networkItem;
  self->_networkItem = v18;

  accessory4 = [(HFAccessoryInfoDetailsItemProvider *)self accessory];
  services = [accessory4 services];

  v22 = [services na_firstObjectPassingTest:&__block_literal_global_27_2];
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__HFAccessoryInfoDetailsItemProvider_accessoryInfoDetailItems__block_invoke_2;
  aBlock[3] = &unk_277DF9C78;
  objc_copyWeak(&v66, location);
  v23 = v22;
  v65 = v23;
  v24 = _Block_copy(aBlock);
  v25 = objc_opt_class();
  accessory5 = [(HFAccessoryInfoDetailsItemProvider *)self accessory];
  manufacturer = [accessory5 manufacturer];
  v28 = *MEMORY[0x277CCF968];
  v61 = [v25 _displayValueForCachedValue:manufacturer characteristicType:*MEMORY[0x277CCF968] accessoryInfoService:v23];
  v57 = services;

  v29 = objc_opt_class();
  accessory6 = [(HFAccessoryInfoDetailsItemProvider *)self accessory];
  model = [accessory6 model];
  v32 = *MEMORY[0x277CCF970];
  v60 = [v29 _displayValueForCachedValue:model characteristicType:*MEMORY[0x277CCF970] accessoryInfoService:v23];

  v33 = [HFStaticItem alloc];
  v34 = v24[2](v24, v28, v61);
  v59 = [(HFStaticItem *)v33 initWithResultsBlock:v34];

  v35 = [HFStaticItem alloc];
  v36 = v24[2](v24, v32, v60);
  v58 = [(HFStaticItem *)v35 initWithResultsBlock:v36];

  accessory7 = [(HFAccessoryInfoDetailsItemProvider *)self accessory];
  if (([accessory7 supportsCHIP] & 1) == 0)
  {

    goto LABEL_7;
  }

  accessory8 = [(HFAccessoryInfoDetailsItemProvider *)self accessory];
  serialNumber = [accessory8 serialNumber];

  if (serialNumber)
  {
LABEL_7:
    v41 = objc_opt_class();
    accessory9 = [(HFAccessoryInfoDetailsItemProvider *)self accessory];
    serialNumber2 = [accessory9 serialNumber];
    v44 = *MEMORY[0x277CCFA58];
    v45 = [v41 _displayValueForCachedValue:serialNumber2 characteristicType:*MEMORY[0x277CCFA58] accessoryInfoService:v23];

    v46 = [HFStaticItem alloc];
    v47 = v24[2](v24, v44, v45);
    v40 = [(HFStaticItem *)v46 initWithResultsBlock:v47];

    goto LABEL_8;
  }

  v40 = 0;
LABEL_8:
  v48 = [HFStaticItem alloc];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __62__HFAccessoryInfoDetailsItemProvider_accessoryInfoDetailItems__block_invoke_4;
  v62[3] = &unk_277DF9CA0;
  objc_copyWeak(&v63, location);
  v49 = [(HFStaticItem *)v48 initWithResultsBlock:v62];
  v50 = MEMORY[0x277CBEB58];
  firmwareItem = [(HFAccessoryInfoDetailsItemProvider *)self firmwareItem];
  softwareItem = [(HFAccessoryInfoDetailsItemProvider *)self softwareItem];
  networkItem = [(HFAccessoryInfoDetailsItemProvider *)self networkItem];
  v54 = [v50 setWithObjects:{v59, v58, firmwareItem, softwareItem, networkItem, v49, 0}];
  v55 = self->_accessoryInfoDetailItems;
  self->_accessoryInfoDetailItems = v54;

  [(NSMutableSet *)self->_accessoryInfoDetailItems na_safeAddObject:v40];
  v3 = self->_accessoryInfoDetailItems;

  objc_destroyWeak(&v63);
  objc_destroyWeak(&v66);
  objc_destroyWeak(location);

LABEL_9:

  return v3;
}

uint64_t __62__HFAccessoryInfoDetailsItemProvider_accessoryInfoDetailItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0DD0]];

  return v3;
}

id __62__HFAccessoryInfoDetailsItemProvider_accessoryInfoDetailItems__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__HFAccessoryInfoDetailsItemProvider_accessoryInfoDetailItems__block_invoke_3;
  v11[3] = &unk_277DF9C50;
  objc_copyWeak(&v15, (a1 + 40));
  v12 = *(a1 + 32);
  v13 = v5;
  v14 = v6;
  v7 = v6;
  v8 = v5;
  v9 = _Block_copy(v11);

  objc_destroyWeak(&v15);

  return v9;
}

id __62__HFAccessoryInfoDetailsItemProvider_accessoryInfoDetailItems__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CD0DD0]];
  [v3 setObject:v4 forKeyedSubscript:@"dependentServiceTypes"];

  v5 = MEMORY[0x277CCACA8];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCEDC0]];
  v7 = [v5 stringWithFormat:@"AccessoryDetails.%@", v6];
  [v3 setObject:v7 forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = [v8 hf_characteristicOfType:*(a1 + 40)];
    v10 = [HFAccessoryInfoItem accessibilityStringForCharacteristic:*(a1 + 40)];
    [v3 setObject:v10 forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];

    v11 = [MEMORY[0x277CBEB58] setWithObject:*(a1 + 32)];
    [v11 na_safeAddObject:v9];
    [v3 setObject:v11 forKeyedSubscript:@"dependentHomeKitObjects"];
  }

  v12 = [HFAccessoryInfoItem localizedStringForCharacteristic:*(a1 + 40)];
  [v3 setObject:v12 forKeyedSubscript:@"title"];

  [v3 setObject:*(a1 + 48) forKeyedSubscript:@"description"];
  if (*(a1 + 48))
  {
    v13 = [WeakRetained home];
    v14 = [v13 hf_currentUserIsRestrictedGuest];
  }

  else
  {
    v14 = 1;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithBool:v14];
  [v3 setObject:v15 forKeyedSubscript:@"hidden"];

  v16 = +[HFAccessoryInfoDetailsItemProvider preferredCharacteristicOrderArray];
  v17 = [v16 indexOfObject:*(a1 + 40)];

  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = +[HFAccessoryInfoDetailsItemProvider preferredCharacteristicOrderArray];
    v17 = [v18 count];
  }

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
  [v3 setObject:v19 forKeyedSubscript:@"accessoryInfoDetailPreferredOrder"];

  v20 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v20;
}

id __62__HFAccessoryInfoDetailsItemProvider_accessoryInfoDetailItems__block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained accessory];

  if (v4)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = [WeakRetained accessory];
    v7 = [v5 setWithObject:v6];
    [v2 setObject:v7 forKeyedSubscript:@"dependentHomeKitObjects"];
  }

  else
  {
    v8 = HFLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "Unable to populate the uncertified static item properly since the accessory is missing.", v19, 2u);
    }
  }

  v9 = [WeakRetained accessory];
  v10 = [v9 certificationStatus];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:v10 != 1];
  [v2 setObject:v11 forKeyedSubscript:@"hidden"];

  if (v10 == 1)
  {
    v12 = _HFLocalizedStringWithDefaultValue(@"HFAccessoryInfoDetailsCertification", @"HFAccessoryInfoDetailsCertification", 1);
    [v2 setObject:v12 forKeyedSubscript:@"title"];

    [v2 setObject:@"AccessoryDetails.HomeKitCertified" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
    v13 = +[HFFormatterManager sharedInstance];
    v14 = [v13 BOOLeanFormatter];
    v15 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v16 = [v14 stringForObjectValue:v15];
    [v2 setObject:v16 forKeyedSubscript:@"description"];
  }

  v17 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v17;
}

+ (id)_displayValueForCachedValue:(id)value characteristicType:(id)type accessoryInfoService:(id)service
{
  v18 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  typeCopy = type;
  serviceCopy = service;
  if (!valueCopy && +[HFUtilities isInternalInstall](HFUtilities, "isInternalInstall") && (([serviceCopy hf_characteristicOfType:typeCopy], v10 = objc_claimAutoreleasedReturnValue(), v10, !serviceCopy) || v10))
  {
    v14 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x277CD1970] localizedDescriptionForCharacteristicType:typeCopy];
      v16 = 138412290;
      v17 = v15;
      _os_log_error_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_ERROR, "Missing cached value for accessory information characteristic %@!", &v16, 0xCu);
    }

    v11 = @"(null - file a radar!)";
  }

  else
  {
    v11 = valueCopy;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end