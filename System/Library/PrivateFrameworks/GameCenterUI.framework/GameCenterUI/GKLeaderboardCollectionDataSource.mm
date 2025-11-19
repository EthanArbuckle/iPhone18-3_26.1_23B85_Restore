@interface GKLeaderboardCollectionDataSource
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)cellSpacing;
- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5;
- (double)headerSpacing;
- (double)topMargin;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)allowedColumnCount:(int64_t)a3;
- (void)collectionView:(id)a3 updateLayoutForSectionHeader:(id)a4;
- (void)setupCollectionView:(id)a3;
@end

@implementation GKLeaderboardCollectionDataSource

- (void)setupCollectionView:(id)a3
{
  v4 = a3;
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v10 = 0;
  }

  else
  {
    v10 = +[GKLeaderboardCell];
  }

  v5 = +[GKLeaderboardSectionHeaderView];
  [v4 registerNib:v10 forCellWithReuseIdentifier:@"leaderboardCollectionCell"];
  v6 = *MEMORY[0x277D767D8];
  [v4 registerNib:v5 forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"leaderboardListMetadataView"];
  v7 = MEMORY[0x277D757B0];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v7 nibWithNibName:@"GKLeaderboardCellAX_iOS" bundle:v8];
  [v4 registerNib:v9 forCellWithReuseIdentifier:@"leaderboardCollectionCellAX"];

  [v4 registerNib:v5 forSupplementaryViewOfKind:v6 withReuseIdentifier:@"leaderboardListMetadataViewAX"];
  [v4 setDataSource:self];
  [v4 setDelegate:self];
}

- (int64_t)allowedColumnCount:(int64_t)a3
{
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    if (a3 >= 4)
    {
      v5 = 4;
    }

    else
    {
      v5 = a3;
    }
  }

  else
  {
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    v8 = 6;
    if (a3 < 6)
    {
      v8 = a3;
    }

    v9 = 4;
    v10 = 2;
    if (v8 != 3)
    {
      v10 = v8;
    }

    if (v8 != 5)
    {
      v9 = v10;
    }

    if (v7 == 1)
    {
      v5 = v8;
    }

    else
    {
      v5 = v9;
    }
  }

  v11 = [MEMORY[0x277D75418] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  v13 = [MEMORY[0x277D75C80] currentTraitCollection];
  v14 = [v13 preferredContentSizeCategory];

  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v14);
  if (v12 == 1 || IsAccessibilityCategory)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  v18 = [(GKGameLayerCollectionDataSource *)self itemCount];
  if (v18 >= v5)
  {
    v19 = v5;
  }

  else
  {
    v19 = v18;
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
    v3 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 != 1)
    {
      v5 = [MEMORY[0x277D75128] sharedApplication];
      v6 = [v5 statusBarOrientation] - 1;

      if (v6 <= 1)
      {
        v7 = [MEMORY[0x277D759A0] mainScreen];
        [v7 bounds];
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

  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  result = 32.0;
  if (v4 != 1)
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
    v3 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 == 1)
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

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = *MEMORY[0x277D767D8];
  if ([a4 isEqualToString:*MEMORY[0x277D767D8]])
  {
    v11 = [MEMORY[0x277D75C80] currentTraitCollection];
    v12 = [v11 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v12);

    if (IsAccessibilityCategory)
    {
      v14 = @"leaderboardListMetadataViewAX";
    }

    else
    {
      v14 = @"leaderboardListMetadataView";
    }

    v15 = [v8 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v14 forIndexPath:v9];
    [(GKLeaderboardCollectionDataSource *)self updateHighlightsInSectionHeader:v15];
    [(GKLeaderboardCollectionDataSource *)self collectionView:v8 updateLayoutForSectionHeader:v15];
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x277D75298]);
  }

  return v15;
}

- (void)collectionView:(id)a3 updateLayoutForSectionHeader:(id)a4
{
  v5 = a4;
  [(GKLeaderboardCollectionDataSource *)self cellSpacing];
  v7 = v6;
  v8 = [v5 container];

  [v8 setSpacing:v7];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = MEMORY[0x277D75C80];
  v7 = a4;
  v8 = a3;
  v9 = [v6 currentTraitCollection];
  v10 = [v9 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v10);

  if (IsAccessibilityCategory)
  {
    v12 = @"leaderboardCollectionCellAX";
  }

  else
  {
    v12 = @"leaderboardCollectionCell";
  }

  v13 = [v8 dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:v7];

  [(GKGameLayerCollectionDataSource *)self prepareCell:v13 forItemAtIndexPath:v7];

  return v13;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v6 = a3;
  v7 = [v6 collectionViewLayout];
  v8 = [GameLayerPageGrid alloc];
  [v6 bounds];
  v10 = v9;
  v12 = v11;
  v13 = [MEMORY[0x277D75C80] currentTraitCollection];
  v14 = [(GameLayerPageGrid *)v8 initWithSize:v13 traitCollection:v10, v12];

  [(GKGameLayerCollectionDataSource *)self standardCellSizeForCollectionView:v6];
  v16 = v15;
  v18 = v17;
  [(GKLeaderboardCollectionDataSource *)self cellSpacing];
  v20 = v19;
  if ([v7 scrollDirection] == 1)
  {
    [v6 frame];
    v22 = v21;
    v23 = [v6 superview];
    [v23 safeAreaInsets];
    v25 = v22 - v24;
    v26 = [v6 superview];
    [v26 safeAreaInsets];
    v28 = v25 - v27;

    v29 = (v28 - v18) * 0.5;
    v30 = [v6 superview];
    [v30 safeAreaInsets];
    v32 = v29 + v31;

    v33 = [v6 superview];
    [v33 safeAreaInsets];
    v35 = v29 + v34;

    [(GKLeaderboardCollectionDataSource *)self headerSpacing];
    v37 = v36;
    v38 = [v6 superview];
    [v38 safeAreaInsets];
    v40 = v39 + 24.0;

    v41 = [v6 superview];
    [v41 safeAreaInsets];
    v43 = v20 + v42;

    v44 = 0.0;
  }

  else
  {
    [v6 bounds];
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
    v49 = [v6 superview];
    [v49 safeAreaInsets];
    v51 = v50;
    [(GKLeaderboardCollectionDataSource *)self topMargin];
    v32 = v51 + v52;

    [(GKLeaderboardCollectionDataSource *)self headerSpacing];
    v44 = v53 - v20;
    v54 = [v6 superview];
    [v54 safeAreaInsets];
    v35 = v20 + v55;

    [(GameLayerPageGrid *)v14 centeringInsets];
    v40 = v56;
    [(GameLayerPageGrid *)v14 centeringInsets];
    v43 = v57;
    v37 = 0.0;
  }

  [v6 setContentInset:{v32, v40, v35, v43}];

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

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  [(GKLeaderboardCollectionDataSource *)self headerSpacing];
  v11 = v10;
  [(GKLeaderboardCollectionDataSource *)self collectionView:v8 layout:v9 insetForSectionAtIndex:a5];
  v13 = v12;
  v15 = v14;

  v16 = [MEMORY[0x277D75C80] currentTraitCollection];
  v17 = [v16 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(v17))
  {
    v18 = [MEMORY[0x277D75C80] currentTraitCollection];
    if ([v18 horizontalSizeClass] == 1)
    {
      v19 = [MEMORY[0x277D75C80] currentTraitCollection];
      v20 = [v19 verticalSizeClass] == 2;
    }

    else
    {
      v20 = 0;
    }

    [v8 bounds];
    v22 = v24 - v13 - v15;
    if ([v17 isEqualToString:*MEMORY[0x277D767E8]])
    {
      v25 = 504.0;
LABEL_14:
      v30 = v11 + v25;
      goto LABEL_15;
    }

    if (![v17 isEqualToString:*MEMORY[0x277D767F0]])
    {
      if ([v17 isEqualToString:*MEMORY[0x277D767F8]])
      {
        v25 = 424.0;
      }

      else
      {
        if ([v17 isEqualToString:*MEMORY[0x277D76800]])
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
    [v8 bounds];
    v22 = v21 - v13 - v15;
    *&v23 = 50.0;
    goto LABEL_13;
  }

  v26 = [MEMORY[0x277D75418] currentDevice];
  v27 = [v26 userInterfaceIdiom];

  [v8 bounds];
  v29 = v28;
  if (v27 == 1)
  {
    v22 = v28 - v13 - v15;
    *&v23 = 60.0;
    goto LABEL_13;
  }

  [v8 bounds];
  if (v29 < v33)
  {
    [v8 bounds];
    v22 = v34 - v13 - v15;
    v25 = 125.0;
    goto LABEL_14;
  }

  v30 = 262.0;
  if ([v17 isEqualToString:*MEMORY[0x277D76820]])
  {
    v22 = 210.0;
  }

  else if ([v17 isEqualToString:*MEMORY[0x277D76818]])
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

- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5
{
  v5 = a3;
  v6 = [GameLayerPageGrid alloc];
  [v5 bounds];
  v8 = v7;
  v10 = v9;

  v11 = [MEMORY[0x277D75C80] currentTraitCollection];
  v12 = [(GameLayerPageGrid *)v6 initWithSize:v11 traitCollection:v8, v10];

  [(GameLayerPageGrid *)v12 interColumnSpacing];
  v14 = v13;

  return v14;
}

@end