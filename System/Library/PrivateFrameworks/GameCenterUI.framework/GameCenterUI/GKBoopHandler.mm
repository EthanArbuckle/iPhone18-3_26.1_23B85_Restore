@interface GKBoopHandler
- (GKBoopHandler)initWithUrlProvider:(id)provider;
@end

@implementation GKBoopHandler

- (GKBoopHandler)initWithUrlProvider:(id)provider
{
  v3 = _Block_copy(provider);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return BoopHandler.init(urlProvider:)(sub_24E070CC8, v4);
}

@end