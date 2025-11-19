@interface GKAchievementViewController
- (GKAchievementViewController)init;
- (id)achievementDelegate;
- (void)dealloc;
- (void)notifyDelegateOnWillFinish;
@end

@implementation GKAchievementViewController

- (GKAchievementViewController)init
{
  v5.receiver = self;
  v5.super_class = GKAchievementViewController;
  v2 = [(GKGameCenterViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(GKGameCenterViewController *)v2 setViewState:1];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D0C8C8] sharedTheme];
  [v3 clearResourceCache];

  v4.receiver = self;
  v4.super_class = GKAchievementViewController;
  [(GKGameCenterViewController *)&v4 dealloc];
}

- (void)notifyDelegateOnWillFinish
{
  WeakRetained = objc_loadWeakRetained(&self->_achievementDelegate);
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
      v6.super_class = GKAchievementViewController;
      [(GKGameCenterViewController *)&v6 notifyDelegateOnWillFinish];
      goto LABEL_9;
    }

    v5 = v4;
  }

  [v5 achievementViewControllerDidFinish:self];
LABEL_9:
}

- (id)achievementDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_achievementDelegate);

  return WeakRetained;
}

@end