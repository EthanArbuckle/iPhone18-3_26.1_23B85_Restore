@interface _NTKCFaceDetailCustomPhotosViewController
- (BOOL)_allPhotosSelected;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (NTKCFaceDetailCustomPhotosViewControllerDelegate)delegate;
- (_NTKCFaceDetailCustomPhotosViewController)initWithPhotosEditor:(id)editor forFace:(id)face inGallery:(BOOL)gallery faceView:(id)view externalImagesSet:(BOOL)set;
- (id)_currentSelectAllButton;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_addPressed;
- (void)_deletePressed;
- (void)_savePressed;
- (void)_selectAllPhotos;
- (void)_selectAllPressed;
- (void)_updateButtons;
- (void)_updateButtonsForSelectionChanged;
- (void)_updateTitle;
- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation _NTKCFaceDetailCustomPhotosViewController

- (_NTKCFaceDetailCustomPhotosViewController)initWithPhotosEditor:(id)editor forFace:(id)face inGallery:(BOOL)gallery faceView:(id)view externalImagesSet:(BOOL)set
{
  setCopy = set;
  galleryCopy = gallery;
  v60[3] = *MEMORY[0x277D85DE8];
  editorCopy = editor;
  faceCopy = face;
  viewCopy = view;
  v15 = objc_opt_new();
  v58.receiver = self;
  v58.super_class = _NTKCFaceDetailCustomPhotosViewController;
  v16 = [(_NTKCFaceDetailCustomPhotosViewController *)&v58 initWithCollectionViewLayout:v15];
  v17 = v16;
  if (v16)
  {
    [(_NTKCFaceDetailCustomPhotosViewController *)v16 setEditor:editorCopy];
    [(_NTKCFaceDetailCustomPhotosViewController *)v17 setFace:faceCopy];
    [(_NTKCFaceDetailCustomPhotosViewController *)v17 setInGallery:galleryCopy];
    [(_NTKCFaceDetailCustomPhotosViewController *)v17 setFaceView:viewCopy];
    [(_NTKCFaceDetailCustomPhotosViewController *)v17 setExternalImagesSet:setCopy];
    v18 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v17 action:sel__savePressed];
    saveButton = v17->_saveButton;
    v17->_saveButton = v18;

    v20 = objc_alloc(MEMORY[0x277D751E0]);
    v22 = NTKCCustomizationLocalizedString(@"PHOTOS_SELECT", @"Select", v21);
    v23 = [v20 initWithTitle:v22 style:0 target:v17 action:sel__selectPressed];
    selectButton = v17->_selectButton;
    v17->_selectButton = v23;

    v25 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v17 action:sel__donePressed];
    doneButton = v17->_doneButton;
    v17->_doneButton = v25;

    v27 = objc_alloc(MEMORY[0x277D751E0]);
    v29 = NTKCCustomizationLocalizedString(@"PHOTOS_SELECT_ALL", @"Select All", v28);
    v30 = [v27 initWithTitle:v29 style:0 target:v17 action:sel__selectAllPressed];
    selectAllButton = v17->_selectAllButton;
    v17->_selectAllButton = v30;

    v32 = objc_alloc(MEMORY[0x277D751E0]);
    v34 = NTKCCustomizationLocalizedString(@"PHOTOS_DESELECT_ALL", @"Deselect All", v33);
    v35 = [v32 initWithTitle:v34 style:0 target:v17 action:sel__selectAllPressed];
    deselectAllButton = v17->_deselectAllButton;
    v17->_deselectAllButton = v35;

    v37 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:16 target:v17 action:sel__deletePressed];
    deleteButton = v17->_deleteButton;
    v17->_deleteButton = v37;

    [(UIBarButtonItem *)v17->_deleteButton setEnabled:0];
    v39 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
    [v39 startAnimating];
    v40 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v39];
    spinnerButton = v17->_spinnerButton;
    v17->_spinnerButton = v40;

    if (!v17->_externalImagesSet)
    {
      v42 = objc_alloc(MEMORY[0x277D751E0]);
      v44 = NTKCCustomizationLocalizedString(@"PHOTOS_ADD", @"Add Photos…", v43);
      v45 = [v42 initWithTitle:v44 style:0 target:v17 action:sel__addPressed];
      addButton = v17->_addButton;
      v17->_addButton = v45;

      v47 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
      v60[0] = v47;
      v60[1] = v17->_addButton;
      v48 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
      v60[2] = v48;
      v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:3];
      defaultToolBarItems = v17->_defaultToolBarItems;
      v17->_defaultToolBarItems = v49;
    }

    v51 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
    v59[0] = v51;
    v59[1] = v17->_deleteButton;
    v52 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
    v59[2] = v52;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:3];
    editingToolBarItems = v17->_editingToolBarItems;
    v17->_editingToolBarItems = v53;

    v55 = objc_opt_new();
    selectedIndexes = v17->_selectedIndexes;
    v17->_selectedIndexes = v55;
  }

  return v17;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = _NTKCFaceDetailCustomPhotosViewController;
  [(_NTKCFaceDetailCustomPhotosViewController *)&v12 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(_NTKCFaceDetailCustomPhotosViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
  collectionView = [(_NTKCFaceDetailCustomPhotosViewController *)self collectionView];
  [collectionView setBackgroundColor:systemBackgroundColor2];

  collectionView2 = [(_NTKCFaceDetailCustomPhotosViewController *)self collectionView];
  v8 = objc_opt_class();
  v9 = +[NTKCPhotoListCell reuseIdentifier];
  [collectionView2 registerClass:v8 forCellWithReuseIdentifier:v9];

  collectionView3 = [(_NTKCFaceDetailCustomPhotosViewController *)self collectionView];
  [collectionView3 setAlwaysBounceVertical:1];

  collectionView4 = [(_NTKCFaceDetailCustomPhotosViewController *)self collectionView];
  [collectionView4 setAllowsSelectionDuringEditing:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = _NTKCFaceDetailCustomPhotosViewController;
  [(_NTKCFaceDetailCustomPhotosViewController *)&v7 viewWillAppear:appear];
  navigationController = [(_NTKCFaceDetailCustomPhotosViewController *)self navigationController];
  [navigationController setToolbarHidden:0];

  [(_NTKCFaceDetailCustomPhotosViewController *)self _updateButtons];
  presentedViewController = [(_NTKCFaceDetailCustomPhotosViewController *)self presentedViewController];

  if (presentedViewController)
  {
    collectionView = [(_NTKCFaceDetailCustomPhotosViewController *)self collectionView];
    [collectionView reloadData];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  v7.receiver = self;
  v7.super_class = _NTKCFaceDetailCustomPhotosViewController;
  [(_NTKCFaceDetailCustomPhotosViewController *)&v7 setEditing:editing animated:animated];
  [(_NTKCFaceDetailCustomPhotosViewController *)self _updateButtons];
  [(NSMutableIndexSet *)self->_selectedIndexes removeAllIndexes];
  collectionView = [(_NTKCFaceDetailCustomPhotosViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];
  [visibleCells enumerateObjectsUsingBlock:&__block_literal_global_157];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(_NTKCFaceDetailCustomPhotosViewController *)self collectionView];
  v7 = +[NTKCPhotoListCell reuseIdentifier];
  v8 = [collectionView dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:pathCopy];

  item = [pathCopy item];
  editor = self->_editor;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83___NTKCFaceDetailCustomPhotosViewController_collectionView_cellForItemAtIndexPath___block_invoke;
  v15[3] = &unk_278786A58;
  v15[4] = self;
  v11 = v8;
  v16 = v11;
  v17 = item;
  [(NTKCompanionCustomPhotosEditor *)editor imageAndCropForPhotoAtIndex:item completion:v15];
  [v11 setPhoto:0];
  [v11 setCrop:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v11 setSelected:{-[NSMutableIndexSet containsIndex:](self->_selectedIndexes, "containsIndex:", item)}];
  v12 = v16;
  v13 = v11;

  return v11;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  item = [pathCopy item];
  if ([(_NTKCFaceDetailCustomPhotosViewController *)self isEditing])
  {
    v9 = [viewCopy cellForItemAtIndexPath:pathCopy];
    [v9 setSelected:{objc_msgSend(v9, "isSelected") ^ 1}];
    isSelected = [v9 isSelected];
    selectedIndexes = self->_selectedIndexes;
    if (isSelected)
    {
      [(NSMutableIndexSet *)selectedIndexes addIndex:item];
    }

    else
    {
      [(NSMutableIndexSet *)selectedIndexes removeIndex:item];
    }

    [(_NTKCFaceDetailCustomPhotosViewController *)self _updateButtonsForSelectionChanged];
  }

  else
  {
    timeView = [(NTKFaceView *)self->_faceView timeView];
    style = [timeView style];

    objc_initWeak(&location, self);
    v14 = [NTKCFaceDetailPhotoCropViewController alloc];
    item2 = [pathCopy item];
    editor = self->_editor;
    face = [(_NTKCFaceDetailCustomPhotosViewController *)self face];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __88___NTKCFaceDetailCustomPhotosViewController_collectionView_shouldSelectItemAtIndexPath___block_invoke;
    v23 = &unk_27877DC58;
    objc_copyWeak(&v24, &location);
    v18 = [(NTKCFaceDetailPhotoCropViewController *)v14 initWithIndex:item2 inPhotosEditor:editor forFace:face timeStyle:style completionHandler:&v20];

    [(_NTKCFaceDetailCustomPhotosViewController *)self presentViewController:v18 animated:1 completion:0, v20, v21, v22, v23];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return 0;
}

- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  editor = self->_editor;
  indexPathCopy = indexPath;
  item = [path item];
  item2 = [indexPathCopy item];

  [(NTKCompanionCustomPhotosEditor *)editor movePhotoAtIndex:item toIndex:item2];
}

- (void)_updateButtons
{
  if ([(_NTKCFaceDetailCustomPhotosViewController *)self isEditing])
  {
    _currentSelectAllButton = [(_NTKCFaceDetailCustomPhotosViewController *)self _currentSelectAllButton];
    navigationItem = [(_NTKCFaceDetailCustomPhotosViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:_currentSelectAllButton];

    v5 = &OBJC_IVAR____NTKCFaceDetailCustomPhotosViewController__editingToolBarItems;
    v6 = &OBJC_IVAR____NTKCFaceDetailCustomPhotosViewController__doneButton;
  }

  else
  {
    saveButton = self->_saveButton;
    _currentSelectAllButton = [(_NTKCFaceDetailCustomPhotosViewController *)self navigationItem];
    [_currentSelectAllButton setLeftBarButtonItem:saveButton];
    v5 = &OBJC_IVAR____NTKCFaceDetailCustomPhotosViewController__defaultToolBarItems;
    v6 = &OBJC_IVAR____NTKCFaceDetailCustomPhotosViewController__selectButton;
  }

  v8 = *(&self->super.super.super.super.isa + *v6);
  navigationItem2 = [(_NTKCFaceDetailCustomPhotosViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v8];

  [(_NTKCFaceDetailCustomPhotosViewController *)self setToolbarItems:*(&self->super.super.super.super.isa + *v5)];
  [(UIBarButtonItem *)self->_addButton setEnabled:[(NTKCompanionCustomPhotosEditor *)self->_editor photosCount]< 0x18];
  [(UIBarButtonItem *)self->_selectButton setEnabled:[(NTKCompanionCustomPhotosEditor *)self->_editor photosCount]> 0];
  [(_NTKCFaceDetailCustomPhotosViewController *)self _updateTitle];

  [(_NTKCFaceDetailCustomPhotosViewController *)self _updateButtonsForSelectionChanged];
}

- (void)_updateButtonsForSelectionChanged
{
  if ([(_NTKCFaceDetailCustomPhotosViewController *)self isEditing])
  {
    _currentSelectAllButton = [(_NTKCFaceDetailCustomPhotosViewController *)self _currentSelectAllButton];
    navigationItem = [(_NTKCFaceDetailCustomPhotosViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:_currentSelectAllButton];

    v5 = [(NSMutableIndexSet *)self->_selectedIndexes count];
    v6 = v5 != 0;
    if (!self->_inGallery)
    {
      v7 = v5;
      v8 = [(NSMutableIndexSet *)self->_selectedIndexes count];
      photosCount = [(NTKCompanionCustomPhotosEditor *)self->_editor photosCount];
      if (v7)
      {
        v10 = v8 == photosCount;
      }

      else
      {
        v10 = 1;
      }

      v6 = !v10;
    }

    deleteButton = self->_deleteButton;

    [(UIBarButtonItem *)deleteButton setEnabled:v6];
  }
}

- (id)_currentSelectAllButton
{
  _allPhotosSelected = [(_NTKCFaceDetailCustomPhotosViewController *)self _allPhotosSelected];
  v4 = &OBJC_IVAR____NTKCFaceDetailCustomPhotosViewController__selectAllButton;
  if (_allPhotosSelected)
  {
    v4 = &OBJC_IVAR____NTKCFaceDetailCustomPhotosViewController__deselectAllButton;
  }

  v5 = *(&self->super.super.super.super.isa + *v4);

  return v5;
}

- (void)_updateTitle
{
  if (![(_NTKCFaceDetailCustomPhotosViewController *)self isEditing])
  {
    v5 = NTKCCustomizationLocalizedFormat(@"PHOTOS_NUMBER", @"# Photos", v3);
    v6 = MEMORY[0x277CCACA8];
    photosCount = [(NTKCompanionCustomPhotosEditor *)self->_editor photosCount];
    goto LABEL_5;
  }

  if ([(NSMutableIndexSet *)self->_selectedIndexes count])
  {
    v5 = NTKCCustomizationLocalizedFormat(@"PHOTOS_NUMBER_SELECTED", @"# Photos Selected", v4);
    v6 = MEMORY[0x277CCACA8];
    photosCount = [(NSMutableIndexSet *)self->_selectedIndexes count];
LABEL_5:
    v8 = [v6 localizedStringWithFormat:v5, photosCount];

    [(_NTKCFaceDetailCustomPhotosViewController *)self setTitle:v8];
    goto LABEL_6;
  }

  v8 = NTKCCustomizationLocalizedString(@"PHOTOS_TITLE_SELECT_ITEMS", @"Select Item", v4);
  [(_NTKCFaceDetailCustomPhotosViewController *)self setTitle:v8];
LABEL_6:
}

- (void)_savePressed
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __57___NTKCFaceDetailCustomPhotosViewController__savePressed__block_invoke;
  aBlock[3] = &unk_27877DC58;
  objc_copyWeak(&v17, &location);
  v3 = _Block_copy(aBlock);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __57___NTKCFaceDetailCustomPhotosViewController__savePressed__block_invoke_2;
  v13 = &unk_278786A80;
  objc_copyWeak(&v15, &location);
  v4 = v3;
  v14 = v4;
  v5 = _Block_copy(&v10);
  if (self->_inGallery)
  {
    spinnerButton = self->_spinnerButton;
    v7 = [(_NTKCFaceDetailCustomPhotosViewController *)self navigationItem:v10];
    [v7 setLeftBarButtonItem:spinnerButton];

    [(NTKCompanionCustomPhotosEditor *)self->_editor generateGalleryPreviewResourceDirectoryWithCompletion:v5];
  }

  else if ([(NTKCompanionResourceDirectoryEditor *)self->_editor state:v10]== 2)
  {
    v8 = self->_spinnerButton;
    navigationItem = [(_NTKCFaceDetailCustomPhotosViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v8];

    [(NTKCompanionCustomPhotosEditor *)self->_editor finalizeWithCompletion:v5];
  }

  else
  {
    v4[2](v4);
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_selectAllPressed
{
  _allPhotosSelected = [(_NTKCFaceDetailCustomPhotosViewController *)self _allPhotosSelected];
  if (_allPhotosSelected)
  {
    [(NSMutableIndexSet *)self->_selectedIndexes removeAllIndexes];
  }

  else
  {
    [(_NTKCFaceDetailCustomPhotosViewController *)self _selectAllPhotos];
  }

  v4 = !_allPhotosSelected;
  collectionView = [(_NTKCFaceDetailCustomPhotosViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62___NTKCFaceDetailCustomPhotosViewController__selectAllPressed__block_invoke;
  v7[3] = &__block_descriptor_33_e34_v32__0__NTKCPhotoListCell_8Q16_B24l;
  v8 = v4;
  [visibleCells enumerateObjectsUsingBlock:v7];

  [(_NTKCFaceDetailCustomPhotosViewController *)self _updateButtonsForSelectionChanged];
}

- (void)_addPressed
{
  photosCount = [(NTKCompanionCustomPhotosEditor *)self->_editor photosCount];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56___NTKCFaceDetailCustomPhotosViewController__addPressed__block_invoke;
  v4[3] = &unk_2787860A0;
  v4[4] = self;
  [NTKCPhotosAddController presentPhotosAddControllerFromViewController:self selectionLimit:24 - photosCount withCompletion:v4];
}

- (void)_deletePressed
{
  if (self->_deleteConfirmed)
  {
    self->_deleteConfirmed = 0;
    v3 = objc_opt_new();
    selectedIndexes = self->_selectedIndexes;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __59___NTKCFaceDetailCustomPhotosViewController__deletePressed__block_invoke_2;
    v21[3] = &unk_278786AC8;
    v22 = v3;
    selfCopy = self;
    v5 = v3;
    [(NSMutableIndexSet *)selectedIndexes enumerateIndexesWithOptions:2 usingBlock:v21];
    [(NSMutableIndexSet *)self->_selectedIndexes removeAllIndexes];
    collectionView = [(_NTKCFaceDetailCustomPhotosViewController *)self collectionView];
    [collectionView deleteItemsAtIndexPaths:v5];

    [(_NTKCFaceDetailCustomPhotosViewController *)self setEditing:0 animated:1];
    v7 = v22;
  }

  else
  {
    v8 = [(NSMutableIndexSet *)self->_selectedIndexes count];
    v9 = @"_PLURAL";
    if (v8 == 1)
    {
      v9 = @"_SINGULAR";
    }

    v10 = v9;
    v11 = [@"PHOTOS_DELETE_CONFIRMATION" stringByAppendingString:v10];
    v5 = NTKCCustomizationLocalizedString(v11, @"Delete Confirmation", v12);

    v7 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:v5 preferredStyle:0];
    v13 = [@"PHOTOS_DELETE_BUTTON" stringByAppendingString:v10];

    v15 = NTKCCustomizationLocalizedString(v13, @"Delete Photos", v14);

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __59___NTKCFaceDetailCustomPhotosViewController__deletePressed__block_invoke;
    v24[3] = &unk_27877E528;
    v24[4] = self;
    v16 = [MEMORY[0x277D750F8] actionWithTitle:v15 style:2 handler:v24];
    [v7 addAction:v16];

    v17 = MEMORY[0x277D750F8];
    v19 = NTKCCustomizationLocalizedString(@"PHOTOS_CANCEL_BUTTON", @"Cancel", v18);
    v20 = [v17 actionWithTitle:v19 style:1 handler:0];
    [v7 addAction:v20];

    [(_NTKCFaceDetailCustomPhotosViewController *)self presentViewController:v7 animated:1 completion:0];
  }
}

- (BOOL)_allPhotosSelected
{
  photosCount = [(NTKCompanionCustomPhotosEditor *)self->_editor photosCount];
  selectedIndexes = self->_selectedIndexes;

  return [(NSMutableIndexSet *)selectedIndexes containsIndexesInRange:0, photosCount];
}

- (void)_selectAllPhotos
{
  photosCount = [(NTKCompanionCustomPhotosEditor *)self->_editor photosCount];
  selectedIndexes = self->_selectedIndexes;

  [(NSMutableIndexSet *)selectedIndexes addIndexesInRange:0, photosCount];
}

- (NTKCFaceDetailCustomPhotosViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end