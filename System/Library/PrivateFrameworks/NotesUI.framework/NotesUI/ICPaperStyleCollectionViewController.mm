@interface ICPaperStyleCollectionViewController
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)itemSize;
- (ICPaperStyleCollectionViewController)init;
- (ICPaperStyleCollectionViewController)initWithLargeIcons:(BOOL)icons forPreferences:(BOOL)preferences;
- (ICPaperStyleHeaderView)headerViewMeasuringCell;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (UIEdgeInsets)sectionInsets;
- (UIEdgeInsets)titleInsets;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)indexPathForInitialSelection;
- (id)indexPathFromPaperStyleType:(unint64_t)type;
- (id)indexPathFromSetting:(id)setting;
- (id)settingFromIndexPath:(id)path;
- (id)titleForHeaderView;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (unint64_t)paperStyleTypeFromIndexPath:(id)path;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)updateItemSpacing;
- (void)updateSettings;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ICPaperStyleCollectionViewController

- (ICPaperStyleCollectionViewController)init
{
  [(ICPaperStyleCollectionViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICPaperStyleCollectionViewController)initWithLargeIcons:(BOOL)icons forPreferences:(BOOL)preferences
{
  preferencesCopy = preferences;
  if (icons)
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
    [(ICPaperStyleCollectionViewController *)v9 setForPreferences:preferencesCopy];
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v10;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = ICPaperStyleCollectionViewController;
  [(ICPaperStyleCollectionViewController *)&v10 viewDidLoad];
  iCGroupedBackgroundColor = [MEMORY[0x1E69DC888] ICGroupedBackgroundColor];
  collectionView = [(ICPaperStyleCollectionViewController *)self collectionView];
  [collectionView setBackgroundColor:iCGroupedBackgroundColor];

  collectionView2 = [(ICPaperStyleCollectionViewController *)self collectionView];
  [collectionView2 setDelegate:self];

  collectionView3 = [(ICPaperStyleCollectionViewController *)self collectionView];
  [collectionView3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PaperStyleCell"];

  collectionView4 = [(ICPaperStyleCollectionViewController *)self collectionView];
  [collectionView4 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"HeaderView"];

  v8 = __ICLocalizedFrameworkString_impl(@"Lines & Grids", @"Lines & Grids", 0, 1);
  navigationItem = [(ICPaperStyleCollectionViewController *)self navigationItem];
  [navigationItem setTitle:v8];
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
    collectionViewLayout = [(ICPaperStyleCollectionViewController *)self collectionViewLayout];
    v4 = ICCheckedDynamicCast();

    [v4 invalidateLayout];
  }
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = ICPaperStyleCollectionViewController;
  [(ICPaperStyleCollectionViewController *)&v8 viewDidLayoutSubviews];
  collectionView = [(ICPaperStyleCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v5 = [indexPathsForSelectedItems count];

  if (!v5)
  {
    indexPathForInitialSelection = [(ICPaperStyleCollectionViewController *)self indexPathForInitialSelection];
    if (indexPathForInitialSelection)
    {
      collectionView2 = [(ICPaperStyleCollectionViewController *)self collectionView];
      [collectionView2 selectItemAtIndexPath:indexPathForInitialSelection animated:0 scrollPosition:0];
    }
  }
}

- (void)updateItemSpacing
{
  objc_opt_class();
  collectionViewLayout = [(ICPaperStyleCollectionViewController *)self collectionViewLayout];
  v76 = ICCheckedDynamicCast();

  view = [(ICPaperStyleCollectionViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v7 = v6;

  [(ICPaperStyleCollectionViewController *)self itemSize];
  v9 = v8;
  ic_isVision = [MEMORY[0x1E69DC938] ic_isVision];
  v11 = 192.0;
  if (ic_isVision)
  {
    v11 = 128.0;
  }

  if (v7 <= v11 + v9 * 3.0)
  {
    [(ICPaperStyleCollectionViewController *)self itemSize];
    v23 = v22;
    ic_isVision2 = [MEMORY[0x1E69DC938] ic_isVision];
    v25 = 64.0;
    if (ic_isVision2)
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
    ic_isVision3 = [MEMORY[0x1E69DC938] ic_isVision];
    v13 = 48.0;
    if (ic_isVision3)
    {
      v13 = 32.0;
    }

    [(ICPaperStyleCollectionViewController *)self setItemSpacing:v13];
    [(ICPaperStyleCollectionViewController *)self itemSize];
    v15 = v14;
    ic_isVision4 = [MEMORY[0x1E69DC938] ic_isVision];
    v17 = 96.0;
    if (ic_isVision4)
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
  view2 = [(ICPaperStyleCollectionViewController *)self view];
  [view2 bounds];
  v39 = v38;

  [(UIViewController *)self ic_safeAreaDistanceFromTop];
  v41 = v40;
  collectionView = [(ICPaperStyleCollectionViewController *)self collectionView];
  [(ICPaperStyleCollectionViewController *)self collectionView:collectionView layout:v76 referenceSizeForHeaderInSection:0];
  v44 = v39 - (v41 + v43);

  [(ICPaperStyleCollectionViewController *)self itemSpacingVertical];
  v46 = v45;
  ic_isVision5 = [MEMORY[0x1E69DC938] ic_isVision];
  v48 = 60.0;
  if (!ic_isVision5)
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
    ic_isVision6 = [MEMORY[0x1E69DC938] ic_isVision];
    v57 = 32.0;
    if (!ic_isVision6)
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
    ic_isVision7 = [MEMORY[0x1E69DC938] ic_isVision];
    v61 = 60.0;
    if (!ic_isVision7)
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

  view3 = [(ICPaperStyleCollectionViewController *)self view];
  [view3 safeAreaInsets];
  v66 = v65;
  view4 = [(ICPaperStyleCollectionViewController *)self view];
  [view4 safeAreaInsets];
  v69 = v68;
  collectionView2 = [(ICPaperStyleCollectionViewController *)self collectionView];
  [collectionView2 setContentInset:{0.0, v66, v63, v69}];

  objc_opt_class();
  collectionView3 = [(ICPaperStyleCollectionViewController *)self collectionView];
  v72 = *MEMORY[0x1E69DDC08];
  v73 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v74 = [collectionView3 supplementaryViewForElementKind:v72 atIndexPath:v73];
  v75 = ICDynamicCast();

  [(ICPaperStyleCollectionViewController *)self titleInsets];
  [v75 setTitleInsets:?];
}

- (void)updateSettings
{
  collectionView = [(ICPaperStyleCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  v5 = firstObject;
  if (firstObject)
  {
    v6 = MEMORY[0x1E69B7AB8];
    v7 = [(ICPaperStyleCollectionViewController *)self settingFromIndexPath:firstObject];
    [v6 setObject:v7 forKey:@"PaperStyle"];

    v5 = firstObject;
  }
}

- (id)settingFromIndexPath:(id)path
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [(ICPaperStyleCollectionViewController *)self paperStyleTypeFromIndexPath:path];

  return [v3 numberWithUnsignedInteger:v4];
}

- (unint64_t)paperStyleTypeFromIndexPath:(id)path
{
  pathCopy = path;
  v4 = pathCopy;
  if (!pathCopy || ![pathCopy section])
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  item = [v4 item];
  if (item >= 6)
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ICPaperStyleCollectionViewController *)v4 paperStyleTypeFromIndexPath:v7];
    }

    goto LABEL_8;
  }

  v6 = qword_1D44347D0[item];
LABEL_9:

  return v6;
}

- (id)indexPathFromSetting:(id)setting
{
  unsignedIntegerValue = [setting unsignedIntegerValue];

  return [(ICPaperStyleCollectionViewController *)self indexPathFromPaperStyleType:unsignedIntegerValue];
}

- (id)indexPathFromPaperStyleType:(unint64_t)type
{
  if (type > 1)
  {
    if (type - 2 >= 6)
    {
      v7 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(ICPaperStyleCollectionViewController *)type indexPathFromPaperStyleType:v7];
      }

      v4 = 0;
    }

    else
    {
      v4 = qword_1D4434800[type - 2];
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = ICPaperStyleCollectionViewController;
  coordinatorCopy = coordinator;
  [(ICPaperStyleCollectionViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(ICPaperStyleCollectionViewController *)self setNeedsUpdateItemSpacing:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__ICPaperStyleCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_1E846DC68;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:&__block_literal_global_82 completion:v8];
}

- (void)contentSizeCategoryDidChange:(id)change
{
  objc_opt_class();
  collectionView = [(ICPaperStyleCollectionViewController *)self collectionView];
  v5 = *MEMORY[0x1E69DDC08];
  v6 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v7 = [collectionView supplementaryViewForElementKind:v5 atIndexPath:v6];
  v11 = ICDynamicCast();

  [v11 contentSizeCategoryDidChange];
  [(ICPaperStyleCollectionViewController *)self setNeedsUpdateItemSpacing:1];
  objc_opt_class();
  collectionViewLayout = [(ICPaperStyleCollectionViewController *)self collectionViewLayout];
  v9 = ICCheckedDynamicCast();

  [v9 invalidateLayout];
  view = [(ICPaperStyleCollectionViewController *)self view];
  [view setNeedsLayout];
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

    titleForHeaderView = [(ICPaperStyleCollectionViewController *)self titleForHeaderView];
    [(ICPaperStyleHeaderView *)self->_headerViewMeasuringCell setTitle:titleForHeaderView];

    [(ICPaperStyleCollectionViewController *)self titleInsets];
    [(ICPaperStyleHeaderView *)self->_headerViewMeasuringCell setTitleInsets:?];
    headerViewMeasuringCell = self->_headerViewMeasuringCell;
  }

  return headerViewMeasuringCell;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  if (section)
  {
    return 6;
  }

  else
  {
    return 1;
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v24[6] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  viewCopy = view;
  objc_opt_class();
  v7 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"PaperStyleCell" forIndexPath:pathCopy];

  v8 = ICCheckedDynamicCast();

  if (![pathCopy section])
  {
    v9 = __ICLocalizedFrameworkString_impl(@"Blank paper", @"Blank paper", 0, 1);
    [v8 setAccessibilityLabel:v9];
  }

  if ([pathCopy section] == 1)
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

    item = [pathCopy item];
    if (item < [&unk_1F4FC3BA0 count])
    {
      v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v19 = [&unk_1F4FC3BA0 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
      v20 = [MEMORY[0x1E69DCAB8] imageNamed:v19 inBundle:v18 compatibleWithTraitCollection:0];
      imageView = [v8 imageView];
      [imageView setImage:v20];

      v22 = [v16 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
      [v8 setAccessibilityLabel:v22];
    }
  }

  return v8;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if ([kindCopy isEqualToString:*MEMORY[0x1E69DDC08]] && !objc_msgSend(pathCopy, "section"))
  {
    v11 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:@"HeaderView" forIndexPath:pathCopy];
    titleForHeaderView = [(ICPaperStyleCollectionViewController *)self titleForHeaderView];
    [v11 setTitle:titleForHeaderView];

    [(ICPaperStyleCollectionViewController *)self titleInsets];
    [v11 setTitleInsets:?];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  layoutCopy = layout;
  [(ICPaperStyleCollectionViewController *)self sectionInsets];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (!index)
  {
    [(ICPaperStyleCollectionViewController *)self collectionView:viewCopy layout:layoutCopy referenceSizeForHeaderInSection:0];
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

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  v5 = *MEMORY[0x1E695F060];
  if (section)
  {
    v6 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    [view bounds];
    v9 = v8;
    [(ICPaperStyleCollectionViewController *)self sectionInsets];
    v11 = v10;
    [(ICPaperStyleCollectionViewController *)self sectionInsets];
    v13 = v9 - (v11 + v12);
    headerViewMeasuringCell = [(ICPaperStyleCollectionViewController *)self headerViewMeasuringCell];
    LODWORD(v15) = 1148846080;
    LODWORD(v16) = 1112014848;
    [headerViewMeasuringCell systemLayoutSizeFittingSize:v13 withHorizontalFittingPriority:*(MEMORY[0x1E69DE090] + 8) verticalFittingPriority:{v15, v16}];
    v18 = v17;

    ic_isVision = [MEMORY[0x1E69DC938] ic_isVision];
    v20 = 21.0;
    if (ic_isVision)
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