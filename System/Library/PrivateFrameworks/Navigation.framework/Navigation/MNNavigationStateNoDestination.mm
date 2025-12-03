@interface MNNavigationStateNoDestination
- (int64_t)desiredLocationProviderType;
- (void)setRoutesForPreview:(id)preview selectedRouteIndex:(unint64_t)index;
- (void)startNavigationWithDetails:(id)details activeBlock:(id)block;
@end

@implementation MNNavigationStateNoDestination

- (void)startNavigationWithDetails:(id)details activeBlock:(id)block
{
  detailsCopy = details;
  stateManager = [(MNNavigationState *)self stateManager];
  v8 = [MNNavigationStateGuidance guidanceStateForStartDetails:detailsCopy stateManager:stateManager navigationSessionManager:0];

  if (v8)
  {
    stateManager2 = [(MNNavigationState *)self stateManager];
    [stateManager2 transitionToState:v8];
  }
}

- (void)setRoutesForPreview:(id)preview selectedRouteIndex:(unint64_t)index
{
  v17 = *MEMORY[0x1E69E9840];
  previewCopy = preview;
  if ([previewCopy count] && objc_msgSend(previewCopy, "count") > index)
  {
    v7 = [MNNavigationStateRoutePreview alloc];
    stateManager = [(MNNavigationState *)self stateManager];
    v9 = [(MNNavigationStateRoutePreview *)v7 initWithStateManager:stateManager previewRoutes:previewCopy selectedRouteIndex:index];

    stateManager2 = [(MNNavigationState *)self stateManager];
    [stateManager2 transitionToState:v9];
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 138412546;
      v14 = previewCopy;
      v15 = 2048;
      indexCopy = index;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_INFO, "setting nil routes (%@) or selectedRouteIndex out of bound (%ld) for route previews while in state MNNavigationStateNoDestination is a no-op, returning early", &v13, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (int64_t)desiredLocationProviderType
{
  traceManager = [(MNNavigationState *)self traceManager];
  tracePlayer = [traceManager tracePlayer];

  if (tracePlayer)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

@end