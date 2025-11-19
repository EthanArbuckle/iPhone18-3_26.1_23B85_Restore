@interface NTKCFaceDetailEditOptionHorizontalSectionController
- (BOOL)collectionChanged:(id)a3 withSelectedOptions:(id)a4;
- (NTKCFaceDetailEditOptionHorizontalSectionController)initWithTableViewController:(id)a3 face:(id)a4 inGallery:(BOOL)a5 editOptionCollection:(id)a6 faceView:(id)a7;
- (void)didSelectRow:(int64_t)a3;
- (void)editOptionCell:(id)a3 didSelectOptionAtIndex:(int64_t)a4;
- (void)reloadActionRow;
- (void)setSelectedOptions:(id)a3;
@end

@implementation NTKCFaceDetailEditOptionHorizontalSectionController

- (NTKCFaceDetailEditOptionHorizontalSectionController)initWithTableViewController:(id)a3 face:(id)a4 inGallery:(BOOL)a5 editOptionCollection:(id)a6 faceView:(id)a7
{
  v9 = a5;
  v12 = a4;
  v13 = a7;
  v24.receiver = self;
  v24.super_class = NTKCFaceDetailEditOptionHorizontalSectionController;
  v14 = [(NTKCFaceDetailEditOptionSectionController *)&v24 _initWithTableViewController:a3 face:v12 inGallery:v9 editOptionCollection:a6 faceView:v13];
  v15 = v14;
  if (v14)
  {
    v16 = objc_alloc([(NTKCFaceDetailEditOptionHorizontalSectionController *)v14 editCellClass]);
    v17 = [(NTKCFaceDetailEditOptionSectionController *)v15 collection];
    v18 = [v16 initWithCollection:v17 forFaceView:v13 face:v12];
    [(NTKCFaceDetailSectionController *)v15 setCell:v18];

    v19 = [(NTKCFaceDetailSectionController *)v15 cell];
    [v19 setDelegate:v15];

    v20 = MEMORY[0x277CBEB18];
    v21 = [(NTKCFaceDetailSectionController *)v15 cell];
    v22 = [v20 arrayWithObject:v21];
    [(NTKCFaceDetailSectionController *)v15 setRows:v22];
  }

  return v15;
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

    if (v11)
    {
      v12 = [(NTKCFaceDetailEditOptionSectionController *)self delegate];
      [v12 editOptionSection:self didSelectActionForOptionAtIndex:v9];
    }
  }
}

- (void)setSelectedOptions:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NTKCFaceDetailEditOptionHorizontalSectionController;
  [(NTKCFaceDetailEditOptionSectionController *)&v19 setSelectedOptions:v4];
  v5 = [(NTKCFaceDetailSectionController *)self cell];
  [v5 setSelectedOptions:v4];

  v6 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
  v7 = [v6 collectionType];

  if (v7 == 1)
  {
    v8 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
    v9 = [v8 slot];

    if (v9)
    {
      v10 = [(NTKCFaceDetailSectionController *)self face];
      v11 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
      v12 = [v11 mode];
      v13 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
      v14 = [v13 slot];
      v15 = [v10 selectedOptionForCustomEditMode:v12 slot:v14];
    }

    else
    {
      v16 = MEMORY[0x277CCABB0];
      v10 = [(NTKCFaceDetailEditOptionSectionController *)self collection];
      v11 = [v16 numberWithInteger:{objc_msgSend(v10, "mode")}];
      v15 = [v4 objectForKeyedSubscript:v11];
    }

    v17 = [v15 localizedName];
    v18 = [(NTKCFaceDetailSectionController *)self headerView];
    [v18 setSubtitle:v17];
  }

  [(NTKCFaceDetailEditOptionHorizontalSectionController *)self reloadActionRow];
}

- (void)reloadActionRow
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = [(NTKCFaceDetailEditOptionSectionController *)self actionRow];
  v4 = [(NTKCFaceDetailEditOptionSectionController *)self _hasActionRow];
  if (!v4)
  {
LABEL_5:
    if (!v3)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  if (!v3)
  {
    [(NTKCFaceDetailEditOptionSectionController *)self _createActionRow];
    v3 = [(NTKCFaceDetailEditOptionSectionController *)self actionRow];
    goto LABEL_5;
  }

  [(NTKCFaceDetailEditOptionSectionController *)self _refreshActionRowContent];
LABEL_6:
  v5 = [(NTKCFaceDetailSectionController *)self rows];
  v6 = [v5 count];

  v7 = v6 == 1 || v4;
  if ((v7 & 1) == 0)
  {
    v14 = [(NTKCFaceDetailSectionController *)self rows];
    v15 = [v14 indexOfObject:v3];

    v16 = [(NTKCFaceDetailSectionController *)self rows];
    [v16 removeObject:v3];

    [(NTKCFaceDetailSectionController *)self setHasSpacerRow:0];
    v10 = [MEMORY[0x277CCAA70] indexPathForRow:v15 inSection:{-[NTKCFaceDetailSectionController section](self, "section")}];
    v11 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v10 inSection:{"row") + 1, -[NTKCFaceDetailSectionController section](self, "section")}];
    v12 = [(NTKCFaceDetailSectionController *)self tableView];
    v18[0] = v10;
    v18[1] = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    [v12 deleteRowsAtIndexPaths:v13 withRowAnimation:100];
    goto LABEL_15;
  }

  v8 = !v4;
  if (v6 != 1)
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    v9 = [(NTKCFaceDetailSectionController *)self rows];
    [v9 insertObject:v3 atIndex:1];

    v10 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:{-[NTKCFaceDetailSectionController section](self, "section")}];
    v11 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v10 inSection:{"row") + 1, -[NTKCFaceDetailSectionController section](self, "section")}];
    [(NTKCFaceDetailSectionController *)self setHasSpacerRow:1];
    v12 = [(NTKCFaceDetailSectionController *)self tableView];
    v17[0] = v10;
    v17[1] = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    [v12 insertRowsAtIndexPaths:v13 withRowAnimation:100];
LABEL_15:
  }

LABEL_16:
}

- (BOOL)collectionChanged:(id)a3 withSelectedOptions:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(NTKCFaceDetailEditOptionSectionController *)self setCollection:v7];
  v8 = [(NTKCFaceDetailSectionController *)self cell];
  v9 = [v8 collectionChanged:v7 withSelectedOptions:v6];

  return v9;
}

- (void)editOptionCell:(id)a3 didSelectOptionAtIndex:(int64_t)a4
{
  v6 = [(NTKCFaceDetailEditOptionSectionController *)self delegate];
  [v6 editOptionSection:self didSelectOptionAtIndex:a4];
}

@end