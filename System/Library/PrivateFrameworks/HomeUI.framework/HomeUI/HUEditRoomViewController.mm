@interface HUEditRoomViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUEditRoomItemManager)roomItemManager;
- (HUEditRoomViewController)initWithRoomBuilder:(id)builder presentationDelegate:(id)delegate addRoomDelegate:(id)roomDelegate;
- (HUEditRoomViewControllerAddRoomDelegate)addRoomDelegate;
- (HUEditRoomViewControllerPresentationDelegate)presentationDelegate;
- (UITextField)editingTextField;
- (id)itemModuleControllers;
- (id)trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (unint64_t)automaticDisablingReasonsForItem:(id)item;
- (void)addButtonPressed:(id)pressed;
- (void)cancelButtonPressed:(id)pressed;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)doneButtonPressed:(id)pressed;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)nameFieldTextChanged:(id)changed;
- (void)presentWallpaperEditingViewControllerWithImage:(id)image wallpaper:(id)wallpaper;
- (void)updateTitle;
- (void)updateWallpaper:(id)wallpaper image:(id)image;
- (void)viewDidLoad;
- (void)wallpaperEditing:(id)editing didFinishWithWallpaper:(id)wallpaper image:(id)image;
- (void)wallpaperPicker:(id)picker didReceiveDroppedImage:(id)image;
- (void)wallpaperPicker:(id)picker didSelectWallpaper:(id)wallpaper withImage:(id)image;
- (void)wallpaperPickerDidFinish:(id)finish wallpaper:(id)wallpaper image:(id)image;
- (void)wallpaperPickerRequestOpenWallpaperEditor:(id)editor;
- (void)wallpaperThumbnailCell:(id)cell didReceiveDroppedImage:(id)image;
@end

@implementation HUEditRoomViewController

- (HUEditRoomViewController)initWithRoomBuilder:(id)builder presentationDelegate:(id)delegate addRoomDelegate:(id)roomDelegate
{
  builderCopy = builder;
  obj = delegate;
  roomDelegateCopy = roomDelegate;
  v10 = [[HUEditRoomItemManager alloc] initWithRoomBuilder:builderCopy delegate:self];
  objc_initWeak(&location, self);
  v11 = [objc_alloc(MEMORY[0x277D75290]) initWithAppearance:2];
  [v11 setHeaderMode:1];
  [v11 setFooterMode:1];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __85__HUEditRoomViewController_initWithRoomBuilder_presentationDelegate_addRoomDelegate___block_invoke;
  v27[3] = &unk_277DC1040;
  objc_copyWeak(&v28, &location);
  [v11 setTrailingSwipeActionsConfigurationProvider:v27];
  v12 = [MEMORY[0x277D752B8] layoutWithListConfiguration:v11];
  v26.receiver = self;
  v26.super_class = HUEditRoomViewController;
  v13 = [(HUItemCollectionViewController *)&v26 initWithItemManager:v10 collectionViewLayout:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_presentationDelegate, obj);
    objc_storeWeak(&v14->_addRoomDelegate, roomDelegateCopy);
    objc_storeWeak(&v14->_roomItemManager, v10);
    objc_storeStrong(&v14->_roomBuilder, builder);
    WeakRetained = objc_loadWeakRetained(&v14->_roomItemManager);
    zoneModule = [WeakRetained zoneModule];

    if (zoneModule)
    {
      v17 = [HUZoneModuleController alloc];
      v18 = objc_loadWeakRetained(&v14->_roomItemManager);
      zoneModule2 = [v18 zoneModule];
      room = [(HFRoomBuilder *)v14->_roomBuilder room];
      v21 = [(HUZoneModuleController *)v17 initWithModule:zoneModule2 room:room];
      zoneModuleController = v14->_zoneModuleController;
      v14->_zoneModuleController = v21;
    }
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  return v14;
}

id __85__HUEditRoomViewController_initWithRoomBuilder_presentationDelegate_addRoomDelegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained trailingSwipeActionsConfigurationForRowAtIndexPath:v3];

  return v5;
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = HUEditRoomViewController;
  [(HUItemCollectionViewController *)&v31 viewDidLoad];
  collectionView = [(HUEditRoomViewController *)self collectionView];
  [collectionView setKeyboardDismissMode:1];

  if (+[HUWallpaperPickerInlineViewController useWallpaperPickerCell])
  {
    v4 = objc_alloc_init(HUWallpaperPickerInlineViewController);
    wallpaperPickerController = self->_wallpaperPickerController;
    self->_wallpaperPickerController = v4;
  }

  roomBuilder = [(HUEditRoomViewController *)self roomBuilder];
  room = [roomBuilder room];

  v8 = objc_alloc(MEMORY[0x277D751E0]);
  if (!room)
  {
    v21 = [v8 initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonPressed_];
    navigationItem = [(HUEditRoomViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v21];

    navigationItem2 = [(HUEditRoomViewController *)self navigationItem];
    leftBarButtonItem = [navigationItem2 leftBarButtonItem];
    [leftBarButtonItem setAccessibilityIdentifier:@"Home.Room.Cancel"];

    v25 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonPressed_];
    navigationItem3 = [(HUEditRoomViewController *)self navigationItem];
    [navigationItem3 setRightBarButtonItem:v25];

    navigationItem4 = [(HUEditRoomViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem4 rightBarButtonItem];
    [rightBarButtonItem setStyle:2];

    navigationItem5 = [(HUEditRoomViewController *)self navigationItem];
    rightBarButtonItem2 = [navigationItem5 rightBarButtonItem];
    [rightBarButtonItem2 setEnabled:0];

    navigationItem6 = [(HUEditRoomViewController *)self navigationItem];
    rightBarButtonItem3 = [navigationItem6 rightBarButtonItem];
    [rightBarButtonItem3 setAccessibilityIdentifier:@"Home.Room.Save"];
    goto LABEL_8;
  }

  v9 = [v8 initWithBarButtonSystemItem:0 target:self action:sel_doneButtonPressed_];
  navigationItem7 = [(HUEditRoomViewController *)self navigationItem];
  [navigationItem7 setRightBarButtonItem:v9];

  navigationItem8 = [(HUEditRoomViewController *)self navigationItem];
  rightBarButtonItem4 = [navigationItem8 rightBarButtonItem];
  [rightBarButtonItem4 setAccessibilityIdentifier:@"Home.Room.Done"];

  addRoomDelegate = [(HUEditRoomViewController *)self addRoomDelegate];

  if (addRoomDelegate)
  {
    roomBuilder2 = [(HUEditRoomViewController *)self roomBuilder];
    home = [roomBuilder2 home];
    hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

    if (!hf_currentUserIsAdministrator)
    {
      navigationItem6 = [(HUEditRoomViewController *)self navigationItem];
      [navigationItem6 setHidesBackButton:1];
      goto LABEL_10;
    }

    v17 = objc_alloc(MEMORY[0x277D751E0]);
    navigationItem6 = _HULocalizedStringWithDefaultValue(@"HUEditRoomAddButtonTitle", @"HUEditRoomAddButtonTitle", 1);
    rightBarButtonItem3 = [v17 initWithTitle:navigationItem6 style:0 target:self action:sel_addButtonPressed_];
    navigationItem9 = [(HUEditRoomViewController *)self navigationItem];
    [navigationItem9 setLeftBarButtonItem:rightBarButtonItem3];

LABEL_8:
LABEL_10:
  }

  [(HUEditRoomViewController *)self updateTitle];
}

- (void)updateTitle
{
  roomBuilder = [(HUEditRoomViewController *)self roomBuilder];
  room = [roomBuilder room];
  if (room)
  {
    roomBuilder2 = [(HUEditRoomViewController *)self roomBuilder];
    name = [roomBuilder2 name];
    [(HUEditRoomViewController *)self setTitle:name];
  }

  else
  {
    roomBuilder2 = _HULocalizedStringWithDefaultValue(@"HUAddRoomNameTitle", @"HUAddRoomNameTitle", 1);
    [(HUEditRoomViewController *)self setTitle:roomBuilder2];
  }
}

- (void)cancelButtonPressed:(id)pressed
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "HUEditRoomViewController: cancel button pressed", v6, 2u);
  }

  presentationDelegate = [(HUEditRoomViewController *)self presentationDelegate];
  [presentationDelegate editRoomViewControllerDidFinish:self withNewRoom:0];
}

- (void)addButtonPressed:(id)pressed
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "HUEditRoomViewController: add button pressed", v6, 2u);
  }

  addRoomDelegate = [(HUEditRoomViewController *)self addRoomDelegate];
  [addRoomDelegate presentAddRoomViewControllerForEditRoomViewController:self];
}

- (void)doneButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "HUEditRoomViewController: done button pressed", buf, 2u);
  }

  collectionView = [(HUEditRoomViewController *)self collectionView];
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  roomItemManager = [(HUEditRoomViewController *)self roomItemManager];
  nameItem = [roomItemManager nameItem];
  v9 = [itemManager indexPathForItem:nameItem];
  v10 = [collectionView cellForItemAtIndexPath:v9];

  if (objc_opt_respondsToSelector())
  {
    v11 = v10;
    textField = [v11 textField];
    text = [textField text];
  }

  else
  {
    v11 = 0;
    text = 0;
  }

  v14 = [MEMORY[0x277D14CE8] sanitizeUserEnteredHomeKitName:{text, pressedCopy}];
  roomBuilder = [(HUEditRoomViewController *)self roomBuilder];
  room = [roomBuilder room];

  if (![v14 length])
  {
    roomBuilder2 = [(HUEditRoomViewController *)self roomBuilder];
    name = [roomBuilder2 name];

    v14 = name;
  }

  textField2 = [v11 textField];
  [textField2 setText:v14];

  roomBuilder3 = [(HUEditRoomViewController *)self roomBuilder];
  [roomBuilder3 setName:v14];

  navigationItem = [(HUEditRoomViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [(HUEditRoomViewController *)self setSavedButtonBarItem:rightBarButtonItem];

  v22 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v23 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v22];
  navigationItem2 = [(HUEditRoomViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v23];

  [v22 startAnimating];
  navigationItem3 = [(HUEditRoomViewController *)self navigationItem];
  rightBarButtonItem2 = [navigationItem3 rightBarButtonItem];
  [rightBarButtonItem2 setEnabled:0];

  textField3 = [v11 textField];
  LODWORD(rightBarButtonItem2) = [textField3 canResignFirstResponder];

  if (rightBarButtonItem2)
  {
    textField4 = [v11 textField];
    [textField4 resignFirstResponder];
  }

  v29 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v22];
  navigationItem4 = [(HUEditRoomViewController *)self navigationItem];
  [navigationItem4 setRightBarButtonItem:v29];

  objc_initWeak(buf, self);
  roomBuilder4 = [(HUEditRoomViewController *)self roomBuilder];
  commitItem = [roomBuilder4 commitItem];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __46__HUEditRoomViewController_doneButtonPressed___block_invoke;
  v49[3] = &unk_277DC1068;
  objc_copyWeak(&v50, buf);
  v33 = [commitItem flatMap:v49];

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __46__HUEditRoomViewController_doneButtonPressed___block_invoke_3;
  v47[3] = &unk_277DB99B8;
  objc_copyWeak(&v48, buf);
  v34 = [v33 addSuccessBlock:v47];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __46__HUEditRoomViewController_doneButtonPressed___block_invoke_4;
  v45[3] = &unk_277DB94D0;
  objc_copyWeak(&v46, buf);
  v35 = [v33 addFailureBlock:v45];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __46__HUEditRoomViewController_doneButtonPressed___block_invoke_6;
  v44[3] = &unk_277DB7530;
  v44[4] = self;
  v36 = [v33 addCompletionBlock:v44];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __46__HUEditRoomViewController_doneButtonPressed___block_invoke_7;
  v42[3] = &unk_277DC1090;
  v42[4] = self;
  v37 = room;
  v43 = v37;
  v38 = [v33 addSuccessBlock:v42];

  objc_destroyWeak(&v46);
  objc_destroyWeak(&v48);

  objc_destroyWeak(&v50);
  objc_destroyWeak(buf);
}

id __46__HUEditRoomViewController_doneButtonPressed___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained zoneModuleController];

  if (v5)
  {
    v6 = [WeakRetained zoneModuleController];
    v7 = [v6 finishZoneNameEditing];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__HUEditRoomViewController_doneButtonPressed___block_invoke_2;
    v10[3] = &unk_277DBAFF8;
    v11 = v3;
    v8 = [v7 flatMap:v10];
  }

  else
  {
    v8 = [MEMORY[0x277D2C900] futureWithResult:v3];
  }

  return v8;
}

void __46__HUEditRoomViewController_doneButtonPressed___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateTitle];
}

void __46__HUEditRoomViewController_doneButtonPressed___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [MEMORY[0x277D14640] sharedHandler];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__HUEditRoomViewController_doneButtonPressed___block_invoke_5;
  v6[3] = &unk_277DB8488;
  v6[4] = WeakRetained;
  [v5 handleError:v3 retryBlock:v6 cancelBlock:0];
}

uint64_t __46__HUEditRoomViewController_doneButtonPressed___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) savedButtonBarItem];
  v3 = [*(a1 + 32) navigationItem];
  [v3 setRightBarButtonItem:v2];

  v4 = *(a1 + 32);

  return [v4 setSavedButtonBarItem:0];
}

void __46__HUEditRoomViewController_doneButtonPressed___block_invoke_7(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) presentationDelegate];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4 == v7)
  {
    v6 = 0;
  }

  else if ([v4 isEqual:?])
  {
    v6 = 0;
  }

  else
  {
    v6 = v7;
  }

  [v3 editRoomViewControllerDidFinish:v5 withNewRoom:v6];
}

- (void)nameFieldTextChanged:(id)changed
{
  v4 = MEMORY[0x277D14CE8];
  text = [changed text];
  v6 = [v4 sanitizeUserEnteredHomeKitName:text];
  v7 = [v6 length] != 0;

  navigationItem = [(HUEditRoomViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v7];

  [(HUEditRoomViewController *)self setModalInPresentation:v7];
}

- (id)itemModuleControllers
{
  v3 = objc_opt_new();
  zoneModuleController = [(HUEditRoomViewController *)self zoneModuleController];
  [zoneModuleController setHost:self];

  zoneModuleController2 = [(HUEditRoomViewController *)self zoneModuleController];
  [v3 na_safeAddObject:zoneModuleController2];

  return v3;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  roomItemManager = [(HUEditRoomViewController *)self roomItemManager];
  nameItem = [roomItemManager nameItem];
  v8 = [itemCopy isEqual:nameItem];

  if ((v8 & 1) == 0)
  {
    roomItemManager2 = [(HUEditRoomViewController *)self roomItemManager];
    wallpaperThumbnailItem = [roomItemManager2 wallpaperThumbnailItem];
    v11 = [itemCopy isEqual:wallpaperThumbnailItem];

    if ((v11 & 1) == 0)
    {
      roomItemManager3 = [(HUEditRoomViewController *)self roomItemManager];
      wallpaperPickerItem = [roomItemManager3 wallpaperPickerItem];
      [itemCopy isEqual:wallpaperPickerItem];
    }
  }

  v14 = objc_opt_class();

  return v14;
}

- (void)configureCell:(id)cell forItem:(id)item
{
  v71[1] = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  itemCopy = item;
  v70.receiver = self;
  v70.super_class = HUEditRoomViewController;
  [(HUItemCollectionViewController *)&v70 configureCell:cellCopy forItem:itemCopy];
  roomItemManager = [(HUEditRoomViewController *)self roomItemManager];
  nameItem = [roomItemManager nameItem];
  v10 = [itemCopy isEqual:nameItem];

  if (!v10)
  {
    roomItemManager2 = [(HUEditRoomViewController *)self roomItemManager];
    chooseWallpaperItem = [roomItemManager2 chooseWallpaperItem];
    v17 = [itemCopy isEqual:chooseWallpaperItem];

    if (v17)
    {
      textField = cellCopy;
      v18 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:itemCopy];
      [textField setContentConfiguration:v18];

      v19 = objc_alloc_init(MEMORY[0x277D75258]);
      v71[0] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];
      [textField setAccessories:v20];

      v14 = @"Home.Room.ChooseFromExisting";
      goto LABEL_5;
    }

    roomItemManager3 = [(HUEditRoomViewController *)self roomItemManager];
    cameraItem = [roomItemManager3 cameraItem];
    if ([itemCopy isEqual:cameraItem])
    {
    }

    else
    {
      roomItemManager4 = [(HUEditRoomViewController *)self roomItemManager];
      removeItem = [roomItemManager4 removeItem];
      v25 = [itemCopy isEqual:removeItem];

      if (!v25)
      {
        roomItemManager5 = [(HUEditRoomViewController *)self roomItemManager];
        wallpaperThumbnailItem = [roomItemManager5 wallpaperThumbnailItem];
        v38 = [itemCopy isEqual:wallpaperThumbnailItem];

        if (v38)
        {
          v39 = cellCopy;
          [v39 setDelegate:self];
          mainScreen = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen bounds];
          v42 = v41;
          mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen2 bounds];
          v45 = v42 / v44;

          [v39 setImageSize:round(v45 * 244.0)];
          [v39 setAccessibilityIdentifier:@"Home.Room.WallpaperThumbnail"];
          roomBuilder = [(HUEditRoomViewController *)self roomBuilder];
          wallpaperBuilder = [roomBuilder wallpaperBuilder];
          wallpaperEditCollectionFuture = [wallpaperBuilder wallpaperEditCollectionFuture];
          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = __50__HUEditRoomViewController_configureCell_forItem___block_invoke;
          v68[3] = &unk_277DBE118;
          v69 = v39;
          textField = v39;
          v49 = [wallpaperEditCollectionFuture addSuccessBlock:v68];

          goto LABEL_14;
        }

        roomItemManager6 = [(HUEditRoomViewController *)self roomItemManager];
        wallpaperPickerItem = [roomItemManager6 wallpaperPickerItem];
        v52 = [itemCopy isEqual:wallpaperPickerItem];

        if (!v52)
        {
          goto LABEL_15;
        }

        wallpaperPickerController = [(HUEditRoomViewController *)self wallpaperPickerController];
        [wallpaperPickerController setDelegate:self];

        mEMORY[0x277D14D18] = [MEMORY[0x277D14D18] sharedInstance];
        v55 = [mEMORY[0x277D14D18] allNamedWallpapersForWallpaperCollectionType:1];
        wallpaperPickerController2 = [(HUEditRoomViewController *)self wallpaperPickerController];
        [wallpaperPickerController2 setNamedWallpapers:v55];

        mEMORY[0x277D14D18]2 = [MEMORY[0x277D14D18] sharedInstance];
        v58 = [mEMORY[0x277D14D18]2 allNamedWallpaperThumbnailsForWallpaperCollectionType:1];
        wallpaperPickerController3 = [(HUEditRoomViewController *)self wallpaperPickerController];
        [wallpaperPickerController3 setNamedWallpaperThumbnails:v58];

        textField = cellCopy;
        [textField setUseDefaultCellBackgroundColor:1];
        wallpaperPickerController4 = [(HUEditRoomViewController *)self wallpaperPickerController];
        [textField setViewController:wallpaperPickerController4];

        [textField setAllowSelfSizing:1];
        wallpaperPickerController5 = [(HUEditRoomViewController *)self wallpaperPickerController];
        collectionView = [(HUEditRoomViewController *)self collectionView];
        [collectionView frame];
        [wallpaperPickerController5 setImageSizeToFitWidth:3 forNumberOfWallpapers:v63];

        roomBuilder2 = [(HUEditRoomViewController *)self roomBuilder];
        wallpaperBuilder2 = [roomBuilder2 wallpaperBuilder];
        wallpaperEditCollectionFuture2 = [wallpaperBuilder2 wallpaperEditCollectionFuture];
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = __50__HUEditRoomViewController_configureCell_forItem___block_invoke_2;
        v67[3] = &unk_277DBE118;
        v67[4] = self;
        v66 = [wallpaperEditCollectionFuture2 addSuccessBlock:v67];

        goto LABEL_13;
      }
    }

    textField = cellCopy;
    roomItemManager7 = [(HUEditRoomViewController *)self roomItemManager];
    removeItem2 = [roomItemManager7 removeItem];
    v28 = [itemCopy isEqual:removeItem2];

    roomBuilder2 = [HUListContentConfigurationUtilities buttonStyleConfigurationForItem:itemCopy isDestructive:v28];
    [textField setContentConfiguration:roomBuilder2];
    [textField setAccessories:MEMORY[0x277CBEBF8]];
    roomItemManager8 = [(HUEditRoomViewController *)self roomItemManager];
    cameraItem2 = [roomItemManager8 cameraItem];
    v32 = [itemCopy isEqual:cameraItem2];

    if (v32)
    {
      [textField setAccessibilityIdentifier:@"Home.Room.TakePhoto"];
    }

    roomItemManager9 = [(HUEditRoomViewController *)self roomItemManager];
    removeItem3 = [roomItemManager9 removeItem];
    v35 = [itemCopy isEqual:removeItem3];

    if (v35)
    {
      [textField setAccessibilityIdentifier:@"Home.Room.RemoveRoom"];
    }

LABEL_13:

    goto LABEL_14;
  }

  textField = [cellCopy textField];
  roomBuilder3 = [(HUEditRoomViewController *)self roomBuilder];
  name = [roomBuilder3 name];
  [textField setText:name];

  [textField setAutocapitalizationType:1];
  [textField setDelegate:self];
  [textField setClearButtonMode:1];
  [textField addTarget:self action:sel_nameFieldTextChanged_ forControlEvents:917504];
  v14 = @"Home.Room.RoomName";
LABEL_5:
  [textField setAccessibilityIdentifier:v14];
LABEL_14:

LABEL_15:
}

void __50__HUEditRoomViewController_configureCell_forItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 processedImage];
  [*(a1 + 32) setImage:v5];
  v4 = [v3 wallpaper];

  LODWORD(v3) = [v4 type] != 2;
  [*(a1 + 32) setContentMode:2 * v3];
}

void __50__HUEditRoomViewController_configureCell_forItem___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 processedImage];
  v4 = [v10 wallpaper];
  v5 = [v4 type];

  if (v5 == 1)
  {
    v6 = [*(a1 + 32) wallpaperPickerController];
    v7 = [v10 wallpaper];
    [v6 setCustomWallpaper:v7 image:v3];
  }

  v8 = [*(a1 + 32) wallpaperPickerController];
  v9 = [v10 wallpaper];
  [v8 setSelectedWallpaper:v9 animated:0];
}

- (unint64_t)automaticDisablingReasonsForItem:(id)item
{
  itemCopy = item;
  roomItemManager = [(HUEditRoomViewController *)self roomItemManager];
  cameraItem = [roomItemManager cameraItem];
  if ([itemCopy isEqual:cameraItem])
  {
    goto LABEL_4;
  }

  roomItemManager2 = [(HUEditRoomViewController *)self roomItemManager];
  chooseWallpaperItem = [roomItemManager2 chooseWallpaperItem];
  if ([itemCopy isEqual:chooseWallpaperItem])
  {

LABEL_4:
    goto LABEL_5;
  }

  roomItemManager3 = [(HUEditRoomViewController *)self roomItemManager];
  wallpaperThumbnailItem = [roomItemManager3 wallpaperThumbnailItem];
  v13 = [itemCopy isEqual:wallpaperThumbnailItem];

  if ((v13 & 1) == 0)
  {
    v9 = -1;
    goto LABEL_6;
  }

LABEL_5:
  v9 = 1;
LABEL_6:

  return v9;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  roomItemManager = [(HUEditRoomViewController *)self roomItemManager];
  v9 = [roomItemManager displayedItemAtIndexPath:pathCopy];

  roomItemManager2 = [(HUEditRoomViewController *)self roomItemManager];
  cameraItem = [roomItemManager2 cameraItem];
  if ([v9 isEqual:cameraItem])
  {
    latestResults = [v9 latestResults];
    v13 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    bOOLValue = [v13 BOOLValue];

    if (!bOOLValue)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  roomItemManager3 = [(HUEditRoomViewController *)self roomItemManager];
  chooseWallpaperItem = [roomItemManager3 chooseWallpaperItem];
  if ([v9 isEqual:chooseWallpaperItem])
  {
LABEL_8:

LABEL_9:
    v19 = 1;
    goto LABEL_10;
  }

  roomItemManager4 = [(HUEditRoomViewController *)self roomItemManager];
  wallpaperThumbnailItem = [roomItemManager4 wallpaperThumbnailItem];
  if ([v9 isEqual:wallpaperThumbnailItem])
  {

    goto LABEL_8;
  }

  v30 = viewCopy;
  roomItemManager5 = [(HUEditRoomViewController *)self roomItemManager];
  removeItem = [roomItemManager5 removeItem];
  v23 = [v9 isEqual:removeItem];

  if (v23)
  {
    v19 = 1;
  }

  else
  {
    roomItemManager6 = [(HUEditRoomViewController *)self roomItemManager];
    wallpaperPickerItem = [roomItemManager6 wallpaperPickerItem];
    v26 = [v9 isEqual:wallpaperPickerItem];

    if ((v26 & 1) == 0)
    {
      roomItemManager7 = [(HUEditRoomViewController *)self roomItemManager];
      nameItem = [roomItemManager7 nameItem];
      v29 = [v9 isEqual:nameItem];

      if ((v29 & 1) == 0)
      {
        v31.receiver = self;
        v31.super_class = HUEditRoomViewController;
        viewCopy = v30;
        v19 = [(HUItemCollectionViewController *)&v31 collectionView:v30 shouldHighlightItemAtIndexPath:pathCopy];
        goto LABEL_10;
      }
    }

    v19 = 0;
  }

  viewCopy = v30;
LABEL_10:

  return v19;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v48.receiver = self;
  v48.super_class = HUEditRoomViewController;
  viewCopy = view;
  [(HUItemCollectionViewController *)&v48 collectionView:viewCopy didSelectItemAtIndexPath:pathCopy];
  roomItemManager = [(HUEditRoomViewController *)self roomItemManager];
  v9 = [roomItemManager displayedItemAtIndexPath:pathCopy];

  [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
  roomItemManager2 = [(HUEditRoomViewController *)self roomItemManager];
  cameraItem = [roomItemManager2 cameraItem];
  v12 = [v9 isEqual:cameraItem];

  if (v12)
  {
    roomBuilder = objc_alloc_init(MEMORY[0x277D755C8]);
    [roomBuilder setDelegate:self];
    [roomBuilder setSourceType:1];
    [roomBuilder setModalPresentationStyle:0];
    [(HUEditRoomViewController *)self presentViewController:roomBuilder animated:1 completion:0];
LABEL_12:

    goto LABEL_13;
  }

  roomItemManager3 = [(HUEditRoomViewController *)self roomItemManager];
  chooseWallpaperItem = [roomItemManager3 chooseWallpaperItem];
  v16 = [v9 isEqual:chooseWallpaperItem];

  if (!v16)
  {
    roomItemManager4 = [(HUEditRoomViewController *)self roomItemManager];
    wallpaperThumbnailItem = [roomItemManager4 wallpaperThumbnailItem];
    v21 = [v9 isEqual:wallpaperThumbnailItem];

    if (v21)
    {
      roomBuilder = [(HUEditRoomViewController *)self roomBuilder];
      wallpaperBuilder = [roomBuilder wallpaperBuilder];
      wallpaperEditCollectionFuture = [wallpaperBuilder wallpaperEditCollectionFuture];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __68__HUEditRoomViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
      v47[3] = &unk_277DBE118;
      v47[4] = self;
      v24 = [wallpaperEditCollectionFuture addSuccessBlock:v47];
    }

    else
    {
      roomItemManager5 = [(HUEditRoomViewController *)self roomItemManager];
      removeItem = [roomItemManager5 removeItem];
      v27 = [v9 isEqual:removeItem];

      if (!v27)
      {
        goto LABEL_13;
      }

      roomBuilder2 = [(HUEditRoomViewController *)self roomBuilder];
      name = [roomBuilder2 name];
      v30 = name;
      v31 = &stru_2823E0EE8;
      if (name)
      {
        v31 = name;
      }

      v32 = v31;

      roomBuilder = HULocalizedStringWithFormat(@"HUEditRoomRemoveAlertTitle", @"%@", v33, v34, v35, v36, v37, v38, v32);
      wallpaperBuilder = [(UICollectionViewController *)self hu_actionSheetWithTitle:0 message:roomBuilder indexPath:pathCopy];
      v39 = MEMORY[0x277D750F8];
      v40 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
      wallpaperEditCollectionFuture = [v39 actionWithTitle:v40 style:1 handler:0];

      [wallpaperEditCollectionFuture setAccessibilityIdentifier:@"Home.Room.RemoveRoom.Cancel"];
      v41 = MEMORY[0x277D750F8];
      v42 = _HULocalizedStringWithDefaultValue(@"HURemoveTitle", @"HURemoveTitle", 1);
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __68__HUEditRoomViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2;
      v45[3] = &unk_277DBBD90;
      v45[4] = self;
      v46 = v32;
      v43 = v32;
      v44 = [v41 actionWithTitle:v42 style:2 handler:v45];

      [v44 setAccessibilityIdentifier:@"Home.Rome.RemoveRoom.Remove"];
      [wallpaperBuilder addAction:wallpaperEditCollectionFuture];
      [wallpaperBuilder addAction:v44];
      [(HUEditRoomViewController *)self presentViewController:wallpaperBuilder animated:1 completion:0];
    }

    goto LABEL_12;
  }

  navigationController = [(HUEditRoomViewController *)self navigationController];
  v18 = _HULocalizedStringWithDefaultValue(@"HUEditRoomNamedWallpaperSectionTitle", @"HUEditRoomNamedWallpaperSectionTitle", 1);
  [HUWallpaperPickerViewController presentSecurePickerFromNavigationController:navigationController collectionType:1 withTitle:v18 delegate:self];

LABEL_13:
}

void __68__HUEditRoomViewController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 originalImage];
  v4 = [HUWallpaperEditingViewController alloc];
  v5 = [v3 wallpaper];

  v6 = [(HUWallpaperEditingViewController *)v4 initWithWallpaper:v5 image:v7 delegate:*(a1 + 32)];
  [(HUWallpaperEditingViewController *)v6 setModalPresentationStyle:0];
  [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
}

void __68__HUEditRoomViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277D2C900]);
  v5 = [*(a1 + 32) roomItemManager];
  v6 = [v5 home];
  v7 = [*(a1 + 32) roomBuilder];
  v8 = [v7 room];
  v9 = [v4 errorOnlyCompletionHandlerAdapter];
  [v6 removeRoom:v8 completionHandler:v9];

  objc_initWeak(&location, *(a1 + 32));
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__HUEditRoomViewController_collectionView_didSelectItemAtIndexPath___block_invoke_3;
  v14[3] = &unk_277DB99B8;
  objc_copyWeak(&v15, &location);
  v10 = [v4 addSuccessBlock:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__HUEditRoomViewController_collectionView_didSelectItemAtIndexPath___block_invoke_5;
  v12[3] = &unk_277DB8C00;
  v13 = *(a1 + 40);
  v11 = [v4 addFailureBlock:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __68__HUEditRoomViewController_collectionView_didSelectItemAtIndexPath___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained presentationDelegate];
  [v2 editRoomViewControllerDidFinish:WeakRetained withNewRoom:0];

  v3 = [MEMORY[0x277D146E8] sharedDispatcher];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__HUEditRoomViewController_collectionView_didSelectItemAtIndexPath___block_invoke_4;
  v4[3] = &unk_277DC10B8;
  v4[4] = WeakRetained;
  [v3 dispatchHomeObserverMessage:v4 sender:0];
}

void __68__HUEditRoomViewController_collectionView_didSelectItemAtIndexPath___block_invoke_4(uint64_t a1, void *a2)
{
  v7 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) roomItemManager];
    v4 = [v3 home];
    v5 = [*(a1 + 32) roomBuilder];
    v6 = [v5 room];
    [v7 home:v4 didRemoveRoom:v6];
  }
}

void __68__HUEditRoomViewController_collectionView_didSelectItemAtIndexPath___block_invoke_5(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D14640];
  v4 = a2;
  v5 = [v3 sharedHandler];
  v6 = *MEMORY[0x277D13C90];
  v7 = *(a1 + 32);
  v9 = *MEMORY[0x277D13860];
  v10[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v5 handleError:v4 operationType:v6 options:v8 retryBlock:0 cancelBlock:0];
}

- (id)trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v26 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v6 = [itemManager displayedItemAtIndexPath:pathCopy];
  v7 = &unk_2825BDA80;
  if ([v6 conformsToProtocol:v7])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@: User swiped for trailing actions on item: %@", buf, 0x16u);
  }

  if ([v9 hf_canDeleteItem])
  {
    objc_initWeak(buf, self);
    v11 = MEMORY[0x277D753C0];
    v12 = _HULocalizedStringWithDefaultValue(@"HUDeleteTitle", @"HUDeleteTitle", 1);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __79__HUEditRoomViewController_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke;
    v18[3] = &unk_277DC1108;
    v19 = v9;
    objc_copyWeak(&v20, buf);
    v13 = [v11 contextualActionWithStyle:1 title:v12 handler:v18];

    v14 = MEMORY[0x277D75AD8];
    v21 = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    v16 = [v14 configurationWithActions:v15];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __79__HUEditRoomViewController_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) hf_deleteItem];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__HUEditRoomViewController_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke_2;
  v13[3] = &unk_277DC10E0;
  objc_copyWeak(&v14, (a1 + 40));
  v11 = [v10 addSuccessBlock:v13];
  v12 = [v11 addFailureBlock:&__block_literal_global_200];

  objc_destroyWeak(&v14);
}

void __79__HUEditRoomViewController_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained zoneModuleController];
  v2 = [v1 module];
  v3 = [v2 itemProviders];

  v4 = [WeakRetained itemManager];
  v5 = [MEMORY[0x277D14788] requestToReloadItemProviders:v3 senderSelector:sel_tableView_editActionsForRowAtIndexPath_];
  v6 = [v4 performItemUpdateRequest:v5];
}

void __79__HUEditRoomViewController_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 logError:v3 operationDescription:*MEMORY[0x277D13C98]];
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  v16.receiver = self;
  v16.super_class = HUEditRoomViewController;
  pathCopy = path;
  [(HUItemCollectionViewController *)&v16 collectionView:view willDisplayCell:cellCopy forItemAtIndexPath:pathCopy];
  v10 = [(HUItemCollectionViewController *)self itemManager:v16.receiver];
  v11 = [v10 displayedItemAtIndexPath:pathCopy];

  roomItemManager = [(HUEditRoomViewController *)self roomItemManager];
  nameItem = [roomItemManager nameItem];
  if (([v11 isEqual:nameItem] & 1) == 0)
  {

    goto LABEL_5;
  }

  roomBuilder = [(HUEditRoomViewController *)self roomBuilder];
  room = [roomBuilder room];

  if (!room)
  {
    roomItemManager = [cellCopy textField];
    [roomItemManager becomeFirstResponder];
LABEL_5:
  }
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  infoCopy = info;
  [(HUEditRoomViewController *)self dismissViewControllerAnimated:1 completion:0];
  v6 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D76A80]];

  UIImageWriteToSavedPhotosAlbum(v6, 0, 0, 0);
  v7 = objc_alloc(MEMORY[0x277D14D10]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v10 = [v7 initWithType:1 assetIdentifier:uUIDString cropInfo:0];

  mEMORY[0x277D14D18] = [MEMORY[0x277D14D18] sharedInstance];
  v12 = [mEMORY[0x277D14D18] processOriginalImageFromWallpaper:v10 originalImage:v6];

  [(HUEditRoomViewController *)self presentWallpaperEditingViewControllerWithImage:v12 wallpaper:v10];
}

- (void)wallpaperPickerDidFinish:(id)finish wallpaper:(id)wallpaper image:(id)image
{
  [(HUEditRoomViewController *)self updateWallpaper:wallpaper image:image];
  navigationController = [(HUEditRoomViewController *)self navigationController];
  v6 = [navigationController popToViewController:self animated:1];
}

- (void)wallpaperThumbnailCell:(id)cell didReceiveDroppedImage:(id)image
{
  v5 = MEMORY[0x277D14D10];
  v6 = MEMORY[0x277CCAD78];
  imageCopy = image;
  uUID = [v6 UUID];
  uUIDString = [uUID UUIDString];
  v9 = [v5 customWallpaperWithAssetIdentifier:uUIDString];
  [(HUEditRoomViewController *)self updateWallpaper:v9 image:imageCopy];
}

- (void)wallpaperPicker:(id)picker didReceiveDroppedImage:(id)image
{
  v6 = MEMORY[0x277D14D10];
  v7 = MEMORY[0x277CCAD78];
  imageCopy = image;
  pickerCopy = picker;
  uUID = [v7 UUID];
  uUIDString = [uUID UUIDString];
  v26 = [v6 customWallpaperWithAssetIdentifier:uUIDString];

  [pickerCopy setOriginalCustomImage:imageCopy];
  roomBuilder = [(HUEditRoomViewController *)self roomBuilder];
  wallpaperBuilder = [roomBuilder wallpaperBuilder];
  [wallpaperBuilder setWallpaper:v26 image:imageCopy];

  roomItemManager = [(HUEditRoomViewController *)self roomItemManager];
  roomItemManager2 = [(HUEditRoomViewController *)self roomItemManager];
  wallpaperPickerItem = [roomItemManager2 wallpaperPickerItem];
  v17 = [roomItemManager indexPathForItem:wallpaperPickerItem];

  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v19 = [itemManager displayedItemAtIndexPath:v17];

  itemManager2 = [(HUItemCollectionViewController *)self itemManager];
  [(HUItemCollectionViewController *)self itemManager:itemManager2 didUpdateResultsForItem:v19 atIndexPath:v17];

  roomBuilder2 = [(HUEditRoomViewController *)self roomBuilder];
  room = [roomBuilder2 room];

  if (room)
  {
    roomBuilder3 = [(HUEditRoomViewController *)self roomBuilder];
    wallpaperBuilder2 = [roomBuilder3 wallpaperBuilder];
    commitWallpaper = [wallpaperBuilder2 commitWallpaper];
  }
}

- (void)wallpaperPicker:(id)picker didSelectWallpaper:(id)wallpaper withImage:(id)image
{
  imageCopy = image;
  wallpaperCopy = wallpaper;
  roomBuilder = [(HUEditRoomViewController *)self roomBuilder];
  wallpaperBuilder = [roomBuilder wallpaperBuilder];
  [wallpaperBuilder setWallpaper:wallpaperCopy image:imageCopy];

  roomBuilder2 = [(HUEditRoomViewController *)self roomBuilder];
  room = [roomBuilder2 room];

  if (room)
  {
    roomBuilder3 = [(HUEditRoomViewController *)self roomBuilder];
    wallpaperBuilder2 = [roomBuilder3 wallpaperBuilder];
    commitWallpaper = [wallpaperBuilder2 commitWallpaper];
  }
}

- (void)wallpaperPickerRequestOpenWallpaperEditor:(id)editor
{
  roomBuilder = [(HUEditRoomViewController *)self roomBuilder];
  wallpaperBuilder = [roomBuilder wallpaperBuilder];
  wallpaperEditCollectionFuture = [wallpaperBuilder wallpaperEditCollectionFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__HUEditRoomViewController_wallpaperPickerRequestOpenWallpaperEditor___block_invoke;
  v8[3] = &unk_277DBE118;
  v8[4] = self;
  v7 = [wallpaperEditCollectionFuture addSuccessBlock:v8];
}

void __70__HUEditRoomViewController_wallpaperPickerRequestOpenWallpaperEditor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 originalImage];
  v4 = *(a1 + 32);
  v5 = [v3 wallpaper];

  [v4 presentWallpaperEditingViewControllerWithImage:v6 wallpaper:v5];
}

- (void)wallpaperEditing:(id)editing didFinishWithWallpaper:(id)wallpaper image:(id)image
{
  [(HUEditRoomViewController *)self updateWallpaper:wallpaper image:image];

  [(HUEditRoomViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)presentWallpaperEditingViewControllerWithImage:(id)image wallpaper:(id)wallpaper
{
  wallpaperCopy = wallpaper;
  imageCopy = image;
  v8 = [[HUWallpaperEditingViewController alloc] initWithWallpaper:wallpaperCopy image:imageCopy delegate:self];

  [(HUEditRoomViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)updateWallpaper:(id)wallpaper image:(id)image
{
  imageCopy = image;
  wallpaperCopy = wallpaper;
  roomBuilder = [(HUEditRoomViewController *)self roomBuilder];
  wallpaperBuilder = [roomBuilder wallpaperBuilder];
  [wallpaperBuilder setWallpaper:wallpaperCopy image:imageCopy];

  roomBuilder2 = [(HUEditRoomViewController *)self roomBuilder];
  room = [roomBuilder2 room];

  if (room)
  {
    roomBuilder3 = [(HUEditRoomViewController *)self roomBuilder];
    wallpaperBuilder2 = [roomBuilder3 wallpaperBuilder];
    commitWallpaper = [wallpaperBuilder2 commitWallpaper];
  }

  v15 = +[HUWallpaperPickerInlineViewController useWallpaperPickerCell];
  roomItemManager = [(HUEditRoomViewController *)self roomItemManager];
  v17 = roomItemManager;
  if (v15)
  {
    [roomItemManager wallpaperPickerItem];
  }

  else
  {
    [roomItemManager wallpaperThumbnailItem];
  }
  v21 = ;

  roomItemManager2 = [(HUEditRoomViewController *)self roomItemManager];
  v19 = [roomItemManager2 indexPathForItem:v21];

  itemManager = [(HUItemCollectionViewController *)self itemManager];
  [(HUItemCollectionViewController *)self itemManager:itemManager didUpdateResultsForItem:v21 atIndexPath:v19];
}

- (HUEditRoomViewControllerPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (HUEditRoomViewControllerAddRoomDelegate)addRoomDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_addRoomDelegate);

  return WeakRetained;
}

- (HUEditRoomItemManager)roomItemManager
{
  WeakRetained = objc_loadWeakRetained(&self->_roomItemManager);

  return WeakRetained;
}

- (UITextField)editingTextField
{
  WeakRetained = objc_loadWeakRetained(&self->_editingTextField);

  return WeakRetained;
}

@end