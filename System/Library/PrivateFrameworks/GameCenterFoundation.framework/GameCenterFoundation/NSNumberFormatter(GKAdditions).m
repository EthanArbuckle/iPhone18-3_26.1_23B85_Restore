@interface NSNumberFormatter(GKAdditions)
+ (id)gk_formatInteger:()GKAdditions withGrouping:;
@end

@implementation NSNumberFormatter(GKAdditions)

+ (id)gk_formatInteger:()GKAdditions withGrouping:
{
  if (a4)
  {
    _sharedIntegerWithGroupingFormatter();
  }

  else
  {
    _sharedIntegerFormatter();
  }
  v5 = ;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [v5 stringFromNumber:v6];

  return v7;
}

@end