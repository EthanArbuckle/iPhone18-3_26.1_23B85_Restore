@interface GKAccessPoint
+ (GKAccessPoint)shared;
- (CGRect)frameInScreenCoordinates;
- (UIWindow)parentWindow;
- (void)configureIfNeeded;
- (void)decrementHideCount;
- (void)didTapAccessPoint;
- (void)didUpdateLocation:(int64_t)location;
- (void)didUpdateParentWindow:(id)window;
- (void)dismissGameCenter;
- (void)gameCenterViewControllerDidFinish:(id)finish;
- (void)hideAccessPoint;
- (void)incrementHideCount;
- (void)loadModels;
- (void)recordAccessPointClick;
- (void)removeWindow;
- (void)resetUI;
- (void)setLocation:(GKAccessPointLocation)location;
- (void)setParentWindow:(UIWindow *)parentWindow;
- (void)showAccessPoint;
- (void)showChallengesHubWithHandler:(id)handler;
- (void)showDashboardWithAchievementID:(id)d handler:(id)handler;
- (void)showDashboardWithLeaderboardID:(id)d playerScope:(int64_t)scope timeScope:(int64_t)timeScope handler:(id)handler;
- (void)showDashboardWithLeaderboardSetID:(id)d handler:(id)handler;
- (void)showDashboardWithPlayer:(id)player handler:(id)handler;
- (void)showDashboardWithState:(int64_t)state handler:(id)handler;
- (void)showFriendInvitesWithHandler:(id)handler;
- (void)showPlayTogetherWithChallengeDefinitionID:(id)d handler:(id)handler;
- (void)showPlayTogetherWithGameActivityDefinitionID:(id)d gameActivityInstanceID:(id)iD handler:(id)handler;
- (void)showPlayTogetherWithGameActivityDefinitionID:(id)d handler:(id)handler;
- (void)showPlayTogetherWithHandler:(id)handler;
- (void)showWindow;
- (void)triggerAccessPointWithHandler:(void *)handler;
- (void)triggerAccessPointWithState:(GKGameCenterViewControllerState)state handler:(void *)handler;
- (void)updateUI;
@end

@implementation GKAccessPoint

+ (GKAccessPoint)shared
{
  if (shared_onceToken_0[0] != -1)
  {
    +[GKAccessPoint shared];
  }

  v3 = shared_sShared_0;

  return v3;
}

uint64_t __23__GKAccessPoint_shared__block_invoke()
{
  v0 = objc_alloc_init(GKAccessPoint);
  v1 = shared_sShared_0;
  shared_sShared_0 = v0;

  [shared_sShared_0 setDelay:1.0];
  v2 = [MEMORY[0x277D0C1D8] shared];
  v3 = [v2 accessPointShowHighlights];
  [shared_sShared_0 setShowHighlights:v3];

  v4 = [MEMORY[0x277D0C1D8] shared];
  v5 = [v4 accessPointLocation];
  [shared_sShared_0 setLocation:v5];

  v6 = shared_sShared_0;

  return [v6 setWillBecomeActive:0];
}

- (void)showAccessPoint
{
  proxyForLocalPlayer = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  accountService = [proxyForLocalPlayer accountService];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__GKAccessPoint_showAccessPoint__block_invoke;
  v5[3] = &unk_279669C90;
  v5[4] = self;
  [accountService isAppDistributorThirdParty:v5];
}

void __32__GKAccessPoint_showAccessPoint__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = MEMORY[0x277D0C2A0];
    v3 = *MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v4 = GKOSLoggers();
      v3 = *v2;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __32__GKAccessPoint_showAccessPoint__block_invoke_cold_2(v3);
    }
  }

  else
  {
    v5 = (a1 + 32);
    [*(a1 + 32) configureIfNeeded];
    Current = CFAbsoluteTimeGetCurrent();
    v7 = +[GKAccessPoint shared];
    [v7 setTimeLastShown:Current];

    [MEMORY[0x277D0C138] showAccessPointInOverlay];
    v8 = MEMORY[0x277D0C2A0];
    v9 = *MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v10 = GKOSLoggers();
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __32__GKAccessPoint_showAccessPoint__block_invoke_cold_1(v5, v9);
    }

    if ([*v5 hideCount] <= 0)
    {
      v11 = [MEMORY[0x277D0C1D8] shared];
      if ([v11 accessPointIsOnAutomatically] && (objc_msgSend(MEMORY[0x277D0C048], "isGameCenter") & 1) == 0 && (*MEMORY[0x277D0C258] & 1) == 0 && (objc_msgSend(MEMORY[0x277D0C048], "isPreferences") & 1) == 0)
      {
        v12 = [MEMORY[0x277D0C048] isFirstParty];

        if (v12)
        {
          return;
        }

        v11 = +[GKAccessPoint shared];
        if (![v11 isActive])
        {
          v13 = +[GKAccessPoint shared];
          v14 = [v13 willBecomeActive];

          if (v14)
          {
            return;
          }

          v15 = +[GKAccessPoint shared];
          [v15 setWillBecomeActive:1];

          v11 = +[GKAccessPoint shared];
          [v11 delay];
          v17 = dispatch_time(0, (v16 * 1000000000.0));
          dispatch_after(v17, MEMORY[0x277D85CD0], &__block_literal_global_39);
        }
      }
    }
  }
}

void __32__GKAccessPoint_showAccessPoint__block_invoke_37()
{
  v0 = +[GKAccessPoint shared];
  [v0 setActive:1];

  v1 = +[GKAccessPoint shared];
  [v1 setWillBecomeActive:0];
}

- (void)hideAccessPoint
{
  selfCopy = self;
  [a2 hideCount];
  v4 = _gkTabStringForTabLevel();
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a2, "hideCount")}];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24DE53000, v6, v7, "****** %@ - hideCount++  --> %@", v8, v9, v10, v11, v12);
}

- (void)incrementHideCount
{
  [(GKAccessPoint *)self setHideCount:[(GKAccessPoint *)self hideCount]+ 1];
  if ([(GKAccessPoint *)self hideCount]>= 1)
  {

    [(GKAccessPoint *)self setIsPresentingGameCenter:1];
  }
}

- (void)decrementHideCount
{
  [(GKAccessPoint *)self setHideCount:[(GKAccessPoint *)self hideCount]- 1];
  if ([(GKAccessPoint *)self hideCount]<= 0)
  {
    [(GKAccessPoint *)self setHideCount:0];

    [(GKAccessPoint *)self setIsPresentingGameCenter:0];
  }
}

- (void)dismissGameCenter
{
  gameCenterViewController = [(GKAccessPoint *)self gameCenterViewController];
  [(GKAccessPoint *)self gameCenterViewControllerDidFinish:gameCenterViewController];
}

- (void)triggerAccessPointWithHandler:(void *)handler
{
  v4 = handler;
  [(GKAccessPoint *)self recordAccessPointClick];
  [(GKAccessPoint *)self showDashboardWithState:-1 handler:v4];
}

- (void)triggerAccessPointWithState:(GKGameCenterViewControllerState)state handler:(void *)handler
{
  v6 = handler;
  [(GKAccessPoint *)self recordAccessPointClick];
  [(GKAccessPoint *)self showDashboardWithState:state handler:v6];
}

- (void)setLocation:(GKAccessPointLocation)location
{
  if (self->_location != location)
  {
    self->_location = location;
    [(GKAccessPoint *)self didUpdateLocation:?];
  }
}

- (void)setParentWindow:(UIWindow *)parentWindow
{
  obj = parentWindow;
  WeakRetained = objc_loadWeakRetained(&self->_parentWindow);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_parentWindow, obj);
    [(GKAccessPoint *)self didUpdateParentWindow:obj];
  }
}

- (UIWindow)parentWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_parentWindow);

  return WeakRetained;
}

- (CGRect)frameInScreenCoordinates
{
  x = self->_frameInScreenCoordinates.origin.x;
  y = self->_frameInScreenCoordinates.origin.y;
  width = self->_frameInScreenCoordinates.size.width;
  height = self->_frameInScreenCoordinates.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)configureIfNeeded
{
  selfCopy = self;
  GKAccessPoint.configureIfNeeded()();
}

- (void)showWindow
{
  selfCopy = self;
  GKAccessPoint.showWindow()();
}

- (void)removeWindow
{
  selfCopy = self;
  GKAccessPoint.removeWindow()();
}

- (void)updateUI
{
  selfCopy = self;
  GKAccessPoint.updateUI()();
}

- (void)resetUI
{
  selfCopy = self;
  GKAccessPoint.resetUI()();
}

- (void)loadModels
{
  selfCopy = self;
  GKAccessPoint.loadModels()();
}

- (void)didUpdateLocation:(int64_t)location
{
  selfCopy = self;
  GKAccessPoint.didUpdateLocation(_:)(location);
}

- (void)didUpdateParentWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  GKAccessPoint.didUpdateParentWindow(_:)(selfCopy);
}

- (void)didTapAccessPoint
{
  selfCopy = self;
  GKAccessPoint.didTapAccessPoint()();
}

- (void)showDashboardWithState:(int64_t)state handler:(id)handler
{
  v5 = _Block_copy(handler);
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v5 = sub_24E00CEE0;
  }

  selfCopy = self;
  GKAccessPoint.showDashboard(state:handler:)();
  sub_24DE73FA0(v5);
}

- (void)showDashboardWithAchievementID:(id)d handler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_24E347CF8();
  v8 = v7;
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v5 = sub_24E00CEE0;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  GKAccessPoint.showDashboard(achievementID:handler:)(v6, v8, v5, v9);
  sub_24DE73FA0(v5);
}

- (void)showDashboardWithLeaderboardSetID:(id)d handler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_24E347CF8();
  v8 = v7;
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v5 = sub_24E00CEE0;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  GKAccessPoint.showDashboard(leaderboardSetID:handler:)(v6, v8, v5, v9);
  sub_24DE73FA0(v5);
}

- (void)showDashboardWithLeaderboardID:(id)d playerScope:(int64_t)scope timeScope:(int64_t)timeScope handler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = sub_24E347CF8();
  v12 = v11;
  if (v9)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    v9 = sub_24E00CEE0;
  }

  else
  {
    v13 = 0;
  }

  selfCopy = self;
  GKAccessPoint.showDashboard(leaderboardID:playerScope:timeScope:handler:)(v10, v12, scope, timeScope, v9, v13);
  sub_24DE73FA0(v9);
}

- (void)showDashboardWithPlayer:(id)player handler:(id)handler
{
  v6 = _Block_copy(handler);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_24E00CEE0;
  }

  playerCopy = player;
  selfCopy = self;
  GKAccessPoint.showDashboard(player:handler:)();
  sub_24DE73FA0(v6);
}

- (void)showPlayTogetherWithHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  GKAccessPoint.showPlayTogether(handler:)(sub_24E00CEE0, v5, v7, v8, v9, v10);
}

- (void)showPlayTogetherWithChallengeDefinitionID:(id)d handler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = v6;
  if (d)
  {
    v8 = sub_24E347CF8();
    d = v9;
    if (v7)
    {
LABEL_3:
      v10 = swift_allocObject();
      *(v10 + 16) = v7;
      v7 = sub_24E00CEE0;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  selfCopy = self;
  GKAccessPoint.showPlayTogether(challengeDefinitionID:handler:)(v8, d, v7, v10, v12, v13);
  sub_24DE73FA0(v7);
}

- (void)showPlayTogetherWithGameActivityDefinitionID:(id)d handler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = v6;
  if (d)
  {
    v8 = sub_24E347CF8();
    d = v9;
    if (v7)
    {
LABEL_3:
      v10 = swift_allocObject();
      *(v10 + 16) = v7;
      v7 = sub_24E00CEE0;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  selfCopy = self;
  GKAccessPoint.showPlayTogether(gameActivityDefinitionID:handler:)(v8, d, v7, v10, v12, v13);
  sub_24DE73FA0(v7);
}

- (void)showPlayTogetherWithGameActivityDefinitionID:(id)d gameActivityInstanceID:(id)iD handler:(id)handler
{
  v8 = _Block_copy(handler);
  if (d)
  {
    v9 = sub_24E347CF8();
    d = v10;
    if (iD)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v9 = 0;
  if (!iD)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = sub_24E347CF8();
  iD = v12;
  if (v8)
  {
LABEL_4:
    v13 = swift_allocObject();
    *(v13 + 16) = v8;
    v8 = sub_24E00CEE0;
    goto LABEL_8;
  }

LABEL_7:
  v13 = 0;
LABEL_8:
  selfCopy = self;
  GKAccessPoint.showPlayTogether(gameActivityDefinitionID:gameActivityInstanceID:handler:)(v9, d, v11, iD, v8, v13);
  sub_24DE73FA0(v8);
}

- (void)showFriendInvitesWithHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_24E00CEE0;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  GKAccessPoint.showFriendInvites(handler:)(v4, v5);
  sub_24DE73FA0(v4);
}

- (void)showChallengesHubWithHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_24DFA0D08;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  GKAccessPoint.showChallengesHub(handler:)(v4, v5);
  sub_24DE73FA0(v4);
}

- (void)gameCenterViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  selfCopy = self;
  GKAccessPoint.gameCenterViewControllerDidFinish(_:)(finishCopy);
}

- (void)recordAccessPointClick
{
  selfCopy = self;
  GKAccessPoint.recordAccessPointClick()();
}

void __32__GKAccessPoint_showAccessPoint__block_invoke_cold_1(id *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  [v3 hideCount];
  v5 = _gkTabStringForTabLevel();
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*a1, "hideCount")}];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24DE53000, v7, v8, "****** %@ - hideCount--  --> %@", v9, v10, v11, v12, v13);
}

@end