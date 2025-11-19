@interface HDClientKeepAliveAssertion
- (id)weakClient;
@end

@implementation HDClientKeepAliveAssertion

- (id)weakClient
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 14);
    v1 = vars8;
  }

  return WeakRetained;
}

@end