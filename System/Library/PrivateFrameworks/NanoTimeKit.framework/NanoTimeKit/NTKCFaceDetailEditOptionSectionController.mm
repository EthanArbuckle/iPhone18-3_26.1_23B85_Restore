@interface NTKCFaceDetailEditOptionSectionController
- (BOOL)_canSelectRow:(int64_t)a3;
- (BOOL)_hasActionRow;
- (NTKCFaceDetailEditOptionSectionController)initWithTableViewController:(id)a3 face:(id)a4 inGallery:(BOOL)a5 editOptionCollection:(id)a6 faceView:(id)a7;
- (NTKCFaceDetailEditOptionSectionDelegate)delegate;
- (NTKFaceView)faceView;
- (id)_initWithTableViewController:(id)a3 face:(id)a4 inGallery:(BOOL)a5 editOptionCollection:(id)a6 faceView:(id)a7;
- (id)optionAtIndex:(unint64_t)a3;
- (void)_createActionRow;
- (void)_customizeActionRow:(id)a3 withEditOption:(id)a4;
- (void)_refreshActionRowContent;
- (void)_updateSelectedOptions;
@end

@implementation NTKCFaceDetailEditOptionSectionController

- (NTKCFaceDetailEditOptionSectionController)initWithTableViewController:(id)a3 face:(id)a4 inGallery:(BOOL)a5 editOptionCollection:(id)a6 faceView:(id)a7
{
  v8 = a5;
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  [v13 collectionType];
  v16 = [objc_alloc(objc_opt_class()) initWithTableViewController:v15 face:v14 inGallery:v8 editOptionCollection:v13 faceView:v12];

  return v16;
}

- (id)_initWithTableViewController:(id)a3 face:(id)a4 inGallery:(BOOL)a5 editOptionCollection:(id)a6 faceView:(id)a7
{
  v8 = a5;
  v12 = a6;
  v13 = a7;
  v20.receiver = self;
  v20.super_class = NTKCFaceDetailEditOptionSectionController;
  v14 = [(NTKCFaceDetailSectionController *)&v20 initWithTableViewController:a3 face:a4 inGallery:v8];
  v15 = v14;
  if (v14)
  {
    [(NTKCFaceDetailEditOptionSectionController *)v14 setCollection:v12];
    [(NTKCFaceDetailEditOptionSectionController *)v15 setFaceView:v13];
    v16 = [(NTKCFaceDetailSectionController *)v15 _newSectionHeader];
    [(NTKCFaceDetailSectionController *)v15 setHeaderView:v16];

    v17 = [v12 localizedName];
    v18 = [(NTKCFaceDetailSectionController *)v15 headerView];
    [v18 setTitle:v17];
  }

  return v15;
}

- (void)_updateSelectedOptions
{
  v3 = [(NTKCFaceDetailSectionController *)self face];
  v4 = [v3 selectedOptionsForCustomEditModes];
  v18 = [v4 mutableCopy];

  v5 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
  v6 = [v5 slot];
  if (v6)
  {
    v7 = v6;
    v8 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
    v9 = [v8 mode];

    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = [(NTKCFaceDetailSectionController *)self face];
    v11 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
    v12 = [v11 mode];
    v13 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
    v14 = [v13 slot];
    v5 = [v10 selectedOptionForCustomEditMode:v12 slot:v14];

    if (v5)
    {
      v15 = MEMORY[0x277CCABB0];
      v16 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
      v17 = [v15 numberWithInteger:{objc_msgSend(v16, "mode")}];
      [v18 setObject:v5 forKeyedSubscript:v17];
    }
  }

LABEL_6:
  [(NTKCFaceDetailEditOptionSectionController *)self setSelectedOptions:v18];
}

- (BOOL)_canSelectRow:(int64_t)a3
{
  v5 = [(NTKCFaceDetailSectionController *)self rows];
  v6 = [v5 objectAtIndexedSubscript:a3];
  LOBYTE(a3) = v6 == self->_actionRow;

  return a3;
}

- (id)optionAtIndex:(unint64_t)a3
{
  v4 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
  v5 = [v4 options];
  v6 = [v5 objectAtIndexedSubscript:a3];

  return v6;
}

- (BOOL)_hasActionRow
{
  v3 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
  v4 = [v3 mode];

  v5 = [(NTKCFaceDetailEditOptionSectionController *)self selectedOptions];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [(NTKCFaceDetailSectionController *)self face];
  v9 = objc_opt_class();
  v10 = [(NTKCFaceDetailSectionController *)self face];
  v11 = [v10 device];
  if ([v9 customEditMode:v4 hasActionForOption:v7 forDevice:v11])
  {
    v12 = [(NTKCFaceDetailEditOptionSectionController *)self _canDisplayActionRowForCustomEditMode:v4 andOption:v7];
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
  v3 = [(NTKCFaceDetailEditOptionSectionController *)self selectedOptions];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "mode")}];
  v7 = [v3 objectForKeyedSubscript:v6];

  [(NTKCFaceDetailEditOptionSectionController *)self _customizeActionRow:self->_actionRow withEditOption:v7];
}

- (void)_customizeActionRow:(id)a3 withEditOption:(id)a4
{
  v9 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(NTKCFaceDetailEditOptionSectionController *)self _actionNameForOption:v6];
    v8 = [v9 textLabel];
    [v8 setText:v7];
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