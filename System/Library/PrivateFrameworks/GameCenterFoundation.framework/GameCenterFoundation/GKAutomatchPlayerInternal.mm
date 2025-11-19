@interface GKAutomatchPlayerInternal
- (NSString)automatchPositionDisplayString;
@end

@implementation GKAutomatchPlayerInternal

- (NSString)automatchPositionDisplayString
{
  v2 = MEMORY[0x277CCABB8];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_automatchPosition];
  v4 = [v2 localizedStringFromNumber:v3 numberStyle:1];

  return v4;
}

@end