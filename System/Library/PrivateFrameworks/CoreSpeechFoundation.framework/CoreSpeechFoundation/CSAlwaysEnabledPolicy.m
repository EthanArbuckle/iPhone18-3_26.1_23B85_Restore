@interface CSAlwaysEnabledPolicy
- (CSAlwaysEnabledPolicy)init;
@end

@implementation CSAlwaysEnabledPolicy

- (CSAlwaysEnabledPolicy)init
{
  v5.receiver = self;
  v5.super_class = CSAlwaysEnabledPolicy;
  v2 = [(CSPolicy *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSAlwaysEnabledPolicy *)v2 _addAlwaysEnabledCondition];
  }

  return v3;
}

@end