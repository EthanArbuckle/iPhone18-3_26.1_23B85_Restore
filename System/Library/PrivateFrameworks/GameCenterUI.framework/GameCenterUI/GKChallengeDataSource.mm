@interface GKChallengeDataSource
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)setupCollectionView:(id)view;
@end

@implementation GKChallengeDataSource

- (void)setupCollectionView:(id)view
{
  v6.receiver = self;
  v6.super_class = GKChallengeDataSource;
  viewCopy = view;
  [(GKDashboardChallengeDataSource *)&v6 setupCollectionView:viewCopy];
  v5 = [GKChallengeListViewSectionHeader _gkNib:v6.receiver];
  [viewCopy registerNib:v5 forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"GKCollectionDataSourceHeader"];
  [viewCopy setDataSource:self];
  [viewCopy setDelegate:self];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v21.receiver = self;
  v21.super_class = GKChallengeDataSource;
  pathCopy = path;
  v7 = [(GKDashboardChallengeDataSource *)&v21 collectionView:view cellForItemAtIndexPath:pathCopy];
  [v7 setClipsToBounds:{1, v21.receiver, v21.super_class}];
  v8 = *MEMORY[0x277CDA138];
  layer = [v7 layer];
  [layer setCornerCurve:v8];

  v10 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.0700000003];
  contentView = [v7 contentView];
  [contentView setBackgroundColor:v10];

  [v7 setDefaultContentBackgroundColor:v10];
  if ([pathCopy item])
  {
    v12 = 0;
  }

  else
  {
    v12 = 3;
  }

  item = [pathCopy item];
  if (item == [(GKDashboardChallengeDataSource *)self itemCount]- 1)
  {
    v14 = v12 | 0xC;
  }

  else
  {
    v14 = v12;
  }

  layer2 = [v7 layer];
  [layer2 setMaskedCorners:v14];

  if (v14)
  {
    v16 = 10.0;
  }

  else
  {
    v16 = 0.0;
  }

  layer3 = [v7 layer];
  [layer3 setCornerRadius:v16];

  v18 = [pathCopy row];
  if (v18 == [(GKDashboardChallengeDataSource *)self itemCount]- 1)
  {
    seperatorLine = [v7 seperatorLine];
    [seperatorLine setHidden:1];
  }

  return v7;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v10 = *MEMORY[0x277D767D8];
  if ([kind isEqualToString:*MEMORY[0x277D767D8]])
  {
    v11 = [viewCopy dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:@"GKCollectionDataSourceHeader" forIndexPath:pathCopy];
    v12 = -[GKCollectionDataSource headerTextForSection:](self, "headerTextForSection:", [pathCopy section]);
    titleLabel = [v11 titleLabel];
    [titleLabel setText:v12];

    secondaryLabel = [v11 secondaryLabel];
    [secondaryLabel setHidden:1];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [v11 setBackgroundColor:clearColor];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  +[GKDashboardPlayerCell defaultSize];
  v7 = v6;
  traitCollection = [viewCopy traitCollection];

  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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