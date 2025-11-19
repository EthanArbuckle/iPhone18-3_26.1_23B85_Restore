@interface UIDocumentTargetSelectionController
@end

@implementation UIDocumentTargetSelectionController

uint64_t __55___UIDocumentTargetSelectionController_viewWillAppear___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupPalette];
  v2 = *(a1 + 32);

  return [v2 _setupNavigationItem];
}

id __54___UIDocumentTargetSelectionController__updatePalette__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ui_resolveOnDiskBookmarkAndPromise];
  v9 = 0;
  v3 = [v2 getPromisedItemResourceValue:&v9 forKey:*MEMORY[0x277CBE8D0] error:0];
  v4 = v9;
  v5 = v4;
  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v2 lastPathComponent];
  }

  v7 = v6;

  return v7;
}

void __54___UIDocumentTargetSelectionController__updatePalette__block_invoke_2(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v9 = *MEMORY[0x277D740A8];
  v4 = [*(*(a1 + 32) + 1032) font];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v3 sizeWithAttributes:v5];
  v7 = v6;
  v8 = *(a1 + 40);

  if (v7 < v8)
  {
    [*(*(a1 + 32) + 1032) setText:v3];
  }
}

void __54___UIDocumentTargetSelectionController__updatePalette__block_invoke_3(uint64_t a1)
{
  v2 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54___UIDocumentTargetSelectionController__updatePalette__block_invoke_4;
  block[3] = &unk_278DD6758;
  v4 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  objc_copyWeak(&v5, (a1 + 40));
  dispatch_async(v2, block);

  objc_destroyWeak(&v5);
}

void __54___UIDocumentTargetSelectionController__updatePalette__block_invoke_4(uint64_t a1)
{
  v8 = 0;
  v2 = [_UIDocumentTargetSelectionController _loadThumbnailForURL:*(a1 + 32) size:&v8 + 1 scale:&v8 wantsBorder:*(a1 + 48) generatedThumbnail:*(a1 + 56), *(a1 + 64)];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && v8 == 1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54___UIDocumentTargetSelectionController__updatePalette__block_invoke_5;
    block[3] = &unk_278DD6730;
    block[4] = WeakRetained;
    v6 = v2;
    v7 = HIBYTE(v8);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

@end