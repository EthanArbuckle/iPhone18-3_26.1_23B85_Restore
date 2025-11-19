@interface MNNavigationStateNoDestination
- (int64_t)desiredLocationProviderType;
- (void)setRoutesForPreview:(id)a3 selectedRouteIndex:(unint64_t)a4;
- (void)startNavigationWithDetails:(id)a3 activeBlock:(id)a4;
@end

@implementation MNNavigationStateNoDestination

- (void)startNavigationWithDetails:(id)a3 activeBlock:(id)a4
{
  v5 = a3;
  v6 = [(MNNavigationState *)self stateManager];
  v8 = [MNNavigationStateGuidance guidanceStateForStartDetails:v5 stateManager:v6 navigationSessionManager:0];

  if (v8)
  {
    v7 = [(MNNavigationState *)self stateManager];
    [v7 transitionToState:v8];
  }
}

- (void)setRoutesForPreview:(id)a3 selectedRouteIndex:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 count] && objc_msgSend(v6, "count") > a4)
  {
    v7 = [MNNavigationStateRoutePreview alloc];
    v8 = [(MNNavigationState *)self stateManager];
    v9 = [(MNNavigationStateRoutePreview *)v7 initWithStateManager:v8 previewRoutes:v6 selectedRouteIndex:a4];

    v10 = [(MNNavigationState *)self stateManager];
    [v10 transitionToState:v9];
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 138412546;
      v14 = v6;
      v15 = 2048;
      v16 = a4;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_INFO, "setting nil routes (%@) or selectedRouteIndex out of bound (%ld) for route previews while in state MNNavigationStateNoDestination is a no-op, returning early", &v13, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (int64_t)desiredLocationProviderType
{
  v2 = [(MNNavigationState *)self traceManager];
  v3 = [v2 tracePlayer];

  if (v3)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

@end