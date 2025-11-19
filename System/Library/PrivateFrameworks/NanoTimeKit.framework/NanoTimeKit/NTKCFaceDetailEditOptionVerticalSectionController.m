@interface NTKCFaceDetailEditOptionVerticalSectionController
- (BOOL)collectionChanged:(id)a3 withSelectedOptions:(id)a4;
- (NTKCFaceDetailEditOptionVerticalSectionController)initWithTableViewController:(id)a3 face:(id)a4 inGallery:(BOOL)a5 editOptionCollection:(id)a6 faceView:(id)a7;
- (double)heightForRow:(int64_t)a3;
- (id)cellForEditOption:(id)a3;
- (id)cellForRow:(int64_t)a3;
- (int64_t)numberOfRows;
- (void)_setupWithCollection:(id)a3;
- (void)didSelectRow:(int64_t)a3;
- (void)reloadActionRow;
- (void)setFooter:(id)a3;
- (void)setSelectedOptions:(id)a3;
@end

@implementation NTKCFaceDetailEditOptionVerticalSectionController

- (NTKCFaceDetailEditOptionVerticalSectionController)initWithTableViewController:(id)a3 face:(id)a4 inGallery:(BOOL)a5 editOptionCollection:(id)a6 faceView:(id)a7
{
  v10.receiver = self;
  v10.super_class = NTKCFaceDetailEditOptionVerticalSectionController;
  v7 = [(NTKCFaceDetailEditOptionSectionController *)&v10 _initWithTableViewController:a3 face:a4 inGallery:a5 editOptionCollection:a6 faceView:a7];
  v8 = v7;
  if (v7)
  {
    [(NTKCFaceDetailEditOptionVerticalSectionController *)v7 _setupWithCollection:0];
  }

  return v8;
}

- (void)didSelectRow:(int64_t)a3
{
  v5 = [(NTKCFaceDetailEditOptionSectionController *)self actionRow];
  if (v5)
  {
    v6 = [(NTKCFaceDetailSectionController *)self rows];
    v7 = [(NTKCFaceDetailEditOptionSectionController *)self actionRow];
    v8 = [v6 indexOfObject:v7];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v8 == a3)
  {
    v9 = a3 - 1;
    v10 = [(NTKCFaceDetailEditOptionSectionController *)self optionAtIndex:v9];
    v11 = [(NTKCFaceDetailEditOptionSectionController *)self _handleDidSelectActionRowForOption:v10];

    if (!v11)
    {
      return;
    }

    v20 = [(NTKCFaceDetailEditOptionSectionController *)self delegate];
    [v20 editOptionSection:self didSelectActionForOptionAtIndex:v9];
    goto LABEL_16;
  }

  v12 = [(NTKCFaceDetailSectionController *)self rows];
  v13 = [v12 objectAtIndexedSubscript:a3];
  v14 = [v13 active];

  if ((v14 & 1) == 0)
  {
    v15 = v8 == 0x7FFFFFFFFFFFFFFFLL || v8 >= a3;
    v16 = !v15;
    v17 = a3 - v16;
    v18 = [(NTKCFaceDetailEditOptionSectionController *)self optionAtIndex:v17];
    v19 = [(NTKCFaceDetailEditOptionSectionController *)self _handleDidSelectOption:v18];

    if (v19)
    {
      v20 = [(NTKCFaceDetailEditOptionSectionController *)self delegate];
      [v20 editOptionSection:self didSelectOptionAtIndex:v17];
LABEL_16:
    }
  }
}

- (void)setSelectedOptions:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKCFaceDetailEditOptionVerticalSectionController;
  [(NTKCFaceDetailEditOptionSectionController *)&v4 setSelectedOptions:a3];
  [(NTKCFaceDetailEditOptionVerticalSectionController *)self reloadActionRow];
}

- (void)reloadActionRow
{
  v51[1] = *MEMORY[0x277D85DE8];
  v3 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
  v4 = [v3 mode];

  v5 = [(NTKCFaceDetailEditOptionSectionController *)self selectedOptions];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
  v7 = [v5 objectForKeyedSubscript:v6];

  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0x7FFFFFFFFFFFFFFFLL;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = [(NTKCFaceDetailSectionController *)self rows];
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __68__NTKCFaceDetailEditOptionVerticalSectionController_reloadActionRow__block_invoke;
  v36 = &unk_278781CF0;
  v37 = self;
  v39 = &v46;
  v9 = v7;
  v40 = &v42;
  v41 = v4;
  v38 = v9;
  [v8 enumerateObjectsUsingBlock:&v33];

  v10 = v47[3];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL && v43[3] != v10)
  {
    v11 = [(NTKCFaceDetailEditOptionSectionController *)self actionRow:v33];
    v12 = v11 == 0;

    if (!v12)
    {
      v13 = [(NTKCFaceDetailSectionController *)self rows];
      v14 = [(NTKCFaceDetailEditOptionSectionController *)self actionRow];
      v15 = [v13 indexOfObject:v14];

      v16 = [(NTKCFaceDetailSectionController *)self rows];
      v17 = [(NTKCFaceDetailEditOptionSectionController *)self actionRow];
      [v16 removeObject:v17];

      v18 = [MEMORY[0x277CCAA70] indexPathForRow:v15 inSection:{-[NTKCFaceDetailSectionController section](self, "section")}];
      if (v18)
      {
        v19 = [(NTKCFaceDetailSectionController *)self tableView];
        v51[0] = v18;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
        [v19 deleteRowsAtIndexPaths:v20 withRowAnimation:100];
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
    v24 = [(NTKCFaceDetailEditOptionSectionController *)self actionRow];
    v25 = [v23 containsObject:v24];

    if (v25)
    {
      [(NTKCFaceDetailEditOptionSectionController *)self _refreshActionRowContent];
    }

    else
    {
      [(NTKCFaceDetailEditOptionSectionController *)self _createActionRow];
      v26 = [(NTKCFaceDetailEditOptionSectionController *)self actionRow];
      v27 = v26 == 0;

      if (!v27)
      {
        v28 = [(NTKCFaceDetailSectionController *)self rows];
        v29 = [(NTKCFaceDetailEditOptionSectionController *)self actionRow];
        [v28 insertObject:v29 atIndex:v43[3]];

        v30 = [MEMORY[0x277CCAA70] indexPathForRow:v43[3] inSection:{-[NTKCFaceDetailSectionController section](self, "section")}];
        v31 = [(NTKCFaceDetailSectionController *)self tableView];
        v50 = v30;
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
        [v31 insertRowsAtIndexPaths:v32 withRowAnimation:100];
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

- (BOOL)collectionChanged:(id)a3 withSelectedOptions:(id)a4
{
  v6 = a4;
  [(NTKCFaceDetailEditOptionVerticalSectionController *)self _setupWithCollection:a3];
  [(NTKCFaceDetailEditOptionVerticalSectionController *)self setSelectedOptions:v6];

  return 1;
}

- (void)_setupWithCollection:(id)a3
{
  v18 = a3;
  if (v18)
  {
    [(NTKCFaceDetailEditOptionSectionController *)self setCollection:v18];
    v4 = [(NTKCFaceDetailSectionController *)self _newSectionHeader];
    [(NTKCFaceDetailSectionController *)self setHeaderView:v4];

    v5 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
    v6 = [v5 localizedName];
    v7 = [(NTKCFaceDetailSectionController *)self headerView];
    [v7 setTitle:v6];
  }

  v8 = objc_opt_new();
  v9 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
  v10 = [v9 options];
  v11 = [v10 count];

  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = [(NTKCFaceDetailEditOptionSectionController *)self optionAtIndex:v12];
      v14 = [(NTKCFaceDetailEditOptionVerticalSectionController *)self cellForEditOption:v13];
      [v8 addObject:v14];

      ++v12;
      v15 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
      v16 = [v15 options];
      v17 = [v16 count];
    }

    while (v12 < v17);
  }

  [(NTKCFaceDetailSectionController *)self setRows:v8];
}

- (id)cellForEditOption:(id)a3
{
  v3 = a3;
  v4 = [[NTKCFaceDetailEnumeratedEditOptionCell alloc] initWithEditOption:v3];

  return v4;
}

- (int64_t)numberOfRows
{
  v6.receiver = self;
  v6.super_class = NTKCFaceDetailEditOptionVerticalSectionController;
  v3 = [(NTKCFaceDetailSectionController *)&v6 numberOfRows];
  v4 = [(NTKCFaceDetailEditOptionVerticalSectionController *)self footerCell];

  if (v4)
  {
    return v3 + 1;
  }

  else
  {
    return v3;
  }
}

- (id)cellForRow:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = NTKCFaceDetailEditOptionVerticalSectionController;
  v5 = [(NTKCFaceDetailSectionController *)&v9 cellForRow:?];
  if (!v5)
  {
    v6 = [(NTKCFaceDetailSectionController *)self rows];
    v7 = [v6 count];

    if (v7 == a3)
    {
      v5 = [(NTKCFaceDetailEditOptionVerticalSectionController *)self footerCell];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (double)heightForRow:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = NTKCFaceDetailEditOptionVerticalSectionController;
  [(NTKCFaceDetailSectionController *)&v12 heightForRow:?];
  v6 = v5;
  if (v5 == 0.0)
  {
    v7 = [(NTKCFaceDetailSectionController *)self rows];
    v8 = [v7 count];

    if (v8 == a3)
    {
      v9 = [(NTKCFaceDetailEditOptionVerticalSectionController *)self footerCell];
      [v9 rowHeight];
      v6 = v10;
    }
  }

  return v6;
}

- (void)setFooter:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_footer, a3);
  footer = self->_footer;
  v7 = [(NTKCFaceDetailEditOptionVerticalSectionController *)self footerCell];

  if (footer)
  {
    if (!v7)
    {
      v8 = objc_alloc_init(NTKCFaceDetailDescriptionCell);
      [(NTKCFaceDetailEditOptionVerticalSectionController *)self setFooterCell:v8];

      v9 = MEMORY[0x277CCAA70];
      v10 = [(NTKCFaceDetailSectionController *)self rows];
      v11 = [v9 indexPathForRow:objc_msgSend(v10 inSection:{"count"), -[NTKCFaceDetailSectionController section](self, "section")}];

      v12 = [(NTKCFaceDetailSectionController *)self tableView];
      v20[0] = v11;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
      [v12 insertRowsAtIndexPaths:v13 withRowAnimation:100];
    }

    v14 = [(NTKCFaceDetailEditOptionVerticalSectionController *)self footerCell];
    [v14 setText:v5];
    goto LABEL_7;
  }

  if (v7)
  {
    [(NTKCFaceDetailEditOptionVerticalSectionController *)self setFooterCell:0];
    v15 = MEMORY[0x277CCAA70];
    v16 = [(NTKCFaceDetailSectionController *)self rows];
    v14 = [v15 indexPathForRow:objc_msgSend(v16 inSection:{"count"), -[NTKCFaceDetailSectionController section](self, "section")}];

    v17 = [(NTKCFaceDetailSectionController *)self tableView];
    v19 = v14;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    [v17 deleteRowsAtIndexPaths:v18 withRowAnimation:100];

LABEL_7:
  }
}

@end