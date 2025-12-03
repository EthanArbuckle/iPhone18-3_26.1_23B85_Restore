@interface MRDCarPlayRouteRecommendationController
- (MRDCarPlayRouteRecommendationController)init;
- (void)displayCarPlayVideoConnectedBannerWithCompletion:(id)completion;
@end

@implementation MRDCarPlayRouteRecommendationController

- (MRDCarPlayRouteRecommendationController)init
{
  *(&self->super.isa + OBJC_IVAR___MRDCarPlayRouteRecommendationController_impl) = [objc_allocWithZone(type metadata accessor for CarPlayRouteRecommendationControllerImpl()) init];
  v4.receiver = self;
  v4.super_class = type metadata accessor for CarPlayRouteRecommendationController();
  return [(MRDCarPlayRouteRecommendationController *)&v4 init];
}

- (void)displayCarPlayVideoConnectedBannerWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_10022AFA0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = *(&self->super.isa + OBJC_IVAR___MRDCarPlayRouteRecommendationController_impl);
  selfCopy = self;
  sub_100229A70(v7, v6);
  sub_1001C7C2C(v7);
}

@end