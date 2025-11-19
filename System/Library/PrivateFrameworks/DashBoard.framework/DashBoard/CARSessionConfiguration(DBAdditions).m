@interface CARSessionConfiguration(DBAdditions)
- (id)db_displayInfoForScreenInfo:()DBAdditions;
@end

@implementation CARSessionConfiguration(DBAdditions)

- (id)db_displayInfoForScreenInfo:()DBAdditions
{
  v4 = a3;
  v5 = [a1 displays];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__CARSessionConfiguration_DBAdditions__db_displayInfoForScreenInfo___block_invoke;
  v9[3] = &unk_278F01780;
  v10 = v4;
  v6 = v4;
  v7 = [v5 bs_firstObjectPassingTest:v9];

  return v7;
}

@end