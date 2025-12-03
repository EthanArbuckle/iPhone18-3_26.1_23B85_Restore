@interface HDRBSProcessStateProvider
- (id)stateForProcessIdentifier:(id)identifier;
@end

@implementation HDRBSProcessStateProvider

- (id)stateForProcessIdentifier:(id)identifier
{
  v6 = 0;
  v3 = [MEMORY[0x277D46F48] handleForIdentifier:identifier error:&v6];
  currentState = [v3 currentState];

  return currentState;
}

@end