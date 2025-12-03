@interface NTKCFaceDetailEditOptionSectionController
- (BOOL)_canSelectRow:(int64_t)row;
- (BOOL)_hasActionRow;
- (NTKCFaceDetailEditOptionSectionController)initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery editOptionCollection:(id)collection faceView:(id)view;
- (NTKCFaceDetailEditOptionSectionDelegate)delegate;
- (NTKFaceView)faceView;
- (id)_initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery editOptionCollection:(id)collection faceView:(id)view;
- (id)optionAtIndex:(unint64_t)index;
- (void)_createActionRow;
- (void)_customizeActionRow:(id)row withEditOption:(id)option;
- (void)_refreshActionRowContent;
- (void)_updateSelectedOptions;
@end

@implementation NTKCFaceDetailEditOptionSectionController

- (NTKCFaceDetailEditOptionSectionController)initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery editOptionCollection:(id)collection faceView:(id)view
{
  galleryCopy = gallery;
  viewCopy = view;
  collectionCopy = collection;
  faceCopy = face;
  controllerCopy = controller;
  [collectionCopy collectionType];
  v16 = [objc_alloc(objc_opt_class()) initWithTableViewController:controllerCopy face:faceCopy inGallery:galleryCopy editOptionCollection:collectionCopy faceView:viewCopy];

  return v16;
}

- (id)_initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery editOptionCollection:(id)collection faceView:(id)view
{
  galleryCopy = gallery;
  collectionCopy = collection;
  viewCopy = view;
  v20.receiver = self;
  v20.super_class = NTKCFaceDetailEditOptionSectionController;
  v14 = [(NTKCFaceDetailSectionController *)&v20 initWithTableViewController:controller face:face inGallery:galleryCopy];
  v15 = v14;
  if (v14)
  {
    [(NTKCFaceDetailEditOptionSectionController *)v14 setCollection:collectionCopy];
    [(NTKCFaceDetailEditOptionSectionController *)v15 setFaceView:viewCopy];
    _newSectionHeader = [(NTKCFaceDetailSectionController *)v15 _newSectionHeader];
    [(NTKCFaceDetailSectionController *)v15 setHeaderView:_newSectionHeader];

    localizedName = [collectionCopy localizedName];
    headerView = [(NTKCFaceDetailSectionController *)v15 headerView];
    [headerView setTitle:localizedName];
  }

  return v15;
}

- (void)_updateSelectedOptions
{
  face = [(NTKCFaceDetailSectionController *)self face];
  selectedOptionsForCustomEditModes = [face selectedOptionsForCustomEditModes];
  v18 = [selectedOptionsForCustomEditModes mutableCopy];

  collection = [(NTKCFaceDetailEditOptionSectionController *)self collection];
  slot = [collection slot];
  if (slot)
  {
    v7 = slot;
    collection2 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
    mode = [collection2 mode];

    if (!mode)
    {
      goto LABEL_6;
    }

    face2 = [(NTKCFaceDetailSectionController *)self face];
    collection3 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
    mode2 = [collection3 mode];
    collection4 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
    slot2 = [collection4 slot];
    collection = [face2 selectedOptionForCustomEditMode:mode2 slot:slot2];

    if (collection)
    {
      v15 = MEMORY[0x277CCABB0];
      collection5 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
      v17 = [v15 numberWithInteger:{objc_msgSend(collection5, "mode")}];
      [v18 setObject:collection forKeyedSubscript:v17];
    }
  }

LABEL_6:
  [(NTKCFaceDetailEditOptionSectionController *)self setSelectedOptions:v18];
}

- (BOOL)_canSelectRow:(int64_t)row
{
  rows = [(NTKCFaceDetailSectionController *)self rows];
  v6 = [rows objectAtIndexedSubscript:row];
  LOBYTE(row) = v6 == self->_actionRow;

  return row;
}

- (id)optionAtIndex:(unint64_t)index
{
  collection = [(NTKCFaceDetailEditOptionSectionController *)self collection];
  options = [collection options];
  v6 = [options objectAtIndexedSubscript:index];

  return v6;
}

- (BOOL)_hasActionRow
{
  collection = [(NTKCFaceDetailEditOptionSectionController *)self collection];
  mode = [collection mode];

  selectedOptions = [(NTKCFaceDetailEditOptionSectionController *)self selectedOptions];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
  v7 = [selectedOptions objectForKeyedSubscript:v6];

  face = [(NTKCFaceDetailSectionController *)self face];
  v9 = objc_opt_class();
  face2 = [(NTKCFaceDetailSectionController *)self face];
  device = [face2 device];
  if ([v9 customEditMode:mode hasActionForOption:v7 forDevice:device])
  {
    v12 = [(NTKCFaceDetailEditOptionSectionController *)self _canDisplayActionRowForCustomEditMode:mode andOption:v7];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_createActionRow
{
  if (!self->_actionRow)
  {
    v3 = objc_alloc_init([(NTKCFaceDetailEditOptionSectionController *)self actionRowCellClass]);
    actionRow = self->_actionRow;
    self->_actionRow = v3;
  }

  [(NTKCFaceDetailEditOptionSectionController *)self _refreshActionRowContent];
}

- (void)_refreshActionRowContent
{
  selectedOptions = [(NTKCFaceDetailEditOptionSectionController *)self selectedOptions];
  v4 = MEMORY[0x277CCABB0];
  collection = [(NTKCFaceDetailEditOptionSectionController *)self collection];
  v6 = [v4 numberWithInteger:{objc_msgSend(collection, "mode")}];
  v7 = [selectedOptions objectForKeyedSubscript:v6];

  [(NTKCFaceDetailEditOptionSectionController *)self _customizeActionRow:self->_actionRow withEditOption:v7];
}

- (void)_customizeActionRow:(id)row withEditOption:(id)option
{
  rowCopy = row;
  optionCopy = option;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(NTKCFaceDetailEditOptionSectionController *)self _actionNameForOption:optionCopy];
    textLabel = [rowCopy textLabel];
    [textLabel setText:v7];
  }
}

- (NTKFaceView)faceView
{
  WeakRetained = objc_loadWeakRetained(&self->_faceView);

  return WeakRetained;
}

- (NTKCFaceDetailEditOptionSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end