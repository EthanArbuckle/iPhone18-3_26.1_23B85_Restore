@interface GKBoopHandler
- (GKBoopHandler)initWithUrlProvider:(id)a3;
@end

@implementation GKBoopHandler

- (GKBoopHandler)initWithUrlProvider:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return BoopHandler.init(urlProvider:)(sub_24E070CC8, v4);
}

@end