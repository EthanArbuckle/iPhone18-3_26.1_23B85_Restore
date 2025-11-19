@interface _NTKCFaceDetailCustomPhotosViewController
- (BOOL)_allPhotosSelected;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (NTKCFaceDetailCustomPhotosViewControllerDelegate)delegate;
- (_NTKCFaceDetailCustomPhotosViewController)initWithPhotosEditor:(id)a3 forFace:(id)a4 inGallery:(BOOL)a5 faceView:(id)a6 externalImagesSet:(BOOL)a7;
- (id)_currentSelectAllButton;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)_addPressed;
- (void)_deletePressed;
- (void)_savePressed;
- (void)_selectAllPhotos;
- (void)_selectAllPressed;
- (void)_updateButtons;
- (void)_updateButtonsForSelectionChanged;
- (void)_updateTitle;
- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation _NTKCFaceDetailCustomPhotosViewController

- (_NTKCFaceDetailCustomPhotosViewController)initWithPhotosEditor:(id)a3 forFace:(id)a4 inGallery:(BOOL)a5 faceView:(id)a6 externalImagesSet:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v60[3] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = objc_opt_new();
  v58.receiver = self;
  v58.super_class = _NTKCFaceDetailCustomPhotosViewController;
  v16 = [(_NTKCFaceDetailCustomPhotosViewController *)&v58 initWithCollectionViewLayout:v15];
  v17 = v16;
  if (v16)
  {
    [(_NTKCFaceDetailCustomPhotosViewController *)v16 setEditor:v12];
    [(_NTKCFaceDetailCustomPhotosViewController *)v17 setFace:v13];
    [(_NTKCFaceDetailCustomPhotosViewController *)v17 setInGallery:v9];
    [(_NTKCFaceDetailCustomPhotosViewController *)v17 setFaceView:v14];
    [(_NTKCFaceDetailCustomPhotosViewController *)v17 setExternalImagesSet:v7];
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
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [(_NTKCFaceDetailCustomPhotosViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [MEMORY[0x277D75348] systemBackgroundColor];
  v6 = [(_NTKCFaceDetailCustomPhotosViewController *)self collectionView];
  [v6 setBackgroundColor:v5];

  v7 = [(_NTKCFaceDetailCustomPhotosViewController *)self collectionView];
  v8 = objc_opt_class();
  v9 = +[NTKCPhotoListCell reuseIdentifier];
  [v7 registerClass:v8 forCellWithReuseIdentifier:v9];

  v10 = [(_NTKCFaceDetailCustomPhotosViewController *)self collectionView];
  [v10 setAlwaysBounceVertical:1];

  v11 = [(_NTKCFaceDetailCustomPhotosViewController *)self collectionView];
  [v11 setAllowsSelectionDuringEditing:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = _NTKCFaceDetailCustomPhotosViewController;
  [(_NTKCFaceDetailCustomPhotosViewController *)&v7 viewWillAppear:a3];
  v4 = [(_NTKCFaceDetailCustomPhotosViewController *)self navigationController];
  [v4 setToolbarHidden:0];

  [(_NTKCFaceDetailCustomPhotosViewController *)self _updateButtons];
  v5 = [(_NTKCFaceDetailCustomPhotosViewController *)self presentedViewController];

  if (v5)
  {
    v6 = [(_NTKCFaceDetailCustomPhotosViewController *)self collectionView];
    [v6 reloadData];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = _NTKCFaceDetailCustomPhotosViewController;
  [(_NTKCFaceDetailCustomPhotosViewController *)&v7 setEditing:a3 animated:a4];
  [(_NTKCFaceDetailCustomPhotosViewController *)self _updateButtons];
  [(NSMutableIndexSet *)self->_selectedIndexes removeAllIndexes];
  v5 = [(_NTKCFaceDetailCustomPhotosViewController *)self collectionView];
  v6 = [v5 visibleCells];
  [v6 enumerateObjectsUsingBlock:&__block_literal_global_157];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(_NTKCFaceDetailCustomPhotosViewController *)self collectionView];
  v7 = +[NTKCPhotoListCell reuseIdentifier];
  v8 = [v6 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v5];

  v9 = [v5 item];
  editor = self->_editor;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83___NTKCFaceDetailCustomPhotosViewController_collectionView_cellForItemAtIndexPath___block_invoke;
  v15[3] = &unk_278786A58;
  v15[4] = self;
  v11 = v8;
  v16 = v11;
  v17 = v9;
  [(NTKCompanionCustomPhotosEditor *)editor imageAndCropForPhotoAtIndex:v9 completion:v15];
  [v11 setPhoto:0];
  [v11 setCrop:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v11 setSelected:{-[NSMutableIndexSet containsIndex:](self->_selectedIndexes, "containsIndex:", v9)}];
  v12 = v16;
  v13 = v11;

  return v11;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 item];
  if ([(_NTKCFaceDetailCustomPhotosViewController *)self isEditing])
  {
    v9 = [v6 cellForItemAtIndexPath:v7];
    [v9 setSelected:{objc_msgSend(v9, "isSelected") ^ 1}];
    v10 = [v9 isSelected];
    selectedIndexes = self->_selectedIndexes;
    if (v10)
    {
      [(NSMutableIndexSet *)selectedIndexes addIndex:v8];
    }

    else
    {
      [(NSMutableIndexSet *)selectedIndexes removeIndex:v8];
    }

    [(_NTKCFaceDetailCustomPhotosViewController *)self _updateButtonsForSelectionChanged];
  }

  else
  {
    v12 = [(NTKFaceView *)self->_faceView timeView];
    v13 = [v12 style];

    objc_initWeak(&location, self);
    v14 = [NTKCFaceDetailPhotoCropViewController alloc];
    v15 = [v7 item];
    editor = self->_editor;
    v17 = [(_NTKCFaceDetailCustomPhotosViewController *)self face];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __88___NTKCFaceDetailCustomPhotosViewController_collectionView_shouldSelectItemAtIndexPath___block_invoke;
    v23 = &unk_27877DC58;
    objc_copyWeak(&v24, &location);
    v18 = [(NTKCFaceDetailPhotoCropViewController *)v14 initWithIndex:v15 inPhotosEditor:editor forFace:v17 timeStyle:v13 completionHandler:&v20];

    [(_NTKCFaceDetailCustomPhotosViewController *)self presentViewController:v18 animated:1 completion:0, v20, v21, v22, v23];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return 0;
}

- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  editor = self->_editor;
  v7 = a5;
  v8 = [a4 item];
  v9 = [v7 item];

  [(NTKCompanionCustomPhotosEditor *)editor movePhotoAtIndex:v8 toIndex:v9];
}

- (void)_updateButtons
{
  if ([(_NTKCFaceDetailCustomPhotosViewController *)self isEditing])
  {
    v3 = [(_NTKCFaceDetailCustomPhotosViewController *)self _currentSelectAllButton];
    v4 = [(_NTKCFaceDetailCustomPhotosViewController *)self navigationItem];
    [v4 setLeftBarButtonItem:v3];

    v5 = &OBJC_IVAR____NTKCFaceDetailCustomPhotosViewController__editingToolBarItems;
    v6 = &OBJC_IVAR____NTKCFaceDetailCustomPhotosViewController__doneButton;
  }

  else
  {
    saveButton = self->_saveButton;
    v3 = [(_NTKCFaceDetailCustomPhotosViewController *)self navigationItem];
    [v3 setLeftBarButtonItem:saveButton];
    v5 = &OBJC_IVAR____NTKCFaceDetailCustomPhotosViewController__defaultToolBarItems;
    v6 = &OBJC_IVAR____NTKCFaceDetailCustomPhotosViewController__selectButton;
  }

  v8 = *(&self->super.super.super.super.isa + *v6);
  v9 = [(_NTKCFaceDetailCustomPhotosViewController *)self navigationItem];
  [v9 setRightBarButtonItem:v8];

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
    v3 = [(_NTKCFaceDetailCustomPhotosViewController *)self _currentSelectAllButton];
    v4 = [(_NTKCFaceDetailCustomPhotosViewController *)self navigationItem];
    [v4 setLeftBarButtonItem:v3];

    v5 = [(NSMutableIndexSet *)self->_selectedIndexes count];
    v6 = v5 != 0;
    if (!self->_inGallery)
    {
      v7 = v5;
      v8 = [(NSMutableIndexSet *)self->_selectedIndexes count];
      v9 = [(NTKCompanionCustomPhotosEditor *)self->_editor photosCount];
      if (v7)
      {
        v10 = v8 == v9;
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
  v3 = [(_NTKCFaceDetailCustomPhotosViewController *)self _allPhotosSelected];
  v4 = &OBJC_IVAR____NTKCFaceDetailCustomPhotosViewController__selectAllButton;
  if (v3)
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
    v7 = [(NTKCompanionCustomPhotosEditor *)self->_editor photosCount];
    goto LABEL_5;
  }

  if ([(NSMutableIndexSet *)self->_selectedIndexes count])
  {
    v5 = NTKCCustomizationLocalizedFormat(@"PHOTOS_NUMBER_SELECTED", @"# Photos Selected", v4);
    v6 = MEMORY[0x277CCACA8];
    v7 = [(NSMutableIndexSet *)self->_selectedIndexes count];
LABEL_5:
    v8 = [v6 localizedStringWithFormat:v5, v7];

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
    v9 = [(_NTKCFaceDetailCustomPhotosViewController *)self navigationItem];
    [v9 setLeftBarButtonItem:v8];

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
  v3 = [(_NTKCFaceDetailCustomPhotosViewController *)self _allPhotosSelected];
  if (v3)
  {
    [(NSMutableIndexSet *)self->_selectedIndexes removeAllIndexes];
  }

  else
  {
    [(_NTKCFaceDetailCustomPhotosViewController *)self _selectAllPhotos];
  }

  v4 = !v3;
  v5 = [(_NTKCFaceDetailCustomPhotosViewController *)self collectionView];
  v6 = [v5 visibleCells];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62___NTKCFaceDetailCustomPhotosViewController__selectAllPressed__block_invoke;
  v7[3] = &__block_descriptor_33_e34_v32__0__NTKCPhotoListCell_8Q16_B24l;
  v8 = v4;
  [v6 enumerateObjectsUsingBlock:v7];

  [(_NTKCFaceDetailCustomPhotosViewController *)self _updateButtonsForSelectionChanged];
}

- (void)_addPressed
{
  v3 = [(NTKCompanionCustomPhotosEditor *)self->_editor photosCount];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56___NTKCFaceDetailCustomPhotosViewController__addPressed__block_invoke;
  v4[3] = &unk_2787860A0;
  v4[4] = self;
  [NTKCPhotosAddController presentPhotosAddControllerFromViewController:self selectionLimit:24 - v3 withCompletion:v4];
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
    v23 = self;
    v5 = v3;
    [(NSMutableIndexSet *)selectedIndexes enumerateIndexesWithOptions:2 usingBlock:v21];
    [(NSMutableIndexSet *)self->_selectedIndexes removeAllIndexes];
    v6 = [(_NTKCFaceDetailCustomPhotosViewController *)self collectionView];
    [v6 deleteItemsAtIndexPaths:v5];

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
  v3 = [(NTKCompanionCustomPhotosEditor *)self->_editor photosCount];
  selectedIndexes = self->_selectedIndexes;

  return [(NSMutableIndexSet *)selectedIndexes containsIndexesInRange:0, v3];
}

- (void)_selectAllPhotos
{
  v3 = [(NTKCompanionCustomPhotosEditor *)self->_editor photosCount];
  selectedIndexes = self->_selectedIndexes;

  [(NSMutableIndexSet *)selectedIndexes addIndexesInRange:0, v3];
}

- (NTKCFaceDetailCustomPhotosViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end