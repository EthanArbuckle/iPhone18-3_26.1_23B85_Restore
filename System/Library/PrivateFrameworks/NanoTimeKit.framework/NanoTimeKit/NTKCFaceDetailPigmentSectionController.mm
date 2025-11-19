@interface NTKCFaceDetailPigmentSectionController
+ (BOOL)hasSectionForFace:(id)a3 forEditMode:(int64_t)a4;
- (BOOL)_hasActionRow;
- (NTKCFaceDetailPigmentSectionController)initWithTableViewController:(id)a3 face:(id)a4 inGallery:(BOOL)a5 editOptionCollection:(id)a6 faceView:(id)a7;
- (UIViewController)parentViewController;
- (id)optionAtIndex:(unint64_t)a3;
- (void)_customizeActionRow:(id)a3 withEditOption:(id)a4;
- (void)_presentPigmentPickerForSlot:(id)a3;
- (void)pigmentColorSliderCell:(id)a3 colorFractionChanged:(double)a4 transiently:(BOOL)a5 canceled:(BOOL)a6;
- (void)pigmentEditOptionCellDidSelectAddOption:(id)a3;
@end

@implementation NTKCFaceDetailPigmentSectionController

+ (BOOL)hasSectionForFace:(id)a3 forEditMode:(int64_t)a4
{
  result = [a3 supportsPigmentUI];
  if (a4 != 10)
  {
    return 0;
  }

  return result;
}

- (NTKCFaceDetailPigmentSectionController)initWithTableViewController:(id)a3 face:(id)a4 inGallery:(BOOL)a5 editOptionCollection:(id)a6 faceView:(id)a7
{
  v8 = a5;
  v12 = a7;
  v18.receiver = self;
  v18.super_class = NTKCFaceDetailPigmentSectionController;
  v13 = [(NTKCFaceDetailEditOptionHorizontalSectionController *)&v18 initWithTableViewController:a3 face:a4 inGallery:v8 editOptionCollection:a6 faceView:v12];
  if (v13)
  {
    v14 = [v12 faceColorPalette];
    v15 = [v14 copy];
    palette = v13->_palette;
    v13->_palette = v15;
  }

  return v13;
}

- (id)optionAtIndex:(unint64_t)a3
{
  v4 = [(NTKCFaceDetailSectionController *)self cell];
  v5 = [v4 optionAtIndex:a3];

  return v5;
}

- (BOOL)_hasActionRow
{
  v3 = [(NTKCFaceDetailSectionController *)self face];
  v4 = [v3 selectedSlotForEditMode:10];

  v5 = [(NTKCFaceDetailEditOptionSectionController *)self faceView];
  v6 = [v5 allowsEditingSliderEditableColorsForSlot:v4];

  if (v6)
  {
    v7 = [(NTKCFaceDetailEditOptionSectionController *)self selectedOptions];
    v8 = [v7 objectForKeyedSubscript:&unk_284182B00];

    if ([v8 conformsToProtocol:&unk_28A87B948])
    {
      v9 = [v8 pigmentEditOption];
      v10 = [v9 supportsSlider];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_customizeActionRow:(id)a3 withEditOption:(id)a4
{
  v13[3] = *MEMORY[0x277D85DE8];
  if (!self->_suppressActionRowUpdates)
  {
    v5 = a3;
    v6 = [(NTKCFaceDetailEditOptionSectionController *)self selectedOptions];
    v7 = [v6 objectForKeyedSubscript:&unk_284182B00];

    v8 = [[NTKFaceColorPaletteConfiguration alloc] initWithPigmentEditOption:v7];
    [(NTKFaceColorPalette *)self->_palette setConfiguration:v8];
    v9 = [(NTKFaceColorPalette *)self->_palette primaryColorWithFraction:0.0];
    v10 = [(NTKFaceColorPalette *)self->_palette primaryColorWithFraction:0.5];
    v11 = [(NTKFaceColorPalette *)self->_palette primaryColorWithFraction:1.0];
    v13[0] = v9;
    v13[1] = v10;
    v13[2] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
    [v5 setColors:v12 animated:1];

    [v7 colorFraction];
    [v5 setColorFraction:1 animated:?];
    [v5 setDelegate:self];
  }
}

- (void)pigmentEditOptionCellDidSelectAddOption:(id)a3
{
  v5 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
  v4 = [v5 slot];
  [(NTKCFaceDetailPigmentSectionController *)self _presentPigmentPickerForSlot:v4];
}

- (void)pigmentColorSliderCell:(id)a3 colorFractionChanged:(double)a4 transiently:(BOOL)a5 canceled:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  self->_suppressActionRowUpdates = 1;
  v10 = [(NTKCFaceDetailEditOptionSectionController *)self selectedOptions];
  v15 = [v10 objectForKeyedSubscript:&unk_284182B00];

  if (v6)
  {
    v11 = v15;
  }

  else
  {
    v11 = [v15 copyWithColorFraction:a4];
  }

  v12 = v11;
  v13 = [(NTKCFaceDetailSectionController *)self cell];
  [v13 modifiedColor:v12];
  v14 = [(NTKCFaceDetailEditOptionSectionController *)self delegate];
  [v14 editOptionSection:self didModifyEditOption:v12 transiently:v7 canceled:v6];

  self->_suppressActionRowUpdates = 0;
}

- (void)_presentPigmentPickerForSlot:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [NTKPigmentAddController alloc];
  v6 = [(NTKCFaceDetailSectionController *)self face];
  v7 = [(NTKCFaceDetailEditOptionSectionController *)self faceView];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__NTKCFaceDetailPigmentSectionController__presentPigmentPickerForSlot___block_invoke;
  v10[3] = &unk_2787811E0;
  objc_copyWeak(&v11, &location);
  v10[4] = self;
  v8 = [(NTKPigmentAddController *)v5 initWithFace:v6 faceView:v7 slot:v4 willExitHandler:v10];

  v9 = [(NTKCFaceDetailPigmentSectionController *)self parentViewController];
  [v9 presentViewController:v8 animated:1 completion:0];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __71__NTKCFaceDetailPigmentSectionController__presentPigmentPickerForSlot___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v5 = [WeakRetained face];
    [v5 _handleColorEditOptionsChanged];

    WeakRetained = v7;
    if (a2)
    {
      v6 = [*(a1 + 32) cell];
      [v6 selectLastColor];

      WeakRetained = v7;
    }
  }
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end