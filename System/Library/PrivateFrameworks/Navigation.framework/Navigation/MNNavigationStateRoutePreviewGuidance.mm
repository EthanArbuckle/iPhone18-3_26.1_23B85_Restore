@interface MNNavigationStateRoutePreviewGuidance
- (MNNavigationStateRoutePreviewGuidance)initWithStateManager:(id)manager navigationSessionManager:(id)sessionManager startDetails:(id)details;
- (void)enterState;
- (void)setGuidanceType:(unint64_t)type;
- (void)stopNavigationWithReason:(unint64_t)reason;
@end

@implementation MNNavigationStateRoutePreviewGuidance

- (void)stopNavigationWithReason:(unint64_t)reason
{
  v5 = [MNNavigationStateRoutePreview alloc];
  stateManager = [(MNNavigationState *)self stateManager];
  routeManager = [(MNNavigationSessionManager *)self->super._navigationSessionManager routeManager];
  previewRoutes = [routeManager previewRoutes];
  routeManager2 = [(MNNavigationSessionManager *)self->super._navigationSessionManager routeManager];
  v11 = -[MNNavigationStateRoutePreview initWithStateManager:previewRoutes:selectedRouteIndex:](v5, "initWithStateManager:previewRoutes:selectedRouteIndex:", stateManager, previewRoutes, [routeManager2 selectedRouteIndex]);

  [(MNNavigationSessionManager *)self->super._navigationSessionManager stopNavigationWithReason:reason];
  stateManager2 = [(MNNavigationState *)self stateManager];
  [stateManager2 transitionToState:v11];
}

- (void)enterState
{
  v3.receiver = self;
  v3.super_class = MNNavigationStateRoutePreviewGuidance;
  [(MNNavigationStateGuidance *)&v3 enterState];
  [(MNNavigationSessionManager *)self->super._navigationSessionManager setIsNavigatingInLowGuidance:0];
}

- (void)setGuidanceType:(unint64_t)type
{
  if (type == 1)
  {
    v4 = off_1E8428DD8;
  }

  else
  {
    if (type)
    {
      return;
    }

    v4 = off_1E8428DD0;
  }

  v5 = objc_alloc(*v4);
  stateManager = [(MNNavigationState *)self stateManager];
  v8 = [v5 initWithStateManager:stateManager navigationSessionManager:self->super._navigationSessionManager startDetails:0];

  if (v8)
  {
    stateManager2 = [(MNNavigationState *)self stateManager];
    [stateManager2 transitionToState:v8];
  }
}

- (MNNavigationStateRoutePreviewGuidance)initWithStateManager:(id)manager navigationSessionManager:(id)sessionManager startDetails:(id)details
{
  v6.receiver = self;
  v6.super_class = MNNavigationStateRoutePreviewGuidance;
  return [(MNNavigationStateGuidance *)&v6 initWithStateManager:manager navigationSessionManager:sessionManager startDetails:details];
}

@end