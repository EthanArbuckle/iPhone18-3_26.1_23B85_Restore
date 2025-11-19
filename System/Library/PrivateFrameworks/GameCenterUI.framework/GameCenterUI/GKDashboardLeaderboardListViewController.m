@interface GKDashboardLeaderboardListViewController
- (GKDashboardLeaderboardListViewController)initWithGameRecord:(id)a3 leaderboardSet:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation GKDashboardLeaderboardListViewController

- (GKDashboardLeaderboardListViewController)initWithGameRecord:(id)a3 leaderboardSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = GKDashboardLeaderboardListViewController;
  v8 = [(GKDashboardCollectionViewController *)&v13 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(GKDashboardCollectionViewController *)v8 setAutoWidthUsesTwoColumnsWhenSpace:1];
    v10 = [[GKDashboardLeaderboardListDataSource alloc] initWithGameRecord:v6 leaderboardSet:v7];
    [(GKDashboardCollectionViewController *)v9 setDataSource:v10];

    v11 = [(GKDashboardCollectionViewController *)v9 dataSource];
    [v11 setUseStandardHeaders:1];
  }

  return v9;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = GKDashboardLeaderboardListViewController;
  [(GKDashboardCollectionViewController *)&v6 viewDidLoad];
  v3 = [(GKDashboardCollectionViewController *)self collectionView];
  v4 = [v3 collectionViewLayout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 sectionInset];
    [v4 setSectionInset:v5 + 0.0];
  }
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  if ([v8 isEqualToString:@"GKCollectionLayoutTopHeaderKind"])
  {
    v11 = [v10 dequeueReusableSupplementaryViewOfKind:@"GKCollectionLayoutTopHeaderKind" withReuseIdentifier:@"logo-header" forIndexPath:v9];

    v10 = [(GKDashboardCollectionViewController *)self dataSource];
    v12 = [v10 sectionHeaderText];
    v13 = [v11 titleLabel];
    [v13 setText:v12];

    [v10 itemCount];
    v14 = MEMORY[0x277CCACA8];
    v15 = GKGameCenterUIFrameworkBundle();
    v16 = GKGetLocalizedStringFromTableInBundle();

    v17 = GKFormattedStringWithGroupingFromInteger();
    v9 = [v14 stringWithFormat:v16, v17];

    v18 = [v11 subtitleLabel];
    [v18 setText:v9];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = GKDashboardLeaderboardListViewController;
    v11 = [(GKDashboardCollectionViewController *)&v20 collectionView:v10 viewForSupplementaryElementOfKind:v8 atIndexPath:v9];
  }

  return v11;
}

@end