@interface GKLeaderboardAddFriendsCell
- (BOOL)lineVisible;
- (CGSize)preferredLayoutSizeFittingSize:(CGSize)a3;
- (_TtC12GameCenterUI14EmptyStateView)noFriendsView;
- (_TtC12GameCenterUI22GKAddFriendsLockupView)addFriendsLockupView;
- (void)awakeFromNib;
- (void)clearContainer;
- (void)configureAddFriendsLockupWithMetricsPageId:(id)a3 handler:(id)a4;
- (void)configureNoFriendsViewWithHandler:(id)a3;
- (void)setLineVisible:(BOOL)a3;
@end

@implementation GKLeaderboardAddFriendsCell

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = GKLeaderboardAddFriendsCell;
  [(GKLeaderboardAddFriendsCell *)&v2 awakeFromNib];
}

- (CGSize)preferredLayoutSizeFittingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  [(GKLeaderboardAddFriendsCell *)v5 frame];
  [(GKLeaderboardAddFriendsCell *)v5 setFrame:?];
  [(GKLeaderboardAddFriendsCell *)v5 setNeedsLayout];
  [(GKLeaderboardAddFriendsCell *)v5 layoutIfNeeded];
  v6 = [(GKLeaderboardAddFriendsCell *)v5 container];
  v7 = [v6 subviews];

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [(GKLeaderboardAddFriendsCell *)v5 container];
  v9 = [v8 subviews];
  v10 = [v9 objectAtIndexedSubscript:0];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

LABEL_6:
      v12 = *MEMORY[0x277CBF3A8];
      v14 = *(MEMORY[0x277CBF3A8] + 8);
      goto LABEL_7;
    }
  }

  [v10 measurementsWithFitting:v5 in:{width, height}];
  v12 = v11;
  v14 = v13;

LABEL_7:
  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)configureAddFriendsLockupWithMetricsPageId:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKLeaderboardAddFriendsCell *)self topLine];
  [v8 setHidden:0];

  [(GKLeaderboardAddFriendsCell *)self clearContainer];
  v9 = [(GKLeaderboardAddFriendsCell *)self friendCount]< 1;
  v10 = [_TtC12GameCenterUI22GKAddFriendsLockupView alloc];
  v14 = [(GKAddFriendsLockupView *)v10 initWithFrame:v9 friendState:v7 metricsPageId:@"leaderboard" metricsPageType:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  [(GKAddFriendsLockupView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [(GKLeaderboardAddFriendsCell *)self container];
  [v11 addSubview:v14];

  v12 = MEMORY[0x277CCAAD0];
  v13 = [(GKLeaderboardAddFriendsCell *)self container];
  [v12 _gkInstallEdgeConstraintsForView:v14 containedWithinParentView:v13];

  [(GKAddFriendsLockupView *)v14 setAddFriendsHandler:v6];
}

- (void)configureNoFriendsViewWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(GKLeaderboardAddFriendsCell *)self topLine];
  [v5 setHidden:1];

  [(GKLeaderboardAddFriendsCell *)self clearContainer];
  if ([(GKLeaderboardAddFriendsCell *)self friendCount]<= 0)
  {
    +[_TtC12GameCenterUI14EmptyStateView addFriendsEmptyStateView];
  }

  else
  {
    +[_TtC12GameCenterUI14EmptyStateView addAdditionalFriendsEmptyStateView];
  }
  v9 = ;
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(GKLeaderboardAddFriendsCell *)self container];
  [v6 addSubview:v9];

  v7 = MEMORY[0x277CCAAD0];
  v8 = [(GKLeaderboardAddFriendsCell *)self container];
  [v7 _gkInstallEdgeConstraintsForView:v9 containedWithinParentView:v8];

  [v9 setButtonActionBlock:v4];
}

- (void)clearContainer
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [(GKLeaderboardAddFriendsCell *)self container];
  v3 = [v2 subviews];
  v4 = [v3 copy];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) removeFromSuperview];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setLineVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(GKLeaderboardAddFriendsCell *)self topLine];
  [v4 setHidden:!v3];
}

- (BOOL)lineVisible
{
  v2 = [(GKLeaderboardAddFriendsCell *)self topLine];
  v3 = [v2 isHidden];

  return v3 ^ 1;
}

- (_TtC12GameCenterUI22GKAddFriendsLockupView)addFriendsLockupView
{
  WeakRetained = objc_loadWeakRetained(&self->_addFriendsLockupView);

  return WeakRetained;
}

- (_TtC12GameCenterUI14EmptyStateView)noFriendsView
{
  WeakRetained = objc_loadWeakRetained(&self->_noFriendsView);

  return WeakRetained;
}

@end