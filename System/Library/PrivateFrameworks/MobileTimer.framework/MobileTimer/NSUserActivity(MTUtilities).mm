@interface NSUserActivity(MTUtilities)
+ (id)mtUserActivityWithActivityType:()MTUtilities title:keywords:;
@end

@implementation NSUserActivity(MTUtilities)

+ (id)mtUserActivityWithActivityType:()MTUtilities title:keywords:
{
  v7 = a5;
  v8 = MEMORY[0x1E696B090];
  v9 = a4;
  v10 = a3;
  v11 = [[v8 alloc] initWithActivityType:v10];

  [v11 setEligibleForHandoff:1];
  [v11 setEligibleForSearch:1];
  [v11 setEligibleForPublicIndexing:1];
  [v11 setTitle:v9];

  if (v7)
  {
    v12 = [MEMORY[0x1E695DFD8] setWithArray:v7];
    [v11 setKeywords:v12];
  }

  else
  {
    [v11 setKeywords:0];
  }

  return v11;
}

@end