@interface BLTSectionConfigurationItemFactory
+ (id)itemForSection:(id)a3 dictionary:(id)a4;
@end

@implementation BLTSectionConfigurationItemFactory

+ (id)itemForSection:(id)a3 dictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (itemForSection_dictionary__onceToken != -1)
  {
    +[BLTSectionConfigurationItemFactory itemForSection:dictionary:];
  }

  v7 = [itemForSection_dictionary___sectionToItemClassMap objectForKeyedSubscript:v5];
  if (!v7)
  {
    v7 = objc_opt_class();
  }

  v8 = [[v7 alloc] initWithDictionary:v6];

  return v8;
}

void __64__BLTSectionConfigurationItemFactory_itemForSection_dictionary___block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"com.apple.cmas";
  v3[1] = @"com.apple.MobileSMS";
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = itemForSection_dictionary___sectionToItemClassMap;
  itemForSection_dictionary___sectionToItemClassMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end