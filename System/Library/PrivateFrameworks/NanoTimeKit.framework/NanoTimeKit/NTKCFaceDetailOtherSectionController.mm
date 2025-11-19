@interface NTKCFaceDetailOtherSectionController
- (BOOL)_canSelectRow:(int64_t)a3;
- (NTKCFaceDetailOtherSectionDelegate)delegate;
- (void)_addMonogramEditRow;
- (void)_commonInit;
- (void)_removeMonogramEditRow;
- (void)addMonogramRowForSlot:(id)a3;
- (void)addShowSecondsRow:(id)a3;
- (void)didSelectRow:(int64_t)a3;
- (void)faceDidChange;
- (void)removeMonogramRow;
- (void)removeShowSecondsRow;
- (void)toggleCell:(id)a3 didToggle:(BOOL)a4;
@end

@implementation NTKCFaceDetailOtherSectionController

- (void)_commonInit
{
  v3 = objc_opt_new();
  [(NTKCFaceDetailSectionController *)self setRows:v3];
}

- (BOOL)_canSelectRow:(int64_t)a3
{
  v5 = [(NTKCFaceDetailSectionController *)self rows];
  v6 = [v5 objectAtIndexedSubscript:a3];
  LOBYTE(a3) = v6 == self->_monogramEditCell;

  return a3;
}

- (void)didSelectRow:(int64_t)a3
{
  v4 = [(NTKCFaceDetailOtherSectionController *)self delegate];
  [v4 otherSectionDidSelectMonogramEdit:self];
}

- (void)faceDidChange
{
  if (self->_showSecondsCell)
  {
    v3 = [(NTKCFaceDetailSectionController *)self face];
    v4 = [v3 selectedOptionsForCustomEditModes];
    v5 = MEMORY[0x277CCABB0];
    v6 = [(NTKCFaceDetailShowSecondsCell *)self->_showSecondsCell collection];
    v7 = [v5 numberWithInteger:{objc_msgSend(v6, "mode")}];
    v8 = [v4 objectForKeyedSubscript:v7];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NTKCFaceDetailToggleCell setOn:](self->_showSecondsCell, "setOn:", [v8 accuracy] == 0);
    }
  }

  monogramCell = self->_monogramCell;
  if (monogramCell)
  {
    v10 = [(NTKCFaceDetailToggleCell *)monogramCell on];
    v11 = [(NTKCFaceDetailSectionController *)self face];
    v12 = [(NTKCFaceDetailMonogramComplicationCell *)self->_monogramCell slot];
    v13 = [v11 complicationForSlot:v12];
    v14 = +[NTKComplication nullComplication];
    v15 = [v13 isEqual:v14];

    [(NTKCFaceDetailToggleCell *)self->_monogramCell setOn:v15 ^ 1u];
    if ((v15 & 1) == 0 && ![(NTKCFaceDetailSectionController *)self inGallery])
    {
      [(NTKCFaceDetailOtherSectionController *)self _addMonogramEditRow];
    }

    if (v10 == v15)
    {
      v16 = self->_monogramCell;

      [(NTKCFaceDetailOtherSectionController *)self toggleCell:v16 didToggle:v15 ^ 1u];
    }
  }
}

- (void)addMonogramRowForSlot:(id)a3
{
  v4 = a3;
  [(NTKCFaceDetailOtherSectionController *)self removeMonogramRow];
  v5 = [NTKCFaceDetailMonogramComplicationCell alloc];
  v6 = [(NTKCFaceDetailSectionController *)self face];
  v7 = [(NTKCFaceDetailMonogramComplicationCell *)v5 initWithSlot:v4 inFace:v6];

  [(NTKCFaceDetailOtherSectionController *)self setMonogramCell:v7];
  [(NTKCFaceDetailToggleCell *)self->_monogramCell setDelegate:self];
  v8 = [(NTKCFaceDetailSectionController *)self rows];
  [v8 addObject:self->_monogramCell];
}

- (void)removeMonogramRow
{
  if (self->_monogramCell)
  {
    v3 = [(NTKCFaceDetailSectionController *)self rows];
    [v3 removeObject:self->_monogramCell];

    [(NTKCFaceDetailToggleCell *)self->_monogramCell setDelegate:0];
    monogramCell = self->_monogramCell;
    self->_monogramCell = 0;
  }

  if (self->_monogramEditCell)
  {
    v5 = [(NTKCFaceDetailSectionController *)self rows];
    [v5 removeObject:self->_monogramEditCell];

    monogramEditCell = self->_monogramEditCell;
    self->_monogramEditCell = 0;
  }
}

- (void)_addMonogramEditRow
{
  if (!self->_monogramEditCell)
  {
    v3 = objc_alloc_init(NTKCFaceDetailMonogramEditCell);
    [(NTKCFaceDetailOtherSectionController *)self setMonogramEditCell:v3];
  }

  v4 = [(NTKCFaceDetailSectionController *)self rows];
  v5 = [v4 containsObject:self->_monogramEditCell];

  if ((v5 & 1) == 0)
  {
    v6 = [(NTKCFaceDetailSectionController *)self rows];
    [v6 addObject:self->_monogramEditCell];
  }
}

- (void)_removeMonogramEditRow
{
  v3 = [(NTKCFaceDetailSectionController *)self rows];
  [v3 removeObject:self->_monogramEditCell];
}

- (void)addShowSecondsRow:(id)a3
{
  v4 = a3;
  [(NTKCFaceDetailOtherSectionController *)self removeShowSecondsRow];
  v5 = [[NTKCFaceDetailShowSecondsCell alloc] initWithCollection:v4];

  [(NTKCFaceDetailOtherSectionController *)self setShowSecondsCell:v5];
  [(NTKCFaceDetailToggleCell *)self->_showSecondsCell setDelegate:self];
  v6 = [(NTKCFaceDetailSectionController *)self rows];
  [v6 insertObject:self->_showSecondsCell atIndex:0];
}

- (void)removeShowSecondsRow
{
  if (self->_showSecondsCell)
  {
    v3 = [(NTKCFaceDetailSectionController *)self rows];
    [v3 removeObject:self->_showSecondsCell];

    [(NTKCFaceDetailToggleCell *)self->_showSecondsCell setDelegate:0];
    showSecondsCell = self->_showSecondsCell;
    self->_showSecondsCell = 0;
  }
}

- (void)toggleCell:(id)a3 didToggle:(BOOL)a4
{
  v4 = a4;
  v32[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (self->_monogramCell == v6)
  {
    if (v4)
    {
      v16 = [NTKComplication anyComplicationOfType:14];
      if ([(NTKCFaceDetailSectionController *)self inGallery])
      {
LABEL_22:
        v24 = [(NTKCFaceDetailOtherSectionController *)self delegate];
        v25 = [(NTKCFaceDetailMonogramComplicationCell *)self->_monogramCell slot];
        [v24 otherSection:self didToggleMonogram:v16 forSlot:v25];
LABEL_25:

        goto LABEL_26;
      }

      [(NTKCFaceDetailOtherSectionController *)self _addMonogramEditRow];
      v17 = MEMORY[0x277CCAA70];
      v18 = [(NTKCFaceDetailSectionController *)self rows];
      v19 = [v17 indexPathForRow:objc_msgSend(v18 inSection:{"indexOfObject:", self->_monogramEditCell), -[NTKCFaceDetailSectionController section](self, "section")}];

      v20 = [(NTKCFaceDetailSectionController *)self tableView];
      v31 = v19;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
      [v20 insertRowsAtIndexPaths:v21 withRowAnimation:100];
    }

    else
    {
      v16 = +[NTKComplication nullComplication];
      if ([(NTKCFaceDetailSectionController *)self inGallery]|| !self->_monogramEditCell)
      {
        goto LABEL_22;
      }

      v22 = MEMORY[0x277CCAA70];
      v23 = [(NTKCFaceDetailSectionController *)self rows];
      v19 = [v22 indexPathForRow:objc_msgSend(v23 inSection:{"indexOfObject:", self->_monogramEditCell), -[NTKCFaceDetailSectionController section](self, "section")}];

      [(NTKCFaceDetailOtherSectionController *)self _removeMonogramEditRow];
      v20 = [(NTKCFaceDetailSectionController *)self tableView];
      v32[0] = v19;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
      [v20 deleteRowsAtIndexPaths:v21 withRowAnimation:100];
    }

    goto LABEL_22;
  }

  showSecondsCell = self->_showSecondsCell;
  if (showSecondsCell == v6)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = [(NTKCFaceDetailShowSecondsCell *)showSecondsCell collection];
    v9 = [v8 options];

    v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = [v14 accuracy];
          if (v4)
          {
            if (!v15)
            {
              goto LABEL_23;
            }
          }

          else if (v15 == 1)
          {
LABEL_23:
            v16 = v14;
            goto LABEL_24;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_24:

    v24 = [(NTKCFaceDetailOtherSectionController *)self delegate];
    v25 = [(NTKCFaceDetailShowSecondsCell *)self->_showSecondsCell collection];
    [v24 otherSection:self didChangeShowSeconds:v16 forMode:{objc_msgSend(v25, "mode")}];
    goto LABEL_25;
  }

LABEL_26:
}

- (NTKCFaceDetailOtherSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end