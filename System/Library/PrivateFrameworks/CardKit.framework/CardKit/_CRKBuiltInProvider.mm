@interface _CRKBuiltInProvider
- (id)cardViewControllerForCard:(id)card;
@end

@implementation _CRKBuiltInProvider

- (id)cardViewControllerForCard:(id)card
{
  cardCopy = card;
  v4 = [[CRKCardViewController alloc] _initWithCard:cardCopy delegate:0 loadBundles:0 loadProvidersImmediately:0];

  return v4;
}

@end