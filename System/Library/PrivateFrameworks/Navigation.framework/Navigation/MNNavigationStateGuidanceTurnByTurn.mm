@interface MNNavigationStateGuidanceTurnByTurn
- (void)postEnterState;
- (void)setFullGuidanceMode:(BOOL)a3;
- (void)setGuidanceType:(unint64_t)a3;
@end

@implementation MNNavigationStateGuidanceTurnByTurn

- (void)postEnterState
{
  v3.receiver = self;
  v3.super_class = MNNavigationStateGuidanceTurnByTurn;
  [(MNNavigationStateGuidance *)&v3 postEnterState];
  [(MNNavigationSessionManager *)self->super._navigationSessionManager setIsNavigatingInLowGuidance:0];
}

- (void)setGuidanceType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v4 = off_1E8428DD8;
  }

  else
  {
    if (a3 != 2)
    {
      return;
    }

    v4 = off_1E8428DE0;
  }

  v5 = objc_alloc(*v4);
  v6 = [(MNNavigationState *)self stateManager];
  v8 = [v5 initWithStateManager:v6 navigationSessionManager:self->super._navigationSessionManager startDetails:0];

  if (v8)
  {
    v7 = [(MNNavigationState *)self stateManager];
    [v7 transitionToState:v8];
  }
}

- (void)setFullGuidanceMode:(BOOL)a3
{
  if (!a3)
  {
    v5 = [MNNavigationStateLowGuidance alloc];
    v6 = [(MNNavigationState *)self stateManager];
    v8 = [(MNNavigationStateGuidance *)v5 initWithStateManager:v6 navigationSessionManager:self->super._navigationSessionManager startDetails:0];

    v7 = [(MNNavigationState *)self stateManager];
    [v7 transitionToState:v8];
  }
}

@end