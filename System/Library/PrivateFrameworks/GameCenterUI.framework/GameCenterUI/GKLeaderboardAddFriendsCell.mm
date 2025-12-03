@interface GKLeaderboardAddFriendsCell
- (BOOL)lineVisible;
- (CGSize)preferredLayoutSizeFittingSize:(CGSize)size;
- (_TtC12GameCenterUI14EmptyStateView)noFriendsView;
- (_TtC12GameCenterUI22GKAddFriendsLockupView)addFriendsLockupView;
- (void)awakeFromNib;
- (void)clearContainer;
- (void)configureAddFriendsLockupWithMetricsPageId:(id)id handler:(id)handler;
- (void)configureNoFriendsViewWithHandler:(id)handler;
- (void)setLineVisible:(BOOL)visible;
@end

@implementation GKLeaderboardAddFriendsCell

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = GKLeaderboardAddFriendsCell;
  [(GKLeaderboardAddFriendsCell *)&v2 awakeFromNib];
}

- (CGSize)preferredLayoutSizeFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  [(GKLeaderboardAddFriendsCell *)selfCopy frame];
  [(GKLeaderboardAddFriendsCell *)selfCopy setFrame:?];
  [(GKLeaderboardAddFriendsCell *)selfCopy setNeedsLayout];
  [(GKLeaderboardAddFriendsCell *)selfCopy layoutIfNeeded];
  container = [(GKLeaderboardAddFriendsCell *)selfCopy container];
  subviews = [container subviews];

  if (!subviews)
  {
    goto LABEL_6;
  }

  container2 = [(GKLeaderboardAddFriendsCell *)selfCopy container];
  subviews2 = [container2 subviews];
  v10 = [subviews2 objectAtIndexedSubscript:0];

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

  [v10 measurementsWithFitting:selfCopy in:{width, height}];
  v12 = v11;
  v14 = v13;

LABEL_7:
  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)configureAddFriendsLockupWithMetricsPageId:(id)id handler:(id)handler
{
  handlerCopy = handler;
  idCopy = id;
  topLine = [(GKLeaderboardAddFriendsCell *)self topLine];
  [topLine setHidden:0];

  [(GKLeaderboardAddFriendsCell *)self clearContainer];
  v9 = [(GKLeaderboardAddFriendsCell *)self friendCount]< 1;
  v10 = [_TtC12GameCenterUI22GKAddFriendsLockupView alloc];
  v14 = [(GKAddFriendsLockupView *)v10 initWithFrame:v9 friendState:idCopy metricsPageId:@"leaderboard" metricsPageType:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  [(GKAddFriendsLockupView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  container = [(GKLeaderboardAddFriendsCell *)self container];
  [container addSubview:v14];

  v12 = MEMORY[0x277CCAAD0];
  container2 = [(GKLeaderboardAddFriendsCell *)self container];
  [v12 _gkInstallEdgeConstraintsForView:v14 containedWithinParentView:container2];

  [(GKAddFriendsLockupView *)v14 setAddFriendsHandler:handlerCopy];
}

- (void)configureNoFriendsViewWithHandler:(id)handler
{
  handlerCopy = handler;
  topLine = [(GKLeaderboardAddFriendsCell *)self topLine];
  [topLine setHidden:1];

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
  container = [(GKLeaderboardAddFriendsCell *)self container];
  [container addSubview:v9];

  v7 = MEMORY[0x277CCAAD0];
  container2 = [(GKLeaderboardAddFriendsCell *)self container];
  [v7 _gkInstallEdgeConstraintsForView:v9 containedWithinParentView:container2];

  [v9 setButtonActionBlock:handlerCopy];
}

- (void)clearContainer
{
  v15 = *MEMORY[0x277D85DE8];
  container = [(GKLeaderboardAddFriendsCell *)self container];
  subviews = [container subviews];
  v4 = [subviews copy];

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

- (void)setLineVisible:(BOOL)visible
{
  visibleCopy = visible;
  topLine = [(GKLeaderboardAddFriendsCell *)self topLine];
  [topLine setHidden:!visibleCopy];
}

- (BOOL)lineVisible
{
  topLine = [(GKLeaderboardAddFriendsCell *)self topLine];
  isHidden = [topLine isHidden];

  return isHidden ^ 1;
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