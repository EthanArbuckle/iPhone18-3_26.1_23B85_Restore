@interface HFDiscoveredAccessoryItem
- (HFDiscoveredAccessoryItem)init;
- (HFDiscoveredAccessoryItem)initWithDiscoveredAccessory:(id)accessory;
- (HFDiscoveredAccessoryItem)initWithDiscoveredAccessory:(id)accessory valueSource:(id)source;
- (HMHome)home;
- (NSSet)services;
- (id)_subclass_updateWithOptions:(id)options;
- (id)accessories;
- (id)copyWithValueSource:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)namingComponentForHomeKitObject;
@end

@implementation HFDiscoveredAccessoryItem

- (HFDiscoveredAccessoryItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithDiscoveredAccessory_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFDiscoveredAccessoryItem.m" lineNumber:33 description:{@"%s is unavailable; use %@ instead", "-[HFDiscoveredAccessoryItem init]", v5}];

  return 0;
}

- (HFDiscoveredAccessoryItem)initWithDiscoveredAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v9.receiver = self;
  v9.super_class = HFDiscoveredAccessoryItem;
  v6 = [(HFDiscoveredAccessoryItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_discoveredAccessory, accessory);
  }

  return v7;
}

- (HFDiscoveredAccessoryItem)initWithDiscoveredAccessory:(id)accessory valueSource:(id)source
{
  sourceCopy = source;
  v8 = [(HFDiscoveredAccessoryItem *)self initWithDiscoveredAccessory:accessory];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_valueSource, source);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  valueSource = [(HFDiscoveredAccessoryItem *)self valueSource];
  v5 = [(HFDiscoveredAccessoryItem *)self copyWithValueSource:valueSource];

  return v5;
}

- (id)namingComponentForHomeKitObject
{
  discoveredAccessory = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
  v3 = [HFNamingComponents namingComponentFromDiscoveredAccessory:discoveredAccessory];

  return v3;
}

- (id)copyWithValueSource:(id)source
{
  sourceCopy = source;
  v5 = objc_alloc(objc_opt_class());
  discoveredAccessory = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
  v7 = [v5 initWithDiscoveredAccessory:discoveredAccessory valueSource:sourceCopy];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

- (HMHome)home
{
  discoveredAccessory = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
  accessory = [discoveredAccessory accessory];
  home = [accessory home];
  v5 = home;
  if (home)
  {
    home2 = home;
  }

  else
  {
    v7 = +[HFHomeKitDispatcher sharedDispatcher];
    home2 = [v7 home];
  }

  return home2;
}

- (NSSet)services
{
  v2 = MEMORY[0x277CBEB98];
  discoveredAccessory = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
  accessory = [discoveredAccessory accessory];
  services = [accessory services];
  v6 = services;
  if (services)
  {
    v7 = services;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = [v2 setWithArray:v7];

  return v8;
}

- (id)accessories
{
  v2 = MEMORY[0x277CBEB98];
  discoveredAccessory = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
  accessory = [discoveredAccessory accessory];
  v5 = [v2 na_setWithSafeObject:accessory];

  return v5;
}

- (id)_subclass_updateWithOptions:(id)options
{
  discoveredAccessory = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];

  if (!discoveredAccessory)
  {
    NSLog(&cfstr_Discoveredacce.isa);
  }

  discoveredAccessory2 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];

  if (!discoveredAccessory2)
  {
    v27 = MEMORY[0x277D2C900];
    v6 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v28 = [v27 futureWithError:v6];
    goto LABEL_19;
  }

  v6 = objc_alloc_init(HFMutableItemUpdateOutcome);
  [(HFMutableItemUpdateOutcome *)v6 setObject:&unk_2825250C8 forKeyedSubscript:@"state"];
  discoveredAccessory3 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
  name = [discoveredAccessory3 name];

  if (name)
  {
    v9 = [HFServiceNameComponents alloc];
    discoveredAccessory4 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
    name2 = [discoveredAccessory4 name];
    v12 = [(HFServiceNameComponents *)v9 initWithRawServiceName:name2 rawRoomName:0];

    [(HFMutableItemUpdateOutcome *)v6 setObject:v12 forKeyedSubscript:@"serviceNameComponents"];
    composedString = [(HFServiceNameComponents *)v12 composedString];
    [(HFMutableItemUpdateOutcome *)v6 setObject:composedString forKeyedSubscript:@"title"];
  }

  v14 = MEMORY[0x277D755D0];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  v16 = [v14 configurationWithHierarchicalColor:systemGrayColor];

  v17 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A08] scale:3];
  v18 = [v17 configurationByApplyingConfiguration:v16];
  discoveredAccessory5 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
  sharingDevice = [discoveredAccessory5 sharingDevice];
  deviceActionType = [sharingDevice deviceActionType];

  if (deviceActionType == 33 || deviceActionType == 11)
  {
    discoveredAccessory6 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
    sharingDevice2 = [discoveredAccessory6 sharingDevice];
    deviceModelCode = [sharingDevice2 deviceModelCode];

    v25 = [HFImageIconDescriptor alloc];
    if (deviceModelCode == 5)
    {
      v26 = HFSymbolIconIdentifierHomePodMiniSingle;
    }

    else
    {
      v26 = HFSymbolIconIdentifierHomePodSingle;
    }

    goto LABEL_14;
  }

  discoveredAccessory7 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
  sharingDevice3 = [discoveredAccessory7 sharingDevice];
  deviceActionType2 = [sharingDevice3 deviceActionType];

  if (deviceActionType2 == 6)
  {
    v25 = [HFImageIconDescriptor alloc];
    v26 = HFSymbolIconIdentifierAppleTV;
LABEL_14:
    v32 = [(HFImageIconDescriptor *)v25 initWithSystemImageNamed:*v26 configuration:v18];
    [(HFMutableItemUpdateOutcome *)v6 setObject:v32 forKeyedSubscript:@"icon"];
  }

  v33 = [(HFItemUpdateOutcome *)v6 objectForKeyedSubscript:@"icon"];

  if (!v33)
  {
    discoveredAccessory8 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
    category = [discoveredAccessory8 category];

    if (category)
    {
      discoveredAccessory9 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
      category2 = [discoveredAccessory9 category];
      categoryType = [category2 categoryType];
      discoveredAccessory10 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
      accessory = [discoveredAccessory10 accessory];
      matterDeviceTypeID = [accessory matterDeviceTypeID];
      v39 = [HFAccessoryType matterDeviceType:matterDeviceTypeID];
      [HFServiceIconFactory iconDescriptorForAccessoryCategoryOrServiceType:categoryType matterDeviceType:v39];
      v40 = v18;
      v42 = v41 = v16;
      [(HFMutableItemUpdateOutcome *)v6 setObject:v42 forKeyedSubscript:@"icon"];

      v16 = v41;
      v18 = v40;
    }
  }

  v28 = [MEMORY[0x277D2C900] futureWithResult:v6];

LABEL_19:

  return v28;
}

@end