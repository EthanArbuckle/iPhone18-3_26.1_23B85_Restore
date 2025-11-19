@interface HMHome(HFFavoritingAdditions)
- (uint64_t)hf_favoriteCameraCountExcludingHomeKitObjects:()HFFavoritingAdditions;
@end

@implementation HMHome(HFFavoritingAdditions)

- (uint64_t)hf_favoriteCameraCountExcludingHomeKitObjects:()HFFavoritingAdditions
{
  v4 = a3;
  v5 = [a1 accessories];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__HMHome_HFFavoritingAdditions__hf_favoriteCameraCountExcludingHomeKitObjects___block_invoke;
  v10[3] = &unk_277DF3888;
  v11 = v4;
  v6 = v4;
  v7 = [v5 na_filter:v10];
  v8 = [v7 count];

  return v8;
}

@end