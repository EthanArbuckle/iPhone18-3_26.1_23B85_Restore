@interface NTKCFaceDetailPigmentSectionController
+ (BOOL)hasSectionForFace:(id)face forEditMode:(int64_t)mode;
- (BOOL)_hasActionRow;
- (NTKCFaceDetailPigmentSectionController)initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery editOptionCollection:(id)collection faceView:(id)view;
- (UIViewController)parentViewController;
- (id)optionAtIndex:(unint64_t)index;
- (void)_customizeActionRow:(id)row withEditOption:(id)option;
- (void)_presentPigmentPickerForSlot:(id)slot;
- (void)pigmentColorSliderCell:(id)cell colorFractionChanged:(double)changed transiently:(BOOL)transiently canceled:(BOOL)canceled;
- (void)pigmentEditOptionCellDidSelectAddOption:(id)option;
@end

@implementation NTKCFaceDetailPigmentSectionController

+ (BOOL)hasSectionForFace:(id)face forEditMode:(int64_t)mode
{
  result = [face supportsPigmentUI];
  if (mode != 10)
  {
    return 0;
  }

  return result;
}

- (NTKCFaceDetailPigmentSectionController)initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery editOptionCollection:(id)collection faceView:(id)view
{
  galleryCopy = gallery;
  viewCopy = view;
  v18.receiver = self;
  v18.super_class = NTKCFaceDetailPigmentSectionController;
  v13 = [(NTKCFaceDetailEditOptionHorizontalSectionController *)&v18 initWithTableViewController:controller face:face inGallery:galleryCopy editOptionCollection:collection faceView:viewCopy];
  if (v13)
  {
    faceColorPalette = [viewCopy faceColorPalette];
    v15 = [faceColorPalette copy];
    palette = v13->_palette;
    v13->_palette = v15;
  }

  return v13;
}

- (id)optionAtIndex:(unint64_t)index
{
  cell = [(NTKCFaceDetailSectionController *)self cell];
  v5 = [cell optionAtIndex:index];

  return v5;
}

- (BOOL)_hasActionRow
{
  face = [(NTKCFaceDetailSectionController *)self face];
  v4 = [face selectedSlotForEditMode:10];

  faceView = [(NTKCFaceDetailEditOptionSectionController *)self faceView];
  v6 = [faceView allowsEditingSliderEditableColorsForSlot:v4];

  if (v6)
  {
    selectedOptions = [(NTKCFaceDetailEditOptionSectionController *)self selectedOptions];
    v8 = [selectedOptions objectForKeyedSubscript:&unk_284182B00];

    if ([v8 conformsToProtocol:&unk_28A87B948])
    {
      pigmentEditOption = [v8 pigmentEditOption];
      supportsSlider = [pigmentEditOption supportsSlider];
    }

    else
    {
      supportsSlider = 0;
    }
  }

  else
  {
    supportsSlider = 0;
  }

  return supportsSlider;
}

- (void)_customizeActionRow:(id)row withEditOption:(id)option
{
  v13[3] = *MEMORY[0x277D85DE8];
  if (!self->_suppressActionRowUpdates)
  {
    rowCopy = row;
    selectedOptions = [(NTKCFaceDetailEditOptionSectionController *)self selectedOptions];
    v7 = [selectedOptions objectForKeyedSubscript:&unk_284182B00];

    v8 = [[NTKFaceColorPaletteConfiguration alloc] initWithPigmentEditOption:v7];
    [(NTKFaceColorPalette *)self->_palette setConfiguration:v8];
    v9 = [(NTKFaceColorPalette *)self->_palette primaryColorWithFraction:0.0];
    v10 = [(NTKFaceColorPalette *)self->_palette primaryColorWithFraction:0.5];
    v11 = [(NTKFaceColorPalette *)self->_palette primaryColorWithFraction:1.0];
    v13[0] = v9;
    v13[1] = v10;
    v13[2] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
    [rowCopy setColors:v12 animated:1];

    [v7 colorFraction];
    [rowCopy setColorFraction:1 animated:?];
    [rowCopy setDelegate:self];
  }
}

- (void)pigmentEditOptionCellDidSelectAddOption:(id)option
{
  collection = [(NTKCFaceDetailEditOptionSectionController *)self collection];
  slot = [collection slot];
  [(NTKCFaceDetailPigmentSectionController *)self _presentPigmentPickerForSlot:slot];
}

- (void)pigmentColorSliderCell:(id)cell colorFractionChanged:(double)changed transiently:(BOOL)transiently canceled:(BOOL)canceled
{
  canceledCopy = canceled;
  transientlyCopy = transiently;
  self->_suppressActionRowUpdates = 1;
  selectedOptions = [(NTKCFaceDetailEditOptionSectionController *)self selectedOptions];
  v15 = [selectedOptions objectForKeyedSubscript:&unk_284182B00];

  if (canceledCopy)
  {
    v11 = v15;
  }

  else
  {
    v11 = [v15 copyWithColorFraction:changed];
  }

  v12 = v11;
  cell = [(NTKCFaceDetailSectionController *)self cell];
  [cell modifiedColor:v12];
  delegate = [(NTKCFaceDetailEditOptionSectionController *)self delegate];
  [delegate editOptionSection:self didModifyEditOption:v12 transiently:transientlyCopy canceled:canceledCopy];

  self->_suppressActionRowUpdates = 0;
}

- (void)_presentPigmentPickerForSlot:(id)slot
{
  slotCopy = slot;
  objc_initWeak(&location, self);
  v5 = [NTKPigmentAddController alloc];
  face = [(NTKCFaceDetailSectionController *)self face];
  faceView = [(NTKCFaceDetailEditOptionSectionController *)self faceView];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__NTKCFaceDetailPigmentSectionController__presentPigmentPickerForSlot___block_invoke;
  v10[3] = &unk_2787811E0;
  objc_copyWeak(&v11, &location);
  v10[4] = self;
  v8 = [(NTKPigmentAddController *)v5 initWithFace:face faceView:faceView slot:slotCopy willExitHandler:v10];

  parentViewController = [(NTKCFaceDetailPigmentSectionController *)self parentViewController];
  [parentViewController presentViewController:v8 animated:1 completion:0];

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