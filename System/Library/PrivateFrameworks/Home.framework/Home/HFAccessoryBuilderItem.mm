@interface HFAccessoryBuilderItem
- (HFAccessoryBuilderItem)init;
- (HFAccessoryBuilderItem)initWithAccessoryBuilder:(id)builder valueSource:(id)source;
- (HFCharacteristicValueSource)valueSource;
- (HFHomeKitObject)homeKitObject;
- (NSSet)services;
- (id)_subclass_updateWithOptions:(id)options;
- (id)accessories;
- (id)copyWithValueSource:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)namingComponentForHomeKitObject;
@end

@implementation HFAccessoryBuilderItem

- (HFAccessoryBuilderItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithAccessoryBuilder_valueSource_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessoryBuilderItem.m" lineNumber:31 description:{@"%s is unavailable; use %@ instead", "-[HFAccessoryBuilderItem init]", v5}];

  return 0;
}

- (HFAccessoryBuilderItem)initWithAccessoryBuilder:(id)builder valueSource:(id)source
{
  builderCopy = builder;
  sourceCopy = source;
  v26.receiver = self;
  v26.super_class = HFAccessoryBuilderItem;
  v8 = [(HFAccessoryBuilderItem *)&v26 init];
  v9 = v8;
  if (v8)
  {
    [(HFAccessoryBuilderItem *)v8 setAccessoryBuilder:builderCopy];
    accessory = [builderCopy accessory];
    hf_isCamera = [accessory hf_isCamera];

    if (hf_isCamera)
    {
      v12 = [HFCameraItem alloc];
      accessory2 = [builderCopy accessory];
      cameraProfiles = [accessory2 cameraProfiles];
      firstObject = [cameraProfiles firstObject];
      v16 = [(HFAccessoryProfileItem *)v12 initWithProfile:firstObject valueSource:sourceCopy];
      [(HFAccessoryBuilderItem *)v9 setAccessoryItem:v16];

LABEL_10:
      goto LABEL_11;
    }

    accessory3 = [builderCopy accessory];
    hf_isRemoteControl = [accessory3 hf_isRemoteControl];

    if (hf_isRemoteControl)
    {
      v19 = HFTargetControlAccessoryItem;
    }

    else
    {
      accessory4 = [builderCopy accessory];
      mediaProfile = [accessory4 mediaProfile];

      if (mediaProfile)
      {
        v22 = [HFMediaAccessoryItem alloc];
        accessory2 = [builderCopy accessory];
        cameraProfiles = [accessory2 mediaProfile];
        v23 = [(HFMediaAccessoryItem *)v22 initWithValueSource:sourceCopy mediaProfileContainer:cameraProfiles];
        [(HFAccessoryBuilderItem *)v9 setAccessoryItem:v23];

        goto LABEL_10;
      }

      v19 = HFAccessoryItem;
    }

    v24 = [v19 alloc];
    accessory2 = [builderCopy accessory];
    cameraProfiles = [v24 initWithAccessory:accessory2 valueSource:sourceCopy];
    [(HFAccessoryBuilderItem *)v9 setAccessoryItem:cameraProfiles];
    goto LABEL_10;
  }

LABEL_11:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  valueSource = [(HFAccessoryBuilderItem *)self valueSource];
  v5 = [(HFAccessoryBuilderItem *)self copyWithValueSource:valueSource];

  return v5;
}

- (id)copyWithValueSource:(id)source
{
  sourceCopy = source;
  v5 = objc_alloc(objc_opt_class());
  accessoryBuilder = [(HFAccessoryBuilderItem *)self accessoryBuilder];
  v7 = [v5 initWithAccessoryBuilder:accessoryBuilder valueSource:sourceCopy];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  accessoryItem = [(HFAccessoryBuilderItem *)self accessoryItem];
  v6 = [accessoryItem updateWithOptions:optionsCopy];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__HFAccessoryBuilderItem__subclass_updateWithOptions___block_invoke;
  v9[3] = &unk_277DF43A8;
  v9[4] = self;
  v7 = [v6 flatMap:v9];

  return v7;
}

id __54__HFAccessoryBuilderItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 results];
  v4 = [(HFItemUpdateOutcome *)HFMutableItemUpdateOutcome outcomeWithResults:v3];

  v5 = [*(a1 + 32) accessoryBuilder];
  v6 = [v5 room];

  v7 = [HFServiceNameComponents alloc];
  v8 = [*(a1 + 32) accessoryBuilder];
  v9 = [v8 name];
  v10 = [v6 name];
  v11 = [(HFServiceNameComponents *)v7 initWithRawServiceName:v9 rawRoomName:v10];

  if (v11)
  {
    [v4 setObject:v11 forKeyedSubscript:@"serviceNameComponents"];
    v12 = [(HFServiceNameComponents *)v11 composedString];
    if (v12)
    {
      [v4 setObject:v12 forKeyedSubscript:@"title"];
    }
  }

  v13 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v13;
}

- (HFHomeKitObject)homeKitObject
{
  accessoryItem = [(HFAccessoryBuilderItem *)self accessoryItem];
  homeKitObject = [accessoryItem homeKitObject];

  return homeKitObject;
}

- (NSSet)services
{
  accessoryItem = [(HFAccessoryBuilderItem *)self accessoryItem];
  services = [accessoryItem services];

  return services;
}

- (id)accessories
{
  v2 = MEMORY[0x277CBEB98];
  accessoryBuilder = [(HFAccessoryBuilderItem *)self accessoryBuilder];
  accessory = [accessoryBuilder accessory];
  v5 = [v2 setWithObject:accessory];

  return v5;
}

- (HFCharacteristicValueSource)valueSource
{
  accessoryItem = [(HFAccessoryBuilderItem *)self accessoryItem];
  valueSource = [accessoryItem valueSource];

  return valueSource;
}

- (id)namingComponentForHomeKitObject
{
  accessoryItem = [(HFAccessoryBuilderItem *)self accessoryItem];
  homeKitObject = [accessoryItem homeKitObject];
  v4 = [HFNamingComponents namingComponentFromHomeKitObject:homeKitObject];

  return v4;
}

@end