@interface _CDPUIUIAlertController
- (id)image;
@end

@implementation _CDPUIUIAlertController

- (id)image
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/CoreCDPUI.framework"];
  v3 = [MEMORY[0x277D755B8] imageNamed:@"appleAccountServiceIcon" inBundle:v2];

  return v3;
}

@end