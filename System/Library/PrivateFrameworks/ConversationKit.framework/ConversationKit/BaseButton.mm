@interface BaseButton
- (void)updateConfiguration;
@end

@implementation BaseButton

- (void)updateConfiguration
{
  selfCopy = self;
  BaseButton.updateConfiguration()();
}

@end