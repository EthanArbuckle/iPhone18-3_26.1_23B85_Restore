@interface HKAudioVisibleRangeQuantityContextDelegate
@end

@implementation HKAudioVisibleRangeQuantityContextDelegate

void __102___HKAudioVisibleRangeQuantityContextDelegate_valueString_applicationItems_representativeDisplayType___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696BF28];
  v4 = a2;
  v5 = [v3 alloc];
  [v4 averageLEQ];
  v7 = v6;
  [v4 duration];
  v9 = v8;

  v10 = [v5 initWithValue:v7 duration:v9];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v10];
}

double __109___HKAudioVisibleRangeQuantityContextDelegate_valueContextString_applicationItems_representativeDisplayType___block_invoke(uint64_t a1, void *a2)
{
  [a2 duration];
  v3 = *(*(a1 + 32) + 8);
  result = v4 + *(v3 + 24);
  *(v3 + 24) = result;
  return result;
}

@end