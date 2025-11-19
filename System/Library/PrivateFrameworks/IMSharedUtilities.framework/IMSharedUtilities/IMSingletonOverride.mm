@interface IMSingletonOverride
- (id)overriddenSingleton;
@end

@implementation IMSingletonOverride

- (id)overriddenSingleton
{
  WeakRetained = objc_loadWeakRetained(&self->_overriddenSingleton);

  return WeakRetained;
}

@end