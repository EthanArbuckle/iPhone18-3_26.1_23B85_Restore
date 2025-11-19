@interface GKDashboardLeaderboardScoreHeaderView
- (SEL)timeScopeAction;
- (void)awakeFromNib;
- (void)setTimeScopeAction:(SEL)a3;
- (void)timeScopePressed:(id)a3;
@end

@implementation GKDashboardLeaderboardScoreHeaderView

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = GKDashboardLeaderboardScoreHeaderView;
  [(GKDashboardLeaderboardScoreHeaderView *)&v3 awakeFromNib];
  [(GKDashboardLeaderboardScoreHeaderView *)self setClipsToBounds:0];
}

- (void)timeScopePressed:(id)a3
{
  v4 = a3;
  timeScopeTarget = self->_timeScopeTarget;
  if (timeScopeTarget)
  {
    timeScopeAction = self->_timeScopeAction;
    if (timeScopeAction)
    {
      v7 = v4;
      timeScopeTarget = [timeScopeTarget _gkPerformSelector:timeScopeAction withObject:self->_timeScopeButton];
      v4 = v7;
    }
  }

  MEMORY[0x2821F96F8](timeScopeTarget, v4);
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

- (void)setTimeScopeAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_timeScopeAction = v3;
}

@end