@interface MNNavigationStateRoutePreview
- (MNNavigationStateRoutePreview)initWithStateManager:(id)manager previewRoutes:(id)routes selectedRouteIndex:(unint64_t)index;
- (void)enterState;
- (void)leaveState;
- (void)startNavigationWithDetails:(id)details activeBlock:(id)block;
- (void)stopNavigationWithReason:(unint64_t)reason;
@end

@implementation MNNavigationStateRoutePreview

- (void)stopNavigationWithReason:(unint64_t)reason
{
  [(MNNavigationSessionManager *)self->_navigationSessionManager stopNavigationWithReason:reason];
  v4 = [MNNavigationStateNoDestination alloc];
  stateManager = [(MNNavigationState *)self stateManager];
  v7 = [(MNNavigationState *)v4 initWithStateManager:stateManager];

  stateManager2 = [(MNNavigationState *)self stateManager];
  [stateManager2 transitionToState:v7];
}

- (void)startNavigationWithDetails:(id)details activeBlock:(id)block
{
  detailsCopy = details;
  stateManager = [(MNNavigationState *)self stateManager];
  v8 = [MNNavigationStateGuidance guidanceStateForStartDetails:detailsCopy stateManager:stateManager navigationSessionManager:self->_navigationSessionManager];

  if (v8)
  {
    stateManager2 = [(MNNavigationState *)self stateManager];
    [stateManager2 transitionToState:v8];
  }
}

- (void)leaveState
{
  v4.receiver = self;
  v4.super_class = MNNavigationStateRoutePreview;
  [(MNNavigationState *)&v4 leaveState];
  [(MNNavigationSessionManager *)self->_navigationSessionManager setDelegate:0];
  navigationSessionManager = self->_navigationSessionManager;
  self->_navigationSessionManager = 0;
}

- (void)enterState
{
  v11.receiver = self;
  v11.super_class = MNNavigationStateRoutePreview;
  [(MNNavigationState *)&v11 enterState];
  v3 = [MNNavigationSessionManager alloc];
  stateManager = [(MNNavigationState *)self stateManager];
  auditToken = [stateManager auditToken];
  v6 = [(MNNavigationSessionManager *)v3 initWithAuditToken:auditToken];
  navigationSessionManager = self->_navigationSessionManager;
  self->_navigationSessionManager = v6;

  stateManager2 = [(MNNavigationState *)self stateManager];
  navigationDelegate = [stateManager2 navigationDelegate];
  [(MNNavigationSessionManager *)self->_navigationSessionManager setDelegate:navigationDelegate];

  previewRoutes = self->_previewRoutes;
  if (previewRoutes)
  {
    [(MNNavigationSessionManager *)self->_navigationSessionManager setRoutesForPreview:previewRoutes selectedRouteIndex:self->_selectedRouteIndex];
  }
}

- (MNNavigationStateRoutePreview)initWithStateManager:(id)manager previewRoutes:(id)routes selectedRouteIndex:(unint64_t)index
{
  routesCopy = routes;
  v13.receiver = self;
  v13.super_class = MNNavigationStateRoutePreview;
  v10 = [(MNNavigationState *)&v13 initWithStateManager:manager];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_previewRoutes, routes);
    v11->_selectedRouteIndex = index;
  }

  return v11;
}

@end