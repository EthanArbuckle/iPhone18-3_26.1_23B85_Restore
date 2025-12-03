@interface HUContainedMediaAccessoriesGridViewController_legacy
- (HUContainedMediaAccessoriesGridViewControllerDelegate_legacy)mediaAccessoryGridDelegate;
- (HUContainedMediaAccessoriesGridViewController_legacy)initWithMediaAccessoryContainerItem:(id)item isPresentedModally:(BOOL)modally valueSource:(id)source;
- (HUPresentationDelegate)presentationDelegate;
- (id)detailsViewControllerForPresentationCoordinator:(id)coordinator item:(id)item;
- (id)layoutOptionsForSection:(int64_t)section;
- (void)_done:(id)_done;
- (void)_updateRightBarButtons;
- (void)itemManagerDidUpdate:(id)update;
- (void)viewDidLoad;
@end

@implementation HUContainedMediaAccessoriesGridViewController_legacy

- (HUContainedMediaAccessoriesGridViewController_legacy)initWithMediaAccessoryContainerItem:(id)item isPresentedModally:(BOOL)modally valueSource:(id)source
{
  sourceCopy = source;
  itemCopy = item;
  v10 = [itemCopy copy];
  v11 = [HUContainedServicesGridViewController_legacy itemManagerWithServiceContainerItem:0 shouldGroupByRoom:1 mediaItem:itemCopy valueSource:sourceCopy];

  v16.receiver = self;
  v16.super_class = HUContainedMediaAccessoriesGridViewController_legacy;
  v12 = [(HUServiceGridViewController *)&v16 initWithItemManager:v11];
  v13 = v12;
  if (v12)
  {
    v12->_presentedModally = modally;
    objc_storeStrong(&v12->_mediaAccessoryItem, v10);
    itemManager = [(HUItemCollectionViewController *)v13 itemManager];
    [itemManager setSourceItem:v13->_mediaAccessoryItem];
  }

  return v13;
}

- (void)_done:(id)_done
{
  presentationDelegate = [(HUContainedMediaAccessoriesGridViewController_legacy *)self presentationDelegate];
  v4 = [presentationDelegate finishPresentation:self animated:1];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HUContainedMediaAccessoriesGridViewController_legacy;
  [(HUServiceGridViewController *)&v5 viewDidLoad];
  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  collectionView = [(HUContainedMediaAccessoriesGridViewController_legacy *)self collectionView];
  [collectionView setBackgroundColor:systemGroupedBackgroundColor];
}

- (id)layoutOptionsForSection:(int64_t)section
{
  v7.receiver = self;
  v7.super_class = HUContainedMediaAccessoriesGridViewController_legacy;
  v4 = [(HUServiceGridViewController *)&v7 layoutOptionsForSection:?];
  v5 = [v4 copy];

  if (!section)
  {
    [v5 sectionTitleMargin];
    [v5 setSectionTitleMargin:40.0];
  }

  return v5;
}

- (id)detailsViewControllerForPresentationCoordinator:(id)coordinator item:(id)item
{
  itemCopy = item;
  mediaAccessoryGridDelegate = [(HUContainedMediaAccessoriesGridViewController_legacy *)self mediaAccessoryGridDelegate];
  v7 = [mediaAccessoryGridDelegate detailsViewControllerForContainedMediaAccessoryGridViewController:self item:itemCopy];

  if (!v7 || (-[HUContainedMediaAccessoriesGridViewController_legacy mediaAccessoryGridDelegate](self, "mediaAccessoryGridDelegate"), v8 = objc_claimAutoreleasedReturnValue(), [v8 detailsViewControllerForContainedMediaAccessoryGridViewController:self item:itemCopy], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    NSLog(&cfstr_NoDetailsViewC.isa, itemCopy);
    v9 = 0;
  }

  return v9;
}

- (void)itemManagerDidUpdate:(id)update
{
  v4.receiver = self;
  v4.super_class = HUContainedMediaAccessoriesGridViewController_legacy;
  [(HUItemCollectionViewController *)&v4 itemManagerDidUpdate:update];
  [(HUContainedMediaAccessoriesGridViewController_legacy *)self _updateRightBarButtons];
}

- (void)_updateRightBarButtons
{
  if ([(HUContainedMediaAccessoriesGridViewController_legacy *)self isPresentedModally])
  {
    v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
  }

  else
  {
    v5 = 0;
  }

  navigationItem = [(HUContainedMediaAccessoriesGridViewController_legacy *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];

  navigationItem2 = [(HUContainedMediaAccessoriesGridViewController_legacy *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v5];
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (HUContainedMediaAccessoriesGridViewControllerDelegate_legacy)mediaAccessoryGridDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaAccessoryGridDelegate);

  return WeakRetained;
}

@end