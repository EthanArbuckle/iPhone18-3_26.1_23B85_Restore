@interface GKChallengeDataSource
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (void)setupCollectionView:(id)a3;
@end

@implementation GKChallengeDataSource

- (void)setupCollectionView:(id)a3
{
  v6.receiver = self;
  v6.super_class = GKChallengeDataSource;
  v4 = a3;
  [(GKDashboardChallengeDataSource *)&v6 setupCollectionView:v4];
  v5 = [GKChallengeListViewSectionHeader _gkNib:v6.receiver];
  [v4 registerNib:v5 forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"GKCollectionDataSourceHeader"];
  [v4 setDataSource:self];
  [v4 setDelegate:self];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v21.receiver = self;
  v21.super_class = GKChallengeDataSource;
  v6 = a4;
  v7 = [(GKDashboardChallengeDataSource *)&v21 collectionView:a3 cellForItemAtIndexPath:v6];
  [v7 setClipsToBounds:{1, v21.receiver, v21.super_class}];
  v8 = *MEMORY[0x277CDA138];
  v9 = [v7 layer];
  [v9 setCornerCurve:v8];

  v10 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.0700000003];
  v11 = [v7 contentView];
  [v11 setBackgroundColor:v10];

  [v7 setDefaultContentBackgroundColor:v10];
  if ([v6 item])
  {
    v12 = 0;
  }

  else
  {
    v12 = 3;
  }

  v13 = [v6 item];
  if (v13 == [(GKDashboardChallengeDataSource *)self itemCount]- 1)
  {
    v14 = v12 | 0xC;
  }

  else
  {
    v14 = v12;
  }

  v15 = [v7 layer];
  [v15 setMaskedCorners:v14];

  if (v14)
  {
    v16 = 10.0;
  }

  else
  {
    v16 = 0.0;
  }

  v17 = [v7 layer];
  [v17 setCornerRadius:v16];

  v18 = [v6 row];
  if (v18 == [(GKDashboardChallengeDataSource *)self itemCount]- 1)
  {
    v19 = [v7 seperatorLine];
    [v19 setHidden:1];
  }

  return v7;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = *MEMORY[0x277D767D8];
  if ([a4 isEqualToString:*MEMORY[0x277D767D8]])
  {
    v11 = [v8 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:@"GKCollectionDataSourceHeader" forIndexPath:v9];
    v12 = -[GKCollectionDataSource headerTextForSection:](self, "headerTextForSection:", [v9 section]);
    v13 = [v11 titleLabel];
    [v13 setText:v12];

    v14 = [v11 secondaryLabel];
    [v14 setHidden:1];

    v15 = [MEMORY[0x277D75348] clearColor];
    [v11 setBackgroundColor:v15];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v5 = a3;
  +[GKDashboardPlayerCell defaultSize];
  v7 = v6;
  v8 = [v5 traitCollection];

  v9 = [v8 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v9);

  if (IsAccessibilityCategory)
  {
    v11 = v7 + v7;
  }

  else
  {
    v11 = v7;
  }

  v12 = 0.0;
  result.height = v11;
  result.width = v12;
  return result;
}

@end