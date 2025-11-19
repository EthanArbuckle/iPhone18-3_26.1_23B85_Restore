@interface HFDemoModeAccessoryItem
+ (id)accessoryItemForAccessory:(id)a3;
+ (id)itemWithAccessoryRepresentableObject:(id)a3 valueSource:(id)a4;
- (BOOL)isMediaSystemDemoType;
- (HFCharacteristicValueSource)valueSource;
- (HFDemoModeAccessoryItem)initWithAccessory:(id)a3;
- (HMAccessory)accessory;
- (HMHome)home;
- (id)_iconDescriptor;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)accessories;
- (id)copyWithValueSource:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)hf_serviceNameComponents;
- (id)namingComponentForHomeKitObject;
- (id)serviceLikeBuilderInHome:(id)a3;
@end

@implementation HFDemoModeAccessoryItem

+ (id)itemWithAccessoryRepresentableObject:(id)a3 valueSource:(id)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v5 hf_homeKitObject];

  v8 = v7;
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

    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v11 handleFailureInFunction:v12 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v6, objc_opt_class()}];
  }

  v10 = 0;
LABEL_8:

  v13 = [[a1 alloc] initWithAccessory:v10];

  return v13;
}

+ (id)accessoryItemForAccessory:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithAccessory:v3];

  return v4;
}

- (HFCharacteristicValueSource)valueSource
{
  v2 = +[HFDemoModeAccessoryManager sharedManager];
  v3 = [v2 valueSource];

  return v3;
}

- (id)copyWithValueSource:(id)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFDemoModeAccessoryItem *)self accessory];
  v6 = [v4 initWithAccessory:v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(HFDemoModeAccessoryItem *)self valueSource];
  v5 = [(HFDemoModeAccessoryItem *)self copyWithValueSource:v4];

  return v5;
}

- (id)serviceLikeBuilderInHome:(id)a3
{
  v4 = a3;
  v5 = [HFDemoModeAccessoryBuilder alloc];
  v6 = [(HFDemoModeAccessoryItem *)self accessory];
  v7 = [(HFDemoModeAccessoryBuilder *)v5 initWithExistingObject:v6 inHome:v4];

  return v7;
}

- (HFDemoModeAccessoryItem)initWithAccessory:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HFDemoModeAccessoryItem;
  v5 = [(HFDemoModeAccessoryItem *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_accessory, v4);
    v7 = [(HFItem *)v6 updateWithOptions:MEMORY[0x277CBEC10]];
  }

  return v6;
}

- (id)hf_serviceNameComponents
{
  v3 = [(HFDemoModeAccessoryItem *)self accessory];
  v4 = [v3 name];

  v5 = [(HFDemoModeAccessoryItem *)self accessory];
  v6 = [v5 room];
  v7 = [v6 name];

  v8 = [[HFServiceNameComponents alloc] initWithRawServiceName:v4 rawRoomName:v7];

  return v8;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [HFDemoModeMediaControlItem alloc];
  v5 = [(HFDemoModeMediaControlItem *)v4 initWithDisplayResults:MEMORY[0x277CBEC10]];
  v6 = [(HFDemoModeAccessoryItem *)self accessory];
  [(HFDemoModeMediaControlItem *)v5 setAccessory:v6];

  v7 = [MEMORY[0x277CBEB98] setWithObject:v5];
  if ([(HFDemoModeAccessoryItem *)self isMediaSystemDemoType])
  {
    v8 = [MEMORY[0x277CBEB98] set];

    v7 = v8;
  }

  v9 = [HFMutableItemUpdateOutcome alloc];
  v10 = [(HFItemUpdateOutcome *)v9 initWithResults:MEMORY[0x277CBEC10]];
  v11 = [(HFDemoModeAccessoryItem *)self hf_serviceNameComponents];
  [(HFMutableItemUpdateOutcome *)v10 setObject:v7 forKeyedSubscript:@"childItems"];
  [(HFMutableItemUpdateOutcome *)v10 setObject:v11 forKeyedSubscript:@"serviceNameComponents"];
  v12 = [(HFDemoModeAccessoryItem *)self _iconDescriptor];
  [(HFMutableItemUpdateOutcome *)v10 setObject:v12 forKeyedSubscript:@"icon"];
  if ([v12 isSystemImage])
  {
    v13 = [v12 imageIdentifier];
    [(HFMutableItemUpdateOutcome *)v10 setObject:v13 forKeyedSubscript:@"iconNames"];
  }

  v14 = [v11 rawServiceName];
  [(HFMutableItemUpdateOutcome *)v10 setObject:v14 forKeyedSubscript:@"controlDescription"];

  v15 = [(HFDemoModeAccessoryItem *)self accessory];
  v16 = [v15 room];
  v17 = [v16 uniqueIdentifier];
  [(HFMutableItemUpdateOutcome *)v10 setObject:v17 forKeyedSubscript:@"roomIdentifier"];

  v18 = [(HFDemoModeAccessoryItem *)self accessory];
  v19 = [v18 applicationData];
  v20 = [v19 objectForKeyedSubscript:@"primaryDisplayState"];

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

  v24 = [v23 integerValue];
  v25 = [(HFDemoModeAccessoryItem *)self isMediaSystemDemoType];
  if (v24 == 2)
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

  if (v25)
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
  v2 = [(HFDemoModeAccessoryItem *)self accessory];
  v3 = [v2 home];

  return v3;
}

- (id)accessories
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HFDemoModeAccessoryItem *)self accessory];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (BOOL)isMediaSystemDemoType
{
  if (qword_280E02428 != -1)
  {
    dispatch_once(&qword_280E02428, &__block_literal_global_163);
  }

  v3 = [(HFDemoModeAccessoryItem *)self accessory];
  v4 = [v3 applicationData];
  v5 = [v4 objectForKeyedSubscript:@"type"];

  LOBYTE(v3) = [_MergedGlobals_3_2 containsObject:v5];
  return v3;
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
  v2 = [(HFDemoModeAccessoryItem *)self accessory];
  v3 = [HFNamingComponents namingComponentFromHomeKitObject:v2];

  return v3;
}

- (id)_iconDescriptor
{
  v3 = MEMORY[0x277D755D0];
  v4 = [MEMORY[0x277D75348] systemGrayColor];
  v5 = [v3 configurationWithHierarchicalColor:v4];

  v6 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A08] scale:3];
  v7 = [v6 configurationByApplyingConfiguration:v5];
  v8 = [(HFDemoModeAccessoryItem *)self accessory];
  v9 = [v8 applicationData];
  v10 = [v9 objectForKeyedSubscript:@"type"];

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

  v15 = [(HFDemoModeAccessoryItem *)self accessory];
  v16 = [v15 applicationData];
  v17 = [v16 dictionary];
  v13 = [HFDemoModeAccessoryManager imageIconDescriptorFromDictionary:v17];

LABEL_12:

  return v13;
}

- (HMAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

@end