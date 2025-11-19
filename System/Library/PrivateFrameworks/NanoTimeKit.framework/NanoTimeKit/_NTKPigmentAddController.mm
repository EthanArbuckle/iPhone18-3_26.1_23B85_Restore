@interface _NTKPigmentAddController
- (_NTKPigmentAddController)initWithFace:(id)a3 faceView:(id)a4 slot:(id)a5 willExitHandler:(id)a6;
- (id)_collectionViewLayout;
- (id)_pigmentForIndexPath:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_callWillExitHandlerWithChanges:(BOOL)a3;
- (void)_dismissWithChanges:(BOOL)a3;
- (void)_donePressed;
- (void)_handleOptionsChangedNotification;
- (void)_setupPigments;
- (void)_updateSelections;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation _NTKPigmentAddController

- (_NTKPigmentAddController)initWithFace:(id)a3 faceView:(id)a4 slot:(id)a5 willExitHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v29.receiver = self;
  v29.super_class = _NTKPigmentAddController;
  v15 = [(_NTKPigmentAddController *)&v29 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_face, a3);
    objc_storeStrong(&v16->_faceView, a4);
    v17 = [v13 copy];
    slot = v16->_slot;
    v16->_slot = v17;

    v19 = _Block_copy(v14);
    willExitHandler = v16->_willExitHandler;
    v16->_willExitHandler = v19;

    v21 = [NTKPigmentEditOptionArray arrayWithEquality:1];
    addedPigments = v16->_addedPigments;
    v16->_addedPigments = v21;

    v23 = [NTKPigmentEditOptionArray arrayWithEquality:1];
    removedPigments = v16->_removedPigments;
    v16->_removedPigments = v23;

    v25 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v16 action:sel__donePressed];
    v26 = [(_NTKPigmentAddController *)v16 navigationItem];
    [v26 setRightBarButtonItem:v25];

    [(_NTKPigmentAddController *)v16 _setupPigments];
    v27 = [MEMORY[0x277CCAB98] defaultCenter];
    [v27 addObserver:v16 selector:sel__handleOptionsChangedNotification name:@"NTKColorEditOptionsChangedNotificationName" object:v16->_face];
  }

  else
  {
    (*(v14 + 2))(v14, 0);
  }

  return v16;
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = _NTKPigmentAddController;
  [(_NTKPigmentAddController *)&v22 viewDidLoad];
  v3 = [(NTKFace *)self->_face device];
  if (_LayoutConstants_onceToken != -1)
  {
    [_NTKPigmentAddController viewDidLoad];
  }

  v4 = *&_LayoutConstants__constants_3;

  v5 = BPSBackgroundColor();
  v6 = [(_NTKPigmentAddController *)self view];
  [v6 setBackgroundColor:v5];

  v7 = [(_NTKPigmentAddController *)self _collectionViewLayout];
  v8 = objc_alloc(MEMORY[0x277D752A0]);
  v9 = [v8 initWithFrame:v7 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  collectionView = self->_collectionView;
  self->_collectionView = v9;

  v11 = self->_collectionView;
  v12 = objc_opt_class();
  v13 = *MEMORY[0x277D767D8];
  v14 = +[_NTKPigmentAddHeaderView reuseIdentifier];
  [(UICollectionView *)v11 registerClass:v12 forSupplementaryViewOfKind:v13 withReuseIdentifier:v14];

  v15 = self->_collectionView;
  v16 = objc_opt_class();
  v17 = +[_NTKPigmentAddCell reuseIdentifier];
  [(UICollectionView *)v15 registerClass:v16 forCellWithReuseIdentifier:v17];

  [(UICollectionView *)self->_collectionView setAlwaysBounceVertical:1];
  [(UICollectionView *)self->_collectionView setAllowsMultipleSelection:1];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setDataSource:self];
  [(UICollectionView *)self->_collectionView setContentInset:v4, 0.0, 0.0, 0.0];
  v18 = [(_NTKPigmentAddController *)self view];
  [v18 addSubview:self->_collectionView];

  v20 = NTKCCustomizationLocalizedString(@"PIGMENT_EDIT_TITLE", @"Face Colors", v19);
  [(_NTKPigmentAddController *)self setTitle:v20];

  v21 = [(_NTKPigmentAddController *)self navigationItem];
  [v21 _setLargeTitleTwoLineMode:1];
}

- (void)viewDidLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = _NTKPigmentAddController;
  [(_NTKPigmentAddController *)&v12 viewDidLayoutSubviews];
  v3 = [(_NTKPigmentAddController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UICollectionView *)self->_collectionView setFrame:v5, v7, v9, v11];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _NTKPigmentAddController;
  [(_NTKPigmentAddController *)&v4 viewWillAppear:a3];
  [(UICollectionView *)self->_collectionView reloadData];
  [(_NTKPigmentAddController *)self _updateSelections];
}

- (void)_updateSelections
{
  if ([(NSArray *)self->_sections count])
  {
    v3 = 0;
    do
    {
      v4 = [(NSArray *)self->_sections objectAtIndexedSubscript:v3];
      v5 = [v4 items];

      if ([v5 count])
      {
        v6 = 0;
        do
        {
          v7 = [v5 objectAtIndexedSubscript:v6];
          if (([(NTKPigmentEditOptionArray *)self->_availablePigments containsPigment:v7]|| [(NTKPigmentEditOptionArray *)self->_addedPigments containsPigment:v7]) && ![(NTKPigmentEditOptionArray *)self->_removedPigments containsPigment:v7])
          {
            v8 = [MEMORY[0x277CCAA70] indexPathForItem:v6 inSection:v3];
            [(UICollectionView *)self->_collectionView selectItemAtIndexPath:v8 animated:0 scrollPosition:0];
          }

          ++v6;
        }

        while (v6 < [v5 count]);
      }

      ++v3;
    }

    while (v3 < [(NSArray *)self->_sections count]);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _NTKPigmentAddController;
  [(_NTKPigmentAddController *)&v4 viewDidAppear:a3];
  [(UICollectionView *)self->_collectionView becomeFirstResponder];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _NTKPigmentAddController;
  [(_NTKPigmentAddController *)&v4 viewDidDisappear:a3];
  [(UICollectionView *)self->_collectionView resignFirstResponder];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sections objectAtIndexedSubscript:a4];
  v5 = [v4 items];
  v6 = [v5 count];

  return v6;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  face = self->_face;
  v7 = a4;
  v8 = a3;
  v9 = [(NTKFace *)face device];
  if (_LayoutConstants_onceToken != -1)
  {
    [_NTKPigmentAddCell _updateCheck];
  }

  v10 = *&_LayoutConstants__constants_0;
  v11 = +[_NTKPigmentAddCell reuseIdentifier];
  v12 = [v8 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v7];

  [v12 setDevice:v9];
  v13 = [(_NTKPigmentAddController *)self _pigmentForIndexPath:v7];

  v14 = [(NTKFaceView *)self->_faceView swatchImageForColorOption:v13 size:v10, v10];
  [v12 setImage:v14];
  v15 = [(NTKFaceView *)self->_faceView swatchPrimaryColorForColorOption:v13];
  [v12 setPrimaryColor:v15];
  [v12 setPigmentEditOption:v13];

  return v12;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[_NTKPigmentAddHeaderView reuseIdentifier];
  v12 = [v10 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v11 forIndexPath:v8];

  v13 = [v8 section];
  v14 = [(NSArray *)self->_sections objectAtIndexedSubscript:v13];
  v15 = [v14 name];
  [v12 setName:v15];

  return v12;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = [(_NTKPigmentAddController *)self _pigmentForIndexPath:a4];
  v5 = [(NTKPigmentEditOptionArray *)self->_removedPigments indexOfPigment:?];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NTKPigmentEditOptionArray *)self->_addedPigments addPigment:v6];
  }

  else
  {
    [(NTKPigmentEditOptionArray *)self->_removedPigments removePigmentAtIndex:v5];
  }
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v6 = [(_NTKPigmentAddController *)self _pigmentForIndexPath:a4];
  v5 = [(NTKPigmentEditOptionArray *)self->_addedPigments indexOfPigment:?];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NTKPigmentEditOptionArray *)self->_removedPigments addPigment:v6];
  }

  else
  {
    [(NTKPigmentEditOptionArray *)self->_addedPigments removePigmentAtIndex:v5];
  }
}

- (id)_collectionViewLayout
{
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = [(NTKFace *)self->_face device];
  if (_LayoutConstants_onceToken != -1)
  {
    [_NTKPigmentAddCell _updateCheck];
  }

  v3 = *&_LayoutConstants__constants_0;
  v4 = *&_LayoutConstants__constants_2;
  v5 = *&_LayoutConstants__constants_4;
  v6 = *&_LayoutConstants__constants_5;
  v7 = *&_LayoutConstants__constants_6;

  v8 = MEMORY[0x277CFB870];
  v9 = [MEMORY[0x277CFB840] absoluteDimension:v3];
  v10 = [MEMORY[0x277CFB840] absoluteDimension:v3];
  v11 = [v8 sizeWithWidthDimension:v9 heightDimension:v10];

  v12 = [MEMORY[0x277CFB860] itemWithLayoutSize:v11];
  v13 = MEMORY[0x277CFB870];
  v14 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v15 = [MEMORY[0x277CFB840] absoluteDimension:v3];
  v16 = [v13 sizeWithWidthDimension:v14 heightDimension:v15];

  v17 = MEMORY[0x277CFB850];
  v32[0] = v12;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  v19 = [v17 horizontalGroupWithLayoutSize:v16 subitems:v18];

  v20 = [MEMORY[0x277CFB878] fixedSpacing:v7];
  [v19 setInterItemSpacing:v20];

  v21 = [MEMORY[0x277CFB868] sectionWithGroup:v19];
  [v21 setOrthogonalScrollingBehavior:1];
  [v21 setContentInsets:{0.0, v4, 0.0, v4}];
  v22 = MEMORY[0x277CFB870];
  v23 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v24 = [MEMORY[0x277CFB840] estimatedDimension:20.0];
  v25 = [v22 sizeWithWidthDimension:v23 heightDimension:v24];

  v26 = [MEMORY[0x277CFB830] boundarySupplementaryItemWithLayoutSize:v25 elementKind:*MEMORY[0x277D767D8] alignment:1 absoluteOffset:{0.0, -v5}];
  v31 = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  [v21 setBoundarySupplementaryItems:v27];

  v28 = objc_opt_new();
  [v28 setScrollDirection:0];
  [v28 setInterSectionSpacing:v6];
  v29 = [objc_alloc(MEMORY[0x277D752B8]) initWithSection:v21 configuration:v28];

  return v29;
}

- (void)_setupPigments
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [NTKPigmentEditOptionArray arrayWithEquality:1];
  availablePigments = self->_availablePigments;
  self->_availablePigments = v3;

  v5 = [(NTKFace *)self->_face pigmentOptionProvider];
  v27 = self;
  v6 = [v5 availableColorsForSlot:self->_slot];

  v26 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        if ([v15 isAddable])
        {
          v16 = [v15 collectionName];
          if (([v16 isEqualToString:v11] & 1) == 0)
          {
            if ([v12 count])
            {
              v17 = objc_opt_new();
              [v17 setName:v10];
              [v17 setItems:v12];
              [(NSArray *)v26 addObject:v17];
            }

            v18 = v16;

            v19 = [v15 localizedCollectionName];

            v20 = [NTKPigmentEditOptionArray arrayWithEquality:1];

            v21 = v19;
            v11 = v18;
            v12 = v20;
            v10 = v21;
          }

          [v12 addPigment:v15];
          if ([v15 isVisible])
          {
            [(NTKPigmentEditOptionArray *)v27->_availablePigments addPigment:v15];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  if ([v12 count])
  {
    v22 = v10;
    v23 = objc_opt_new();
    [v23 setName:v22];
    [v23 setItems:v12];
    [(NSArray *)v26 addObject:v23];

    v10 = v22;
  }

  sections = v27->_sections;
  v27->_sections = v26;
  v25 = v26;
}

- (id)_pigmentForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [v4 item];

  v7 = [(NSArray *)self->_sections objectAtIndexedSubscript:v5];
  v8 = [v7 items];
  v9 = [v8 objectAtIndexedSubscript:v6];

  return v9;
}

- (void)_dismissWithChanges:(BOOL)a3
{
  [(_NTKPigmentAddController *)self _callWillExitHandlerWithChanges:a3];

  [(_NTKPigmentAddController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_107];
}

- (void)_callWillExitHandlerWithChanges:(BOOL)a3
{
  willExitHandler = self->_willExitHandler;
  if (willExitHandler)
  {
    willExitHandler[2](willExitHandler, a3);
    v5 = self->_willExitHandler;
    self->_willExitHandler = 0;
  }
}

- (void)_donePressed
{
  v25 = *MEMORY[0x277D85DE8];
  if ([(NTKPigmentEditOptionArray *)self->_addedPigments count]|| [(NTKPigmentEditOptionArray *)self->_removedPigments count])
  {
    v3 = +[NTKPigmentEditOptionStore sharedInstance];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = self->_addedPigments;
    v5 = [(NTKPigmentEditOptionArray *)v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        v8 = 0;
        do
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 setOption:*(*(&v19 + 1) + 8 * v8++) visible:1];
        }

        while (v6 != v8);
        v6 = [(NTKPigmentEditOptionArray *)v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v6);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = self->_removedPigments;
    v10 = [(NTKPigmentEditOptionArray *)v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v3 setOption:*(*(&v15 + 1) + 8 * v13++) visible:{0, v15}];
        }

        while (v11 != v13);
        v11 = [(NTKPigmentEditOptionArray *)v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v11);
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  [(_NTKPigmentAddController *)self _dismissWithChanges:v14, v15];
}

- (void)_handleOptionsChangedNotification
{
  [(_NTKPigmentAddController *)self _setupPigments];
  [(UICollectionView *)self->_collectionView reloadData];

  [(_NTKPigmentAddController *)self _updateSelections];
}

@end