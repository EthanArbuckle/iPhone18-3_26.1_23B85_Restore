@interface HUServiceGridViewController
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)preferredContentSizeForCollectionViewContentSize:(CGSize)size;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUGridLayoutOptions)layoutOptions;
- (HUServiceGridViewController)initWithItemManager:(id)manager;
- (HUServiceGridViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout;
- (HUServiceGridViewControllerDelegate)delegate;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index;
- (double)headerViewHeightForSectionIndex:(unint64_t)index;
- (id)_defaultLayoutOptionsForViewSize:(CGSize)size;
- (id)_performTapActionForItem:(id)item tappedArea:(id)area;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (unint64_t)itemTypeForItem:(id)item;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)layoutOptionsDidChange;
- (void)setContentMargins:(unint64_t)margins;
- (void)setLayoutOptions:(id)options;
- (void)setScrollDirection:(int64_t)direction;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation HUServiceGridViewController

- (HUServiceGridViewController)initWithItemManager:(id)manager
{
  managerCopy = manager;
  v5 = objc_alloc_init(HUGridFlowLayout);
  v8.receiver = self;
  v8.super_class = HUServiceGridViewController;
  v6 = [(HUControllableItemCollectionViewController *)&v8 initWithItemManager:managerCopy collectionViewLayout:v5];

  if (v6)
  {
    [(HUControllableItemCollectionViewController *)v6 setContentColorStyle:1];
    v6->_contentMargins = 11;
    v6->_scrollDirection = 0;
    v6->_shouldShowLoadingState = 1;
    if ([(HUServiceGridViewController *)v6 isViewLoaded])
    {
      NSLog(&cfstr_Huservicegridv.isa);
    }
  }

  return v6;
}

- (HUServiceGridViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithItemManager_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUServiceGridViewController.m" lineNumber:48 description:{@"%s is unavailable; use %@ instead", "-[HUServiceGridViewController initWithItemManager:collectionViewLayout:]", v7}];

  return 0;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = HUServiceGridViewController;
  [(HUControllableItemCollectionViewController *)&v11 viewDidLoad];
  collectionView = [(HUServiceGridViewController *)self collectionView];
  v4 = objc_opt_class();
  v5 = *MEMORY[0x277D767D8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [collectionView registerClass:v4 forSupplementaryViewOfKind:v5 withReuseIdentifier:v7];

  collectionView2 = [(HUServiceGridViewController *)self collectionView];
  [collectionView2 setAlwaysBounceVertical:1];

  clearColor = [MEMORY[0x277D75348] clearColor];
  collectionView3 = [(HUServiceGridViewController *)self collectionView];
  [collectionView3 setBackgroundColor:clearColor];
}

- (void)viewWillAppear:(BOOL)appear
{
  v19.receiver = self;
  v19.super_class = HUServiceGridViewController;
  [(HUControllableItemCollectionViewController *)&v19 viewWillAppear:appear];
  layoutOptions = [(HUServiceGridViewController *)self layoutOptions];
  [layoutOptions viewSize];
  v6 = v5;
  v8 = v7;
  view = [(HUServiceGridViewController *)self view];
  [view frame];
  v11 = v10;
  v13 = v12;

  if (v6 != v11 || v8 != v13)
  {
    view2 = [(HUServiceGridViewController *)self view];
    [view2 frame];
    v18 = [(HUServiceGridViewController *)self _defaultLayoutOptionsForViewSize:v16, v17];
    [(HUServiceGridViewController *)self setLayoutOptions:v18];
  }
}

- (void)viewWillLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = HUServiceGridViewController;
  [(HUServiceGridViewController *)&v18 viewWillLayoutSubviews];
  layoutOptions = [(HUServiceGridViewController *)self layoutOptions];
  [layoutOptions viewSize];
  v5 = v4;
  v7 = v6;
  view = [(HUServiceGridViewController *)self view];
  [view frame];
  v10 = v9;
  v12 = v11;

  if (v5 != v10 || v7 != v12)
  {
    view2 = [(HUServiceGridViewController *)self view];
    [view2 frame];
    v17 = [(HUServiceGridViewController *)self _defaultLayoutOptionsForViewSize:v15, v16];
    [(HUServiceGridViewController *)self setLayoutOptions:v17];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = HUServiceGridViewController;
  coordinatorCopy = coordinator;
  [(HUServiceGridViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__HUServiceGridViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_277DB79B8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

void __82__HUServiceGridViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [v2 view];
  [v6 frame];
  v5 = [v2 _defaultLayoutOptionsForViewSize:{v3, v4}];
  [*(a1 + 32) setLayoutOptions:v5];
}

- (void)setScrollDirection:(int64_t)direction
{
  if (self->_scrollDirection != direction)
  {
    self->_scrollDirection = direction;
    view = [(HUServiceGridViewController *)self view];
    [view frame];
    v7 = [(HUServiceGridViewController *)self _defaultLayoutOptionsForViewSize:v5, v6];
    [(HUServiceGridViewController *)self setLayoutOptions:v7];
  }
}

- (void)setContentMargins:(unint64_t)margins
{
  if (self->_contentMargins != margins)
  {
    self->_contentMargins = margins;
    view = [(HUServiceGridViewController *)self view];
    [view frame];
    v7 = [(HUServiceGridViewController *)self _defaultLayoutOptionsForViewSize:v5, v6];
    [(HUServiceGridViewController *)self setLayoutOptions:v7];
  }
}

- (CGSize)preferredContentSizeForCollectionViewContentSize:(CGSize)size
{
  v18.receiver = self;
  v18.super_class = HUServiceGridViewController;
  [(HUItemCollectionViewController *)&v18 preferredContentSizeForCollectionViewContentSize:size.width, size.height];
  v5 = v4;
  v7 = v6;
  if ([(HUServiceGridViewController *)self scrollDirection]== 1)
  {
    layoutOptions = [(HUServiceGridViewController *)self layoutOptions];
    [layoutOptions pointWidthForNumberOfColumns:1];
    v10 = v9;
    layoutOptions2 = [(HUServiceGridViewController *)self layoutOptions];
    [layoutOptions2 sectionTopMargin];
    v13 = v10 + v12;
    layoutOptions3 = [(HUServiceGridViewController *)self layoutOptions];
    [layoutOptions3 sectionBottomMargin];
    v7 = v13 + v15;
  }

  v16 = v5;
  v17 = v7;
  result.height = v17;
  result.width = v16;
  return result;
}

- (unint64_t)itemTypeForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_performTapActionForItem:(id)item tappedArea:(id)area
{
  itemCopy = item;
  areaCopy = area;
  v16.receiver = self;
  v16.super_class = HUServiceGridViewController;
  v8 = [(HUControllableItemCollectionViewController *)&v16 _performTapActionForItem:itemCopy tappedArea:areaCopy];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__HUServiceGridViewController__performTapActionForItem_tappedArea___block_invoke;
  v12[3] = &unk_277DBD700;
  objc_copyWeak(&v14, &location);
  v9 = itemCopy;
  v13 = v9;
  v10 = [v8 flatMap:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v10;
}

id __67__HUServiceGridViewController__performTapActionForItem_tappedArea___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [WeakRetained delegate];
    [v5 serviceGridViewController:WeakRetained didTapItem:*(a1 + 32)];
  }

  v6 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v6;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  if ([(HUServiceGridViewController *)self itemTypeForItem:item, path]> 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  return v4;
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  v18.receiver = self;
  v18.super_class = HUServiceGridViewController;
  [(HUControllableItemCollectionViewController *)&v18 configureCell:cellCopy forItem:item];
  v7 = cellCopy;
  if ([v7 conformsToProtocol:&unk_2824AB728])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    layoutOptions2 = v7;
    layoutOptions = [(HUServiceGridViewController *)self layoutOptions];
    serviceCellOptions = [layoutOptions serviceCellOptions];
    [layoutOptions2 setLayoutOptions:serviceCellOptions];

    [layoutOptions2 setShouldShowLoadingState:{-[HUServiceGridViewController shouldShowLoadingState](self, "shouldShowLoadingState")}];
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    objc_opt_class();
    LOBYTE(serviceCellOptions) = objc_opt_isKindOfClass();

    if ((serviceCellOptions & 1) == 0)
    {
LABEL_10:

      goto LABEL_11;
    }

    itemManager2 = [(HUItemCollectionViewController *)self itemManager];
    [layoutOptions2 setShouldShowRoomName:{objc_msgSend(itemManager2, "shouldGroupByRoom") ^ 1}];
LABEL_9:

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    layoutOptions2 = [(HUServiceGridViewController *)self layoutOptions];
    itemManager2 = [layoutOptions2 sceneCellOptions];
    [v9 setLayoutOptions:itemManager2];
    goto LABEL_9;
  }

LABEL_11:
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    traitCollection = [(HUServiceGridViewController *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 1)
    {
      layoutOptions3 = [v9 layoutOptions];
      [layoutOptions3 setOnStateBorderStyle:1];
    }
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = -[HUServiceGridViewController layoutOptionsForSection:](self, "layoutOptionsForSection:", [pathCopy section]);
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  v10 = [(HUServiceGridViewController *)self itemTypeForItem:v9];
  if (v10 == 1)
  {
    if ([MEMORY[0x277D14CE8] useMacIdiom])
    {
      [v7 pointWidthForNumberOfColumns:2];
    }

    else
    {
      [v7 pointWidthForFullWidthCell];
    }

    v13 = v12;
    sceneCellOptions = [v7 sceneCellOptions];
    [sceneCellOptions cellHeight];
    v14 = v16;

    sceneCellOptions2 = [v7 sceneCellOptions];
    font = [sceneCellOptions2 font];
    [font lineHeight];
    v20 = v19;
    sceneCellOptions3 = [v7 sceneCellOptions];
    descriptionFont = [sceneCellOptions3 descriptionFont];
    [descriptionFont lineHeight];
    v24 = v23 + v20 * 2.0;

    if (v14 < v24)
    {
      v14 = v24;
    }
  }

  else if (v10)
  {
    v13 = *MEMORY[0x277CBF3A8];
    v14 = *(MEMORY[0x277CBF3A8] + 8);
  }

  else
  {
    if ([MEMORY[0x277D14CE8] isAMac])
    {
      [v7 fixedWidthForCell];
    }

    else
    {
      [v7 pointWidthForNumberOfColumns:1];
    }

    v14 = v11;
    v13 = v11;
  }

  v25 = v13;
  v26 = v14;
  result.height = v26;
  result.width = v25;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  layout = [(HUServiceGridViewController *)self layoutOptionsForSection:index, layout];
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v9 = [itemManager titleForSection:index];

  if (v9)
  {
    itemManager2 = [(HUItemCollectionViewController *)self itemManager];
    v11 = [itemManager2 numberOfSections] - 1;

    v12 = 0.0;
    v13 = 0.0;
    if (v11 != index)
    {
      itemManager3 = [(HUItemCollectionViewController *)self itemManager];
      v15 = [itemManager3 itemSectionForSectionIndex:index + 1];

      items = [v15 items];
      v17 = [items count];

      if (v17)
      {
        v13 = 17.5;
      }

      else
      {
        v13 = 0.0;
      }
    }

    [layout sectionLeadingMargin];
    v19 = v18;
  }

  else
  {
    [layout sectionTopMargin];
    v12 = v20;
    [layout sectionLeadingMargin];
    v19 = v21;
    [layout sectionBottomMargin];
    v13 = v22;
  }

  [layout sectionTrailingMargin];
  v24 = v23;

  v25 = v12;
  v26 = v19;
  v27 = v13;
  v28 = v24;
  result.right = v28;
  result.bottom = v27;
  result.left = v26;
  result.top = v25;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  v7 = [(HUItemCollectionViewController *)self itemManager:view];
  v8 = [v7 titleForSection:section];
  if (v8)
  {
    v9 = *MEMORY[0x277D76F30];
    [(HUServiceGridViewController *)self headerViewHeightForSectionIndex:section];
    v11 = v10;
  }

  else
  {
    v9 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index
{
  layout = [(HUServiceGridViewController *)self layoutOptionsForSection:index, layout];
  [layout rowSpacing];
  v7 = v6;

  return v7;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  v10 = *MEMORY[0x277D767D8];
  viewCopy = view;
  if (([kindCopy isEqualToString:v10] & 1) == 0)
  {
    NSLog(&cfstr_AskedForAViewF.isa, kindCopy);
  }

  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v13 = [itemManager titleForSection:{objc_msgSend(pathCopy, "section")}];

  if (!v13)
  {
    NSLog(&cfstr_AskedForHeader.isa, pathCopy);
  }

  objc_opt_class();
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v15 forIndexPath:pathCopy];

  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = -[HUServiceGridViewController layoutOptionsForSection:](self, "layoutOptionsForSection:", [pathCopy section]);
  groupedHeaderConfiguration = [MEMORY[0x277D756E0] groupedHeaderConfiguration];
  [groupedHeaderConfiguration setText:v13];
  [groupedHeaderConfiguration directionalLayoutMargins];
  v22 = v21;
  v24 = v23;
  [v19 sectionTitleMargin];
  v26 = v25;
  [v19 sectionTitleMargin];
  [groupedHeaderConfiguration setDirectionalLayoutMargins:{v22, v26, v24}];
  if (([(HUServiceGridViewController *)self contentMargins]& 0xA) == 0)
  {
    [groupedHeaderConfiguration setAxesPreservingSuperviewLayoutMargins:0];
  }

  [v18 setContentConfiguration:groupedHeaderConfiguration];
  clearConfiguration = [MEMORY[0x277D751C0] clearConfiguration];
  [v18 setBackgroundConfiguration:clearConfiguration];

  return v18;
}

- (double)headerViewHeightForSectionIndex:(unint64_t)index
{
  groupedHeaderConfiguration = [MEMORY[0x277D756E0] groupedHeaderConfiguration];
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v7 = [itemManager titleForSection:index];

  [groupedHeaderConfiguration setText:v7];
  v8 = [objc_alloc(MEMORY[0x277D756E8]) initWithConfiguration:groupedHeaderConfiguration];
  [v8 systemLayoutSizeFittingSize:{1.79769313e308, 1.79769313e308}];
  v10 = v9;

  return v10;
}

- (id)_defaultLayoutOptionsForViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  useMacIdiom = [MEMORY[0x277D14CE8] useMacIdiom];
  v7 = &unk_282491730;
  if (!useMacIdiom)
  {
    v7 = 0;
  }

  v8 = MEMORY[0x277D14CE8];
  v9 = v7;
  v10 = +[HUGridLayoutOptions defaultOptionsForViewSize:columnStyle:overrideSizeSubclass:](HUGridLayoutOptions, "defaultOptionsForViewSize:columnStyle:overrideSizeSubclass:", [v8 isAMac], v9, width, height);

  [v10 setContentColorStyle:{-[HUControllableItemCollectionViewController contentColorStyle](self, "contentColorStyle")}];
  if (([(HUServiceGridViewController *)self contentMargins]& 1) == 0)
  {
    [v10 setSectionTopMargin:0.0];
  }

  if (([(HUServiceGridViewController *)self contentMargins]& 2) == 0)
  {
    [v10 setSectionLeadingMargin:0.0];
  }

  if (([(HUServiceGridViewController *)self contentMargins]& 4) == 0)
  {
    [v10 setSectionBottomMargin:0.0];
  }

  if (([(HUServiceGridViewController *)self contentMargins]& 8) == 0)
  {
    [v10 setSectionTrailingMargin:0.0];
  }

  [v10 sectionTitleMargin];
  v12 = v11;
  v14 = v13;
  [v10 sectionLeadingMargin];
  v16 = v15;
  [v10 sectionTrailingMargin];
  [v10 setSectionTitleMargin:{v12, v16, v14, v17}];
  [v10 setSectionBottomToNextSectionTitleBaselineDistance:38.0];
  [v10 setScrollDirection:{-[HUServiceGridViewController scrollDirection](self, "scrollDirection")}];

  return v10;
}

- (HUGridLayoutOptions)layoutOptions
{
  collectionView = [(HUServiceGridViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  layoutOptions = [collectionViewLayout layoutOptions];

  return layoutOptions;
}

- (void)setLayoutOptions:(id)options
{
  optionsCopy = options;
  layoutOptions = [(HUServiceGridViewController *)self layoutOptions];
  v6 = [layoutOptions isEqual:optionsCopy];

  collectionView = [(HUServiceGridViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout setLayoutOptions:optionsCopy];

  if ((v6 & 1) == 0)
  {

    [(HUServiceGridViewController *)self layoutOptionsDidChange];
  }
}

- (void)layoutOptionsDidChange
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  collectionView = [(HUServiceGridViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];

  v5 = [visibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(visibleCells);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          layoutOptions = [(HUServiceGridViewController *)self layoutOptions];
          serviceCellOptions = [layoutOptions serviceCellOptions];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          layoutOptions = [(HUServiceGridViewController *)self layoutOptions];
          serviceCellOptions = [layoutOptions sceneCellOptions];
        }

        v12 = serviceCellOptions;
        [v9 setLayoutOptions:serviceCellOptions];

LABEL_11:
        ++v8;
      }

      while (v6 != v8);
      v6 = [visibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (HUServiceGridViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end