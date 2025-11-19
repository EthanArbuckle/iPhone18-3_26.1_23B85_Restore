@interface BaseButton
- (void)updateConfiguration;
@end

@implementation BaseButton

- (void)updateConfiguration
{
  v2 = self;
  BaseButton.updateConfiguration()();
}

@end