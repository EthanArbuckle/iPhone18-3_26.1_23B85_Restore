@interface HUContainedMediaAccessoriesGridViewController_legacy
- (HUContainedMediaAccessoriesGridViewControllerDelegate_legacy)mediaAccessoryGridDelegate;
- (HUContainedMediaAccessoriesGridViewController_legacy)initWithMediaAccessoryContainerItem:(id)a3 isPresentedModally:(BOOL)a4 valueSource:(id)a5;
- (HUPresentationDelegate)presentationDelegate;
- (id)detailsViewControllerForPresentationCoordinator:(id)a3 item:(id)a4;
- (id)layoutOptionsForSection:(int64_t)a3;
- (void)_done:(id)a3;
- (void)_updateRightBarButtons;
- (void)itemManagerDidUpdate:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUContainedMediaAccessoriesGridViewController_legacy

- (HUContainedMediaAccessoriesGridViewController_legacy)initWithMediaAccessoryContainerItem:(id)a3 isPresentedModally:(BOOL)a4 valueSource:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v9 copy];
  v11 = [HUContainedServicesGridViewController_legacy itemManagerWithServiceContainerItem:0 shouldGroupByRoom:1 mediaItem:v9 valueSource:v8];

  v16.receiver = self;
  v16.super_class = HUContainedMediaAccessoriesGridViewController_legacy;
  v12 = [(HUServiceGridViewController *)&v16 initWithItemManager:v11];
  v13 = v12;
  if (v12)
  {
    v12->_presentedModally = a4;
    objc_storeStrong(&v12->_mediaAccessoryItem, v10);
    v14 = [(HUItemCollectionViewController *)v13 itemManager];
    [v14 setSourceItem:v13->_mediaAccessoryItem];
  }

  return v13;
}

- (void)_done:(id)a3
{
  v5 = [(HUContainedMediaAccessoriesGridViewController_legacy *)self presentationDelegate];
  v4 = [v5 finishPresentation:self animated:1];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HUContainedMediaAccessoriesGridViewController_legacy;
  [(HUServiceGridViewController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  v4 = [(HUContainedMediaAccessoriesGridViewController_legacy *)self collectionView];
  [v4 setBackgroundColor:v3];
}

- (id)layoutOptionsForSection:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = HUContainedMediaAccessoriesGridViewController_legacy;
  v4 = [(HUServiceGridViewController *)&v7 layoutOptionsForSection:?];
  v5 = [v4 copy];

  if (!a3)
  {
    [v5 sectionTitleMargin];
    [v5 setSectionTitleMargin:40.0];
  }

  return v5;
}

- (id)detailsViewControllerForPresentationCoordinator:(id)a3 item:(id)a4
{
  v5 = a4;
  v6 = [(HUContainedMediaAccessoriesGridViewController_legacy *)self mediaAccessoryGridDelegate];
  v7 = [v6 detailsViewControllerForContainedMediaAccessoryGridViewController:self item:v5];

  if (!v7 || (-[HUContainedMediaAccessoriesGridViewController_legacy mediaAccessoryGridDelegate](self, "mediaAccessoryGridDelegate"), v8 = objc_claimAutoreleasedReturnValue(), [v8 detailsViewControllerForContainedMediaAccessoryGridViewController:self item:v5], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    NSLog(&cfstr_NoDetailsViewC.isa, v5);
    v9 = 0;
  }

  return v9;
}

- (void)itemManagerDidUpdate:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUContainedMediaAccessoriesGridViewController_legacy;
  [(HUItemCollectionViewController *)&v4 itemManagerDidUpdate:a3];
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

  v3 = [(HUContainedMediaAccessoriesGridViewController_legacy *)self navigationItem];
  [v3 setLeftBarButtonItem:0];

  v4 = [(HUContainedMediaAccessoriesGridViewController_legacy *)self navigationItem];
  [v4 setRightBarButtonItem:v5];
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