@interface HUSymbolIconColorProvider
+ (id)primaryColorForSymbolIconAccessoryType:(id)type;
+ (id)primaryColorForSymbolIconIdentifier:(id)identifier;
@end

@implementation HUSymbolIconColorProvider

+ (id)primaryColorForSymbolIconIdentifier:(id)identifier
{
  v4 = HFSymbolIconAccessoryTypeForSymbol();
  v5 = [self primaryColorForSymbolIconAccessoryType:v4];

  return v5;
}

+ (id)primaryColorForSymbolIconAccessoryType:(id)type
{
  typeCopy = type;
  if (_MergedGlobals_632 != -1)
  {
    dispatch_once(&_MergedGlobals_632, &__block_literal_global_3_5);
  }

  v4 = qword_281122008;
  v5 = [v4 objectForKeyedSubscript:typeCopy];

  return v5;
}

void __68__HUSymbolIconColorProvider_primaryColorForSymbolIconAccessoryType___block_invoke_2()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277D14180];
  v0 = [MEMORY[0x277D75348] systemYellowColor];
  v6[0] = v0;
  v5[1] = *MEMORY[0x277D14178];
  v1 = [MEMORY[0x277D75348] systemCyanColor];
  v6[1] = v1;
  v5[2] = *MEMORY[0x277D14188];
  v2 = [MEMORY[0x277D75348] systemOrangeColor];
  v6[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v4 = qword_281122008;
  qword_281122008 = v3;
}

@end