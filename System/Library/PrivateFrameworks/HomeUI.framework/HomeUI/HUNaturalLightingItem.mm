@interface HUNaturalLightingItem
- (HFHomeKitObject)homeKitObject;
- (HMRoom)hf_parentRoom;
- (HUNaturalLightingItem)initWithSourceItem:(id)item defaultSelected:(BOOL)selected;
- (NSSet)lightProfiles;
- (id)_subclass_updateWithOptions:(id)options;
- (id)accessory;
@end

@implementation HUNaturalLightingItem

- (HUNaturalLightingItem)initWithSourceItem:(id)item defaultSelected:(BOOL)selected
{
  selectedCopy = selected;
  v11.receiver = self;
  v11.super_class = HUNaturalLightingItem;
  v5 = [(HFTransformItem *)&v11 initWithSourceItem:item resultKeyExclusionFilter:MEMORY[0x277CBEBF8]];
  v6 = v5;
  if (v5)
  {
    accessory = [(HUNaturalLightingItem *)v5 accessory];
    hasOnboardedForNaturalLighting = [accessory hasOnboardedForNaturalLighting];

    if (hasOnboardedForNaturalLighting)
    {
      lightProfiles = [(HUNaturalLightingItem *)v6 lightProfiles];
      -[HUNaturalLightingItem setSelected:](v6, "setSelected:", [lightProfiles na_all:&__block_literal_global_166]);
    }

    else
    {
      [(HUNaturalLightingItem *)v6 setSelected:selectedCopy];
    }
  }

  return v6;
}

uint64_t __60__HUNaturalLightingItem_initWithSourceItem_defaultSelected___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 settings];
  v3 = [v2 isNaturalLightingEnabled];

  return v3;
}

- (HMRoom)hf_parentRoom
{
  homeKitObject = [(HUNaturalLightingItem *)self homeKitObject];
  if ([homeKitObject conformsToProtocol:&unk_282547DB8])
  {
    v3 = homeKitObject;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  hf_parentRoom = [v4 hf_parentRoom];

  return hf_parentRoom;
}

- (HFHomeKitObject)homeKitObject
{
  sourceItem = [(HFTransformItem *)self sourceItem];
  homeKitObject = [sourceItem homeKitObject];

  return homeKitObject;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v8.receiver = self;
  v8.super_class = HUNaturalLightingItem;
  v4 = [(HFTransformItem *)&v8 _subclass_updateWithOptions:options];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HUNaturalLightingItem__subclass_updateWithOptions___block_invoke;
  v7[3] = &unk_277DBB878;
  v7[4] = self;
  v5 = [v4 flatMap:v7];

  return v5;
}

id __53__HUNaturalLightingItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 results];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "selected")}];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13FE8]];

  v6 = MEMORY[0x277D2C900];
  v7 = [MEMORY[0x277D14780] outcomeWithResults:v4];
  v8 = [v6 futureWithResult:v7];

  return v8;
}

- (NSSet)lightProfiles
{
  accessory = [(HUNaturalLightingItem *)self accessory];

  if (accessory)
  {
    accessory2 = [(HUNaturalLightingItem *)self accessory];
    lightProfiles = [accessory2 lightProfiles];
  }

  else
  {
    lightProfiles = [MEMORY[0x277CBEB98] set];
  }

  return lightProfiles;
}

- (id)accessory
{
  objc_opt_class();
  homeKitObject = [(HUNaturalLightingItem *)self homeKitObject];
  if (objc_opt_isKindOfClass())
  {
    v4 = homeKitObject;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  objc_opt_class();
  homeKitObject2 = [(HUNaturalLightingItem *)self homeKitObject];
  if (objc_opt_isKindOfClass())
  {
    v7 = homeKitObject2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v5)
  {
    accessory = [v5 accessory];
  }

  else
  {
    accessory = v8;
  }

  v10 = accessory;

  return v10;
}

@end