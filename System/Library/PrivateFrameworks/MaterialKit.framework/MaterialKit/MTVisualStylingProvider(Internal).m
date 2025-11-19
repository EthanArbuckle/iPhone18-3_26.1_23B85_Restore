@interface MTVisualStylingProvider(Internal)
@end

@implementation MTVisualStylingProvider(Internal)

- (void)initWithCoreMaterialVisualStylingProvider:()Internal .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTVisualStylingProvider.m" lineNumber:275 description:{@"Invalid parameter not satisfying: %@", @"cmProvider"}];
}

@end