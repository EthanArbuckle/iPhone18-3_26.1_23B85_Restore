@interface NTKCFaceDetailEditOptionVerticalSectionController
- (BOOL)collectionChanged:(id)changed withSelectedOptions:(id)options;
- (NTKCFaceDetailEditOptionVerticalSectionController)initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery editOptionCollection:(id)collection faceView:(id)view;
- (double)heightForRow:(int64_t)row;
- (id)cellForEditOption:(id)option;
- (id)cellForRow:(int64_t)row;
- (int64_t)numberOfRows;
- (void)_setupWithCollection:(id)collection;
- (void)didSelectRow:(int64_t)row;
- (void)reloadActionRow;
- (void)setFooter:(id)footer;
- (void)setSelectedOptions:(id)options;
@end

@implementation NTKCFaceDetailEditOptionVerticalSectionController

- (NTKCFaceDetailEditOptionVerticalSectionController)initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery editOptionCollection:(id)collection faceView:(id)view
{
  v10.receiver = self;
  v10.super_class = NTKCFaceDetailEditOptionVerticalSectionController;
  v7 = [(NTKCFaceDetailEditOptionSectionController *)&v10 _initWithTableViewController:controller face:face inGallery:gallery editOptionCollection:collection faceView:view];
  v8 = v7;
  if (v7)
  {
    [(NTKCFaceDetailEditOptionVerticalSectionController *)v7 _setupWithCollection:0];
  }

  return v8;
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

    if (!v11)
    {
      return;
    }

    delegate = [(NTKCFaceDetailEditOptionSectionController *)self delegate];
    [delegate editOptionSection:self didSelectActionForOptionAtIndex:v9];
    goto LABEL_16;
  }

  rows2 = [(NTKCFaceDetailSectionController *)self rows];
  v13 = [rows2 objectAtIndexedSubscript:row];
  active = [v13 active];

  if ((active & 1) == 0)
  {
    v15 = v8 == 0x7FFFFFFFFFFFFFFFLL || v8 >= row;
    v16 = !v15;
    v17 = row - v16;
    v18 = [(NTKCFaceDetailEditOptionSectionController *)self optionAtIndex:v17];
    v19 = [(NTKCFaceDetailEditOptionSectionController *)self _handleDidSelectOption:v18];

    if (v19)
    {
      delegate = [(NTKCFaceDetailEditOptionSectionController *)self delegate];
      [delegate editOptionSection:self didSelectOptionAtIndex:v17];
LABEL_16:
    }
  }
}

- (void)setSelectedOptions:(id)options
{
  v4.receiver = self;
  v4.super_class = NTKCFaceDetailEditOptionVerticalSectionController;
  [(NTKCFaceDetailEditOptionSectionController *)&v4 setSelectedOptions:options];
  [(NTKCFaceDetailEditOptionVerticalSectionController *)self reloadActionRow];
}

- (void)reloadActionRow
{
  v51[1] = *MEMORY[0x277D85DE8];
  collection = [(NTKCFaceDetailEditOptionSectionController *)self collection];
  mode = [collection mode];

  selectedOptions = [(NTKCFaceDetailEditOptionSectionController *)self selectedOptions];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
  v7 = [selectedOptions objectForKeyedSubscript:v6];

  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0x7FFFFFFFFFFFFFFFLL;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0x7FFFFFFFFFFFFFFFLL;
  rows = [(NTKCFaceDetailSectionController *)self rows];
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __68__NTKCFaceDetailEditOptionVerticalSectionController_reloadActionRow__block_invoke;
  v36 = &unk_278781CF0;
  selfCopy = self;
  v39 = &v46;
  v9 = v7;
  v40 = &v42;
  v41 = mode;
  v38 = v9;
  [rows enumerateObjectsUsingBlock:&v33];

  v10 = v47[3];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL && v43[3] != v10)
  {
    v11 = [(NTKCFaceDetailEditOptionSectionController *)self actionRow:v33];
    v12 = v11 == 0;

    if (!v12)
    {
      rows2 = [(NTKCFaceDetailSectionController *)self rows];
      actionRow = [(NTKCFaceDetailEditOptionSectionController *)self actionRow];
      v15 = [rows2 indexOfObject:actionRow];

      rows3 = [(NTKCFaceDetailSectionController *)self rows];
      actionRow2 = [(NTKCFaceDetailEditOptionSectionController *)self actionRow];
      [rows3 removeObject:actionRow2];

      v18 = [MEMORY[0x277CCAA70] indexPathForRow:v15 inSection:{-[NTKCFaceDetailSectionController section](self, "section")}];
      if (v18)
      {
        tableView = [(NTKCFaceDetailSectionController *)self tableView];
        v51[0] = v18;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
        [tableView deleteRowsAtIndexPaths:v20 withRowAnimation:100];
      }

      [(NTKCFaceDetailEditOptionSectionController *)self setActionRow:0];
    }
  }

  v21 = v43[3];
  if (v21 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = v47[3];
    if (v22 != 0x7FFFFFFFFFFFFFFFLL && v21 > v22)
    {
      v43[3] = v21 - 1;
    }

    v23 = [(NTKCFaceDetailSectionController *)self rows:v33];
    actionRow3 = [(NTKCFaceDetailEditOptionSectionController *)self actionRow];
    v25 = [v23 containsObject:actionRow3];

    if (v25)
    {
      [(NTKCFaceDetailEditOptionSectionController *)self _refreshActionRowContent];
    }

    else
    {
      [(NTKCFaceDetailEditOptionSectionController *)self _createActionRow];
      actionRow4 = [(NTKCFaceDetailEditOptionSectionController *)self actionRow];
      v27 = actionRow4 == 0;

      if (!v27)
      {
        rows4 = [(NTKCFaceDetailSectionController *)self rows];
        actionRow5 = [(NTKCFaceDetailEditOptionSectionController *)self actionRow];
        [rows4 insertObject:actionRow5 atIndex:v43[3]];

        v30 = [MEMORY[0x277CCAA70] indexPathForRow:v43[3] inSection:{-[NTKCFaceDetailSectionController section](self, "section")}];
        tableView2 = [(NTKCFaceDetailSectionController *)self tableView];
        v50 = v30;
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
        [tableView2 insertRowsAtIndexPaths:v32 withRowAnimation:100];
      }
    }
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);
}

void __68__NTKCFaceDetailEditOptionVerticalSectionController_reloadActionRow__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a2;
  v5 = [*(a1 + 32) actionRow];

  v6 = v16;
  if (v5 == v16)
  {
    *(*(*(a1 + 48) + 8) + 24) = a3;
  }

  else
  {
    v7 = [v16 editOption];
    [v16 setActive:{objc_msgSend(v7, "isEqual:", *(a1 + 40))}];

    v8 = [v16 active];
    v6 = v16;
    if (v8)
    {
      v9 = [*(a1 + 32) face];
      v10 = objc_opt_class();
      v11 = *(a1 + 64);
      v12 = *(a1 + 40);
      v13 = [*(a1 + 32) face];
      v14 = [v13 device];
      if ([v10 customEditMode:v11 hasActionForOption:v12 forDevice:v14])
      {
        v15 = [*(a1 + 32) _canDisplayActionRowForCustomEditMode:*(a1 + 64) andOption:*(a1 + 40)];

        v6 = v16;
        if (v15)
        {
          *(*(*(a1 + 56) + 8) + 24) = a3 + 1;
        }
      }

      else
      {

        v6 = v16;
      }
    }
  }
}

- (BOOL)collectionChanged:(id)changed withSelectedOptions:(id)options
{
  optionsCopy = options;
  [(NTKCFaceDetailEditOptionVerticalSectionController *)self _setupWithCollection:changed];
  [(NTKCFaceDetailEditOptionVerticalSectionController *)self setSelectedOptions:optionsCopy];

  return 1;
}

- (void)_setupWithCollection:(id)collection
{
  collectionCopy = collection;
  if (collectionCopy)
  {
    [(NTKCFaceDetailEditOptionSectionController *)self setCollection:collectionCopy];
    _newSectionHeader = [(NTKCFaceDetailSectionController *)self _newSectionHeader];
    [(NTKCFaceDetailSectionController *)self setHeaderView:_newSectionHeader];

    collection = [(NTKCFaceDetailEditOptionSectionController *)self collection];
    localizedName = [collection localizedName];
    headerView = [(NTKCFaceDetailSectionController *)self headerView];
    [headerView setTitle:localizedName];
  }

  v8 = objc_opt_new();
  collection2 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
  options = [collection2 options];
  v11 = [options count];

  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = [(NTKCFaceDetailEditOptionSectionController *)self optionAtIndex:v12];
      v14 = [(NTKCFaceDetailEditOptionVerticalSectionController *)self cellForEditOption:v13];
      [v8 addObject:v14];

      ++v12;
      collection3 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
      options2 = [collection3 options];
      v17 = [options2 count];
    }

    while (v12 < v17);
  }

  [(NTKCFaceDetailSectionController *)self setRows:v8];
}

- (id)cellForEditOption:(id)option
{
  optionCopy = option;
  v4 = [[NTKCFaceDetailEnumeratedEditOptionCell alloc] initWithEditOption:optionCopy];

  return v4;
}

- (int64_t)numberOfRows
{
  v6.receiver = self;
  v6.super_class = NTKCFaceDetailEditOptionVerticalSectionController;
  numberOfRows = [(NTKCFaceDetailSectionController *)&v6 numberOfRows];
  footerCell = [(NTKCFaceDetailEditOptionVerticalSectionController *)self footerCell];

  if (footerCell)
  {
    return numberOfRows + 1;
  }

  else
  {
    return numberOfRows;
  }
}

- (id)cellForRow:(int64_t)row
{
  v9.receiver = self;
  v9.super_class = NTKCFaceDetailEditOptionVerticalSectionController;
  footerCell = [(NTKCFaceDetailSectionController *)&v9 cellForRow:?];
  if (!footerCell)
  {
    rows = [(NTKCFaceDetailSectionController *)self rows];
    v7 = [rows count];

    if (v7 == row)
    {
      footerCell = [(NTKCFaceDetailEditOptionVerticalSectionController *)self footerCell];
    }

    else
    {
      footerCell = 0;
    }
  }

  return footerCell;
}

- (double)heightForRow:(int64_t)row
{
  v12.receiver = self;
  v12.super_class = NTKCFaceDetailEditOptionVerticalSectionController;
  [(NTKCFaceDetailSectionController *)&v12 heightForRow:?];
  v6 = v5;
  if (v5 == 0.0)
  {
    rows = [(NTKCFaceDetailSectionController *)self rows];
    v8 = [rows count];

    if (v8 == row)
    {
      footerCell = [(NTKCFaceDetailEditOptionVerticalSectionController *)self footerCell];
      [footerCell rowHeight];
      v6 = v10;
    }
  }

  return v6;
}

- (void)setFooter:(id)footer
{
  v20[1] = *MEMORY[0x277D85DE8];
  footerCopy = footer;
  objc_storeStrong(&self->_footer, footer);
  footer = self->_footer;
  footerCell = [(NTKCFaceDetailEditOptionVerticalSectionController *)self footerCell];

  if (footer)
  {
    if (!footerCell)
    {
      v8 = objc_alloc_init(NTKCFaceDetailDescriptionCell);
      [(NTKCFaceDetailEditOptionVerticalSectionController *)self setFooterCell:v8];

      v9 = MEMORY[0x277CCAA70];
      rows = [(NTKCFaceDetailSectionController *)self rows];
      v11 = [v9 indexPathForRow:objc_msgSend(rows inSection:{"count"), -[NTKCFaceDetailSectionController section](self, "section")}];

      tableView = [(NTKCFaceDetailSectionController *)self tableView];
      v20[0] = v11;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
      [tableView insertRowsAtIndexPaths:v13 withRowAnimation:100];
    }

    footerCell2 = [(NTKCFaceDetailEditOptionVerticalSectionController *)self footerCell];
    [footerCell2 setText:footerCopy];
    goto LABEL_7;
  }

  if (footerCell)
  {
    [(NTKCFaceDetailEditOptionVerticalSectionController *)self setFooterCell:0];
    v15 = MEMORY[0x277CCAA70];
    rows2 = [(NTKCFaceDetailSectionController *)self rows];
    footerCell2 = [v15 indexPathForRow:objc_msgSend(rows2 inSection:{"count"), -[NTKCFaceDetailSectionController section](self, "section")}];

    tableView2 = [(NTKCFaceDetailSectionController *)self tableView];
    v19 = footerCell2;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    [tableView2 deleteRowsAtIndexPaths:v18 withRowAnimation:100];

LABEL_7:
  }
}

@end