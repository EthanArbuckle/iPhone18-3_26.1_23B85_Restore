@interface NTKCFaceDetailOtherSectionController
- (BOOL)_canSelectRow:(int64_t)row;
- (NTKCFaceDetailOtherSectionDelegate)delegate;
- (void)_addMonogramEditRow;
- (void)_commonInit;
- (void)_removeMonogramEditRow;
- (void)addMonogramRowForSlot:(id)slot;
- (void)addShowSecondsRow:(id)row;
- (void)didSelectRow:(int64_t)row;
- (void)faceDidChange;
- (void)removeMonogramRow;
- (void)removeShowSecondsRow;
- (void)toggleCell:(id)cell didToggle:(BOOL)toggle;
@end

@implementation NTKCFaceDetailOtherSectionController

- (void)_commonInit
{
  v3 = objc_opt_new();
  [(NTKCFaceDetailSectionController *)self setRows:v3];
}

- (BOOL)_canSelectRow:(int64_t)row
{
  rows = [(NTKCFaceDetailSectionController *)self rows];
  v6 = [rows objectAtIndexedSubscript:row];
  LOBYTE(row) = v6 == self->_monogramEditCell;

  return row;
}

- (void)didSelectRow:(int64_t)row
{
  delegate = [(NTKCFaceDetailOtherSectionController *)self delegate];
  [delegate otherSectionDidSelectMonogramEdit:self];
}

- (void)faceDidChange
{
  if (self->_showSecondsCell)
  {
    face = [(NTKCFaceDetailSectionController *)self face];
    selectedOptionsForCustomEditModes = [face selectedOptionsForCustomEditModes];
    v5 = MEMORY[0x277CCABB0];
    collection = [(NTKCFaceDetailShowSecondsCell *)self->_showSecondsCell collection];
    v7 = [v5 numberWithInteger:{objc_msgSend(collection, "mode")}];
    v8 = [selectedOptionsForCustomEditModes objectForKeyedSubscript:v7];

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
    face2 = [(NTKCFaceDetailSectionController *)self face];
    slot = [(NTKCFaceDetailMonogramComplicationCell *)self->_monogramCell slot];
    v13 = [face2 complicationForSlot:slot];
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

- (void)addMonogramRowForSlot:(id)slot
{
  slotCopy = slot;
  [(NTKCFaceDetailOtherSectionController *)self removeMonogramRow];
  v5 = [NTKCFaceDetailMonogramComplicationCell alloc];
  face = [(NTKCFaceDetailSectionController *)self face];
  v7 = [(NTKCFaceDetailMonogramComplicationCell *)v5 initWithSlot:slotCopy inFace:face];

  [(NTKCFaceDetailOtherSectionController *)self setMonogramCell:v7];
  [(NTKCFaceDetailToggleCell *)self->_monogramCell setDelegate:self];
  rows = [(NTKCFaceDetailSectionController *)self rows];
  [rows addObject:self->_monogramCell];
}

- (void)removeMonogramRow
{
  if (self->_monogramCell)
  {
    rows = [(NTKCFaceDetailSectionController *)self rows];
    [rows removeObject:self->_monogramCell];

    [(NTKCFaceDetailToggleCell *)self->_monogramCell setDelegate:0];
    monogramCell = self->_monogramCell;
    self->_monogramCell = 0;
  }

  if (self->_monogramEditCell)
  {
    rows2 = [(NTKCFaceDetailSectionController *)self rows];
    [rows2 removeObject:self->_monogramEditCell];

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

  rows = [(NTKCFaceDetailSectionController *)self rows];
  v5 = [rows containsObject:self->_monogramEditCell];

  if ((v5 & 1) == 0)
  {
    rows2 = [(NTKCFaceDetailSectionController *)self rows];
    [rows2 addObject:self->_monogramEditCell];
  }
}

- (void)_removeMonogramEditRow
{
  rows = [(NTKCFaceDetailSectionController *)self rows];
  [rows removeObject:self->_monogramEditCell];
}

- (void)addShowSecondsRow:(id)row
{
  rowCopy = row;
  [(NTKCFaceDetailOtherSectionController *)self removeShowSecondsRow];
  v5 = [[NTKCFaceDetailShowSecondsCell alloc] initWithCollection:rowCopy];

  [(NTKCFaceDetailOtherSectionController *)self setShowSecondsCell:v5];
  [(NTKCFaceDetailToggleCell *)self->_showSecondsCell setDelegate:self];
  rows = [(NTKCFaceDetailSectionController *)self rows];
  [rows insertObject:self->_showSecondsCell atIndex:0];
}

- (void)removeShowSecondsRow
{
  if (self->_showSecondsCell)
  {
    rows = [(NTKCFaceDetailSectionController *)self rows];
    [rows removeObject:self->_showSecondsCell];

    [(NTKCFaceDetailToggleCell *)self->_showSecondsCell setDelegate:0];
    showSecondsCell = self->_showSecondsCell;
    self->_showSecondsCell = 0;
  }
}

- (void)toggleCell:(id)cell didToggle:(BOOL)toggle
{
  toggleCopy = toggle;
  v32[1] = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  if (self->_monogramCell == cellCopy)
  {
    if (toggleCopy)
    {
      v16 = [NTKComplication anyComplicationOfType:14];
      if ([(NTKCFaceDetailSectionController *)self inGallery])
      {
LABEL_22:
        delegate = [(NTKCFaceDetailOtherSectionController *)self delegate];
        slot = [(NTKCFaceDetailMonogramComplicationCell *)self->_monogramCell slot];
        [delegate otherSection:self didToggleMonogram:v16 forSlot:slot];
LABEL_25:

        goto LABEL_26;
      }

      [(NTKCFaceDetailOtherSectionController *)self _addMonogramEditRow];
      v17 = MEMORY[0x277CCAA70];
      rows = [(NTKCFaceDetailSectionController *)self rows];
      v19 = [v17 indexPathForRow:objc_msgSend(rows inSection:{"indexOfObject:", self->_monogramEditCell), -[NTKCFaceDetailSectionController section](self, "section")}];

      tableView = [(NTKCFaceDetailSectionController *)self tableView];
      v31 = v19;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
      [tableView insertRowsAtIndexPaths:v21 withRowAnimation:100];
    }

    else
    {
      v16 = +[NTKComplication nullComplication];
      if ([(NTKCFaceDetailSectionController *)self inGallery]|| !self->_monogramEditCell)
      {
        goto LABEL_22;
      }

      v22 = MEMORY[0x277CCAA70];
      rows2 = [(NTKCFaceDetailSectionController *)self rows];
      v19 = [v22 indexPathForRow:objc_msgSend(rows2 inSection:{"indexOfObject:", self->_monogramEditCell), -[NTKCFaceDetailSectionController section](self, "section")}];

      [(NTKCFaceDetailOtherSectionController *)self _removeMonogramEditRow];
      tableView = [(NTKCFaceDetailSectionController *)self tableView];
      v32[0] = v19;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
      [tableView deleteRowsAtIndexPaths:v21 withRowAnimation:100];
    }

    goto LABEL_22;
  }

  showSecondsCell = self->_showSecondsCell;
  if (showSecondsCell == cellCopy)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    collection = [(NTKCFaceDetailShowSecondsCell *)showSecondsCell collection];
    options = [collection options];

    v10 = [options countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(options);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          accuracy = [v14 accuracy];
          if (toggleCopy)
          {
            if (!accuracy)
            {
              goto LABEL_23;
            }
          }

          else if (accuracy == 1)
          {
LABEL_23:
            v16 = v14;
            goto LABEL_24;
          }
        }

        v11 = [options countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_24:

    delegate = [(NTKCFaceDetailOtherSectionController *)self delegate];
    slot = [(NTKCFaceDetailShowSecondsCell *)self->_showSecondsCell collection];
    [delegate otherSection:self didChangeShowSeconds:v16 forMode:{objc_msgSend(slot, "mode")}];
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