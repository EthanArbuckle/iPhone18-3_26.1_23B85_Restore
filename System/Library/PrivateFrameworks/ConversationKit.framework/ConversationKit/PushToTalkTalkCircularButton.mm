@interface PushToTalkTalkCircularButton
- (void)updateConfiguration;
@end

@implementation PushToTalkTalkCircularButton

- (void)updateConfiguration
{
  selfCopy = self;
  PushToTalkTalkCircularButton.updateConfiguration()();
}

@end