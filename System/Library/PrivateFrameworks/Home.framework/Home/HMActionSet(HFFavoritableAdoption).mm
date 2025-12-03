@interface HMActionSet(HFFavoritableAdoption)
- (uint64_t)hf_isFavorite;
- (uint64_t)hf_updateIsFavorite:()HFFavoritableAdoption;
@end

@implementation HMActionSet(HFFavoritableAdoption)

- (uint64_t)hf_isFavorite
{
  NSLog(&cfstr_ActionsetCanno.isa);

  return [self hf_showInHomeDashboard];
}

- (uint64_t)hf_updateIsFavorite:()HFFavoritableAdoption
{
  NSLog(&cfstr_AttemptingToUp_1.isa);
  v0 = MEMORY[0x277D2C900];

  return [v0 futureWithNoResult];
}

@end