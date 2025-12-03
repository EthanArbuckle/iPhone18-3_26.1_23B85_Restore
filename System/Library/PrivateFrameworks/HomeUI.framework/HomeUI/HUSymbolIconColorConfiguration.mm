@interface HUSymbolIconColorConfiguration
+ (id)iconColorConfigurationForItem:(id)item;
+ (id)iconColorConfigurationForSymbolIconAccessoryType:(id)type;
+ (id)iconColorConfigurationForSymbolIconIdentifier:(id)identifier;
- (HUSymbolIconColorConfiguration)initWithPrimaryColor:(id)color;
@end

@implementation HUSymbolIconColorConfiguration

+ (id)iconColorConfigurationForItem:(id)item
{
  itemCopy = item;
  if ([itemCopy conformsToProtocol:&unk_28251B0C8])
  {
    v5 = itemCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  objc_opt_class();
  homeKitObject = [v6 homeKitObject];

  if (objc_opt_isKindOfClass())
  {
    v8 = homeKitObject;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  hf_effectiveServiceType = [v9 hf_effectiveServiceType];

  if (hf_effectiveServiceType)
  {
    if (_MergedGlobals_617 != -1)
    {
      dispatch_once(&_MergedGlobals_617, &__block_literal_global_76);
    }

    v11 = qword_281121EC8;
    v12 = [v11 objectForKeyedSubscript:hf_effectiveServiceType];
    v13 = [self iconColorConfigurationForSymbolIconAccessoryType:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __64__HUSymbolIconColorConfiguration_iconColorConfigurationForItem___block_invoke_2()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D14180];
  v1 = *MEMORY[0x277CD0E40];
  v5[0] = *MEMORY[0x277CD0EA0];
  v5[1] = v1;
  v2 = *MEMORY[0x277D14178];
  v6[0] = v0;
  v6[1] = v2;
  v5[2] = *MEMORY[0x277CD0EB0];
  v6[2] = *MEMORY[0x277D14188];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v4 = qword_281121EC8;
  qword_281121EC8 = v3;
}

+ (id)iconColorConfigurationForSymbolIconIdentifier:(id)identifier
{
  v4 = HFSymbolIconAccessoryTypeForSymbol();
  v5 = [self iconColorConfigurationForSymbolIconAccessoryType:v4];

  return v5;
}

+ (id)iconColorConfigurationForSymbolIconAccessoryType:(id)type
{
  v3 = [HUSymbolIconColorProvider primaryColorForSymbolIconAccessoryType:type];
  v4 = [objc_alloc(objc_opt_class()) initWithPrimaryColor:v3];

  return v4;
}

- (HUSymbolIconColorConfiguration)initWithPrimaryColor:(id)color
{
  colorCopy = color;
  if (colorCopy)
  {
    v10.receiver = self;
    v10.super_class = HUSymbolIconColorConfiguration;
    v6 = [(HUSymbolIconColorConfiguration *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_primaryColor, color);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end