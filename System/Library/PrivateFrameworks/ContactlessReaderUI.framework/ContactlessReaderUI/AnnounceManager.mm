@interface AnnounceManager
- (void)onSilentModeSwitch:(id)switch;
@end

@implementation AnnounceManager

- (void)onSilentModeSwitch:(id)switch
{
  switchCopy = switch;

  sub_243FB8348(switchCopy);
}

@end