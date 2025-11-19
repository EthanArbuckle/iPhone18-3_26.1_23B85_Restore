@interface EMP
@end

@implementation EMP

void __63__EMP_TSDImageColorAnalyzer_filterInterestingColorsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __55__EMP_TSDImageColorAnalyzer_p_prepareInterestingColors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0.0;
  v10 = 0.0;
  v8 = 0.0;
  [v3 getHue:&v10 saturation:&v9 brightness:&v8 alpha:0];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:1000 * llround(v9 * 10.0) + 100 * llround(v8 * 10.0) + llround(v10 * 100.0)];
  v5 = [*(a1 + 32) containsObject:v4];
  v6 = 32;
  if (v5)
  {
    v6 = 40;
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  [*(a1 + v6) addObject:v7];
}

@end