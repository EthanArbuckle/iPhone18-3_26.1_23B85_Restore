@interface LocationServicesDisabledView.ViewModel
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation LocationServicesDisabledView.ViewModel

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  selfCopy = self;
  [authorizationCopy authorizationStatus];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3224();
}

@end