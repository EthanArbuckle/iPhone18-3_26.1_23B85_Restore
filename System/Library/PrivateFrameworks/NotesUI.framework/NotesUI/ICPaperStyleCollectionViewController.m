@interface ICPaperStyleCollectionViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)itemSize;
- (ICPaperStyleCollectionViewController)init;
- (ICPaperStyleCollectionViewController)initWithLargeIcons:(BOOL)a3 forPreferences:(BOOL)a4;
- (ICPaperStyleHeaderView)headerViewMeasuringCell;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (UIEdgeInsets)sectionInsets;
- (UIEdgeInsets)titleInsets;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)indexPathForInitialSelection;
- (id)indexPathFromPaperStyleType:(unint64_t)a3;
- (id)indexPathFromSetting:(id)a3;
- (id)settingFromIndexPath:(id)a3;
- (id)titleForHeaderView;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (unint64_t)paperStyleTypeFromIndexPath:(id)a3;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)updateItemSpacing;
- (void)updateSettings;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ICPaperStyleCollectionViewController

- (ICPaperStyleCollectionViewController)init
{
  [(ICPaperStyleCollectionViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICPaperStyleCollectionViewController)initWithLargeIcons:(BOOL)a3 forPreferences:(BOOL)a4
{
  v4 = a4;
  if (a3)
  {
    v6 = 134.0;
    v7 = 164.0;
  }

  else
  {
    if ([MEMORY[0x1E69DC938] ic_isVision])
    {
      v7 = 156.0;
    }

    else
    {
      v7 = 132.0;
    }

    if ([MEMORY[0x1E69DC938] ic_isVision])
    {
      v6 = 125.0;
    }

    else
    {
      v6 = 108.0;
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v8 setItemSize:{v7, v6}];
  [v8 setScrollDirection:0];
  v19.receiver = self;
  v19.super_class = ICPaperStyleCollectionViewController;
  v9 = [(ICPaperStyleCollectionViewController *)&v19 initWithCollectionViewLayout:v8];
  v10 = v9;
  if (v9)
  {
    [(ICPaperStyleCollectionViewController *)v9 setForPreferences:v4];
    [(ICPaperStyleCollectionViewController *)v10 setItemSize:v7, v6];
    if ([MEMORY[0x1E69DC938] ic_isVision])
    {
      v11 = 32.0;
    }

    else
    {
      v11 = 16.0;
    }

    if ([MEMORY[0x1E69DC938] ic_isVision])
    {
      v12 = 32.0;
    }

    else
    {
      v12 = 16.0;
    }

    if ([MEMORY[0x1E69DC938] ic_isVision])
    {
      v13 = 32.0;
    }

    else
    {
      v13 = 16.0;
    }

    [(ICPaperStyleCollectionViewController *)v10 setSectionInsets:v11, v12, 0.0, v13];
    if ([MEMORY[0x1E69DC938] ic_isVision])
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 21.0;
    }

    if ([MEMORY[0x1E69DC938] ic_isVision])
    {
      v15 = 32.0;
    }

    else
    {
      v15 = 16.0;
    }

    if ([MEMORY[0x1E69DC938] ic_isVision])
    {
      v16 = 32.0;
    }

    else
    {
      v16 = 16.0;
    }

    [(ICPaperStyleCollectionViewController *)v10 setTitleInsets:v14, v15, 16.0, v16];
    [(ICPaperStyleCollectionViewController *)v10 setHeaderViewMeasuringCell:0];
    [(ICPaperStyleCollectionViewController *)v10 setNeedsUpdateItemSpacing:1];
    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v10 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v10;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = ICPaperStyleCollectionViewController;
  [(ICPaperStyleCollectionViewController *)&v10 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] ICGroupedBackgroundColor];
  v4 = [(ICPaperStyleCollectionViewController *)self collectionView];
  [v4 setBackgroundColor:v3];

  v5 = [(ICPaperStyleCollectionViewController *)self collectionView];
  [v5 setDelegate:self];

  v6 = [(ICPaperStyleCollectionViewController *)self collectionView];
  [v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PaperStyleCell"];

  v7 = [(ICPaperStyleCollectionViewController *)self collectionView];
  [v7 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"HeaderView"];

  v8 = __ICLocalizedFrameworkString_impl(@"Lines & Grids", @"Lines & Grids", 0, 1);
  v9 = [(ICPaperStyleCollectionViewController *)self navigationItem];
  [v9 setTitle:v8];
}

- (id)indexPathForInitialSelection
{
  v3 = [MEMORY[0x1E69B7AB8] objectForKey:@"PaperStyle"];
  v4 = [(ICPaperStyleCollectionViewController *)self indexPathFromSetting:v3];

  return v4;
}

- (void)viewWillLayoutSubviews
{
  if ([(ICPaperStyleCollectionViewController *)self needsUpdateItemSpacing])
  {
    [(ICPaperStyleCollectionViewController *)self setNeedsUpdateItemSpacing:0];
    [(ICPaperStyleCollectionViewController *)self updateItemSpacing];
    objc_opt_class();
    v3 = [(ICPaperStyleCollectionViewController *)self collectionViewLayout];
    v4 = ICCheckedDynamicCast();

    [v4 invalidateLayout];
  }
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = ICPaperStyleCollectionViewController;
  [(ICPaperStyleCollectionViewController *)&v8 viewDidLayoutSubviews];
  v3 = [(ICPaperStyleCollectionViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];
  v5 = [v4 count];

  if (!v5)
  {
    v6 = [(ICPaperStyleCollectionViewController *)self indexPathForInitialSelection];
    if (v6)
    {
      v7 = [(ICPaperStyleCollectionViewController *)self collectionView];
      [v7 selectItemAtIndexPath:v6 animated:0 scrollPosition:0];
    }
  }
}

- (void)updateItemSpacing
{
  objc_opt_class();
  v3 = [(ICPaperStyleCollectionViewController *)self collectionViewLayout];
  v76 = ICCheckedDynamicCast();

  v4 = [(ICPaperStyleCollectionViewController *)self view];
  v5 = [v4 safeAreaLayoutGuide];
  [v5 layoutFrame];
  v7 = v6;

  [(ICPaperStyleCollectionViewController *)self itemSize];
  v9 = v8;
  v10 = [MEMORY[0x1E69DC938] ic_isVision];
  v11 = 192.0;
  if (v10)
  {
    v11 = 128.0;
  }

  if (v7 <= v11 + v9 * 3.0)
  {
    [(ICPaperStyleCollectionViewController *)self itemSize];
    v23 = v22;
    v24 = [MEMORY[0x1E69DC938] ic_isVision];
    v25 = 64.0;
    if (v24)
    {
      v25 = 128.0;
    }

    v26 = v25 + v23 * 3.0;
    [(ICPaperStyleCollectionViewController *)self itemSize];
    v28 = -v27;
    if (v7 >= v26)
    {
      v29 = (v7 + v28 * 3.0) * 0.25;
      v20 = 3;
    }

    else
    {
      v29 = (v7 + v28 * 2.0) / 3.0;
      v20 = 4;
    }

    [(ICPaperStyleCollectionViewController *)self setItemSpacing:floor(v29)];
    [(ICPaperStyleCollectionViewController *)self itemSpacing];
    v31 = v30;
    [(ICPaperStyleCollectionViewController *)self itemSpacing];
    v33 = v32;
    [(ICPaperStyleCollectionViewController *)self itemSpacing];
    [(ICPaperStyleCollectionViewController *)self setSectionInsets:v31, v33, 0.0, v34];
    if ([MEMORY[0x1E69DC938] ic_isVision])
    {
      v19 = 0.0;
    }

    else
    {
      v19 = 21.0;
    }

    [(ICPaperStyleCollectionViewController *)self itemSpacing];
    v18 = v35;
    [(ICPaperStyleCollectionViewController *)self itemSpacing];
    v21 = v36;
  }

  else
  {
    v12 = [MEMORY[0x1E69DC938] ic_isVision];
    v13 = 48.0;
    if (v12)
    {
      v13 = 32.0;
    }

    [(ICPaperStyleCollectionViewController *)self setItemSpacing:v13];
    [(ICPaperStyleCollectionViewController *)self itemSize];
    v15 = v14;
    v16 = [MEMORY[0x1E69DC938] ic_isVision];
    v17 = 96.0;
    if (v16)
    {
      v17 = 64.0;
    }

    v18 = (v7 - (v17 + v15 * 3.0)) * 0.5;
    [(ICPaperStyleCollectionViewController *)self itemSpacing];
    v19 = 0.0;
    [(ICPaperStyleCollectionViewController *)self setSectionInsets:?];
    if (![MEMORY[0x1E69DC938] ic_isVision])
    {
      v19 = 21.0;
    }

    v20 = 3;
    v21 = v18;
  }

  [(ICPaperStyleCollectionViewController *)self setTitleInsets:v19, v18, 16.0, v21];
  [(ICPaperStyleCollectionViewController *)self itemSpacing];
  [(ICPaperStyleCollectionViewController *)self setItemSpacingVertical:?];
  v37 = [(ICPaperStyleCollectionViewController *)self view];
  [v37 bounds];
  v39 = v38;

  [(UIViewController *)self ic_safeAreaDistanceFromTop];
  v41 = v40;
  v42 = [(ICPaperStyleCollectionViewController *)self collectionView];
  [(ICPaperStyleCollectionViewController *)self collectionView:v42 layout:v76 referenceSizeForHeaderInSection:0];
  v44 = v39 - (v41 + v43);

  [(ICPaperStyleCollectionViewController *)self itemSpacingVertical];
  v46 = v45;
  v47 = [MEMORY[0x1E69DC938] ic_isVision];
  v48 = 60.0;
  if (!v47)
  {
    v48 = 28.0;
  }

  if (v46 >= v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = v48;
  }

  [(ICPaperStyleCollectionViewController *)self itemSpacingVertical];
  v51 = v50;
  v52 = (v20 - 1);
  [(ICPaperStyleCollectionViewController *)self itemSize];
  if (v49 + v53 * v20 + v51 * v52 > v44)
  {
    [(ICPaperStyleCollectionViewController *)self itemSize];
    v55 = floor((v44 - (v49 + v54 * v20)) / v52);
    v56 = [MEMORY[0x1E69DC938] ic_isVision];
    v57 = 32.0;
    if (!v56)
    {
      v57 = 16.0;
    }

    if (v55 >= v57)
    {
      v57 = v55;
    }

    [(ICPaperStyleCollectionViewController *)self setItemSpacingVertical:v57];
    [(ICPaperStyleCollectionViewController *)self itemSpacingVertical];
    v59 = v58;
    v60 = [MEMORY[0x1E69DC938] ic_isVision];
    v61 = 60.0;
    if (!v60)
    {
      v61 = 28.0;
    }

    if (v59 >= v61)
    {
      v49 = v59;
    }

    else
    {
      v49 = v61;
    }

    [(ICPaperStyleCollectionViewController *)self sectionInsets];
    [(ICPaperStyleCollectionViewController *)self itemSpacingVertical];
    [(ICPaperStyleCollectionViewController *)self setSectionInsets:?];
  }

  [(ICPaperStyleCollectionViewController *)self itemSpacing];
  if (v49 >= v62)
  {
    v63 = v62;
  }

  else
  {
    v63 = v49;
  }

  v64 = [(ICPaperStyleCollectionViewController *)self view];
  [v64 safeAreaInsets];
  v66 = v65;
  v67 = [(ICPaperStyleCollectionViewController *)self view];
  [v67 safeAreaInsets];
  v69 = v68;
  v70 = [(ICPaperStyleCollectionViewController *)self collectionView];
  [v70 setContentInset:{0.0, v66, v63, v69}];

  objc_opt_class();
  v71 = [(ICPaperStyleCollectionViewController *)self collectionView];
  v72 = *MEMORY[0x1E69DDC08];
  v73 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v74 = [v71 supplementaryViewForElementKind:v72 atIndexPath:v73];
  v75 = ICDynamicCast();

  [(ICPaperStyleCollectionViewController *)self titleInsets];
  [v75 setTitleInsets:?];
}

- (void)updateSettings
{
  v3 = [(ICPaperStyleCollectionViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];
  v8 = [v4 firstObject];

  v5 = v8;
  if (v8)
  {
    v6 = MEMORY[0x1E69B7AB8];
    v7 = [(ICPaperStyleCollectionViewController *)self settingFromIndexPath:v8];
    [v6 setObject:v7 forKey:@"PaperStyle"];

    v5 = v8;
  }
}

- (id)settingFromIndexPath:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [(ICPaperStyleCollectionViewController *)self paperStyleTypeFromIndexPath:a3];

  return [v3 numberWithUnsignedInteger:v4];
}

- (unint64_t)paperStyleTypeFromIndexPath:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3 || ![v3 section])
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v5 = [v4 item];
  if (v5 >= 6)
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ICPaperStyleCollectionViewController *)v4 paperStyleTypeFromIndexPath:v7];
    }

    goto LABEL_8;
  }

  v6 = qword_1D44347D0[v5];
LABEL_9:

  return v6;
}

- (id)indexPathFromSetting:(id)a3
{
  v4 = [a3 unsignedIntegerValue];

  return [(ICPaperStyleCollectionViewController *)self indexPathFromPaperStyleType:v4];
}

- (id)indexPathFromPaperStyleType:(unint64_t)a3
{
  if (a3 > 1)
  {
    if (a3 - 2 >= 6)
    {
      v7 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(ICPaperStyleCollectionViewController *)a3 indexPathFromPaperStyleType:v7];
      }

      v4 = 0;
    }

    else
    {
      v4 = qword_1D4434800[a3 - 2];
    }

    v3 = MEMORY[0x1E696AC88];
    v5 = 1;
  }

  else
  {
    v3 = MEMORY[0x1E696AC88];
    v4 = 0;
    v5 = 0;
  }

  v8 = [v3 indexPathForItem:v4 inSection:v5];

  return v8;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = ICPaperStyleCollectionViewController;
  v7 = a4;
  [(ICPaperStyleCollectionViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(ICPaperStyleCollectionViewController *)self setNeedsUpdateItemSpacing:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__ICPaperStyleCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_1E846DC68;
  v8[4] = self;
  [v7 animateAlongsideTransition:&__block_literal_global_82 completion:v8];
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  objc_opt_class();
  v4 = [(ICPaperStyleCollectionViewController *)self collectionView];
  v5 = *MEMORY[0x1E69DDC08];
  v6 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v7 = [v4 supplementaryViewForElementKind:v5 atIndexPath:v6];
  v11 = ICDynamicCast();

  [v11 contentSizeCategoryDidChange];
  [(ICPaperStyleCollectionViewController *)self setNeedsUpdateItemSpacing:1];
  objc_opt_class();
  v8 = [(ICPaperStyleCollectionViewController *)self collectionViewLayout];
  v9 = ICCheckedDynamicCast();

  [v9 invalidateLayout];
  v10 = [(ICPaperStyleCollectionViewController *)self view];
  [v10 setNeedsLayout];
}

- (id)titleForHeaderView
{
  if ([(ICPaperStyleCollectionViewController *)self forPreferences])
  {
    v2 = @"Choose your preferred line or grid style for handwriting in new notes.";
  }

  else
  {
    v2 = @"Change the line or grid style for handwriting in this note.";
  }

  v3 = __ICLocalizedFrameworkString_impl(v2, v2, 0, 1);

  return v3;
}

- (ICPaperStyleHeaderView)headerViewMeasuringCell
{
  headerViewMeasuringCell = self->_headerViewMeasuringCell;
  if (!headerViewMeasuringCell)
  {
    v4 = [ICPaperStyleHeaderView alloc];
    v5 = [(ICPaperStyleHeaderView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_headerViewMeasuringCell;
    self->_headerViewMeasuringCell = v5;

    v7 = [(ICPaperStyleCollectionViewController *)self titleForHeaderView];
    [(ICPaperStyleHeaderView *)self->_headerViewMeasuringCell setTitle:v7];

    [(ICPaperStyleCollectionViewController *)self titleInsets];
    [(ICPaperStyleHeaderView *)self->_headerViewMeasuringCell setTitleInsets:?];
    headerViewMeasuringCell = self->_headerViewMeasuringCell;
  }

  return headerViewMeasuringCell;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  if (a4)
  {
    return 6;
  }

  else
  {
    return 1;
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v24[6] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  objc_opt_class();
  v7 = [v6 dequeueReusableCellWithReuseIdentifier:@"PaperStyleCell" forIndexPath:v5];

  v8 = ICCheckedDynamicCast();

  if (![v5 section])
  {
    v9 = __ICLocalizedFrameworkString_impl(@"Blank paper", @"Blank paper", 0, 1);
    [v8 setAccessibilityLabel:v9];
  }

  if ([v5 section] == 1)
  {
    v10 = __ICLocalizedFrameworkString_impl(@"Horizontal lines with small line spacing", @"Horizontal lines with small line spacing", 0, 1);
    v24[0] = v10;
    v11 = __ICLocalizedFrameworkString_impl(@"Horizontal lines with medium line spacing", @"Horizontal lines with medium line spacing", 0, 1);
    v24[1] = v11;
    v12 = __ICLocalizedFrameworkString_impl(@"Horizontal lines with large line spacing", @"Horizontal lines with large line spacing", 0, 1);
    v24[2] = v12;
    v13 = __ICLocalizedFrameworkString_impl(@"Grid lines with small tiles", @"Grid lines with small tiles", 0, 1);
    v24[3] = v13;
    v14 = __ICLocalizedFrameworkString_impl(@"Grid lines with medium tiles", @"Grid lines with medium tiles", 0, 1);
    v24[4] = v14;
    v15 = __ICLocalizedFrameworkString_impl(@"Grid lines with large tiles", @"Grid lines with large tiles", 0, 1);
    v24[5] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:6];

    v17 = [v5 item];
    if (v17 < [&unk_1F4FC3BA0 count])
    {
      v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v19 = [&unk_1F4FC3BA0 objectAtIndexedSubscript:{objc_msgSend(v5, "item")}];
      v20 = [MEMORY[0x1E69DCAB8] imageNamed:v19 inBundle:v18 compatibleWithTraitCollection:0];
      v21 = [v8 imageView];
      [v21 setImage:v20];

      v22 = [v16 objectAtIndexedSubscript:{objc_msgSend(v5, "item")}];
      [v8 setAccessibilityLabel:v22];
    }
  }

  return v8;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:*MEMORY[0x1E69DDC08]] && !objc_msgSend(v10, "section"))
  {
    v11 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:@"HeaderView" forIndexPath:v10];
    v13 = [(ICPaperStyleCollectionViewController *)self titleForHeaderView];
    [v11 setTitle:v13];

    [(ICPaperStyleCollectionViewController *)self titleInsets];
    [v11 setTitleInsets:?];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  [(ICPaperStyleCollectionViewController *)self sectionInsets];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (!a5)
  {
    [(ICPaperStyleCollectionViewController *)self collectionView:v8 layout:v9 referenceSizeForHeaderInSection:0];
    v11 = v11 - v18;
    if (v11 < 0.0)
    {
      v11 = 0.0;
    }
  }

  v19 = v11;
  v20 = v13;
  v21 = v15;
  v22 = v17;
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v5 = *MEMORY[0x1E695F060];
  if (a5)
  {
    v6 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    [a3 bounds];
    v9 = v8;
    [(ICPaperStyleCollectionViewController *)self sectionInsets];
    v11 = v10;
    [(ICPaperStyleCollectionViewController *)self sectionInsets];
    v13 = v9 - (v11 + v12);
    v14 = [(ICPaperStyleCollectionViewController *)self headerViewMeasuringCell];
    LODWORD(v15) = 1148846080;
    LODWORD(v16) = 1112014848;
    [v14 systemLayoutSizeFittingSize:v13 withHorizontalFittingPriority:*(MEMORY[0x1E69DE090] + 8) verticalFittingPriority:{v15, v16}];
    v18 = v17;

    v19 = [MEMORY[0x1E69DC938] ic_isVision];
    v20 = 21.0;
    if (v19)
    {
      v20 = 0.0;
    }

    v6 = v18 + v20 + 16.0;
  }

  v21 = v5;
  result.height = v6;
  result.width = v21;
  return result;
}

- (CGSize)itemSize
{
  width = self->_itemSize.width;
  height = self->_itemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)sectionInsets
{
  top = self->_sectionInsets.top;
  left = self->_sectionInsets.left;
  bottom = self->_sectionInsets.bottom;
  right = self->_sectionInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)titleInsets
{
  top = self->_titleInsets.top;
  left = self->_titleInsets.left;
  bottom = self->_titleInsets.bottom;
  right = self->_titleInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)paperStyleTypeFromIndexPath:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = [a1 item];
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Unknown index for paper style %ld", &v3, 0xCu);
}

- (void)indexPathFromPaperStyleType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Unknown paper style %ld", &v2, 0xCu);
}

@end