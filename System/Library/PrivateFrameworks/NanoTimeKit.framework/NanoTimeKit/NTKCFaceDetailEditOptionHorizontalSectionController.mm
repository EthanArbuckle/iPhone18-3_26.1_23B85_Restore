@interface NTKCFaceDetailEditOptionHorizontalSectionController
- (BOOL)collectionChanged:(id)changed withSelectedOptions:(id)options;
- (NTKCFaceDetailEditOptionHorizontalSectionController)initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery editOptionCollection:(id)collection faceView:(id)view;
- (void)didSelectRow:(int64_t)row;
- (void)editOptionCell:(id)cell didSelectOptionAtIndex:(int64_t)index;
- (void)reloadActionRow;
- (void)setSelectedOptions:(id)options;
@end

@implementation NTKCFaceDetailEditOptionHorizontalSectionController

- (NTKCFaceDetailEditOptionHorizontalSectionController)initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery editOptionCollection:(id)collection faceView:(id)view
{
  galleryCopy = gallery;
  faceCopy = face;
  viewCopy = view;
  v24.receiver = self;
  v24.super_class = NTKCFaceDetailEditOptionHorizontalSectionController;
  v14 = [(NTKCFaceDetailEditOptionSectionController *)&v24 _initWithTableViewController:controller face:faceCopy inGallery:galleryCopy editOptionCollection:collection faceView:viewCopy];
  v15 = v14;
  if (v14)
  {
    v16 = objc_alloc([(NTKCFaceDetailEditOptionHorizontalSectionController *)v14 editCellClass]);
    collection = [(NTKCFaceDetailEditOptionSectionController *)v15 collection];
    v18 = [v16 initWithCollection:collection forFaceView:viewCopy face:faceCopy];
    [(NTKCFaceDetailSectionController *)v15 setCell:v18];

    cell = [(NTKCFaceDetailSectionController *)v15 cell];
    [cell setDelegate:v15];

    v20 = MEMORY[0x277CBEB18];
    cell2 = [(NTKCFaceDetailSectionController *)v15 cell];
    v22 = [v20 arrayWithObject:cell2];
    [(NTKCFaceDetailSectionController *)v15 setRows:v22];
  }

  return v15;
}

- (void)didSelectRow:(int64_t)row
{
  actionRow = [(NTKCFaceDetailEditOptionSectionController *)self actionRow];
  if (actionRow)
  {
    rows = [(NTKCFaceDetailSectionController *)self rows];
    actionRow2 = [(NTKCFaceDetailEditOptionSectionController *)self actionRow];
    v8 = [rows indexOfObject:actionRow2];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v8 == row)
  {
    v9 = row - 1;
    v10 = [(NTKCFaceDetailEditOptionSectionController *)self optionAtIndex:v9];
    v11 = [(NTKCFaceDetailEditOptionSectionController *)self _handleDidSelectActionRowForOption:v10];

    if (v11)
    {
      delegate = [(NTKCFaceDetailEditOptionSectionController *)self delegate];
      [delegate editOptionSection:self didSelectActionForOptionAtIndex:v9];
    }
  }
}

- (void)setSelectedOptions:(id)options
{
  optionsCopy = options;
  v19.receiver = self;
  v19.super_class = NTKCFaceDetailEditOptionHorizontalSectionController;
  [(NTKCFaceDetailEditOptionSectionController *)&v19 setSelectedOptions:optionsCopy];
  cell = [(NTKCFaceDetailSectionController *)self cell];
  [cell setSelectedOptions:optionsCopy];

  collection = [(NTKCFaceDetailEditOptionSectionController *)self collection];
  collectionType = [collection collectionType];

  if (collectionType == 1)
  {
    collection2 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
    slot = [collection2 slot];

    if (slot)
    {
      face = [(NTKCFaceDetailSectionController *)self face];
      collection3 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
      mode = [collection3 mode];
      collection4 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
      slot2 = [collection4 slot];
      v15 = [face selectedOptionForCustomEditMode:mode slot:slot2];
    }

    else
    {
      v16 = MEMORY[0x277CCABB0];
      face = [(NTKCFaceDetailEditOptionSectionController *)self collection];
      collection3 = [v16 numberWithInteger:{objc_msgSend(face, "mode")}];
      v15 = [optionsCopy objectForKeyedSubscript:collection3];
    }

    localizedName = [v15 localizedName];
    headerView = [(NTKCFaceDetailSectionController *)self headerView];
    [headerView setSubtitle:localizedName];
  }

  [(NTKCFaceDetailEditOptionHorizontalSectionController *)self reloadActionRow];
}

- (void)reloadActionRow
{
  v18[2] = *MEMORY[0x277D85DE8];
  actionRow = [(NTKCFaceDetailEditOptionSectionController *)self actionRow];
  _hasActionRow = [(NTKCFaceDetailEditOptionSectionController *)self _hasActionRow];
  if (!_hasActionRow)
  {
LABEL_5:
    if (!actionRow)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  if (!actionRow)
  {
    [(NTKCFaceDetailEditOptionSectionController *)self _createActionRow];
    actionRow = [(NTKCFaceDetailEditOptionSectionController *)self actionRow];
    goto LABEL_5;
  }

  [(NTKCFaceDetailEditOptionSectionController *)self _refreshActionRowContent];
LABEL_6:
  rows = [(NTKCFaceDetailSectionController *)self rows];
  v6 = [rows count];

  v7 = v6 == 1 || _hasActionRow;
  if ((v7 & 1) == 0)
  {
    rows2 = [(NTKCFaceDetailSectionController *)self rows];
    v15 = [rows2 indexOfObject:actionRow];

    rows3 = [(NTKCFaceDetailSectionController *)self rows];
    [rows3 removeObject:actionRow];

    [(NTKCFaceDetailSectionController *)self setHasSpacerRow:0];
    v10 = [MEMORY[0x277CCAA70] indexPathForRow:v15 inSection:{-[NTKCFaceDetailSectionController section](self, "section")}];
    v11 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v10 inSection:{"row") + 1, -[NTKCFaceDetailSectionController section](self, "section")}];
    tableView = [(NTKCFaceDetailSectionController *)self tableView];
    v18[0] = v10;
    v18[1] = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    [tableView deleteRowsAtIndexPaths:v13 withRowAnimation:100];
    goto LABEL_15;
  }

  v8 = !_hasActionRow;
  if (v6 != 1)
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    rows4 = [(NTKCFaceDetailSectionController *)self rows];
    [rows4 insertObject:actionRow atIndex:1];

    v10 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:{-[NTKCFaceDetailSectionController section](self, "section")}];
    v11 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v10 inSection:{"row") + 1, -[NTKCFaceDetailSectionController section](self, "section")}];
    [(NTKCFaceDetailSectionController *)self setHasSpacerRow:1];
    tableView = [(NTKCFaceDetailSectionController *)self tableView];
    v17[0] = v10;
    v17[1] = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    [tableView insertRowsAtIndexPaths:v13 withRowAnimation:100];
LABEL_15:
  }

LABEL_16:
}

- (BOOL)collectionChanged:(id)changed withSelectedOptions:(id)options
{
  optionsCopy = options;
  changedCopy = changed;
  [(NTKCFaceDetailEditOptionSectionController *)self setCollection:changedCopy];
  cell = [(NTKCFaceDetailSectionController *)self cell];
  v9 = [cell collectionChanged:changedCopy withSelectedOptions:optionsCopy];

  return v9;
}

- (void)editOptionCell:(id)cell didSelectOptionAtIndex:(int64_t)index
{
  delegate = [(NTKCFaceDetailEditOptionSectionController *)self delegate];
  [delegate editOptionSection:self didSelectOptionAtIndex:index];
}

@end