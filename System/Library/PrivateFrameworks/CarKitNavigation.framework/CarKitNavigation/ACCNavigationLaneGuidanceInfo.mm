@interface ACCNavigationLaneGuidanceInfo
@end

@implementation ACCNavigationLaneGuidanceInfo

void __68__ACCNavigationLaneGuidanceInfo_ACCNavigationInfo__cr_setInfo_data___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__ACCNavigationLaneGuidanceInfo_ACCNavigationInfo__cr_setInfo_data___block_invoke_2;
  v6[3] = &unk_27853CF08;
  v7 = v4;
  v5 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  [*(a1 + 32) addObject:v5];
}

void __68__ACCNavigationLaneGuidanceInfo_ACCNavigationInfo__cr_setInfo_data___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 setInfo:objc_msgSend(a2 data:{"unsignedShortValue"), v5}];
}

void __65__ACCNavigationLaneGuidanceInfo_ACCNavigationInfo__cr_dictionary__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 cr_dictionary];
  [v2 addObject:v3];
}

@end