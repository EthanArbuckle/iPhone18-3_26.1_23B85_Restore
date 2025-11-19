@interface NTKCFaceDetailComplicationSectionController
+ (BOOL)hasComplicationsForFace:(id)a3;
- (BOOL)_canSelectRow:(int64_t)a3;
- (NSSet)richComplicationSlots;
- (NTKCFaceDetailComplicationSectionController)initWithTableViewController:(id)a3 face:(id)a4 faceView:(id)a5 inGallery:(BOOL)a6;
- (NTKCFaceDetailComplicationSectionDelegate)delegate;
- (void)_addComplication:(id)a3;
- (void)_commonInit;
- (void)didSelectRow:(int64_t)a3;
- (void)faceDidChange;
@end

@implementation NTKCFaceDetailComplicationSectionController

+ (BOOL)hasComplicationsForFace:(id)a3
{
  v3 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v4 = objc_opt_class();
  v5 = [v3 device];
  v6 = [v4 fixedComplicationSlotsForDevice:v5];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__NTKCFaceDetailComplicationSectionController_hasComplicationsForFace___block_invoke;
  v10[3] = &unk_278780C38;
  v7 = v6;
  v11 = v7;
  v8 = v3;
  v12 = v8;
  v13 = &v14;
  [v8 enumerateComplicationSlotsWithBlock:v10];
  LOBYTE(v5) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v5;
}

void __71__NTKCFaceDetailComplicationSectionController_hasComplicationsForFace___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v5 = objc_opt_class();
    v6 = [*(a1 + 40) device];
    v7 = [v5 monogramSlotForDevice:v6];
    v8 = [v9 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a3 = 1;
    }
  }
}

- (NTKCFaceDetailComplicationSectionController)initWithTableViewController:(id)a3 face:(id)a4 faceView:(id)a5 inGallery:(BOOL)a6
{
  v6 = a6;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = NTKCFaceDetailComplicationSectionController;
  v12 = [(NTKCFaceDetailSectionController *)&v15 initWithTableViewController:a3 face:a4 inGallery:v6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_faceView, a5);
  }

  return v13;
}

- (void)_commonInit
{
  v3 = [(NTKCFaceDetailSectionController *)self face];
  v4 = objc_opt_class();
  v5 = [(NTKCFaceDetailSectionController *)self face];
  v6 = [v5 device];
  v7 = [v4 fixedComplicationSlotsForDevice:v6];

  v8 = [(NTKCFaceDetailSectionController *)self face];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__NTKCFaceDetailComplicationSectionController__commonInit__block_invoke;
  v10[3] = &unk_27877F498;
  v11 = v7;
  v12 = self;
  v9 = v7;
  [v8 enumerateComplicationSlotsWithBlock:v10];
}

void __58__NTKCFaceDetailComplicationSectionController__commonInit__block_invoke(uint64_t a1, void *a2)
{
  v30 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v3 = [*(a1 + 40) face];
    v4 = [v3 complicationForSlot:v30];

    v5 = [*(a1 + 40) face];
    v6 = objc_opt_class();
    v7 = [*(a1 + 40) face];
    v8 = [v7 device];
    v9 = [v6 monogramSlotForDevice:v8];
    v10 = [v30 isEqualToString:v9];

    if ((v10 & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v4;
        v12 = [v11 clientIdentifier];
        v13 = [v12 isEqualToString:@"com.nike.nikeplus-gps.watchkitapp.watchkitextension"];

        v4 = v11;
        if (v13)
        {
          v14 = NTKSharedRemoteComplicationProvider();
          v15 = [v11 clientIdentifier];
          v16 = [v11 appBundleIdentifier];
          v17 = [v14 vendorExistsWithClientIdentifier:v15 appBundleIdentifier:v16];

          v4 = v11;
          if ((v17 & 1) == 0)
          {
            v4 = +[NTKComplication nullComplication];

            v18 = [*(a1 + 40) face];
            [v18 setComplication:v4 forSlot:v30];
          }
        }
      }

      v19 = [*(a1 + 40) face];
      v20 = objc_opt_class();
      v21 = [*(a1 + 40) face];
      v22 = [v21 device];
      v23 = [v20 dateSlotForDevice:v22];
      v24 = [v30 isEqualToString:v23];

      v25 = [*(a1 + 40) richComplicationSlots];
      v26 = [v25 containsObject:v30];

      v27 = [NTKCFaceDetailComplicationCell alloc];
      v28 = [*(a1 + 40) face];
      v29 = [(NTKCFaceDetailComplicationCell *)v27 initWithSlot:v30 dateSlot:v24 isRichSlot:v26 inFace:v28];

      [(NTKCFaceDetailComplicationCell *)v29 setComplication:v4];
      [*(a1 + 40) _addComplication:v29];
    }
  }
}

- (void)_addComplication:(id)a3
{
  v4 = a3;
  v5 = [(NTKCFaceDetailSectionController *)self rows];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(NTKCFaceDetailSectionController *)self setRows:v6];
  }

  v7 = [(NTKCFaceDetailSectionController *)self rows];
  [v7 addObject:v4];
}

- (BOOL)_canSelectRow:(int64_t)a3
{
  v5 = [(NTKCFaceDetailSectionController *)self rows];
  v6 = [v5 indexOfObject:self->_hiddenCell];

  if (v6 == a3)
  {
    return 0;
  }

  v8 = [(NTKCFaceDetailSectionController *)self rows];
  v9 = [v8 objectAtIndexedSubscript:a3];
  v10 = [v9 enabled];

  return v10;
}

- (void)didSelectRow:(int64_t)a3
{
  v5 = [(NTKCFaceDetailSectionController *)self rows];
  v9 = [v5 objectAtIndexedSubscript:a3];

  v6 = [v9 slot];
  v7 = [v9 complication];
  v8 = [(NTKCFaceDetailComplicationSectionController *)self delegate];
  [v8 complicationSection:self wantsToPresentPickerForSlot:v6 selectedComplication:v7];
}

- (void)faceDidChange
{
  v68 = *MEMORY[0x277D85DE8];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v3 = [(NTKCFaceDetailSectionController *)self rows];
  v4 = [v3 countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v60;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v60 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v59 + 1) + 8 * i);
        if (v8 != self->_hiddenCell)
        {
          v9 = [(NTKCFaceDetailSectionController *)self face];
          v10 = [(NTKCFaceDetailComplicationsHiddenCell *)v8 slot];
          v11 = [v9 complicationForSlot:v10];
          [(NTKCFaceDetailComplicationsHiddenCell *)v8 setComplication:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v59 objects:v67 count:16];
    }

    while (v5);
  }

  v12 = [(NTKCFaceDetailSectionController *)self rows];
  v13 = [v12 indexOfObject:self->_hiddenCell];

  v14 = [(NTKFaceView *)self->_faceView allVisibleComplicationsForCurrentConfiguration];
  v15 = [v14 count];

  if (!v15 && !self->_hiddenCell)
  {
    v16 = objc_alloc_init(NTKCFaceDetailComplicationsHiddenCell);
    [(NTKCFaceDetailComplicationSectionController *)self setHiddenCell:v16];

    v17 = [(NTKCFaceDetailSectionController *)self face];
    v18 = [v17 _complicationsNotAvailableForThisNounString];
    v19 = [(NTKCFaceDetailComplicationSectionController *)self hiddenCell];
    v20 = [v19 textLabel];
    [v20 setText:v18];
  }

  v21 = [(NTKFaceView *)self->_faceView _complicationSlotsHiddenByCurrentConfiguration];
  if ([v21 count])
  {
    v57 = 0uLL;
    v58 = 0uLL;
    v55 = 0uLL;
    v56 = 0uLL;
    v22 = [(NTKCFaceDetailSectionController *)self rows];
    v23 = [v22 countByEnumeratingWithState:&v55 objects:v66 count:16];
    if (v23)
    {
      v24 = v23;
      v50 = v13;
      v25 = *v56;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v56 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v55 + 1) + 8 * j);
          if (v27 != self->_hiddenCell)
          {
            v28 = [*(*(&v55 + 1) + 8 * j) slot];
            -[NTKCFaceDetailComplicationsHiddenCell setEnabled:](v27, "setEnabled:", [v21 containsObject:v28] ^ 1);
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v55 objects:v66 count:16];
      }

      while (v24);
      v13 = v50;
    }
  }

  else
  {
    v53 = 0uLL;
    v54 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    v22 = [(NTKCFaceDetailSectionController *)self rows];
    v29 = [v22 countByEnumeratingWithState:&v51 objects:v65 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v52;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v52 != v31)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v51 + 1) + 8 * k) setEnabled:1];
        }

        v30 = [v22 countByEnumeratingWithState:&v51 objects:v65 count:16];
      }

      while (v30);
    }
  }

  v33 = v15 == 0;

  v34 = [(NTKCFaceDetailSectionController *)self rows];
  v35 = [v34 indexOfObject:self->_hiddenCell];

  v36 = v35 == 0x7FFFFFFFFFFFFFFFLL && v33;
  v37 = v13 == 0x7FFFFFFFFFFFFFFFLL || v33;
  if (v35 != v13 || v36 || (v37 & 1) == 0)
  {
    v38 = [(NTKCFaceDetailSectionController *)self tableView];
    [v38 beginUpdates];

    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v39 = [MEMORY[0x277CCAA70] indexPathForRow:v13 inSection:{-[NTKCFaceDetailSectionController section](self, "section")}];
      v40 = [(NTKCFaceDetailSectionController *)self tableView];
      v64 = v39;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
      [v40 deleteRowsAtIndexPaths:v41 withRowAnimation:100];

      v42 = [(NTKCFaceDetailSectionController *)self rows];
      [v42 removeObject:self->_hiddenCell];
    }

    if (v35 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v43 = [(NTKCFaceDetailSectionController *)self rows];
      v44 = [v43 count];

      v45 = [MEMORY[0x277CCAA70] indexPathForRow:v44 inSection:{-[NTKCFaceDetailSectionController section](self, "section")}];
      v46 = [(NTKCFaceDetailSectionController *)self tableView];
      v63 = v45;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
      [v46 insertRowsAtIndexPaths:v47 withRowAnimation:100];

      v48 = [(NTKCFaceDetailSectionController *)self rows];
      [v48 addObject:self->_hiddenCell];
    }

    v49 = [(NTKCFaceDetailSectionController *)self tableView];
    [v49 endUpdates];
  }
}

- (NSSet)richComplicationSlots
{
  richComplicationSlots = self->_richComplicationSlots;
  if (!richComplicationSlots)
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = [(NTKCFaceDetailSectionController *)self face];
    v6 = objc_opt_class();
    v7 = [(NTKCFaceDetailSectionController *)self face];
    v8 = [v7 device];
    v9 = [v6 richComplicationSlotsForDevice:v8];
    v10 = [v4 setWithArray:v9];
    v11 = self->_richComplicationSlots;
    self->_richComplicationSlots = v10;

    richComplicationSlots = self->_richComplicationSlots;
  }

  return richComplicationSlots;
}

- (NTKCFaceDetailComplicationSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end