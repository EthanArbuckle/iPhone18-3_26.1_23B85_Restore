@interface GKDashboardLeaderboardListViewController
- (GKDashboardLeaderboardListViewController)initWithGameRecord:(id)record leaderboardSet:(id)set;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation GKDashboardLeaderboardListViewController

- (GKDashboardLeaderboardListViewController)initWithGameRecord:(id)record leaderboardSet:(id)set
{
  recordCopy = record;
  setCopy = set;
  v13.receiver = self;
  v13.super_class = GKDashboardLeaderboardListViewController;
  v8 = [(GKDashboardCollectionViewController *)&v13 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(GKDashboardCollectionViewController *)v8 setAutoWidthUsesTwoColumnsWhenSpace:1];
    v10 = [[GKDashboardLeaderboardListDataSource alloc] initWithGameRecord:recordCopy leaderboardSet:setCopy];
    [(GKDashboardCollectionViewController *)v9 setDataSource:v10];

    dataSource = [(GKDashboardCollectionViewController *)v9 dataSource];
    [dataSource setUseStandardHeaders:1];
  }

  return v9;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = GKDashboardLeaderboardListViewController;
  [(GKDashboardCollectionViewController *)&v6 viewDidLoad];
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [collectionViewLayout sectionInset];
    [collectionViewLayout setSectionInset:v5 + 0.0];
  }
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  viewCopy = view;
  if ([kindCopy isEqualToString:@"GKCollectionLayoutTopHeaderKind"])
  {
    v11 = [viewCopy dequeueReusableSupplementaryViewOfKind:@"GKCollectionLayoutTopHeaderKind" withReuseIdentifier:@"logo-header" forIndexPath:pathCopy];

    viewCopy = [(GKDashboardCollectionViewController *)self dataSource];
    sectionHeaderText = [viewCopy sectionHeaderText];
    titleLabel = [v11 titleLabel];
    [titleLabel setText:sectionHeaderText];

    [viewCopy itemCount];
    v14 = MEMORY[0x277CCACA8];
    v15 = GKGameCenterUIFrameworkBundle();
    v16 = GKGetLocalizedStringFromTableInBundle();

    v17 = GKFormattedStringWithGroupingFromInteger();
    pathCopy = [v14 stringWithFormat:v16, v17];

    subtitleLabel = [v11 subtitleLabel];
    [subtitleLabel setText:pathCopy];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = GKDashboardLeaderboardListViewController;
    v11 = [(GKDashboardCollectionViewController *)&v20 collectionView:viewCopy viewForSupplementaryElementOfKind:kindCopy atIndexPath:pathCopy];
  }

  return v11;
}

@end