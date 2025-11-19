@interface SFUnifiedBarItemContentView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
@end

@implementation SFUnifiedBarItemContentView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"filters"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SFUnifiedBarItemContentView;
    v5 = [(SFUnifiedBarItemContentView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end