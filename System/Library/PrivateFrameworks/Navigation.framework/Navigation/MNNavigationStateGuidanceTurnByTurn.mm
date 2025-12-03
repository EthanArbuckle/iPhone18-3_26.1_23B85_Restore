@interface MNNavigationStateGuidanceTurnByTurn
- (void)postEnterState;
- (void)setFullGuidanceMode:(BOOL)mode;
- (void)setGuidanceType:(unint64_t)type;
@end

@implementation MNNavigationStateGuidanceTurnByTurn

- (void)postEnterState
{
  v3.receiver = self;
  v3.super_class = MNNavigationStateGuidanceTurnByTurn;
  [(MNNavigationStateGuidance *)&v3 postEnterState];
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
    if (type != 2)
    {
      return;
    }

    v4 = off_1E8428DE0;
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

- (void)setFullGuidanceMode:(BOOL)mode
{
  if (!mode)
  {
    v5 = [MNNavigationStateLowGuidance alloc];
    stateManager = [(MNNavigationState *)self stateManager];
    v8 = [(MNNavigationStateGuidance *)v5 initWithStateManager:stateManager navigationSessionManager:self->super._navigationSessionManager startDetails:0];

    stateManager2 = [(MNNavigationState *)self stateManager];
    [stateManager2 transitionToState:v8];
  }
}

@end