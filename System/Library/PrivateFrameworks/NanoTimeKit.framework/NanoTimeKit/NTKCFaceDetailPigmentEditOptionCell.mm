@interface NTKCFaceDetailPigmentEditOptionCell
- (BOOL)_isReloadCollectionRequired:(id)required selectedOptions:(id)options;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (NTKCFaceDetailPigmentEditOptionCell)initWithCollection:(id)collection forFaceView:(id)view face:(id)face;
- (id)_configurationFromCollection:(id)collection selectedOptions:(id)options;
- (id)_dequeueCellForIndexPath:(id)path;
- (id)_dividerImage;
- (id)_imageForIndexPath:(id)path;
- (id)_indexPathForEditOptionIndex:(int64_t)index;
- (id)_plusImage;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)optionAtIndex:(unint64_t)index;
- (int64_t)_editOptionIndexForIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_setupFromCollection;
- (void)addCellTapped:(id)tapped;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)modifiedColor:(id)color;
- (void)selectLastColor;
@end

@implementation NTKCFaceDetailPigmentEditOptionCell

- (NTKCFaceDetailPigmentEditOptionCell)initWithCollection:(id)collection forFaceView:(id)view face:(id)face
{
  v27.receiver = self;
  v27.super_class = NTKCFaceDetailPigmentEditOptionCell;
  v5 = [(NTKCFaceDetailEditOptionCell *)&v27 initWithCollection:collection forFaceView:view face:face];
  if (v5)
  {
    v6 = +[NTKPigmentEditOptionArray array];
    editingModifiedColors = v5->_editingModifiedColors;
    v5->_editingModifiedColors = v6;

    v8 = +[NTKPigmentEditOptionArray array];
    previouslySelectedColors = v5->_previouslySelectedColors;
    v5->_previouslySelectedColors = v8;

    layout = [(NTKCFaceDetailEditOptionCell *)v5 layout];
    _dividerImage = [(NTKCFaceDetailPigmentEditOptionCell *)v5 _dividerImage];
    [_dividerImage size];
    v13 = v12;
    v15 = v14;

    [layout itemSize];
    v17 = v16;
    v19 = v18;
    [(NTKCFaceDetailEditOptionCell *)v5 swatchFrame];
    v5->_dividerItemSize.width = v13 + v17 - v20;
    v5->_dividerItemSize.height = v19;
    v5->_dividerSwatchRect.origin.x = v21;
    v5->_dividerSwatchRect.origin.y = v22;
    v5->_dividerSwatchRect.size.width = v13;
    v5->_dividerSwatchRect.size.height = v15;
    collectionView = [(NTKCFaceDetailEditOptionCell *)v5 collectionView];
    v24 = objc_opt_class();
    v25 = +[_NTKCFaceDetailPigmentAddCell reuseIdentifier];
    [collectionView registerClass:v24 forCellWithReuseIdentifier:v25];
  }

  return v5;
}

- (void)modifiedColor:(id)color
{
  v15[1] = *MEMORY[0x277D85DE8];
  editingModifiedColors = self->_editingModifiedColors;
  colorCopy = color;
  [(NTKPigmentEditOptionArray *)editingModifiedColors addPigment:colorCopy];
  v6 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration indexOfColor:colorCopy];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    editableColors = [(NTKFaceEditColorPickerConfiguration *)self->_configuration editableColors];
    v8 = [editableColors count];

    hasSeparator = [(NTKFaceEditColorPickerConfiguration *)self->_configuration hasSeparator];
    v10 = v6 >= v8 && hasSeparator;
    v11 = [MEMORY[0x277CCAA70] indexPathForItem:v6 + v10 inSection:0];
    if (v11)
    {
      v12 = v11;
      collectionView = [(NTKCFaceDetailEditOptionCell *)self collectionView];
      v15[0] = v12;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
      [collectionView reloadItemsAtIndexPaths:v14];
    }
  }
}

- (void)selectLastColor
{
  collection = [(NTKCFaceDetailEditOptionCell *)self collection];
  mode = [collection mode];

  collection2 = [(NTKCFaceDetailEditOptionCell *)self collection];
  slot = [collection2 slot];

  numberOfColors = [(NTKFaceEditColorPickerConfiguration *)self->_configuration numberOfColors];
  if (numberOfColors)
  {
    v7 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration colorAtIndex:numberOfColors - 1];
  }

  else
  {
    face = [(NTKCFaceDetailEditOptionCell *)self face];
    v7 = [face defaultOptionForCustomEditMode:mode slot:slot];
  }

  face2 = [(NTKCFaceDetailEditOptionCell *)self face];
  [face2 selectOption:v7 forCustomEditMode:mode slot:slot];
}

- (id)optionAtIndex:(unint64_t)index
{
  collection = [(NTKCFaceDetailEditOptionCell *)self collection];
  options = [collection options];
  v7 = [options objectAtIndex:index];

  if ([v7 conformsToProtocol:&unk_28A87B948])
  {
    pigmentEditOption = [v7 pigmentEditOption];
    v9 = [(NTKPigmentEditOptionArray *)self->_editingModifiedColors pigmentForPigment:pigmentEditOption];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_setupFromCollection
{
  v10.receiver = self;
  v10.super_class = NTKCFaceDetailPigmentEditOptionCell;
  [(NTKCFaceDetailEditOptionCell *)&v10 _setupFromCollection];
  selectedOptions = [(NTKCFaceDetailEditOptionCell *)self selectedOptions];
  v4 = [selectedOptions objectForKeyedSubscript:&unk_284182EA8];

  if ([v4 conformsToProtocol:&unk_28A87B948])
  {
    pigmentEditOption = [v4 pigmentEditOption];
    [(NTKPigmentEditOptionArray *)self->_editingModifiedColors addPigment:pigmentEditOption];
    [(NTKPigmentEditOptionArray *)self->_previouslySelectedColors addPigment:pigmentEditOption];
  }

  collection = [(NTKCFaceDetailEditOptionCell *)self collection];
  selectedOptions2 = [(NTKCFaceDetailEditOptionCell *)self selectedOptions];
  v8 = [(NTKCFaceDetailPigmentEditOptionCell *)self _configurationFromCollection:collection selectedOptions:selectedOptions2];
  configuration = self->_configuration;
  self->_configuration = v8;
}

- (id)_configurationFromCollection:(id)collection selectedOptions:(id)options
{
  v44 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  optionsCopy = options;
  v28 = objc_opt_new();
  v30 = [optionsCopy objectForKeyedSubscript:&unk_284182EA8];
  v5 = v30;
  if ([v30 conformsToProtocol:&unk_28A87B948])
  {
    pigmentEditOption = [v30 pigmentEditOption];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __84__NTKCFaceDetailPigmentEditOptionCell__configurationFromCollection_selectedOptions___block_invoke;
    aBlock[3] = &unk_278782538;
    v26 = v28;
    v42 = v26;
    v7 = _Block_copy(aBlock);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    options = [collectionCopy options];
    v9 = 0;
    v10 = [options countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v10)
    {
      v11 = *v38;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(options);
          }

          v13 = *(*(&v37 + 1) + 8 * i);
          if ([v13 conformsToProtocol:&unk_28A87B948])
          {
            pigmentEditOption2 = [v13 pigmentEditOption];
            if ([pigmentEditOption2 isEqualIgnoringFraction:pigmentEditOption])
            {
              v7[2](v7, pigmentEditOption, 1);
              v9 = 1;
            }

            else
            {
              v15 = [(NTKPigmentEditOptionArray *)self->_previouslySelectedColors containsPigment:pigmentEditOption2];
              v16 = v7[2];
              if (v15)
              {
                v16(v7, pigmentEditOption2, 1);
              }

              else
              {
                v16(v7, pigmentEditOption2, 0);
              }
            }
          }
        }

        v10 = [options countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v10);
    }

    if (!((pigmentEditOption == 0) | v9 & 1))
    {
      v7[2](v7, pigmentEditOption, 1);
    }

    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    face = [(NTKCFaceDetailEditOptionCell *)self face];
    supportsPigmentUI = [face supportsPigmentUI];

    if (supportsPigmentUI)
    {
      face2 = [(NTKCFaceDetailEditOptionCell *)self face];
      pigmentOptionProvider = [face2 pigmentOptionProvider];
      collection = [(NTKCFaceDetailEditOptionCell *)self collection];
      slot = [collection slot];
      v23 = [pigmentOptionProvider availableColorsForSlot:slot];

      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __84__NTKCFaceDetailPigmentEditOptionCell__configurationFromCollection_selectedOptions___block_invoke_2;
      v32[3] = &unk_278782560;
      v32[4] = &v33;
      [v23 enumerateObjectsUsingBlock:v32];
    }

    [v26 setCanAddColors:*(v34 + 24)];
    v24 = v26;
    _Block_object_dispose(&v33, 8);

    v5 = v30;
  }

  return v28;
}

void __84__NTKCFaceDetailPigmentEditOptionCell__configurationFromCollection_selectedOptions___block_invoke(uint64_t a1, void *a2, int a3)
{
  v7 = a2;
  if (![v7 isAddable] || (objc_msgSend(v7, "isVisible") & 1) != 0 || a3)
  {
    v5 = [v7 supportsSlider];
    v6 = *(a1 + 32);
    if (v5)
    {
      [v6 addEditableColor:v7];
    }

    else
    {
      [v6 addNonEditableColor:v7];
    }
  }
}

uint64_t __84__NTKCFaceDetailPigmentEditOptionCell__configurationFromCollection_selectedOptions___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isAddable];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (int64_t)_editOptionIndexForIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  editableColors = [(NTKFaceEditColorPickerConfiguration *)self->_configuration editableColors];
  v7 = [editableColors count];

  configuration = self->_configuration;
  if (item >= v7)
  {
    hasSeparator = [(NTKFaceEditColorPickerConfiguration *)configuration hasSeparator];
    v13 = hasSeparator && item == v7;
    if (v13 || (item = item - v7 - hasSeparator, -[NTKFaceEditColorPickerConfiguration nonEditableColors](self->_configuration, "nonEditableColors"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 count], v14, item >= v15))
    {
      v11 = 0;
      goto LABEL_11;
    }

    nonEditableColors = [(NTKFaceEditColorPickerConfiguration *)self->_configuration nonEditableColors];
  }

  else
  {
    nonEditableColors = [(NTKFaceEditColorPickerConfiguration *)configuration editableColors];
  }

  v10 = nonEditableColors;
  v11 = [nonEditableColors objectAtIndexedSubscript:item];

LABEL_11:
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  collection = [(NTKCFaceDetailEditOptionCell *)self collection];
  options = [collection options];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __68__NTKCFaceDetailPigmentEditOptionCell__editOptionIndexForIndexPath___block_invoke;
  v21[3] = &unk_278782588;
  v18 = v11;
  v22 = v18;
  v23 = &v24;
  [options enumerateObjectsUsingBlock:v21];

  v19 = v25[3];
  _Block_object_dispose(&v24, 8);

  return v19;
}

void __68__NTKCFaceDetailPigmentEditOptionCell__editOptionIndexForIndexPath___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (![v7 conformsToProtocol:&unk_28A87B948])
  {
    v10 = [v7 isEqual:*(a1 + 32)];

    if (!v10)
    {
      return;
    }

    goto LABEL_5;
  }

  v8 = [v7 pigmentEditOption];

  v9 = [v8 isEqualIgnoringFraction:*(a1 + 32)];
  if (v9)
  {
LABEL_5:
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (id)_indexPathForEditOptionIndex:(int64_t)index
{
  collection = [(NTKCFaceDetailEditOptionCell *)self collection];
  options = [collection options];
  v7 = [options count];

  if (v7 <= index)
  {
    v10 = 0;
  }

  else
  {
    v8 = [(NTKCFaceDetailPigmentEditOptionCell *)self optionAtIndex:index];
    v9 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration indexOfColor:v8];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v11 = v9;
      editableColors = [(NTKFaceEditColorPickerConfiguration *)self->_configuration editableColors];
      v13 = [editableColors count];

      hasSeparator = [(NTKFaceEditColorPickerConfiguration *)self->_configuration hasSeparator];
      v15 = v11 >= v13 && hasSeparator;
      v10 = [MEMORY[0x277CCAA70] indexPathForItem:v11 + v15 inSection:0];
    }
  }

  return v10;
}

- (id)_imageForIndexPath:(id)path
{
  item = [path item];
  editableColors = [(NTKFaceEditColorPickerConfiguration *)self->_configuration editableColors];
  v6 = [editableColors count];

  configuration = self->_configuration;
  if (item < v6)
  {
    editableColors2 = [(NTKFaceEditColorPickerConfiguration *)configuration editableColors];
LABEL_3:
    v9 = editableColors2;
    v10 = [editableColors2 objectAtIndexedSubscript:item];

    v11 = [(NTKPigmentEditOptionArray *)self->_editingModifiedColors pigmentForPigment:v10];

    faceView = [(NTKCFaceDetailEditOptionCell *)self faceView];
    v13 = [faceView swatchImageForColorOption:v11];

    goto LABEL_13;
  }

  hasSeparator = [(NTKFaceEditColorPickerConfiguration *)configuration hasSeparator];
  if (hasSeparator && item == v6)
  {
    _dividerImage = [(NTKCFaceDetailPigmentEditOptionCell *)self _dividerImage];
  }

  else
  {
    item = item - v6 - hasSeparator;
    nonEditableColors = [(NTKFaceEditColorPickerConfiguration *)self->_configuration nonEditableColors];
    v17 = [nonEditableColors count];

    if (item < v17)
    {
      editableColors2 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration nonEditableColors];
      goto LABEL_3;
    }

    _dividerImage = [(NTKCFaceDetailPigmentEditOptionCell *)self _plusImage];
  }

  v13 = _dividerImage;
LABEL_13:

  return v13;
}

- (id)_dequeueCellForIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  editableColors = [(NTKFaceEditColorPickerConfiguration *)self->_configuration editableColors];
  v7 = [editableColors count];

  v8 = item <= v7;
  v9 = item - v7;
  if (v8)
  {
    [(NTKCFaceDetailEditOptionCell *)&v18 _dequeueCellForIndexPath:pathCopy, v17.receiver, v17.super_class, self, NTKCFaceDetailPigmentEditOptionCell];
    goto LABEL_5;
  }

  v10 = v9 - [(NTKFaceEditColorPickerConfiguration *)self->_configuration hasSeparator];
  nonEditableColors = [(NTKFaceEditColorPickerConfiguration *)self->_configuration nonEditableColors];
  v12 = [nonEditableColors count];

  if (v10 < v12)
  {
    [(NTKCFaceDetailEditOptionCell *)&v17 _dequeueCellForIndexPath:pathCopy, self, NTKCFaceDetailPigmentEditOptionCell, v18.receiver, v18.super_class];
    v13 = LABEL_5:;
    goto LABEL_7;
  }

  collectionView = [(NTKCFaceDetailEditOptionCell *)self collectionView];
  v15 = +[_NTKCFaceDetailPigmentAddCell reuseIdentifier];
  v13 = [collectionView dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:pathCopy];

  [(NTKCFaceDetailEditOptionCell *)self _setupCell:v13];
  [v13 setDelegate:self];
LABEL_7:

  return v13;
}

- (BOOL)_isReloadCollectionRequired:(id)required selectedOptions:(id)options
{
  selfCopy = self;
  v5 = [(NTKCFaceDetailPigmentEditOptionCell *)self _configurationFromCollection:required selectedOptions:options];
  LOBYTE(selfCopy) = [v5 isEqual:selfCopy->_configuration];

  return selfCopy ^ 1;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v5 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration numberOfColors:view];
  v6 = v5 + [(NTKFaceEditColorPickerConfiguration *)self->_configuration hasSeparator];
  return v6 + [(NTKFaceEditColorPickerConfiguration *)self->_configuration canAddColors];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(NTKCFaceDetailPigmentEditOptionCell *)self _dequeueCellForIndexPath:pathCopy];
  [v6 setStyle:0];
  editableColors = [(NTKFaceEditColorPickerConfiguration *)self->_configuration editableColors];
  v8 = [editableColors count];

  item = [pathCopy item];
  if ([(NTKFaceEditColorPickerConfiguration *)self->_configuration hasSeparator])
  {
    v10 = item == v8;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    [v6 setSwatchFrame:{self->_dividerSwatchRect.origin.x, self->_dividerSwatchRect.origin.y, self->_dividerSwatchRect.size.width, self->_dividerSwatchRect.size.height}];
  }

  return v6;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  numberOfColors = [(NTKFaceEditColorPickerConfiguration *)self->_configuration numberOfColors];
  v9 = numberOfColors + [(NTKFaceEditColorPickerConfiguration *)self->_configuration hasSeparator];
  if ([pathCopy item] != v9)
  {
    v10.receiver = self;
    v10.super_class = NTKCFaceDetailPigmentEditOptionCell;
    [(NTKCFaceDetailEditOptionCell *)&v10 collectionView:viewCopy didSelectItemAtIndexPath:pathCopy];
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  configuration = self->_configuration;
  pathCopy = path;
  editableColors = [(NTKFaceEditColorPickerConfiguration *)configuration editableColors];
  v9 = [editableColors count];

  item = [pathCopy item];
  if (v9)
  {
    v11 = item == v9;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    width = self->_dividerItemSize.width;
    height = self->_dividerItemSize.height;
  }

  else
  {
    layout = [(NTKCFaceDetailEditOptionCell *)self layout];
    [layout itemSize];
    width = v13;
    height = v15;
  }

  v17 = width;
  v18 = height;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)addCellTapped:(id)tapped
{
  delegate = [(NTKCFaceDetailEditOptionCell *)self delegate];
  [delegate pigmentEditOptionCellDidSelectAddOption:self];
}

- (id)_dividerImage
{
  dividerImage = self->_dividerImage;
  if (!dividerImage)
  {
    v4 = [objc_alloc(MEMORY[0x277D75560]) initWithBounds:{0.0, 0.0, 3.0, 42.0}];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__NTKCFaceDetailPigmentEditOptionCell__dividerImage__block_invoke;
    v8[3] = &__block_descriptor_64_e40_v16__0__UIGraphicsImageRendererContext_8l;
    v8[4] = 0;
    v8[5] = 0;
    v9 = xmmword_22DCE8880;
    v5 = [v4 imageWithActions:v8];
    v6 = self->_dividerImage;
    self->_dividerImage = v5;

    dividerImage = self->_dividerImage;
  }

  return dividerImage;
}

void __52__NTKCFaceDetailPigmentEditOptionCell__dividerImage__block_invoke(double *a1)
{
  v2 = [MEMORY[0x277D75348] colorWithWhite:0.949019608 alpha:1.0];
  [v2 setFill];

  v3 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:a1[4] cornerRadius:{a1[5], a1[6], a1[7], a1[6] * 0.5}];
  [v3 fill];
}

- (id)_plusImage
{
  plusImage = self->_plusImage;
  if (!plusImage)
  {
    v4 = [MEMORY[0x277D755D0] configurationWithPointSize:42.0];
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.circle.fill" withConfiguration:v4];
    v6 = [MEMORY[0x277D75348] colorWithWhite:0.596078431 alpha:1.0];
    v7 = [v5 imageWithTintColor:v6 renderingMode:1];

    [v7 contentInsets];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [v7 size];
    v17 = v16;
    v19 = v18;
    [v7 contentInsets];
    v24 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{v17 - (v20 + v21), v19 - (v22 + v23)}];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __49__NTKCFaceDetailPigmentEditOptionCell__plusImage__block_invoke;
    v29[3] = &unk_27877DB60;
    v31 = v9;
    v32 = v11;
    v33 = v13;
    v34 = v15;
    v30 = v7;
    v25 = v7;
    v26 = [v24 imageWithActions:v29];
    v27 = self->_plusImage;
    self->_plusImage = v26;

    plusImage = self->_plusImage;
  }

  return plusImage;
}

uint64_t __49__NTKCFaceDetailPigmentEditOptionCell__plusImage__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 format];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v13 = *(a1 + 40);
  v12 = *(a1 + 48);
  v14 = v5 - v12;
  v15 = v7 - v13;
  v16 = v9 - (-*(a1 + 64) - v12);
  v17 = v11 - (-*(a1 + 56) - v13);
  v18 = *(a1 + 32);

  return [v18 drawInRect:{v14, v15, v16, v17}];
}

@end