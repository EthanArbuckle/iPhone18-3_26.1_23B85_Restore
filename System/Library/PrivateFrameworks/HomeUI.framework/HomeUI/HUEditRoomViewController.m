@interface HUEditRoomViewController
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUEditRoomItemManager)roomItemManager;
- (HUEditRoomViewController)initWithRoomBuilder:(id)a3 presentationDelegate:(id)a4 addRoomDelegate:(id)a5;
- (HUEditRoomViewControllerAddRoomDelegate)addRoomDelegate;
- (HUEditRoomViewControllerPresentationDelegate)presentationDelegate;
- (UITextField)editingTextField;
- (id)itemModuleControllers;
- (id)trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a3;
- (unint64_t)automaticDisablingReasonsForItem:(id)a3;
- (void)addButtonPressed:(id)a3;
- (void)cancelButtonPressed:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)doneButtonPressed:(id)a3;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)nameFieldTextChanged:(id)a3;
- (void)presentWallpaperEditingViewControllerWithImage:(id)a3 wallpaper:(id)a4;
- (void)updateTitle;
- (void)updateWallpaper:(id)a3 image:(id)a4;
- (void)viewDidLoad;
- (void)wallpaperEditing:(id)a3 didFinishWithWallpaper:(id)a4 image:(id)a5;
- (void)wallpaperPicker:(id)a3 didReceiveDroppedImage:(id)a4;
- (void)wallpaperPicker:(id)a3 didSelectWallpaper:(id)a4 withImage:(id)a5;
- (void)wallpaperPickerDidFinish:(id)a3 wallpaper:(id)a4 image:(id)a5;
- (void)wallpaperPickerRequestOpenWallpaperEditor:(id)a3;
- (void)wallpaperThumbnailCell:(id)a3 didReceiveDroppedImage:(id)a4;
@end

@implementation HUEditRoomViewController

- (HUEditRoomViewController)initWithRoomBuilder:(id)a3 presentationDelegate:(id)a4 addRoomDelegate:(id)a5
{
  v9 = a3;
  obj = a4;
  v24 = a5;
  v10 = [[HUEditRoomItemManager alloc] initWithRoomBuilder:v9 delegate:self];
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
    objc_storeWeak(&v14->_addRoomDelegate, v24);
    objc_storeWeak(&v14->_roomItemManager, v10);
    objc_storeStrong(&v14->_roomBuilder, a3);
    WeakRetained = objc_loadWeakRetained(&v14->_roomItemManager);
    v16 = [WeakRetained zoneModule];

    if (v16)
    {
      v17 = [HUZoneModuleController alloc];
      v18 = objc_loadWeakRetained(&v14->_roomItemManager);
      v19 = [v18 zoneModule];
      v20 = [(HFRoomBuilder *)v14->_roomBuilder room];
      v21 = [(HUZoneModuleController *)v17 initWithModule:v19 room:v20];
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
  v3 = [(HUEditRoomViewController *)self collectionView];
  [v3 setKeyboardDismissMode:1];

  if (+[HUWallpaperPickerInlineViewController useWallpaperPickerCell])
  {
    v4 = objc_alloc_init(HUWallpaperPickerInlineViewController);
    wallpaperPickerController = self->_wallpaperPickerController;
    self->_wallpaperPickerController = v4;
  }

  v6 = [(HUEditRoomViewController *)self roomBuilder];
  v7 = [v6 room];

  v8 = objc_alloc(MEMORY[0x277D751E0]);
  if (!v7)
  {
    v21 = [v8 initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonPressed_];
    v22 = [(HUEditRoomViewController *)self navigationItem];
    [v22 setLeftBarButtonItem:v21];

    v23 = [(HUEditRoomViewController *)self navigationItem];
    v24 = [v23 leftBarButtonItem];
    [v24 setAccessibilityIdentifier:@"Home.Room.Cancel"];

    v25 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonPressed_];
    v26 = [(HUEditRoomViewController *)self navigationItem];
    [v26 setRightBarButtonItem:v25];

    v27 = [(HUEditRoomViewController *)self navigationItem];
    v28 = [v27 rightBarButtonItem];
    [v28 setStyle:2];

    v29 = [(HUEditRoomViewController *)self navigationItem];
    v30 = [v29 rightBarButtonItem];
    [v30 setEnabled:0];

    v18 = [(HUEditRoomViewController *)self navigationItem];
    v19 = [v18 rightBarButtonItem];
    [v19 setAccessibilityIdentifier:@"Home.Room.Save"];
    goto LABEL_8;
  }

  v9 = [v8 initWithBarButtonSystemItem:0 target:self action:sel_doneButtonPressed_];
  v10 = [(HUEditRoomViewController *)self navigationItem];
  [v10 setRightBarButtonItem:v9];

  v11 = [(HUEditRoomViewController *)self navigationItem];
  v12 = [v11 rightBarButtonItem];
  [v12 setAccessibilityIdentifier:@"Home.Room.Done"];

  v13 = [(HUEditRoomViewController *)self addRoomDelegate];

  if (v13)
  {
    v14 = [(HUEditRoomViewController *)self roomBuilder];
    v15 = [v14 home];
    v16 = [v15 hf_currentUserIsAdministrator];

    if (!v16)
    {
      v18 = [(HUEditRoomViewController *)self navigationItem];
      [v18 setHidesBackButton:1];
      goto LABEL_10;
    }

    v17 = objc_alloc(MEMORY[0x277D751E0]);
    v18 = _HULocalizedStringWithDefaultValue(@"HUEditRoomAddButtonTitle", @"HUEditRoomAddButtonTitle", 1);
    v19 = [v17 initWithTitle:v18 style:0 target:self action:sel_addButtonPressed_];
    v20 = [(HUEditRoomViewController *)self navigationItem];
    [v20 setLeftBarButtonItem:v19];

LABEL_8:
LABEL_10:
  }

  [(HUEditRoomViewController *)self updateTitle];
}

- (void)updateTitle
{
  v6 = [(HUEditRoomViewController *)self roomBuilder];
  v3 = [v6 room];
  if (v3)
  {
    v4 = [(HUEditRoomViewController *)self roomBuilder];
    v5 = [v4 name];
    [(HUEditRoomViewController *)self setTitle:v5];
  }

  else
  {
    v4 = _HULocalizedStringWithDefaultValue(@"HUAddRoomNameTitle", @"HUAddRoomNameTitle", 1);
    [(HUEditRoomViewController *)self setTitle:v4];
  }
}

- (void)cancelButtonPressed:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "HUEditRoomViewController: cancel button pressed", v6, 2u);
  }

  v5 = [(HUEditRoomViewController *)self presentationDelegate];
  [v5 editRoomViewControllerDidFinish:self withNewRoom:0];
}

- (void)addButtonPressed:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "HUEditRoomViewController: add button pressed", v6, 2u);
  }

  v5 = [(HUEditRoomViewController *)self addRoomDelegate];
  [v5 presentAddRoomViewControllerForEditRoomViewController:self];
}

- (void)doneButtonPressed:(id)a3
{
  v39 = a3;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "HUEditRoomViewController: done button pressed", buf, 2u);
  }

  v5 = [(HUEditRoomViewController *)self collectionView];
  v6 = [(HUItemCollectionViewController *)self itemManager];
  v7 = [(HUEditRoomViewController *)self roomItemManager];
  v8 = [v7 nameItem];
  v9 = [v6 indexPathForItem:v8];
  v10 = [v5 cellForItemAtIndexPath:v9];

  if (objc_opt_respondsToSelector())
  {
    v11 = v10;
    v12 = [v11 textField];
    v13 = [v12 text];
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [MEMORY[0x277D14CE8] sanitizeUserEnteredHomeKitName:{v13, v39}];
  v15 = [(HUEditRoomViewController *)self roomBuilder];
  v41 = [v15 room];

  if (![v14 length])
  {
    v16 = [(HUEditRoomViewController *)self roomBuilder];
    v17 = [v16 name];

    v14 = v17;
  }

  v18 = [v11 textField];
  [v18 setText:v14];

  v19 = [(HUEditRoomViewController *)self roomBuilder];
  [v19 setName:v14];

  v20 = [(HUEditRoomViewController *)self navigationItem];
  v21 = [v20 rightBarButtonItem];
  [(HUEditRoomViewController *)self setSavedButtonBarItem:v21];

  v22 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v23 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v22];
  v24 = [(HUEditRoomViewController *)self navigationItem];
  [v24 setRightBarButtonItem:v23];

  [v22 startAnimating];
  v25 = [(HUEditRoomViewController *)self navigationItem];
  v26 = [v25 rightBarButtonItem];
  [v26 setEnabled:0];

  v27 = [v11 textField];
  LODWORD(v26) = [v27 canResignFirstResponder];

  if (v26)
  {
    v28 = [v11 textField];
    [v28 resignFirstResponder];
  }

  v29 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v22];
  v30 = [(HUEditRoomViewController *)self navigationItem];
  [v30 setRightBarButtonItem:v29];

  objc_initWeak(buf, self);
  v31 = [(HUEditRoomViewController *)self roomBuilder];
  v32 = [v31 commitItem];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __46__HUEditRoomViewController_doneButtonPressed___block_invoke;
  v49[3] = &unk_277DC1068;
  objc_copyWeak(&v50, buf);
  v33 = [v32 flatMap:v49];

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
  v37 = v41;
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

- (void)nameFieldTextChanged:(id)a3
{
  v4 = MEMORY[0x277D14CE8];
  v5 = [a3 text];
  v6 = [v4 sanitizeUserEnteredHomeKitName:v5];
  v7 = [v6 length] != 0;

  v8 = [(HUEditRoomViewController *)self navigationItem];
  v9 = [v8 rightBarButtonItem];
  [v9 setEnabled:v7];

  [(HUEditRoomViewController *)self setModalInPresentation:v7];
}

- (id)itemModuleControllers
{
  v3 = objc_opt_new();
  v4 = [(HUEditRoomViewController *)self zoneModuleController];
  [v4 setHost:self];

  v5 = [(HUEditRoomViewController *)self zoneModuleController];
  [v3 na_safeAddObject:v5];

  return v3;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  v6 = [(HUEditRoomViewController *)self roomItemManager];
  v7 = [v6 nameItem];
  v8 = [v5 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v9 = [(HUEditRoomViewController *)self roomItemManager];
    v10 = [v9 wallpaperThumbnailItem];
    v11 = [v5 isEqual:v10];

    if ((v11 & 1) == 0)
    {
      v12 = [(HUEditRoomViewController *)self roomItemManager];
      v13 = [v12 wallpaperPickerItem];
      [v5 isEqual:v13];
    }
  }

  v14 = objc_opt_class();

  return v14;
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v71[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v70.receiver = self;
  v70.super_class = HUEditRoomViewController;
  [(HUItemCollectionViewController *)&v70 configureCell:v6 forItem:v7];
  v8 = [(HUEditRoomViewController *)self roomItemManager];
  v9 = [v8 nameItem];
  v10 = [v7 isEqual:v9];

  if (!v10)
  {
    v15 = [(HUEditRoomViewController *)self roomItemManager];
    v16 = [v15 chooseWallpaperItem];
    v17 = [v7 isEqual:v16];

    if (v17)
    {
      v11 = v6;
      v18 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:v7];
      [v11 setContentConfiguration:v18];

      v19 = objc_alloc_init(MEMORY[0x277D75258]);
      v71[0] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];
      [v11 setAccessories:v20];

      v14 = @"Home.Room.ChooseFromExisting";
      goto LABEL_5;
    }

    v21 = [(HUEditRoomViewController *)self roomItemManager];
    v22 = [v21 cameraItem];
    if ([v7 isEqual:v22])
    {
    }

    else
    {
      v23 = [(HUEditRoomViewController *)self roomItemManager];
      v24 = [v23 removeItem];
      v25 = [v7 isEqual:v24];

      if (!v25)
      {
        v36 = [(HUEditRoomViewController *)self roomItemManager];
        v37 = [v36 wallpaperThumbnailItem];
        v38 = [v7 isEqual:v37];

        if (v38)
        {
          v39 = v6;
          [v39 setDelegate:self];
          v40 = [MEMORY[0x277D759A0] mainScreen];
          [v40 bounds];
          v42 = v41;
          v43 = [MEMORY[0x277D759A0] mainScreen];
          [v43 bounds];
          v45 = v42 / v44;

          [v39 setImageSize:round(v45 * 244.0)];
          [v39 setAccessibilityIdentifier:@"Home.Room.WallpaperThumbnail"];
          v46 = [(HUEditRoomViewController *)self roomBuilder];
          v47 = [v46 wallpaperBuilder];
          v48 = [v47 wallpaperEditCollectionFuture];
          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = __50__HUEditRoomViewController_configureCell_forItem___block_invoke;
          v68[3] = &unk_277DBE118;
          v69 = v39;
          v11 = v39;
          v49 = [v48 addSuccessBlock:v68];

          goto LABEL_14;
        }

        v50 = [(HUEditRoomViewController *)self roomItemManager];
        v51 = [v50 wallpaperPickerItem];
        v52 = [v7 isEqual:v51];

        if (!v52)
        {
          goto LABEL_15;
        }

        v53 = [(HUEditRoomViewController *)self wallpaperPickerController];
        [v53 setDelegate:self];

        v54 = [MEMORY[0x277D14D18] sharedInstance];
        v55 = [v54 allNamedWallpapersForWallpaperCollectionType:1];
        v56 = [(HUEditRoomViewController *)self wallpaperPickerController];
        [v56 setNamedWallpapers:v55];

        v57 = [MEMORY[0x277D14D18] sharedInstance];
        v58 = [v57 allNamedWallpaperThumbnailsForWallpaperCollectionType:1];
        v59 = [(HUEditRoomViewController *)self wallpaperPickerController];
        [v59 setNamedWallpaperThumbnails:v58];

        v11 = v6;
        [v11 setUseDefaultCellBackgroundColor:1];
        v60 = [(HUEditRoomViewController *)self wallpaperPickerController];
        [v11 setViewController:v60];

        [v11 setAllowSelfSizing:1];
        v61 = [(HUEditRoomViewController *)self wallpaperPickerController];
        v62 = [(HUEditRoomViewController *)self collectionView];
        [v62 frame];
        [v61 setImageSizeToFitWidth:3 forNumberOfWallpapers:v63];

        v29 = [(HUEditRoomViewController *)self roomBuilder];
        v64 = [v29 wallpaperBuilder];
        v65 = [v64 wallpaperEditCollectionFuture];
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = __50__HUEditRoomViewController_configureCell_forItem___block_invoke_2;
        v67[3] = &unk_277DBE118;
        v67[4] = self;
        v66 = [v65 addSuccessBlock:v67];

        goto LABEL_13;
      }
    }

    v11 = v6;
    v26 = [(HUEditRoomViewController *)self roomItemManager];
    v27 = [v26 removeItem];
    v28 = [v7 isEqual:v27];

    v29 = [HUListContentConfigurationUtilities buttonStyleConfigurationForItem:v7 isDestructive:v28];
    [v11 setContentConfiguration:v29];
    [v11 setAccessories:MEMORY[0x277CBEBF8]];
    v30 = [(HUEditRoomViewController *)self roomItemManager];
    v31 = [v30 cameraItem];
    v32 = [v7 isEqual:v31];

    if (v32)
    {
      [v11 setAccessibilityIdentifier:@"Home.Room.TakePhoto"];
    }

    v33 = [(HUEditRoomViewController *)self roomItemManager];
    v34 = [v33 removeItem];
    v35 = [v7 isEqual:v34];

    if (v35)
    {
      [v11 setAccessibilityIdentifier:@"Home.Room.RemoveRoom"];
    }

LABEL_13:

    goto LABEL_14;
  }

  v11 = [v6 textField];
  v12 = [(HUEditRoomViewController *)self roomBuilder];
  v13 = [v12 name];
  [v11 setText:v13];

  [v11 setAutocapitalizationType:1];
  [v11 setDelegate:self];
  [v11 setClearButtonMode:1];
  [v11 addTarget:self action:sel_nameFieldTextChanged_ forControlEvents:917504];
  v14 = @"Home.Room.RoomName";
LABEL_5:
  [v11 setAccessibilityIdentifier:v14];
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

- (unint64_t)automaticDisablingReasonsForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUEditRoomViewController *)self roomItemManager];
  v6 = [v5 cameraItem];
  if ([v4 isEqual:v6])
  {
    goto LABEL_4;
  }

  v7 = [(HUEditRoomViewController *)self roomItemManager];
  v8 = [v7 chooseWallpaperItem];
  if ([v4 isEqual:v8])
  {

LABEL_4:
    goto LABEL_5;
  }

  v11 = [(HUEditRoomViewController *)self roomItemManager];
  v12 = [v11 wallpaperThumbnailItem];
  v13 = [v4 isEqual:v12];

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

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUEditRoomViewController *)self roomItemManager];
  v9 = [v8 displayedItemAtIndexPath:v7];

  v10 = [(HUEditRoomViewController *)self roomItemManager];
  v11 = [v10 cameraItem];
  if ([v9 isEqual:v11])
  {
    v12 = [v9 latestResults];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    v14 = [v13 BOOLValue];

    if (!v14)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v15 = [(HUEditRoomViewController *)self roomItemManager];
  v16 = [v15 chooseWallpaperItem];
  if ([v9 isEqual:v16])
  {
LABEL_8:

LABEL_9:
    v19 = 1;
    goto LABEL_10;
  }

  v17 = [(HUEditRoomViewController *)self roomItemManager];
  v18 = [v17 wallpaperThumbnailItem];
  if ([v9 isEqual:v18])
  {

    goto LABEL_8;
  }

  v30 = v6;
  v21 = [(HUEditRoomViewController *)self roomItemManager];
  v22 = [v21 removeItem];
  v23 = [v9 isEqual:v22];

  if (v23)
  {
    v19 = 1;
  }

  else
  {
    v24 = [(HUEditRoomViewController *)self roomItemManager];
    v25 = [v24 wallpaperPickerItem];
    v26 = [v9 isEqual:v25];

    if ((v26 & 1) == 0)
    {
      v27 = [(HUEditRoomViewController *)self roomItemManager];
      v28 = [v27 nameItem];
      v29 = [v9 isEqual:v28];

      if ((v29 & 1) == 0)
      {
        v31.receiver = self;
        v31.super_class = HUEditRoomViewController;
        v6 = v30;
        v19 = [(HUItemCollectionViewController *)&v31 collectionView:v30 shouldHighlightItemAtIndexPath:v7];
        goto LABEL_10;
      }
    }

    v19 = 0;
  }

  v6 = v30;
LABEL_10:

  return v19;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  v48.receiver = self;
  v48.super_class = HUEditRoomViewController;
  v7 = a3;
  [(HUItemCollectionViewController *)&v48 collectionView:v7 didSelectItemAtIndexPath:v6];
  v8 = [(HUEditRoomViewController *)self roomItemManager];
  v9 = [v8 displayedItemAtIndexPath:v6];

  [v7 deselectItemAtIndexPath:v6 animated:1];
  v10 = [(HUEditRoomViewController *)self roomItemManager];
  v11 = [v10 cameraItem];
  v12 = [v9 isEqual:v11];

  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277D755C8]);
    [v13 setDelegate:self];
    [v13 setSourceType:1];
    [v13 setModalPresentationStyle:0];
    [(HUEditRoomViewController *)self presentViewController:v13 animated:1 completion:0];
LABEL_12:

    goto LABEL_13;
  }

  v14 = [(HUEditRoomViewController *)self roomItemManager];
  v15 = [v14 chooseWallpaperItem];
  v16 = [v9 isEqual:v15];

  if (!v16)
  {
    v19 = [(HUEditRoomViewController *)self roomItemManager];
    v20 = [v19 wallpaperThumbnailItem];
    v21 = [v9 isEqual:v20];

    if (v21)
    {
      v13 = [(HUEditRoomViewController *)self roomBuilder];
      v22 = [v13 wallpaperBuilder];
      v23 = [v22 wallpaperEditCollectionFuture];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __68__HUEditRoomViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
      v47[3] = &unk_277DBE118;
      v47[4] = self;
      v24 = [v23 addSuccessBlock:v47];
    }

    else
    {
      v25 = [(HUEditRoomViewController *)self roomItemManager];
      v26 = [v25 removeItem];
      v27 = [v9 isEqual:v26];

      if (!v27)
      {
        goto LABEL_13;
      }

      v28 = [(HUEditRoomViewController *)self roomBuilder];
      v29 = [v28 name];
      v30 = v29;
      v31 = &stru_2823E0EE8;
      if (v29)
      {
        v31 = v29;
      }

      v32 = v31;

      v13 = HULocalizedStringWithFormat(@"HUEditRoomRemoveAlertTitle", @"%@", v33, v34, v35, v36, v37, v38, v32);
      v22 = [(UICollectionViewController *)self hu_actionSheetWithTitle:0 message:v13 indexPath:v6];
      v39 = MEMORY[0x277D750F8];
      v40 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
      v23 = [v39 actionWithTitle:v40 style:1 handler:0];

      [v23 setAccessibilityIdentifier:@"Home.Room.RemoveRoom.Cancel"];
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
      [v22 addAction:v23];
      [v22 addAction:v44];
      [(HUEditRoomViewController *)self presentViewController:v22 animated:1 completion:0];
    }

    goto LABEL_12;
  }

  v17 = [(HUEditRoomViewController *)self navigationController];
  v18 = _HULocalizedStringWithDefaultValue(@"HUEditRoomNamedWallpaperSectionTitle", @"HUEditRoomNamedWallpaperSectionTitle", 1);
  [HUWallpaperPickerViewController presentSecurePickerFromNavigationController:v17 collectionType:1 withTitle:v18 delegate:self];

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

- (id)trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUItemCollectionViewController *)self itemManager];
  v6 = [v5 displayedItemAtIndexPath:v4];
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
    v23 = self;
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

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = a4;
  v16.receiver = self;
  v16.super_class = HUEditRoomViewController;
  v9 = a5;
  [(HUItemCollectionViewController *)&v16 collectionView:a3 willDisplayCell:v8 forItemAtIndexPath:v9];
  v10 = [(HUItemCollectionViewController *)self itemManager:v16.receiver];
  v11 = [v10 displayedItemAtIndexPath:v9];

  v12 = [(HUEditRoomViewController *)self roomItemManager];
  v13 = [v12 nameItem];
  if (([v11 isEqual:v13] & 1) == 0)
  {

    goto LABEL_5;
  }

  v14 = [(HUEditRoomViewController *)self roomBuilder];
  v15 = [v14 room];

  if (!v15)
  {
    v12 = [v8 textField];
    [v12 becomeFirstResponder];
LABEL_5:
  }
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  v5 = a4;
  [(HUEditRoomViewController *)self dismissViewControllerAnimated:1 completion:0];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D76A80]];

  UIImageWriteToSavedPhotosAlbum(v6, 0, 0, 0);
  v7 = objc_alloc(MEMORY[0x277D14D10]);
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [v8 UUIDString];
  v10 = [v7 initWithType:1 assetIdentifier:v9 cropInfo:0];

  v11 = [MEMORY[0x277D14D18] sharedInstance];
  v12 = [v11 processOriginalImageFromWallpaper:v10 originalImage:v6];

  [(HUEditRoomViewController *)self presentWallpaperEditingViewControllerWithImage:v12 wallpaper:v10];
}

- (void)wallpaperPickerDidFinish:(id)a3 wallpaper:(id)a4 image:(id)a5
{
  [(HUEditRoomViewController *)self updateWallpaper:a4 image:a5];
  v7 = [(HUEditRoomViewController *)self navigationController];
  v6 = [v7 popToViewController:self animated:1];
}

- (void)wallpaperThumbnailCell:(id)a3 didReceiveDroppedImage:(id)a4
{
  v5 = MEMORY[0x277D14D10];
  v6 = MEMORY[0x277CCAD78];
  v7 = a4;
  v10 = [v6 UUID];
  v8 = [v10 UUIDString];
  v9 = [v5 customWallpaperWithAssetIdentifier:v8];
  [(HUEditRoomViewController *)self updateWallpaper:v9 image:v7];
}

- (void)wallpaperPicker:(id)a3 didReceiveDroppedImage:(id)a4
{
  v6 = MEMORY[0x277D14D10];
  v7 = MEMORY[0x277CCAD78];
  v8 = a4;
  v9 = a3;
  v10 = [v7 UUID];
  v11 = [v10 UUIDString];
  v26 = [v6 customWallpaperWithAssetIdentifier:v11];

  [v9 setOriginalCustomImage:v8];
  v12 = [(HUEditRoomViewController *)self roomBuilder];
  v13 = [v12 wallpaperBuilder];
  [v13 setWallpaper:v26 image:v8];

  v14 = [(HUEditRoomViewController *)self roomItemManager];
  v15 = [(HUEditRoomViewController *)self roomItemManager];
  v16 = [v15 wallpaperPickerItem];
  v17 = [v14 indexPathForItem:v16];

  v18 = [(HUItemCollectionViewController *)self itemManager];
  v19 = [v18 displayedItemAtIndexPath:v17];

  v20 = [(HUItemCollectionViewController *)self itemManager];
  [(HUItemCollectionViewController *)self itemManager:v20 didUpdateResultsForItem:v19 atIndexPath:v17];

  v21 = [(HUEditRoomViewController *)self roomBuilder];
  v22 = [v21 room];

  if (v22)
  {
    v23 = [(HUEditRoomViewController *)self roomBuilder];
    v24 = [v23 wallpaperBuilder];
    v25 = [v24 commitWallpaper];
  }
}

- (void)wallpaperPicker:(id)a3 didSelectWallpaper:(id)a4 withImage:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(HUEditRoomViewController *)self roomBuilder];
  v10 = [v9 wallpaperBuilder];
  [v10 setWallpaper:v8 image:v7];

  v11 = [(HUEditRoomViewController *)self roomBuilder];
  v12 = [v11 room];

  if (v12)
  {
    v15 = [(HUEditRoomViewController *)self roomBuilder];
    v13 = [v15 wallpaperBuilder];
    v14 = [v13 commitWallpaper];
  }
}

- (void)wallpaperPickerRequestOpenWallpaperEditor:(id)a3
{
  v4 = [(HUEditRoomViewController *)self roomBuilder];
  v5 = [v4 wallpaperBuilder];
  v6 = [v5 wallpaperEditCollectionFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__HUEditRoomViewController_wallpaperPickerRequestOpenWallpaperEditor___block_invoke;
  v8[3] = &unk_277DBE118;
  v8[4] = self;
  v7 = [v6 addSuccessBlock:v8];
}

void __70__HUEditRoomViewController_wallpaperPickerRequestOpenWallpaperEditor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 originalImage];
  v4 = *(a1 + 32);
  v5 = [v3 wallpaper];

  [v4 presentWallpaperEditingViewControllerWithImage:v6 wallpaper:v5];
}

- (void)wallpaperEditing:(id)a3 didFinishWithWallpaper:(id)a4 image:(id)a5
{
  [(HUEditRoomViewController *)self updateWallpaper:a4 image:a5];

  [(HUEditRoomViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)presentWallpaperEditingViewControllerWithImage:(id)a3 wallpaper:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[HUWallpaperEditingViewController alloc] initWithWallpaper:v6 image:v7 delegate:self];

  [(HUEditRoomViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)updateWallpaper:(id)a3 image:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUEditRoomViewController *)self roomBuilder];
  v9 = [v8 wallpaperBuilder];
  [v9 setWallpaper:v7 image:v6];

  v10 = [(HUEditRoomViewController *)self roomBuilder];
  v11 = [v10 room];

  if (v11)
  {
    v12 = [(HUEditRoomViewController *)self roomBuilder];
    v13 = [v12 wallpaperBuilder];
    v14 = [v13 commitWallpaper];
  }

  v15 = +[HUWallpaperPickerInlineViewController useWallpaperPickerCell];
  v16 = [(HUEditRoomViewController *)self roomItemManager];
  v17 = v16;
  if (v15)
  {
    [v16 wallpaperPickerItem];
  }

  else
  {
    [v16 wallpaperThumbnailItem];
  }
  v21 = ;

  v18 = [(HUEditRoomViewController *)self roomItemManager];
  v19 = [v18 indexPathForItem:v21];

  v20 = [(HUItemCollectionViewController *)self itemManager];
  [(HUItemCollectionViewController *)self itemManager:v20 didUpdateResultsForItem:v21 atIndexPath:v19];
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