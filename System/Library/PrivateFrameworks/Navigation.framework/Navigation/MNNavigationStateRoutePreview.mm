@interface MNNavigationStateRoutePreview
- (MNNavigationStateRoutePreview)initWithStateManager:(id)a3 previewRoutes:(id)a4 selectedRouteIndex:(unint64_t)a5;
- (void)enterState;
- (void)leaveState;
- (void)startNavigationWithDetails:(id)a3 activeBlock:(id)a4;
- (void)stopNavigationWithReason:(unint64_t)a3;
@end

@implementation MNNavigationStateRoutePreview

- (void)stopNavigationWithReason:(unint64_t)a3
{
  [(MNNavigationSessionManager *)self->_navigationSessionManager stopNavigationWithReason:a3];
  v4 = [MNNavigationStateNoDestination alloc];
  v5 = [(MNNavigationState *)self stateManager];
  v7 = [(MNNavigationState *)v4 initWithStateManager:v5];

  v6 = [(MNNavigationState *)self stateManager];
  [v6 transitionToState:v7];
}

- (void)startNavigationWithDetails:(id)a3 activeBlock:(id)a4
{
  v5 = a3;
  v6 = [(MNNavigationState *)self stateManager];
  v8 = [MNNavigationStateGuidance guidanceStateForStartDetails:v5 stateManager:v6 navigationSessionManager:self->_navigationSessionManager];

  if (v8)
  {
    v7 = [(MNNavigationState *)self stateManager];
    [v7 transitionToState:v8];
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
  v4 = [(MNNavigationState *)self stateManager];
  v5 = [v4 auditToken];
  v6 = [(MNNavigationSessionManager *)v3 initWithAuditToken:v5];
  navigationSessionManager = self->_navigationSessionManager;
  self->_navigationSessionManager = v6;

  v8 = [(MNNavigationState *)self stateManager];
  v9 = [v8 navigationDelegate];
  [(MNNavigationSessionManager *)self->_navigationSessionManager setDelegate:v9];

  previewRoutes = self->_previewRoutes;
  if (previewRoutes)
  {
    [(MNNavigationSessionManager *)self->_navigationSessionManager setRoutesForPreview:previewRoutes selectedRouteIndex:self->_selectedRouteIndex];
  }
}

- (MNNavigationStateRoutePreview)initWithStateManager:(id)a3 previewRoutes:(id)a4 selectedRouteIndex:(unint64_t)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = MNNavigationStateRoutePreview;
  v10 = [(MNNavigationState *)&v13 initWithStateManager:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_previewRoutes, a4);
    v11->_selectedRouteIndex = a5;
  }

  return v11;
}

@end