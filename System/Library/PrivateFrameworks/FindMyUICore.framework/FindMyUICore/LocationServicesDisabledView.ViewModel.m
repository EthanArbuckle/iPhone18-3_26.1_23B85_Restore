@interface LocationServicesDisabledView.ViewModel
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation LocationServicesDisabledView.ViewModel

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5 = self;
  [v4 authorizationStatus];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3224();
}

@end