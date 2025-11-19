@interface _CRKBuiltInProvider
- (id)cardViewControllerForCard:(id)a3;
@end

@implementation _CRKBuiltInProvider

- (id)cardViewControllerForCard:(id)a3
{
  v3 = a3;
  v4 = [[CRKCardViewController alloc] _initWithCard:v3 delegate:0 loadBundles:0 loadProvidersImmediately:0];

  return v4;
}

@end