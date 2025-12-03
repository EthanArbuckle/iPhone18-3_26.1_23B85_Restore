@interface GKLeaderboardCollectionDataSource
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)cellSpacing;
- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index;
- (double)headerSpacing;
- (double)topMargin;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)allowedColumnCount:(int64_t)count;
- (void)collectionView:(id)view updateLayoutForSectionHeader:(id)header;
- (void)setupCollectionView:(id)view;
@end

@implementation GKLeaderboardCollectionDataSource

- (void)setupCollectionView:(id)view
{
  viewCopy = view;
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v10 = 0;
  }

  else
  {
    v10 = +[GKLeaderboardCell];
  }

  v5 = +[GKLeaderboardSectionHeaderView];
  [viewCopy registerNib:v10 forCellWithReuseIdentifier:@"leaderboardCollectionCell"];
  v6 = *MEMORY[0x277D767D8];
  [viewCopy registerNib:v5 forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"leaderboardListMetadataView"];
  v7 = MEMORY[0x277D757B0];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v7 nibWithNibName:@"GKLeaderboardCellAX_iOS" bundle:v8];
  [viewCopy registerNib:v9 forCellWithReuseIdentifier:@"leaderboardCollectionCellAX"];

  [viewCopy registerNib:v5 forSupplementaryViewOfKind:v6 withReuseIdentifier:@"leaderboardListMetadataViewAX"];
  [viewCopy setDataSource:self];
  [viewCopy setDelegate:self];
}

- (int64_t)allowedColumnCount:(int64_t)count
{
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    if (count >= 4)
    {
      countCopy = 4;
    }

    else
    {
      countCopy = count;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    countCopy2 = 6;
    if (count < 6)
    {
      countCopy2 = count;
    }

    v9 = 4;
    v10 = 2;
    if (countCopy2 != 3)
    {
      v10 = countCopy2;
    }

    if (countCopy2 != 5)
    {
      v9 = v10;
    }

    if (userInterfaceIdiom == 1)
    {
      countCopy = countCopy2;
    }

    else
    {
      countCopy = v9;
    }
  }

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  preferredContentSizeCategory = [currentTraitCollection preferredContentSizeCategory];

  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  if (userInterfaceIdiom2 == 1 || IsAccessibilityCategory)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  itemCount = [(GKGameLayerCollectionDataSource *)self itemCount];
  if (itemCount >= countCopy)
  {
    v19 = countCopy;
  }

  else
  {
    v19 = itemCount;
  }

  if (v17 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v17;
  }

  return v20;
}

- (double)cellSpacing
{
  v2 = 16.0;
  if ((GKIsXRUIIdiomShouldUsePadUI() & 1) == 0)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      v6 = [mEMORY[0x277D75128] statusBarOrientation] - 1;

      if (v6 <= 1)
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen bounds];
        if (v8 > 320.0)
        {
          v2 = 16.0;
        }

        else
        {
          v2 = 10.0;
        }
      }
    }
  }

  return v2;
}

- (double)headerSpacing
{
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    return 32.0;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  result = 32.0;
  if (userInterfaceIdiom != 1)
  {
    return 16.0;
  }

  return result;
}

- (double)topMargin
{
  v2 = 8.0;
  if ((GKIsXRUIIdiomShouldUsePadUI() & 1) == 0)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      return 42.0;
    }

    else
    {
      return 26.0;
    }
  }

  return v2;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v10 = *MEMORY[0x277D767D8];
  if ([kind isEqualToString:*MEMORY[0x277D767D8]])
  {
    currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
    preferredContentSizeCategory = [currentTraitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      v14 = @"leaderboardListMetadataViewAX";
    }

    else
    {
      v14 = @"leaderboardListMetadataView";
    }

    v15 = [viewCopy dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v14 forIndexPath:pathCopy];
    [(GKLeaderboardCollectionDataSource *)self updateHighlightsInSectionHeader:v15];
    [(GKLeaderboardCollectionDataSource *)self collectionView:viewCopy updateLayoutForSectionHeader:v15];
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x277D75298]);
  }

  return v15;
}

- (void)collectionView:(id)view updateLayoutForSectionHeader:(id)header
{
  headerCopy = header;
  [(GKLeaderboardCollectionDataSource *)self cellSpacing];
  v7 = v6;
  container = [headerCopy container];

  [container setSpacing:v7];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = MEMORY[0x277D75C80];
  pathCopy = path;
  viewCopy = view;
  currentTraitCollection = [v6 currentTraitCollection];
  preferredContentSizeCategory = [currentTraitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v12 = @"leaderboardCollectionCellAX";
  }

  else
  {
    v12 = @"leaderboardCollectionCell";
  }

  v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:pathCopy];

  [(GKGameLayerCollectionDataSource *)self prepareCell:v13 forItemAtIndexPath:pathCopy];

  return v13;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  collectionViewLayout = [viewCopy collectionViewLayout];
  v8 = [GameLayerPageGrid alloc];
  [viewCopy bounds];
  v10 = v9;
  v12 = v11;
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  v14 = [(GameLayerPageGrid *)v8 initWithSize:currentTraitCollection traitCollection:v10, v12];

  [(GKGameLayerCollectionDataSource *)self standardCellSizeForCollectionView:viewCopy];
  v16 = v15;
  v18 = v17;
  [(GKLeaderboardCollectionDataSource *)self cellSpacing];
  v20 = v19;
  if ([collectionViewLayout scrollDirection] == 1)
  {
    [viewCopy frame];
    v22 = v21;
    superview = [viewCopy superview];
    [superview safeAreaInsets];
    v25 = v22 - v24;
    superview2 = [viewCopy superview];
    [superview2 safeAreaInsets];
    v28 = v25 - v27;

    v29 = (v28 - v18) * 0.5;
    superview3 = [viewCopy superview];
    [superview3 safeAreaInsets];
    v32 = v29 + v31;

    superview4 = [viewCopy superview];
    [superview4 safeAreaInsets];
    v35 = v29 + v34;

    [(GKLeaderboardCollectionDataSource *)self headerSpacing];
    v37 = v36;
    superview5 = [viewCopy superview];
    [superview5 safeAreaInsets];
    v40 = v39 + 24.0;

    superview6 = [viewCopy superview];
    [superview6 safeAreaInsets];
    v43 = v20 + v42;

    v44 = 0.0;
  }

  else
  {
    [viewCopy bounds];
    v46 = v45 / (v16 + v20);
    v47 = vcvtmd_s64_f64(v46);
    if (v16 * (v47 + 1) + floor(v46) * v20 >= v45)
    {
      v48 = v47;
    }

    else
    {
      v48 = v47 + 1;
    }

    [(GKLeaderboardCollectionDataSource *)self allowedColumnCount:v48];
    superview7 = [viewCopy superview];
    [superview7 safeAreaInsets];
    v51 = v50;
    [(GKLeaderboardCollectionDataSource *)self topMargin];
    v32 = v51 + v52;

    [(GKLeaderboardCollectionDataSource *)self headerSpacing];
    v44 = v53 - v20;
    superview8 = [viewCopy superview];
    [superview8 safeAreaInsets];
    v35 = v20 + v55;

    [(GameLayerPageGrid *)v14 centeringInsets];
    v40 = v56;
    [(GameLayerPageGrid *)v14 centeringInsets];
    v43 = v57;
    v37 = 0.0;
  }

  [viewCopy setContentInset:{v32, v40, v35, v43}];

  v58 = 0.0;
  v59 = 0.0;
  v60 = v44;
  v61 = v37;
  result.right = v59;
  result.bottom = v58;
  result.left = v61;
  result.top = v60;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  layoutCopy = layout;
  [(GKLeaderboardCollectionDataSource *)self headerSpacing];
  v11 = v10;
  [(GKLeaderboardCollectionDataSource *)self collectionView:viewCopy layout:layoutCopy insetForSectionAtIndex:section];
  v13 = v12;
  v15 = v14;

  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  preferredContentSizeCategory = [currentTraitCollection preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    currentTraitCollection2 = [MEMORY[0x277D75C80] currentTraitCollection];
    if ([currentTraitCollection2 horizontalSizeClass] == 1)
    {
      currentTraitCollection3 = [MEMORY[0x277D75C80] currentTraitCollection];
      v20 = [currentTraitCollection3 verticalSizeClass] == 2;
    }

    else
    {
      v20 = 0;
    }

    [viewCopy bounds];
    v22 = v24 - v13 - v15;
    if ([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D767E8]])
    {
      v25 = 504.0;
LABEL_14:
      v30 = v11 + v25;
      goto LABEL_15;
    }

    if (![preferredContentSizeCategory isEqualToString:*MEMORY[0x277D767F0]])
    {
      if ([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D767F8]])
      {
        v25 = 424.0;
      }

      else
      {
        if ([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D76800]])
        {
          v25 = 182.0;
          v35 = 364.0;
        }

        else
        {
          v25 = 162.0;
          v35 = 324.0;
        }

        if (v20)
        {
          v25 = v35;
        }
      }

      goto LABEL_14;
    }

    *&v23 = 464.0;
LABEL_13:
    v25 = *&v23;
    goto LABEL_14;
  }

  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    [viewCopy bounds];
    v22 = v21 - v13 - v15;
    *&v23 = 50.0;
    goto LABEL_13;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  [viewCopy bounds];
  v29 = v28;
  if (userInterfaceIdiom == 1)
  {
    v22 = v28 - v13 - v15;
    *&v23 = 60.0;
    goto LABEL_13;
  }

  [viewCopy bounds];
  if (v29 < v33)
  {
    [viewCopy bounds];
    v22 = v34 - v13 - v15;
    v25 = 125.0;
    goto LABEL_14;
  }

  v30 = 262.0;
  if ([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D76820]])
  {
    v22 = 210.0;
  }

  else if ([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D76818]])
  {
    v22 = 210.0;
  }

  else
  {
    v22 = 162.0;
  }

LABEL_15:

  v31 = v22;
  v32 = v30;
  result.height = v32;
  result.width = v31;
  return result;
}

- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  v6 = [GameLayerPageGrid alloc];
  [viewCopy bounds];
  v8 = v7;
  v10 = v9;

  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  v12 = [(GameLayerPageGrid *)v6 initWithSize:currentTraitCollection traitCollection:v8, v10];

  [(GameLayerPageGrid *)v12 interColumnSpacing];
  v14 = v13;

  return v14;
}

@end