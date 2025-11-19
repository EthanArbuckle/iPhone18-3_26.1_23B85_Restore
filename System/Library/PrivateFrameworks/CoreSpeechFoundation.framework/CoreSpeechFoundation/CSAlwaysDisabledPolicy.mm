@interface CSAlwaysDisabledPolicy
- (CSAlwaysDisabledPolicy)init;
@end

@implementation CSAlwaysDisabledPolicy

- (CSAlwaysDisabledPolicy)init
{
  v5.receiver = self;
  v5.super_class = CSAlwaysDisabledPolicy;
  v2 = [(CSPolicy *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSAlwaysDisabledPolicy *)v2 _addDisabledConditions];
  }

  return v3;
}

@end