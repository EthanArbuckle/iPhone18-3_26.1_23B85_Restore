@interface GKDashboardLeaderboardScoreHeaderView
- (SEL)timeScopeAction;
- (void)awakeFromNib;
- (void)setTimeScopeAction:(SEL)action;
- (void)timeScopePressed:(id)pressed;
@end

@implementation GKDashboardLeaderboardScoreHeaderView

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = GKDashboardLeaderboardScoreHeaderView;
  [(GKDashboardLeaderboardScoreHeaderView *)&v3 awakeFromNib];
  [(GKDashboardLeaderboardScoreHeaderView *)self setClipsToBounds:0];
}

- (void)timeScopePressed:(id)pressed
{
  pressedCopy = pressed;
  timeScopeTarget = self->_timeScopeTarget;
  if (timeScopeTarget)
  {
    timeScopeAction = self->_timeScopeAction;
    if (timeScopeAction)
    {
      v7 = pressedCopy;
      timeScopeTarget = [timeScopeTarget _gkPerformSelector:timeScopeAction withObject:self->_timeScopeButton];
      pressedCopy = v7;
    }
  }

  MEMORY[0x2821F96F8](timeScopeTarget, pressedCopy);
}

- (SEL)timeScopeAction
{
  if (self->_timeScopeAction)
  {
    return self->_timeScopeAction;
  }

  else
  {
    return 0;
  }
}

- (void)setTimeScopeAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_timeScopeAction = actionCopy;
}

@end