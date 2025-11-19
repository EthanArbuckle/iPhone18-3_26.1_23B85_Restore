@interface HFAccessoryBuilderItem
- (HFAccessoryBuilderItem)init;
- (HFAccessoryBuilderItem)initWithAccessoryBuilder:(id)a3 valueSource:(id)a4;
- (HFCharacteristicValueSource)valueSource;
- (HFHomeKitObject)homeKitObject;
- (NSSet)services;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)accessories;
- (id)copyWithValueSource:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)namingComponentForHomeKitObject;
@end

@implementation HFAccessoryBuilderItem

- (HFAccessoryBuilderItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithAccessoryBuilder_valueSource_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFAccessoryBuilderItem.m" lineNumber:31 description:{@"%s is unavailable; use %@ instead", "-[HFAccessoryBuilderItem init]", v5}];

  return 0;
}

- (HFAccessoryBuilderItem)initWithAccessoryBuilder:(id)a3 valueSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = HFAccessoryBuilderItem;
  v8 = [(HFAccessoryBuilderItem *)&v26 init];
  v9 = v8;
  if (v8)
  {
    [(HFAccessoryBuilderItem *)v8 setAccessoryBuilder:v6];
    v10 = [v6 accessory];
    v11 = [v10 hf_isCamera];

    if (v11)
    {
      v12 = [HFCameraItem alloc];
      v13 = [v6 accessory];
      v14 = [v13 cameraProfiles];
      v15 = [v14 firstObject];
      v16 = [(HFAccessoryProfileItem *)v12 initWithProfile:v15 valueSource:v7];
      [(HFAccessoryBuilderItem *)v9 setAccessoryItem:v16];

LABEL_10:
      goto LABEL_11;
    }

    v17 = [v6 accessory];
    v18 = [v17 hf_isRemoteControl];

    if (v18)
    {
      v19 = HFTargetControlAccessoryItem;
    }

    else
    {
      v20 = [v6 accessory];
      v21 = [v20 mediaProfile];

      if (v21)
      {
        v22 = [HFMediaAccessoryItem alloc];
        v13 = [v6 accessory];
        v14 = [v13 mediaProfile];
        v23 = [(HFMediaAccessoryItem *)v22 initWithValueSource:v7 mediaProfileContainer:v14];
        [(HFAccessoryBuilderItem *)v9 setAccessoryItem:v23];

        goto LABEL_10;
      }

      v19 = HFAccessoryItem;
    }

    v24 = [v19 alloc];
    v13 = [v6 accessory];
    v14 = [v24 initWithAccessory:v13 valueSource:v7];
    [(HFAccessoryBuilderItem *)v9 setAccessoryItem:v14];
    goto LABEL_10;
  }

LABEL_11:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(HFAccessoryBuilderItem *)self valueSource];
  v5 = [(HFAccessoryBuilderItem *)self copyWithValueSource:v4];

  return v5;
}

- (id)copyWithValueSource:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(HFAccessoryBuilderItem *)self accessoryBuilder];
  v7 = [v5 initWithAccessoryBuilder:v6 valueSource:v4];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(HFAccessoryBuilderItem *)self accessoryItem];
  v6 = [v5 updateWithOptions:v4];

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
  v2 = [(HFAccessoryBuilderItem *)self accessoryItem];
  v3 = [v2 homeKitObject];

  return v3;
}

- (NSSet)services
{
  v2 = [(HFAccessoryBuilderItem *)self accessoryItem];
  v3 = [v2 services];

  return v3;
}

- (id)accessories
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HFAccessoryBuilderItem *)self accessoryBuilder];
  v4 = [v3 accessory];
  v5 = [v2 setWithObject:v4];

  return v5;
}

- (HFCharacteristicValueSource)valueSource
{
  v2 = [(HFAccessoryBuilderItem *)self accessoryItem];
  v3 = [v2 valueSource];

  return v3;
}

- (id)namingComponentForHomeKitObject
{
  v2 = [(HFAccessoryBuilderItem *)self accessoryItem];
  v3 = [v2 homeKitObject];
  v4 = [HFNamingComponents namingComponentFromHomeKitObject:v3];

  return v4;
}

@end