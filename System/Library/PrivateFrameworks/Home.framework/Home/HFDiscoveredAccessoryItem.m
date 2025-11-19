@interface HFDiscoveredAccessoryItem
- (HFDiscoveredAccessoryItem)init;
- (HFDiscoveredAccessoryItem)initWithDiscoveredAccessory:(id)a3;
- (HFDiscoveredAccessoryItem)initWithDiscoveredAccessory:(id)a3 valueSource:(id)a4;
- (HMHome)home;
- (NSSet)services;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)accessories;
- (id)copyWithValueSource:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)namingComponentForHomeKitObject;
@end

@implementation HFDiscoveredAccessoryItem

- (HFDiscoveredAccessoryItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithDiscoveredAccessory_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFDiscoveredAccessoryItem.m" lineNumber:33 description:{@"%s is unavailable; use %@ instead", "-[HFDiscoveredAccessoryItem init]", v5}];

  return 0;
}

- (HFDiscoveredAccessoryItem)initWithDiscoveredAccessory:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFDiscoveredAccessoryItem;
  v6 = [(HFDiscoveredAccessoryItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_discoveredAccessory, a3);
  }

  return v7;
}

- (HFDiscoveredAccessoryItem)initWithDiscoveredAccessory:(id)a3 valueSource:(id)a4
{
  v7 = a4;
  v8 = [(HFDiscoveredAccessoryItem *)self initWithDiscoveredAccessory:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_valueSource, a4);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(HFDiscoveredAccessoryItem *)self valueSource];
  v5 = [(HFDiscoveredAccessoryItem *)self copyWithValueSource:v4];

  return v5;
}

- (id)namingComponentForHomeKitObject
{
  v2 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
  v3 = [HFNamingComponents namingComponentFromDiscoveredAccessory:v2];

  return v3;
}

- (id)copyWithValueSource:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
  v7 = [v5 initWithDiscoveredAccessory:v6 valueSource:v4];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

- (HMHome)home
{
  v2 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
  v3 = [v2 accessory];
  v4 = [v3 home];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = +[HFHomeKitDispatcher sharedDispatcher];
    v6 = [v7 home];
  }

  return v6;
}

- (NSSet)services
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
  v4 = [v3 accessory];
  v5 = [v4 services];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
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
  v3 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
  v4 = [v3 accessory];
  v5 = [v2 na_setWithSafeObject:v4];

  return v5;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];

  if (!v4)
  {
    NSLog(&cfstr_Discoveredacce.isa);
  }

  v5 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];

  if (!v5)
  {
    v27 = MEMORY[0x277D2C900];
    v6 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v28 = [v27 futureWithError:v6];
    goto LABEL_19;
  }

  v6 = objc_alloc_init(HFMutableItemUpdateOutcome);
  [(HFMutableItemUpdateOutcome *)v6 setObject:&unk_2825250C8 forKeyedSubscript:@"state"];
  v7 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
  v8 = [v7 name];

  if (v8)
  {
    v9 = [HFServiceNameComponents alloc];
    v10 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
    v11 = [v10 name];
    v12 = [(HFServiceNameComponents *)v9 initWithRawServiceName:v11 rawRoomName:0];

    [(HFMutableItemUpdateOutcome *)v6 setObject:v12 forKeyedSubscript:@"serviceNameComponents"];
    v13 = [(HFServiceNameComponents *)v12 composedString];
    [(HFMutableItemUpdateOutcome *)v6 setObject:v13 forKeyedSubscript:@"title"];
  }

  v14 = MEMORY[0x277D755D0];
  v15 = [MEMORY[0x277D75348] systemGrayColor];
  v16 = [v14 configurationWithHierarchicalColor:v15];

  v17 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A08] scale:3];
  v18 = [v17 configurationByApplyingConfiguration:v16];
  v19 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
  v20 = [v19 sharingDevice];
  v21 = [v20 deviceActionType];

  if (v21 == 33 || v21 == 11)
  {
    v22 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
    v23 = [v22 sharingDevice];
    v24 = [v23 deviceModelCode];

    v25 = [HFImageIconDescriptor alloc];
    if (v24 == 5)
    {
      v26 = HFSymbolIconIdentifierHomePodMiniSingle;
    }

    else
    {
      v26 = HFSymbolIconIdentifierHomePodSingle;
    }

    goto LABEL_14;
  }

  v29 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
  v30 = [v29 sharingDevice];
  v31 = [v30 deviceActionType];

  if (v31 == 6)
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
    v34 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
    v35 = [v34 category];

    if (v35)
    {
      v46 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
      v45 = [v46 category];
      v44 = [v45 categoryType];
      v36 = [(HFDiscoveredAccessoryItem *)self discoveredAccessory];
      v37 = [v36 accessory];
      v38 = [v37 matterDeviceTypeID];
      v39 = [HFAccessoryType matterDeviceType:v38];
      [HFServiceIconFactory iconDescriptorForAccessoryCategoryOrServiceType:v44 matterDeviceType:v39];
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