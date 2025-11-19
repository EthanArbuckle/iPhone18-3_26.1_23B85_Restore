@interface GKLeaderboardViewController
- (GKLeaderboardViewController)init;
- (id)leaderboardDelegate;
- (void)notifyDelegateOnWillFinish;
@end

@implementation GKLeaderboardViewController

- (GKLeaderboardViewController)init
{
  v7.receiver = self;
  v7.super_class = GKLeaderboardViewController;
  v2 = [(GKGameCenterViewController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(GKGameCenterViewController *)v2 setViewState:0];
    v4 = [MEMORY[0x277D0C048] currentGame];
    v5 = [v4 defaultCategory];
    [(GKGameCenterViewController *)v3 setLeaderboardIdentifier:v5];
  }

  return v3;
}

- (void)notifyDelegateOnWillFinish
{
  WeakRetained = objc_loadWeakRetained(&self->_leaderboardDelegate);
  v4 = [(GKGameCenterViewController *)self gameCenterDelegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = WeakRetained;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained gameCenterViewControllerDidFinish:self];
      goto LABEL_9;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v6.receiver = self;
      v6.super_class = GKLeaderboardViewController;
      [(GKGameCenterViewController *)&v6 notifyDelegateOnWillFinish];
      goto LABEL_9;
    }

    v5 = v4;
  }

  [v5 leaderboardViewControllerDidFinish:self];
LABEL_9:
}

- (id)leaderboardDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_leaderboardDelegate);

  return WeakRetained;
}

@end