@interface HUNaturalLightingItem
- (HFHomeKitObject)homeKitObject;
- (HMRoom)hf_parentRoom;
- (HUNaturalLightingItem)initWithSourceItem:(id)a3 defaultSelected:(BOOL)a4;
- (NSSet)lightProfiles;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)accessory;
@end

@implementation HUNaturalLightingItem

- (HUNaturalLightingItem)initWithSourceItem:(id)a3 defaultSelected:(BOOL)a4
{
  v4 = a4;
  v11.receiver = self;
  v11.super_class = HUNaturalLightingItem;
  v5 = [(HFTransformItem *)&v11 initWithSourceItem:a3 resultKeyExclusionFilter:MEMORY[0x277CBEBF8]];
  v6 = v5;
  if (v5)
  {
    v7 = [(HUNaturalLightingItem *)v5 accessory];
    v8 = [v7 hasOnboardedForNaturalLighting];

    if (v8)
    {
      v9 = [(HUNaturalLightingItem *)v6 lightProfiles];
      -[HUNaturalLightingItem setSelected:](v6, "setSelected:", [v9 na_all:&__block_literal_global_166]);
    }

    else
    {
      [(HUNaturalLightingItem *)v6 setSelected:v4];
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
  v2 = [(HUNaturalLightingItem *)self homeKitObject];
  if ([v2 conformsToProtocol:&unk_282547DB8])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 hf_parentRoom];

  return v5;
}

- (HFHomeKitObject)homeKitObject
{
  v2 = [(HFTransformItem *)self sourceItem];
  v3 = [v2 homeKitObject];

  return v3;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v8.receiver = self;
  v8.super_class = HUNaturalLightingItem;
  v4 = [(HFTransformItem *)&v8 _subclass_updateWithOptions:a3];
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
  v3 = [(HUNaturalLightingItem *)self accessory];

  if (v3)
  {
    v4 = [(HUNaturalLightingItem *)self accessory];
    v5 = [v4 lightProfiles];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  return v5;
}

- (id)accessory
{
  objc_opt_class();
  v3 = [(HUNaturalLightingItem *)self homeKitObject];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  objc_opt_class();
  v6 = [(HUNaturalLightingItem *)self homeKitObject];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v5)
  {
    v9 = [v5 accessory];
  }

  else
  {
    v9 = v8;
  }

  v10 = v9;

  return v10;
}

@end