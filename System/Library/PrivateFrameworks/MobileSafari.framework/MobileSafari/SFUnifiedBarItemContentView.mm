@interface SFUnifiedBarItemContentView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation SFUnifiedBarItemContentView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy hasPrefix:@"filters"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SFUnifiedBarItemContentView;
    v5 = [(SFUnifiedBarItemContentView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end