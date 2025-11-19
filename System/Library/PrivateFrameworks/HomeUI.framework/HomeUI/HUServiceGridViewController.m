@interface HUServiceGridViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)preferredContentSizeForCollectionViewContentSize:(CGSize)a3;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUGridLayoutOptions)layoutOptions;
- (HUServiceGridViewController)initWithItemManager:(id)a3;
- (HUServiceGridViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4;
- (HUServiceGridViewControllerDelegate)delegate;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5;
- (double)headerViewHeightForSectionIndex:(unint64_t)a3;
- (id)_defaultLayoutOptionsForViewSize:(CGSize)a3;
- (id)_performTapActionForItem:(id)a3 tappedArea:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (unint64_t)itemTypeForItem:(id)a3;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)layoutOptionsDidChange;
- (void)setContentMargins:(unint64_t)a3;
- (void)setLayoutOptions:(id)a3;
- (void)setScrollDirection:(int64_t)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation HUServiceGridViewController

- (HUServiceGridViewController)initWithItemManager:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HUGridFlowLayout);
  v8.receiver = self;
  v8.super_class = HUServiceGridViewController;
  v6 = [(HUControllableItemCollectionViewController *)&v8 initWithItemManager:v4 collectionViewLayout:v5];

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

- (HUServiceGridViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithItemManager_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUServiceGridViewController.m" lineNumber:48 description:{@"%s is unavailable; use %@ instead", "-[HUServiceGridViewController initWithItemManager:collectionViewLayout:]", v7}];

  return 0;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = HUServiceGridViewController;
  [(HUControllableItemCollectionViewController *)&v11 viewDidLoad];
  v3 = [(HUServiceGridViewController *)self collectionView];
  v4 = objc_opt_class();
  v5 = *MEMORY[0x277D767D8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 registerClass:v4 forSupplementaryViewOfKind:v5 withReuseIdentifier:v7];

  v8 = [(HUServiceGridViewController *)self collectionView];
  [v8 setAlwaysBounceVertical:1];

  v9 = [MEMORY[0x277D75348] clearColor];
  v10 = [(HUServiceGridViewController *)self collectionView];
  [v10 setBackgroundColor:v9];
}

- (void)viewWillAppear:(BOOL)a3
{
  v19.receiver = self;
  v19.super_class = HUServiceGridViewController;
  [(HUControllableItemCollectionViewController *)&v19 viewWillAppear:a3];
  v4 = [(HUServiceGridViewController *)self layoutOptions];
  [v4 viewSize];
  v6 = v5;
  v8 = v7;
  v9 = [(HUServiceGridViewController *)self view];
  [v9 frame];
  v11 = v10;
  v13 = v12;

  if (v6 != v11 || v8 != v13)
  {
    v15 = [(HUServiceGridViewController *)self view];
    [v15 frame];
    v18 = [(HUServiceGridViewController *)self _defaultLayoutOptionsForViewSize:v16, v17];
    [(HUServiceGridViewController *)self setLayoutOptions:v18];
  }
}

- (void)viewWillLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = HUServiceGridViewController;
  [(HUServiceGridViewController *)&v18 viewWillLayoutSubviews];
  v3 = [(HUServiceGridViewController *)self layoutOptions];
  [v3 viewSize];
  v5 = v4;
  v7 = v6;
  v8 = [(HUServiceGridViewController *)self view];
  [v8 frame];
  v10 = v9;
  v12 = v11;

  if (v5 != v10 || v7 != v12)
  {
    v14 = [(HUServiceGridViewController *)self view];
    [v14 frame];
    v17 = [(HUServiceGridViewController *)self _defaultLayoutOptionsForViewSize:v15, v16];
    [(HUServiceGridViewController *)self setLayoutOptions:v17];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = HUServiceGridViewController;
  v7 = a4;
  [(HUServiceGridViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__HUServiceGridViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_277DB79B8;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

void __82__HUServiceGridViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [v2 view];
  [v6 frame];
  v5 = [v2 _defaultLayoutOptionsForViewSize:{v3, v4}];
  [*(a1 + 32) setLayoutOptions:v5];
}

- (void)setScrollDirection:(int64_t)a3
{
  if (self->_scrollDirection != a3)
  {
    self->_scrollDirection = a3;
    v8 = [(HUServiceGridViewController *)self view];
    [v8 frame];
    v7 = [(HUServiceGridViewController *)self _defaultLayoutOptionsForViewSize:v5, v6];
    [(HUServiceGridViewController *)self setLayoutOptions:v7];
  }
}

- (void)setContentMargins:(unint64_t)a3
{
  if (self->_contentMargins != a3)
  {
    self->_contentMargins = a3;
    v8 = [(HUServiceGridViewController *)self view];
    [v8 frame];
    v7 = [(HUServiceGridViewController *)self _defaultLayoutOptionsForViewSize:v5, v6];
    [(HUServiceGridViewController *)self setLayoutOptions:v7];
  }
}

- (CGSize)preferredContentSizeForCollectionViewContentSize:(CGSize)a3
{
  v18.receiver = self;
  v18.super_class = HUServiceGridViewController;
  [(HUItemCollectionViewController *)&v18 preferredContentSizeForCollectionViewContentSize:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  if ([(HUServiceGridViewController *)self scrollDirection]== 1)
  {
    v8 = [(HUServiceGridViewController *)self layoutOptions];
    [v8 pointWidthForNumberOfColumns:1];
    v10 = v9;
    v11 = [(HUServiceGridViewController *)self layoutOptions];
    [v11 sectionTopMargin];
    v13 = v10 + v12;
    v14 = [(HUServiceGridViewController *)self layoutOptions];
    [v14 sectionBottomMargin];
    v7 = v13 + v15;
  }

  v16 = v5;
  v17 = v7;
  result.height = v17;
  result.width = v16;
  return result;
}

- (unint64_t)itemTypeForItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_performTapActionForItem:(id)a3 tappedArea:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = HUServiceGridViewController;
  v8 = [(HUControllableItemCollectionViewController *)&v16 _performTapActionForItem:v6 tappedArea:v7];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__HUServiceGridViewController__performTapActionForItem_tappedArea___block_invoke;
  v12[3] = &unk_277DBD700;
  objc_copyWeak(&v14, &location);
  v9 = v6;
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

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  if ([(HUServiceGridViewController *)self itemTypeForItem:a3, a4]> 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  return v4;
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = HUServiceGridViewController;
  [(HUControllableItemCollectionViewController *)&v18 configureCell:v6 forItem:a4];
  v7 = v6;
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
    v10 = v7;
    v11 = [(HUServiceGridViewController *)self layoutOptions];
    v12 = [v11 serviceCellOptions];
    [v10 setLayoutOptions:v12];

    [v10 setShouldShowLoadingState:{-[HUServiceGridViewController shouldShowLoadingState](self, "shouldShowLoadingState")}];
    v13 = [(HUItemCollectionViewController *)self itemManager];
    objc_opt_class();
    LOBYTE(v12) = objc_opt_isKindOfClass();

    if ((v12 & 1) == 0)
    {
LABEL_10:

      goto LABEL_11;
    }

    v14 = [(HUItemCollectionViewController *)self itemManager];
    [v10 setShouldShowRoomName:{objc_msgSend(v14, "shouldGroupByRoom") ^ 1}];
LABEL_9:

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(HUServiceGridViewController *)self layoutOptions];
    v14 = [v10 sceneCellOptions];
    [v9 setLayoutOptions:v14];
    goto LABEL_9;
  }

LABEL_11:
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    v15 = [(HUServiceGridViewController *)self traitCollection];
    v16 = [v15 userInterfaceStyle];

    if (v16 == 1)
    {
      v17 = [v9 layoutOptions];
      [v17 setOnStateBorderStyle:1];
    }
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = -[HUServiceGridViewController layoutOptionsForSection:](self, "layoutOptionsForSection:", [v6 section]);
  v8 = [(HUItemCollectionViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v6];

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
    v15 = [v7 sceneCellOptions];
    [v15 cellHeight];
    v14 = v16;

    v17 = [v7 sceneCellOptions];
    v18 = [v17 font];
    [v18 lineHeight];
    v20 = v19;
    v21 = [v7 sceneCellOptions];
    v22 = [v21 descriptionFont];
    [v22 lineHeight];
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

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v7 = [(HUServiceGridViewController *)self layoutOptionsForSection:a5, a4];
  v8 = [(HUItemCollectionViewController *)self itemManager];
  v9 = [v8 titleForSection:a5];

  if (v9)
  {
    v10 = [(HUItemCollectionViewController *)self itemManager];
    v11 = [v10 numberOfSections] - 1;

    v12 = 0.0;
    v13 = 0.0;
    if (v11 != a5)
    {
      v14 = [(HUItemCollectionViewController *)self itemManager];
      v15 = [v14 itemSectionForSectionIndex:a5 + 1];

      v16 = [v15 items];
      v17 = [v16 count];

      if (v17)
      {
        v13 = 17.5;
      }

      else
      {
        v13 = 0.0;
      }
    }

    [v7 sectionLeadingMargin];
    v19 = v18;
  }

  else
  {
    [v7 sectionTopMargin];
    v12 = v20;
    [v7 sectionLeadingMargin];
    v19 = v21;
    [v7 sectionBottomMargin];
    v13 = v22;
  }

  [v7 sectionTrailingMargin];
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

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v7 = [(HUItemCollectionViewController *)self itemManager:a3];
  v8 = [v7 titleForSection:a5];
  if (v8)
  {
    v9 = *MEMORY[0x277D76F30];
    [(HUServiceGridViewController *)self headerViewHeightForSectionIndex:a5];
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

- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5
{
  v5 = [(HUServiceGridViewController *)self layoutOptionsForSection:a5, a4];
  [v5 rowSpacing];
  v7 = v6;

  return v7;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = *MEMORY[0x277D767D8];
  v11 = a3;
  if (([v8 isEqualToString:v10] & 1) == 0)
  {
    NSLog(&cfstr_AskedForAViewF.isa, v8);
  }

  v12 = [(HUItemCollectionViewController *)self itemManager];
  v13 = [v12 titleForSection:{objc_msgSend(v9, "section")}];

  if (!v13)
  {
    NSLog(&cfstr_AskedForHeader.isa, v9);
  }

  objc_opt_class();
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [v11 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v15 forIndexPath:v9];

  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = -[HUServiceGridViewController layoutOptionsForSection:](self, "layoutOptionsForSection:", [v9 section]);
  v20 = [MEMORY[0x277D756E0] groupedHeaderConfiguration];
  [v20 setText:v13];
  [v20 directionalLayoutMargins];
  v22 = v21;
  v24 = v23;
  [v19 sectionTitleMargin];
  v26 = v25;
  [v19 sectionTitleMargin];
  [v20 setDirectionalLayoutMargins:{v22, v26, v24}];
  if (([(HUServiceGridViewController *)self contentMargins]& 0xA) == 0)
  {
    [v20 setAxesPreservingSuperviewLayoutMargins:0];
  }

  [v18 setContentConfiguration:v20];
  v27 = [MEMORY[0x277D751C0] clearConfiguration];
  [v18 setBackgroundConfiguration:v27];

  return v18;
}

- (double)headerViewHeightForSectionIndex:(unint64_t)a3
{
  v5 = [MEMORY[0x277D756E0] groupedHeaderConfiguration];
  v6 = [(HUItemCollectionViewController *)self itemManager];
  v7 = [v6 titleForSection:a3];

  [v5 setText:v7];
  v8 = [objc_alloc(MEMORY[0x277D756E8]) initWithConfiguration:v5];
  [v8 systemLayoutSizeFittingSize:{1.79769313e308, 1.79769313e308}];
  v10 = v9;

  return v10;
}

- (id)_defaultLayoutOptionsForViewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [MEMORY[0x277D14CE8] useMacIdiom];
  v7 = &unk_282491730;
  if (!v6)
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
  v2 = [(HUServiceGridViewController *)self collectionView];
  v3 = [v2 collectionViewLayout];
  v4 = [v3 layoutOptions];

  return v4;
}

- (void)setLayoutOptions:(id)a3
{
  v4 = a3;
  v5 = [(HUServiceGridViewController *)self layoutOptions];
  v6 = [v5 isEqual:v4];

  v7 = [(HUServiceGridViewController *)self collectionView];
  v8 = [v7 collectionViewLayout];
  [v8 setLayoutOptions:v4];

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
  v3 = [(HUServiceGridViewController *)self collectionView];
  v4 = [v3 visibleCells];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [(HUServiceGridViewController *)self layoutOptions];
          v11 = [v10 serviceCellOptions];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          v10 = [(HUServiceGridViewController *)self layoutOptions];
          v11 = [v10 sceneCellOptions];
        }

        v12 = v11;
        [v9 setLayoutOptions:v11];

LABEL_11:
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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