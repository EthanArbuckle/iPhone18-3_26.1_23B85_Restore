@interface HUContainedServicesGridViewController_legacy
+ (id)itemManagerWithServiceContainerItem:(id)a3 shouldGroupByRoom:(BOOL)a4 mediaItem:(id)a5 valueSource:(id)a6;
- (BOOL)hasDetailsActionForPresentationCoordinator:(id)a3 item:(id)a4;
- (HUContainedServiceGridViewControllerDelegate_legacy)serviceGridDelegate;
- (HUContainedServicesGridViewController_legacy)initWithItemManager:(id)a3;
- (HUContainedServicesGridViewController_legacy)initWithServiceContainerItem:(id)a3 isPresentedModally:(BOOL)a4 valueSource:(id)a5;
- (HUPresentationDelegate)presentationDelegate;
- (id)detailsViewControllerForPresentationCoordinator:(id)a3 item:(id)a4;
- (id)layoutOptionsForSection:(int64_t)a3;
- (void)_done:(id)a3;
- (void)_edit:(id)a3;
- (void)_updateRightBarButtons;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)itemManagerDidUpdate:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUContainedServicesGridViewController_legacy

+ (id)itemManagerWithServiceContainerItem:(id)a3 shouldGroupByRoom:(BOOL)a4 mediaItem:(id)a5 valueSource:(id)a6
{
  v8 = a4;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [HUServiceGridItemManager alloc];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __124__HUContainedServicesGridViewController_legacy_itemManagerWithServiceContainerItem_shouldGroupByRoom_mediaItem_valueSource___block_invoke;
  v20[3] = &unk_277DB8438;
  v21 = v11;
  v22 = v13;
  v24 = a1;
  v25 = a2;
  v23 = v12;
  v15 = v12;
  v16 = v13;
  v17 = v11;
  v18 = [(HUServiceGridItemManager *)v14 initWithDelegate:0 shouldGroupByRoom:v8 itemProvidersCreator:v20];

  return v18;
}

- (HUContainedServicesGridViewController_legacy)initWithServiceContainerItem:(id)a3 isPresentedModally:(BOOL)a4 valueSource:(id)a5
{
  v8 = a5;
  v9 = [a3 copy];
  v10 = [objc_opt_class() itemManagerWithServiceContainerItem:v9 shouldGroupByRoom:1 mediaItem:0 valueSource:v8];

  [v10 setDelegate:self];
  v15.receiver = self;
  v15.super_class = HUContainedServicesGridViewController_legacy;
  v11 = [(HUServiceGridViewController *)&v15 initWithItemManager:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_serviceContainerItem, v9);
    v12->_presentedModally = a4;
    v13 = [(HUItemCollectionViewController *)v12 itemManager];
    [v13 setSourceItem:v12->_serviceContainerItem];
  }

  return v12;
}

- (HUContainedServicesGridViewController_legacy)initWithItemManager:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithActionSetBuilder_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUContainedServicesGridViewController_legacy.m" lineNumber:246 description:{@"%s is unavailable; use %@ instead", "-[HUContainedServicesGridViewController_legacy initWithItemManager:]", v6}];

  return 0;
}

- (void)_done:(id)a3
{
  v5 = [(HUContainedServicesGridViewController_legacy *)self presentationDelegate];
  v4 = [v5 finishPresentation:self animated:1];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HUContainedServicesGridViewController_legacy;
  [(HUServiceGridViewController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  v4 = [(HUContainedServicesGridViewController_legacy *)self collectionView];
  [v4 setBackgroundColor:v3];
}

- (void)_edit:(id)a3
{
  v4 = objc_opt_class();
  v5 = [(HUContainedServicesGridViewController_legacy *)self serviceContainerItem];
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = v5;
    if (v7)
    {
      goto LABEL_8;
    }

    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v9 handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v4, objc_opt_class()}];
  }

  v8 = 0;
LABEL_8:
  v19 = v8;

  v11 = objc_alloc(MEMORY[0x277D14AA8]);
  v12 = [v19 serviceGroup];
  v13 = [(HUItemCollectionViewController *)self itemManager];
  v14 = [v13 home];
  v15 = [v11 initWithExistingObject:v12 inHome:v14];

  v16 = [[HUServiceGroupEditorViewController alloc] initWithServiceGroupBuilder:v15];
  [(HUServiceGroupEditorViewController *)v16 setPresentationDelegate:self];
  v17 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v16];
  [v17 setModalPresentationStyle:2];
  v18 = [(UIViewController *)self hu_presentPreloadableViewController:v17 animated:1];
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = HUContainedServicesGridViewController_legacy;
  [(HUServiceGridViewController *)&v12 configureCell:v6 forItem:a4];
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 layoutOptions];
  v11 = [v10 backgroundDisplayOptions];
  [v11 setDisplayStyle:4];

  [v9 layoutOptionsDidChange];
}

- (id)layoutOptionsForSection:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = HUContainedServicesGridViewController_legacy;
  v4 = [(HUServiceGridViewController *)&v7 layoutOptionsForSection:?];
  v5 = [v4 copy];

  if (!a3)
  {
    [v5 sectionTitleMargin];
    [v5 setSectionTitleMargin:40.0];
  }

  return v5;
}

- (BOOL)hasDetailsActionForPresentationCoordinator:(id)a3 item:(id)a4
{
  v5 = a4;
  v6 = [(HUContainedServicesGridViewController_legacy *)self serviceGridDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(HUContainedServicesGridViewController_legacy *)self serviceGridDelegate];
    v9 = [v8 hasDetailsActionForContainedServiceGridViewController:self item:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)detailsViewControllerForPresentationCoordinator:(id)a3 item:(id)a4
{
  v5 = a4;
  v6 = [(HUContainedServicesGridViewController_legacy *)self serviceGridDelegate];
  v7 = [v6 detailsViewControllerForContainedServiceGridViewController:self item:v5];

  if (!v7 || (-[HUContainedServicesGridViewController_legacy serviceGridDelegate](self, "serviceGridDelegate"), v8 = objc_claimAutoreleasedReturnValue(), [v8 detailsViewControllerForContainedServiceGridViewController:self item:v5], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    NSLog(&cfstr_NoDetailsViewC.isa, v5);
    v9 = 0;
  }

  return v9;
}

- (void)itemManagerDidUpdate:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUContainedServicesGridViewController_legacy;
  [(HUItemCollectionViewController *)&v4 itemManagerDidUpdate:a3];
  [(HUContainedServicesGridViewController_legacy *)self _updateRightBarButtons];
}

- (void)_updateRightBarButtons
{
  objc_opt_class();
  v3 = [(HUContainedServicesGridViewController_legacy *)self serviceContainerItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = 0;
  if ([(HUContainedServicesGridViewController_legacy *)self isPresentedModally])
  {
    v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
  }

  v7 = [v5 serviceGroup];
  if (v7 && (v8 = v7, -[HUItemCollectionViewController itemManager](self, "itemManager"), v9 = objc_claimAutoreleasedReturnValue(), [v9 home], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "hf_currentUserIsAdministrator"), v10, v9, v8, v11))
  {
    v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:2 target:self action:sel__edit_];
    if (!v6)
    {
      v6 = v12;
      v12 = 0;
    }

    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v13 = [(HUContainedServicesGridViewController_legacy *)self navigationItem];
  [v13 setLeftBarButtonItem:v15];

  v14 = [(HUContainedServicesGridViewController_legacy *)self navigationItem];
  [v14 setRightBarButtonItem:v6];
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (HUContainedServiceGridViewControllerDelegate_legacy)serviceGridDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceGridDelegate);

  return WeakRetained;
}

@end