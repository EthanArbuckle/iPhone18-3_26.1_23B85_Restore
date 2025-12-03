@interface HFDemoModeAccessoryItem
+ (id)accessoryItemForAccessory:(id)accessory;
+ (id)itemWithAccessoryRepresentableObject:(id)object valueSource:(id)source;
- (BOOL)isMediaSystemDemoType;
- (HFCharacteristicValueSource)valueSource;
- (HFDemoModeAccessoryItem)initWithAccessory:(id)accessory;
- (HMAccessory)accessory;
- (HMHome)home;
- (id)_iconDescriptor;
- (id)_subclass_updateWithOptions:(id)options;
- (id)accessories;
- (id)copyWithValueSource:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)hf_serviceNameComponents;
- (id)namingComponentForHomeKitObject;
- (id)serviceLikeBuilderInHome:(id)home;
@end

@implementation HFDemoModeAccessoryItem

+ (id)itemWithAccessoryRepresentableObject:(id)object valueSource:(id)source
{
  objectCopy = object;
  v6 = objc_opt_class();
  hf_homeKitObject = [objectCopy hf_homeKitObject];

  v8 = hf_homeKitObject;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v8;
    if (v9)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v12 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v6, objc_opt_class()}];
  }

  v10 = 0;
LABEL_8:

  v13 = [[self alloc] initWithAccessory:v10];

  return v13;
}

+ (id)accessoryItemForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v4 = [objc_alloc(objc_opt_class()) initWithAccessory:accessoryCopy];

  return v4;
}

- (HFCharacteristicValueSource)valueSource
{
  v2 = +[HFDemoModeAccessoryManager sharedManager];
  valueSource = [v2 valueSource];

  return valueSource;
}

- (id)copyWithValueSource:(id)source
{
  v4 = objc_alloc(objc_opt_class());
  accessory = [(HFDemoModeAccessoryItem *)self accessory];
  v6 = [v4 initWithAccessory:accessory];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  valueSource = [(HFDemoModeAccessoryItem *)self valueSource];
  v5 = [(HFDemoModeAccessoryItem *)self copyWithValueSource:valueSource];

  return v5;
}

- (id)serviceLikeBuilderInHome:(id)home
{
  homeCopy = home;
  v5 = [HFDemoModeAccessoryBuilder alloc];
  accessory = [(HFDemoModeAccessoryItem *)self accessory];
  v7 = [(HFDemoModeAccessoryBuilder *)v5 initWithExistingObject:accessory inHome:homeCopy];

  return v7;
}

- (HFDemoModeAccessoryItem)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v9.receiver = self;
  v9.super_class = HFDemoModeAccessoryItem;
  v5 = [(HFDemoModeAccessoryItem *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_accessory, accessoryCopy);
    v7 = [(HFItem *)v6 updateWithOptions:MEMORY[0x277CBEC10]];
  }

  return v6;
}

- (id)hf_serviceNameComponents
{
  accessory = [(HFDemoModeAccessoryItem *)self accessory];
  name = [accessory name];

  accessory2 = [(HFDemoModeAccessoryItem *)self accessory];
  room = [accessory2 room];
  name2 = [room name];

  v8 = [[HFServiceNameComponents alloc] initWithRawServiceName:name rawRoomName:name2];

  return v8;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = [HFDemoModeMediaControlItem alloc];
  v5 = [(HFDemoModeMediaControlItem *)v4 initWithDisplayResults:MEMORY[0x277CBEC10]];
  accessory = [(HFDemoModeAccessoryItem *)self accessory];
  [(HFDemoModeMediaControlItem *)v5 setAccessory:accessory];

  v7 = [MEMORY[0x277CBEB98] setWithObject:v5];
  if ([(HFDemoModeAccessoryItem *)self isMediaSystemDemoType])
  {
    v8 = [MEMORY[0x277CBEB98] set];

    v7 = v8;
  }

  v9 = [HFMutableItemUpdateOutcome alloc];
  v10 = [(HFItemUpdateOutcome *)v9 initWithResults:MEMORY[0x277CBEC10]];
  hf_serviceNameComponents = [(HFDemoModeAccessoryItem *)self hf_serviceNameComponents];
  [(HFMutableItemUpdateOutcome *)v10 setObject:v7 forKeyedSubscript:@"childItems"];
  [(HFMutableItemUpdateOutcome *)v10 setObject:hf_serviceNameComponents forKeyedSubscript:@"serviceNameComponents"];
  _iconDescriptor = [(HFDemoModeAccessoryItem *)self _iconDescriptor];
  [(HFMutableItemUpdateOutcome *)v10 setObject:_iconDescriptor forKeyedSubscript:@"icon"];
  if ([_iconDescriptor isSystemImage])
  {
    imageIdentifier = [_iconDescriptor imageIdentifier];
    [(HFMutableItemUpdateOutcome *)v10 setObject:imageIdentifier forKeyedSubscript:@"iconNames"];
  }

  rawServiceName = [hf_serviceNameComponents rawServiceName];
  [(HFMutableItemUpdateOutcome *)v10 setObject:rawServiceName forKeyedSubscript:@"controlDescription"];

  accessory2 = [(HFDemoModeAccessoryItem *)self accessory];
  room = [accessory2 room];
  uniqueIdentifier = [room uniqueIdentifier];
  [(HFMutableItemUpdateOutcome *)v10 setObject:uniqueIdentifier forKeyedSubscript:@"roomIdentifier"];

  accessory3 = [(HFDemoModeAccessoryItem *)self accessory];
  applicationData = [accessory3 applicationData];
  v20 = [applicationData objectForKeyedSubscript:@"primaryDisplayState"];

  objc_opt_class();
  v21 = v20;
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  integerValue = [v23 integerValue];
  isMediaSystemDemoType = [(HFDemoModeAccessoryItem *)self isMediaSystemDemoType];
  if (integerValue == 2)
  {
    [(HFMutableItemUpdateOutcome *)v10 setObject:&unk_282524840 forKeyedSubscript:@"state"];
    [(HFMutableItemUpdateOutcome *)v10 setObject:&unk_282524840 forKeyedSubscript:@"value"];
    v26 = @"HFCharacteristicValuePowerStateOn";
    v27 = @"HFMediaAccessoryStateDescriptionPlaying";
  }

  else
  {
    [(HFMutableItemUpdateOutcome *)v10 setObject:&unk_282524858 forKeyedSubscript:@"state"];
    [(HFMutableItemUpdateOutcome *)v10 setObject:&unk_282524858 forKeyedSubscript:@"value"];
    v26 = @"HFCharacteristicValuePowerStateOff";
    v27 = @"HFMediaAccessoryStateDescriptionPaused";
  }

  if (isMediaSystemDemoType)
  {
    v28 = v27;
  }

  else
  {
    v28 = v26;
  }

  v29 = _HFLocalizedStringWithDefaultValue(v28, v28, 1);
  [(HFMutableItemUpdateOutcome *)v10 setObject:v29 forKeyedSubscript:@"description"];

  v30 = [MEMORY[0x277D2C900] futureWithResult:v10];

  return v30;
}

- (HMHome)home
{
  accessory = [(HFDemoModeAccessoryItem *)self accessory];
  home = [accessory home];

  return home;
}

- (id)accessories
{
  v2 = MEMORY[0x277CBEB98];
  accessory = [(HFDemoModeAccessoryItem *)self accessory];
  v4 = [v2 setWithObject:accessory];

  return v4;
}

- (BOOL)isMediaSystemDemoType
{
  if (qword_280E02428 != -1)
  {
    dispatch_once(&qword_280E02428, &__block_literal_global_163);
  }

  accessory = [(HFDemoModeAccessoryItem *)self accessory];
  applicationData = [accessory applicationData];
  v5 = [applicationData objectForKeyedSubscript:@"type"];

  LOBYTE(accessory) = [_MergedGlobals_3_2 containsObject:v5];
  return accessory;
}

void __48__HFDemoModeAccessoryItem_isMediaSystemDemoType__block_invoke()
{
  v3[5] = *MEMORY[0x277D85DE8];
  v3[0] = @"HomePod";
  v3[1] = @"HomePodMini";
  v3[2] = @"MediaSystem-HomePod";
  v3[3] = @"MediaSystem-HomePodMini";
  v3[4] = @"AppleTV";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:5];
  v1 = _MergedGlobals_3_2;
  _MergedGlobals_3_2 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)namingComponentForHomeKitObject
{
  accessory = [(HFDemoModeAccessoryItem *)self accessory];
  v3 = [HFNamingComponents namingComponentFromHomeKitObject:accessory];

  return v3;
}

- (id)_iconDescriptor
{
  v3 = MEMORY[0x277D755D0];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  v5 = [v3 configurationWithHierarchicalColor:systemGrayColor];

  v6 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A08] scale:3];
  v7 = [v6 configurationByApplyingConfiguration:v5];
  accessory = [(HFDemoModeAccessoryItem *)self accessory];
  applicationData = [accessory applicationData];
  v10 = [applicationData objectForKeyedSubscript:@"type"];

  if ([v10 isEqualToString:@"AppleTV"])
  {
    v11 = [HFImageIconDescriptor alloc];
    v12 = @"appletv.fill";
LABEL_11:
    v13 = [(HFImageIconDescriptor *)v11 initWithSystemImageNamed:v12 configuration:v7];
    goto LABEL_12;
  }

  if ([v10 isEqualToString:@"HomePod"])
  {
    v11 = [HFImageIconDescriptor alloc];
    v12 = @"homepod.fill";
    goto LABEL_11;
  }

  if ([v10 isEqualToString:@"HomePodMini"])
  {
    v11 = [HFImageIconDescriptor alloc];
    v12 = @"homepodmini.fill";
    goto LABEL_11;
  }

  if ([v10 isEqualToString:@"MediaSystem-HomePod"])
  {
    v11 = [HFImageIconDescriptor alloc];
    v12 = @"homepod.2.fill";
    goto LABEL_11;
  }

  if ([v10 isEqualToString:@"MediaSystem-HomePodMini"])
  {
    v11 = [HFImageIconDescriptor alloc];
    v12 = @"homepodmini.2.fill";
    goto LABEL_11;
  }

  accessory2 = [(HFDemoModeAccessoryItem *)self accessory];
  applicationData2 = [accessory2 applicationData];
  dictionary = [applicationData2 dictionary];
  v13 = [HFDemoModeAccessoryManager imageIconDescriptorFromDictionary:dictionary];

LABEL_12:

  return v13;
}

- (HMAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

@end