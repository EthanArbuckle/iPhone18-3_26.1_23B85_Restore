@interface DPPListHelper
@end

@implementation DPPListHelper

void __67___DPPListHelper_loadPropertyListFromPath_overridePath_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = a2;
  v8 = v6(v5, v7, a3);
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
}

@end