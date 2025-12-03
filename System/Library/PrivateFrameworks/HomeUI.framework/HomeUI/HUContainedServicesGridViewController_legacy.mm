@interface HUContainedServicesGridViewController_legacy
+ (id)itemManagerWithServiceContainerItem:(id)item shouldGroupByRoom:(BOOL)room mediaItem:(id)mediaItem valueSource:(id)source;
- (BOOL)hasDetailsActionForPresentationCoordinator:(id)coordinator item:(id)item;
- (HUContainedServiceGridViewControllerDelegate_legacy)serviceGridDelegate;
- (HUContainedServicesGridViewController_legacy)initWithItemManager:(id)manager;
- (HUContainedServicesGridViewController_legacy)initWithServiceContainerItem:(id)item isPresentedModally:(BOOL)modally valueSource:(id)source;
- (HUPresentationDelegate)presentationDelegate;
- (id)detailsViewControllerForPresentationCoordinator:(id)coordinator item:(id)item;
- (id)layoutOptionsForSection:(int64_t)section;
- (void)_done:(id)_done;
- (void)_edit:(id)_edit;
- (void)_updateRightBarButtons;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)itemManagerDidUpdate:(id)update;
- (void)viewDidLoad;
@end

@implementation HUContainedServicesGridViewController_legacy

+ (id)itemManagerWithServiceContainerItem:(id)item shouldGroupByRoom:(BOOL)room mediaItem:(id)mediaItem valueSource:(id)source
{
  roomCopy = room;
  itemCopy = item;
  mediaItemCopy = mediaItem;
  sourceCopy = source;
  v14 = [HUServiceGridItemManager alloc];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __124__HUContainedServicesGridViewController_legacy_itemManagerWithServiceContainerItem_shouldGroupByRoom_mediaItem_valueSource___block_invoke;
  v20[3] = &unk_277DB8438;
  v21 = itemCopy;
  v22 = sourceCopy;
  selfCopy = self;
  v25 = a2;
  v23 = mediaItemCopy;
  v15 = mediaItemCopy;
  v16 = sourceCopy;
  v17 = itemCopy;
  v18 = [(HUServiceGridItemManager *)v14 initWithDelegate:0 shouldGroupByRoom:roomCopy itemProvidersCreator:v20];

  return v18;
}

- (HUContainedServicesGridViewController_legacy)initWithServiceContainerItem:(id)item isPresentedModally:(BOOL)modally valueSource:(id)source
{
  sourceCopy = source;
  v9 = [item copy];
  v10 = [objc_opt_class() itemManagerWithServiceContainerItem:v9 shouldGroupByRoom:1 mediaItem:0 valueSource:sourceCopy];

  [v10 setDelegate:self];
  v15.receiver = self;
  v15.super_class = HUContainedServicesGridViewController_legacy;
  v11 = [(HUServiceGridViewController *)&v15 initWithItemManager:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_serviceContainerItem, v9);
    v12->_presentedModally = modally;
    itemManager = [(HUItemCollectionViewController *)v12 itemManager];
    [itemManager setSourceItem:v12->_serviceContainerItem];
  }

  return v12;
}

- (HUContainedServicesGridViewController_legacy)initWithItemManager:(id)manager
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithActionSetBuilder_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUContainedServicesGridViewController_legacy.m" lineNumber:246 description:{@"%s is unavailable; use %@ instead", "-[HUContainedServicesGridViewController_legacy initWithItemManager:]", v6}];

  return 0;
}

- (void)_done:(id)_done
{
  presentationDelegate = [(HUContainedServicesGridViewController_legacy *)self presentationDelegate];
  v4 = [presentationDelegate finishPresentation:self animated:1];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HUContainedServicesGridViewController_legacy;
  [(HUServiceGridViewController *)&v5 viewDidLoad];
  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  collectionView = [(HUContainedServicesGridViewController_legacy *)self collectionView];
  [collectionView setBackgroundColor:systemGroupedBackgroundColor];
}

- (void)_edit:(id)_edit
{
  v4 = objc_opt_class();
  serviceContainerItem = [(HUContainedServicesGridViewController_legacy *)self serviceContainerItem];
  if (serviceContainerItem)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = serviceContainerItem;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = serviceContainerItem;
    if (v7)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v4, objc_opt_class()}];
  }

  v8 = 0;
LABEL_8:
  v19 = v8;

  v11 = objc_alloc(MEMORY[0x277D14AA8]);
  serviceGroup = [v19 serviceGroup];
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  home = [itemManager home];
  v15 = [v11 initWithExistingObject:serviceGroup inHome:home];

  v16 = [[HUServiceGroupEditorViewController alloc] initWithServiceGroupBuilder:v15];
  [(HUServiceGroupEditorViewController *)v16 setPresentationDelegate:self];
  v17 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v16];
  [v17 setModalPresentationStyle:2];
  v18 = [(UIViewController *)self hu_presentPreloadableViewController:v17 animated:1];
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  v12.receiver = self;
  v12.super_class = HUContainedServicesGridViewController_legacy;
  [(HUServiceGridViewController *)&v12 configureCell:cellCopy forItem:item];
  objc_opt_class();
  v7 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  layoutOptions = [v9 layoutOptions];
  backgroundDisplayOptions = [layoutOptions backgroundDisplayOptions];
  [backgroundDisplayOptions setDisplayStyle:4];

  [v9 layoutOptionsDidChange];
}

- (id)layoutOptionsForSection:(int64_t)section
{
  v7.receiver = self;
  v7.super_class = HUContainedServicesGridViewController_legacy;
  v4 = [(HUServiceGridViewController *)&v7 layoutOptionsForSection:?];
  v5 = [v4 copy];

  if (!section)
  {
    [v5 sectionTitleMargin];
    [v5 setSectionTitleMargin:40.0];
  }

  return v5;
}

- (BOOL)hasDetailsActionForPresentationCoordinator:(id)coordinator item:(id)item
{
  itemCopy = item;
  serviceGridDelegate = [(HUContainedServicesGridViewController_legacy *)self serviceGridDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    serviceGridDelegate2 = [(HUContainedServicesGridViewController_legacy *)self serviceGridDelegate];
    v9 = [serviceGridDelegate2 hasDetailsActionForContainedServiceGridViewController:self item:itemCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)detailsViewControllerForPresentationCoordinator:(id)coordinator item:(id)item
{
  itemCopy = item;
  serviceGridDelegate = [(HUContainedServicesGridViewController_legacy *)self serviceGridDelegate];
  v7 = [serviceGridDelegate detailsViewControllerForContainedServiceGridViewController:self item:itemCopy];

  if (!v7 || (-[HUContainedServicesGridViewController_legacy serviceGridDelegate](self, "serviceGridDelegate"), v8 = objc_claimAutoreleasedReturnValue(), [v8 detailsViewControllerForContainedServiceGridViewController:self item:itemCopy], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    NSLog(&cfstr_NoDetailsViewC.isa, itemCopy);
    v9 = 0;
  }

  return v9;
}

- (void)itemManagerDidUpdate:(id)update
{
  v4.receiver = self;
  v4.super_class = HUContainedServicesGridViewController_legacy;
  [(HUItemCollectionViewController *)&v4 itemManagerDidUpdate:update];
  [(HUContainedServicesGridViewController_legacy *)self _updateRightBarButtons];
}

- (void)_updateRightBarButtons
{
  objc_opt_class();
  serviceContainerItem = [(HUContainedServicesGridViewController_legacy *)self serviceContainerItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = serviceContainerItem;
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

  serviceGroup = [v5 serviceGroup];
  if (serviceGroup && (v8 = serviceGroup, -[HUItemCollectionViewController itemManager](self, "itemManager"), v9 = objc_claimAutoreleasedReturnValue(), [v9 home], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "hf_currentUserIsAdministrator"), v10, v9, v8, v11))
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

  navigationItem = [(HUContainedServicesGridViewController_legacy *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v15];

  navigationItem2 = [(HUContainedServicesGridViewController_legacy *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v6];
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