@interface HKMCViewModelProvider(HKMCCycle)
@end

@implementation HKMCViewModelProvider(HKMCCycle)

- (void)setActiveCycles:()HKMCCycle .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMCViewModelProvider+HKMCCycle.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"activeCycles.count > 0"}];
}

@end