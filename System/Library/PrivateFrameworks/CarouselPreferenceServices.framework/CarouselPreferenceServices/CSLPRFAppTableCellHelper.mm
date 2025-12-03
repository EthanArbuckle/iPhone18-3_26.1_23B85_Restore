@interface CSLPRFAppTableCellHelper
- (CSLPRFAppTableCellHelper)initWithTableCell:(id)cell;
- (id)blankIcon;
- (id)getLazyIcon;
@end

@implementation CSLPRFAppTableCellHelper

- (id)getLazyIcon
{
  WeakRetained = objc_loadWeakRetained(&self->_tableCell);
  getLazyIconID = [WeakRetained getLazyIconID];

  if (getLazyIconID)
  {
    v5 = +[CSLPRFIconCache sharedIconCache];
    v6 = [v5 iconForName:getLazyIconID fallBackToPersistentStoreIfNecessary:0];

    if (v6)
    {
      goto LABEL_10;
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!selfCopy->_requestInProgress)
    {
      selfCopy->_requestInProgress = 1;
      objc_initWeak(&location, selfCopy);
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      traitCollection = [mainScreen traitCollection];
      [traitCollection displayScale];
      v11 = v10;

      mEMORY[0x277D2BD60] = [MEMORY[0x277D2BD60] sharedInstance];
      if (v11 <= 2.0)
      {
        v13 = 47;
      }

      else
      {
        v13 = 48;
      }

      v14 = dispatch_get_global_queue(0, 0);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __39__CSLPRFAppTableCellHelper_getLazyIcon__block_invoke;
      v16[3] = &unk_278744E40;
      objc_copyWeak(&v18, &location);
      v17 = getLazyIconID;
      [mEMORY[0x277D2BD60] getIconForBundleID:v17 iconVariant:v13 queue:v14 block:v16 timeout:60.0];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    objc_sync_exit(selfCopy);
  }

  v6 = 0;
LABEL_10:

  return v6;
}

void __39__CSLPRFAppTableCellHelper_getLazyIcon__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = +[CSLPRFIconCache sharedIconCache];
      [v5 setIcon:v3 forName:*(a1 + 32)];

      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __39__CSLPRFAppTableCellHelper_getLazyIcon__block_invoke_2;
      v7[3] = &unk_2787455E0;
      v7[4] = WeakRetained;
      v8 = v3;
      dispatch_async(MEMORY[0x277D85CD0], v7);
    }

    v6 = WeakRetained;
    objc_sync_enter(v6);
    v6[8] = 0;
    objc_sync_exit(v6);
  }
}

void __39__CSLPRFAppTableCellHelper_getLazyIcon__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained setIcon:*(a1 + 40)];
}

- (id)blankIcon
{
  WeakRetained = objc_loadWeakRetained(&self->_tableCell);
  getLazyIconID = [WeakRetained getLazyIconID];

  v5 = +[CSLPRFIconCache sharedIconCache];
  v6 = [v5 iconForName:getLazyIconID fallBackToPersistentStoreIfNecessary:1];

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_tableCell);
    specifier = [v7 specifier];
    v9 = [specifier propertyForKey:*MEMORY[0x277D3FFC8]];
    bOOLValue = [v9 BOOLValue];

    if (bOOLValue)
    {
      imageFlippedForRightToLeftLayoutDirection = [v6 imageFlippedForRightToLeftLayoutDirection];

      v6 = imageFlippedForRightToLeftLayoutDirection;
    }
  }

  return v6;
}

- (CSLPRFAppTableCellHelper)initWithTableCell:(id)cell
{
  cellCopy = cell;
  v8.receiver = self;
  v8.super_class = CSLPRFAppTableCellHelper;
  v5 = [(CSLPRFAppTableCellHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tableCell, cellCopy);
  }

  return v6;
}

@end