@interface NTKCFaceDetailPigmentEditOptionCell
- (BOOL)_isReloadCollectionRequired:(id)a3 selectedOptions:(id)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (NTKCFaceDetailPigmentEditOptionCell)initWithCollection:(id)a3 forFaceView:(id)a4 face:(id)a5;
- (id)_configurationFromCollection:(id)a3 selectedOptions:(id)a4;
- (id)_dequeueCellForIndexPath:(id)a3;
- (id)_dividerImage;
- (id)_imageForIndexPath:(id)a3;
- (id)_indexPathForEditOptionIndex:(int64_t)a3;
- (id)_plusImage;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)optionAtIndex:(unint64_t)a3;
- (int64_t)_editOptionIndexForIndexPath:(id)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_setupFromCollection;
- (void)addCellTapped:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)modifiedColor:(id)a3;
- (void)selectLastColor;
@end

@implementation NTKCFaceDetailPigmentEditOptionCell

- (NTKCFaceDetailPigmentEditOptionCell)initWithCollection:(id)a3 forFaceView:(id)a4 face:(id)a5
{
  v27.receiver = self;
  v27.super_class = NTKCFaceDetailPigmentEditOptionCell;
  v5 = [(NTKCFaceDetailEditOptionCell *)&v27 initWithCollection:a3 forFaceView:a4 face:a5];
  if (v5)
  {
    v6 = +[NTKPigmentEditOptionArray array];
    editingModifiedColors = v5->_editingModifiedColors;
    v5->_editingModifiedColors = v6;

    v8 = +[NTKPigmentEditOptionArray array];
    previouslySelectedColors = v5->_previouslySelectedColors;
    v5->_previouslySelectedColors = v8;

    v10 = [(NTKCFaceDetailEditOptionCell *)v5 layout];
    v11 = [(NTKCFaceDetailPigmentEditOptionCell *)v5 _dividerImage];
    [v11 size];
    v13 = v12;
    v15 = v14;

    [v10 itemSize];
    v17 = v16;
    v19 = v18;
    [(NTKCFaceDetailEditOptionCell *)v5 swatchFrame];
    v5->_dividerItemSize.width = v13 + v17 - v20;
    v5->_dividerItemSize.height = v19;
    v5->_dividerSwatchRect.origin.x = v21;
    v5->_dividerSwatchRect.origin.y = v22;
    v5->_dividerSwatchRect.size.width = v13;
    v5->_dividerSwatchRect.size.height = v15;
    v23 = [(NTKCFaceDetailEditOptionCell *)v5 collectionView];
    v24 = objc_opt_class();
    v25 = +[_NTKCFaceDetailPigmentAddCell reuseIdentifier];
    [v23 registerClass:v24 forCellWithReuseIdentifier:v25];
  }

  return v5;
}

- (void)modifiedColor:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  editingModifiedColors = self->_editingModifiedColors;
  v5 = a3;
  [(NTKPigmentEditOptionArray *)editingModifiedColors addPigment:v5];
  v6 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration indexOfColor:v5];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration editableColors];
    v8 = [v7 count];

    v9 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration hasSeparator];
    v10 = v6 >= v8 && v9;
    v11 = [MEMORY[0x277CCAA70] indexPathForItem:v6 + v10 inSection:0];
    if (v11)
    {
      v12 = v11;
      v13 = [(NTKCFaceDetailEditOptionCell *)self collectionView];
      v15[0] = v12;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
      [v13 reloadItemsAtIndexPaths:v14];
    }
  }
}

- (void)selectLastColor
{
  v3 = [(NTKCFaceDetailEditOptionCell *)self collection];
  v4 = [v3 mode];

  v5 = [(NTKCFaceDetailEditOptionCell *)self collection];
  v10 = [v5 slot];

  v6 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration numberOfColors];
  if (v6)
  {
    v7 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration colorAtIndex:v6 - 1];
  }

  else
  {
    v8 = [(NTKCFaceDetailEditOptionCell *)self face];
    v7 = [v8 defaultOptionForCustomEditMode:v4 slot:v10];
  }

  v9 = [(NTKCFaceDetailEditOptionCell *)self face];
  [v9 selectOption:v7 forCustomEditMode:v4 slot:v10];
}

- (id)optionAtIndex:(unint64_t)a3
{
  v5 = [(NTKCFaceDetailEditOptionCell *)self collection];
  v6 = [v5 options];
  v7 = [v6 objectAtIndex:a3];

  if ([v7 conformsToProtocol:&unk_28A87B948])
  {
    v8 = [v7 pigmentEditOption];
    v9 = [(NTKPigmentEditOptionArray *)self->_editingModifiedColors pigmentForPigment:v8];
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
  v3 = [(NTKCFaceDetailEditOptionCell *)self selectedOptions];
  v4 = [v3 objectForKeyedSubscript:&unk_284182EA8];

  if ([v4 conformsToProtocol:&unk_28A87B948])
  {
    v5 = [v4 pigmentEditOption];
    [(NTKPigmentEditOptionArray *)self->_editingModifiedColors addPigment:v5];
    [(NTKPigmentEditOptionArray *)self->_previouslySelectedColors addPigment:v5];
  }

  v6 = [(NTKCFaceDetailEditOptionCell *)self collection];
  v7 = [(NTKCFaceDetailEditOptionCell *)self selectedOptions];
  v8 = [(NTKCFaceDetailPigmentEditOptionCell *)self _configurationFromCollection:v6 selectedOptions:v7];
  configuration = self->_configuration;
  self->_configuration = v8;
}

- (id)_configurationFromCollection:(id)a3 selectedOptions:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v27 = a4;
  v28 = objc_opt_new();
  v30 = [v27 objectForKeyedSubscript:&unk_284182EA8];
  v5 = v30;
  if ([v30 conformsToProtocol:&unk_28A87B948])
  {
    v6 = [v30 pigmentEditOption];
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
    v8 = [v29 options];
    v9 = 0;
    v10 = [v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v10)
    {
      v11 = *v38;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v37 + 1) + 8 * i);
          if ([v13 conformsToProtocol:&unk_28A87B948])
          {
            v14 = [v13 pigmentEditOption];
            if ([v14 isEqualIgnoringFraction:v6])
            {
              v7[2](v7, v6, 1);
              v9 = 1;
            }

            else
            {
              v15 = [(NTKPigmentEditOptionArray *)self->_previouslySelectedColors containsPigment:v14];
              v16 = v7[2];
              if (v15)
              {
                v16(v7, v14, 1);
              }

              else
              {
                v16(v7, v14, 0);
              }
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v10);
    }

    if (!((v6 == 0) | v9 & 1))
    {
      v7[2](v7, v6, 1);
    }

    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v17 = [(NTKCFaceDetailEditOptionCell *)self face];
    v18 = [v17 supportsPigmentUI];

    if (v18)
    {
      v19 = [(NTKCFaceDetailEditOptionCell *)self face];
      v20 = [v19 pigmentOptionProvider];
      v21 = [(NTKCFaceDetailEditOptionCell *)self collection];
      v22 = [v21 slot];
      v23 = [v20 availableColorsForSlot:v22];

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

- (int64_t)_editOptionIndexForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  v6 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration editableColors];
  v7 = [v6 count];

  configuration = self->_configuration;
  if (v5 >= v7)
  {
    v12 = [(NTKFaceEditColorPickerConfiguration *)configuration hasSeparator];
    v13 = v12 && v5 == v7;
    if (v13 || (v5 = v5 - v7 - v12, -[NTKFaceEditColorPickerConfiguration nonEditableColors](self->_configuration, "nonEditableColors"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 count], v14, v5 >= v15))
    {
      v11 = 0;
      goto LABEL_11;
    }

    v9 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration nonEditableColors];
  }

  else
  {
    v9 = [(NTKFaceEditColorPickerConfiguration *)configuration editableColors];
  }

  v10 = v9;
  v11 = [v9 objectAtIndexedSubscript:v5];

LABEL_11:
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  v16 = [(NTKCFaceDetailEditOptionCell *)self collection];
  v17 = [v16 options];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __68__NTKCFaceDetailPigmentEditOptionCell__editOptionIndexForIndexPath___block_invoke;
  v21[3] = &unk_278782588;
  v18 = v11;
  v22 = v18;
  v23 = &v24;
  [v17 enumerateObjectsUsingBlock:v21];

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

- (id)_indexPathForEditOptionIndex:(int64_t)a3
{
  v5 = [(NTKCFaceDetailEditOptionCell *)self collection];
  v6 = [v5 options];
  v7 = [v6 count];

  if (v7 <= a3)
  {
    v10 = 0;
  }

  else
  {
    v8 = [(NTKCFaceDetailPigmentEditOptionCell *)self optionAtIndex:a3];
    v9 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration indexOfColor:v8];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v11 = v9;
      v12 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration editableColors];
      v13 = [v12 count];

      v14 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration hasSeparator];
      v15 = v11 >= v13 && v14;
      v10 = [MEMORY[0x277CCAA70] indexPathForItem:v11 + v15 inSection:0];
    }
  }

  return v10;
}

- (id)_imageForIndexPath:(id)a3
{
  v4 = [a3 item];
  v5 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration editableColors];
  v6 = [v5 count];

  configuration = self->_configuration;
  if (v4 < v6)
  {
    v8 = [(NTKFaceEditColorPickerConfiguration *)configuration editableColors];
LABEL_3:
    v9 = v8;
    v10 = [v8 objectAtIndexedSubscript:v4];

    v11 = [(NTKPigmentEditOptionArray *)self->_editingModifiedColors pigmentForPigment:v10];

    v12 = [(NTKCFaceDetailEditOptionCell *)self faceView];
    v13 = [v12 swatchImageForColorOption:v11];

    goto LABEL_13;
  }

  v14 = [(NTKFaceEditColorPickerConfiguration *)configuration hasSeparator];
  if (v14 && v4 == v6)
  {
    v18 = [(NTKCFaceDetailPigmentEditOptionCell *)self _dividerImage];
  }

  else
  {
    v4 = v4 - v6 - v14;
    v16 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration nonEditableColors];
    v17 = [v16 count];

    if (v4 < v17)
    {
      v8 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration nonEditableColors];
      goto LABEL_3;
    }

    v18 = [(NTKCFaceDetailPigmentEditOptionCell *)self _plusImage];
  }

  v13 = v18;
LABEL_13:

  return v13;
}

- (id)_dequeueCellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  v6 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration editableColors];
  v7 = [v6 count];

  v8 = v5 <= v7;
  v9 = v5 - v7;
  if (v8)
  {
    [(NTKCFaceDetailEditOptionCell *)&v18 _dequeueCellForIndexPath:v4, v17.receiver, v17.super_class, self, NTKCFaceDetailPigmentEditOptionCell];
    goto LABEL_5;
  }

  v10 = v9 - [(NTKFaceEditColorPickerConfiguration *)self->_configuration hasSeparator];
  v11 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration nonEditableColors];
  v12 = [v11 count];

  if (v10 < v12)
  {
    [(NTKCFaceDetailEditOptionCell *)&v17 _dequeueCellForIndexPath:v4, self, NTKCFaceDetailPigmentEditOptionCell, v18.receiver, v18.super_class];
    v13 = LABEL_5:;
    goto LABEL_7;
  }

  v14 = [(NTKCFaceDetailEditOptionCell *)self collectionView];
  v15 = +[_NTKCFaceDetailPigmentAddCell reuseIdentifier];
  v13 = [v14 dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:v4];

  [(NTKCFaceDetailEditOptionCell *)self _setupCell:v13];
  [v13 setDelegate:self];
LABEL_7:

  return v13;
}

- (BOOL)_isReloadCollectionRequired:(id)a3 selectedOptions:(id)a4
{
  v4 = self;
  v5 = [(NTKCFaceDetailPigmentEditOptionCell *)self _configurationFromCollection:a3 selectedOptions:a4];
  LOBYTE(v4) = [v5 isEqual:v4->_configuration];

  return v4 ^ 1;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration numberOfColors:a3];
  v6 = v5 + [(NTKFaceEditColorPickerConfiguration *)self->_configuration hasSeparator];
  return v6 + [(NTKFaceEditColorPickerConfiguration *)self->_configuration canAddColors];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(NTKCFaceDetailPigmentEditOptionCell *)self _dequeueCellForIndexPath:v5];
  [v6 setStyle:0];
  v7 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration editableColors];
  v8 = [v7 count];

  v9 = [v5 item];
  if ([(NTKFaceEditColorPickerConfiguration *)self->_configuration hasSeparator])
  {
    v10 = v9 == v8;
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

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NTKFaceEditColorPickerConfiguration *)self->_configuration numberOfColors];
  v9 = v8 + [(NTKFaceEditColorPickerConfiguration *)self->_configuration hasSeparator];
  if ([v7 item] != v9)
  {
    v10.receiver = self;
    v10.super_class = NTKCFaceDetailPigmentEditOptionCell;
    [(NTKCFaceDetailEditOptionCell *)&v10 collectionView:v6 didSelectItemAtIndexPath:v7];
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  configuration = self->_configuration;
  v7 = a5;
  v8 = [(NTKFaceEditColorPickerConfiguration *)configuration editableColors];
  v9 = [v8 count];

  v10 = [v7 item];
  if (v9)
  {
    v11 = v10 == v9;
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
    v12 = [(NTKCFaceDetailEditOptionCell *)self layout];
    [v12 itemSize];
    width = v13;
    height = v15;
  }

  v17 = width;
  v18 = height;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)addCellTapped:(id)a3
{
  v4 = [(NTKCFaceDetailEditOptionCell *)self delegate];
  [v4 pigmentEditOptionCellDidSelectAddOption:self];
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