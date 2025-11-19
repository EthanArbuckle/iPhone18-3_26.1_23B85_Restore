@interface ICSearchRankingStrategySwitch
+ (id)ICSearchRankingStrategyDisplayNames;
+ (unint64_t)currentStrategy;
@end

@implementation ICSearchRankingStrategySwitch

+ (id)ICSearchRankingStrategyDisplayNames
{
  if (ICSearchRankingStrategyDisplayNames_onceToken != -1)
  {
    +[ICSearchRankingStrategySwitch ICSearchRankingStrategyDisplayNames];
  }

  v3 = ICSearchRankingStrategyDisplayNames_displayNames;

  return v3;
}

void __68__ICSearchRankingStrategySwitch_ICSearchRankingStrategyDisplayNames__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v2 setObject:@"0. Prefix/Substring ⮑ Modified Date" atIndexedSubscript:0];
  [v2 setObject:@"1. (PeaceGM) Prefix/Substring ⮑ Title/Body" atIndexedSubscript:1];
  [v2 setObject:@"2. Prefix/Substring ⮑ Bucketed Modified Date ⮑ Title/Body" atIndexedSubscript:2];
  v0 = [v2 copy];
  v1 = ICSearchRankingStrategyDisplayNames_displayNames;
  ICSearchRankingStrategyDisplayNames_displayNames = v0;
}

+ (unint64_t)currentStrategy
{
  v2 = [a1 defaultStrategy];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 objectForKey:@"searchRankingCurrentStrategyKey"];

  if (v4)
  {
    v2 = [v4 unsignedIntegerValue];
  }

  return v2;
}

@end