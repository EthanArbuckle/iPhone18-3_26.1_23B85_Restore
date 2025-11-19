@interface CLKTimeFormatSentinel
@end

@implementation CLKTimeFormatSentinel

void __59___CLKTimeFormatSentinel_listenForLocaleChangesIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel__handleLocaleChange name:*MEMORY[0x277CBE620] object:0];
}

@end