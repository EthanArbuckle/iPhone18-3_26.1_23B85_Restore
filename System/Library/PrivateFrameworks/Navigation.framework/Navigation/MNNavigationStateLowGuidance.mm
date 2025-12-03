@interface MNNavigationStateLowGuidance
- (void)postEnterState;
- (void)setGuidanceType:(unint64_t)type;
@end

@implementation MNNavigationStateLowGuidance

- (void)setGuidanceType:(unint64_t)type
{
  if (type)
  {
    if (type != 2)
    {
      return;
    }

    v4 = off_1E8428DE0;
  }

  else
  {
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

- (void)postEnterState
{
  v3.receiver = self;
  v3.super_class = MNNavigationStateLowGuidance;
  [(MNNavigationStateGuidance *)&v3 postEnterState];
  [(MNNavigationSessionManager *)self->super._navigationSessionManager setIsNavigatingInLowGuidance:1];
}

@end