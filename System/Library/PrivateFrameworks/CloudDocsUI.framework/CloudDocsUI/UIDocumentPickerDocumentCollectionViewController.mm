@interface UIDocumentPickerDocumentCollectionViewController
@end

@implementation UIDocumentPickerDocumentCollectionViewController

void __95___UIDocumentPickerDocumentCollectionViewController_containersChangedWithSnapshot_differences___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = [*(a1 + 32) objectForKey:@"_UIDocumentPickerModelModifiedThumbnail"];
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v8 = [*(a1 + 40) collectionView];
        v9 = [v8 cellForItemAtIndexPath:v7];

        [v9 reloadItem:1];
      }

      v4 = [v2 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v4);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [*(a1 + 32) objectForKey:{*MEMORY[0x277D77360], 0}];
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * j);
        v16 = [*(a1 + 40) collectionView];
        v17 = [v16 cellForItemAtIndexPath:v15];

        v18 = [*(a1 + 40) modelObjects];
        v19 = [v18 objectAtIndex:{objc_msgSend(v15, "row")}];

        v20 = [v17 item];

        if (v20 == v19)
        {
          [v17 reloadItem:0];
        }

        else
        {
          [v17 setItem:v19];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v12);
  }
}

void __95___UIDocumentPickerDocumentCollectionViewController_containersChangedWithSnapshot_differences___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setModelObjects:*(a1 + 40)];
  v2 = [*(a1 + 32) collectionView];
  v3 = [*(a1 + 48) objectForKey:*MEMORY[0x277D77358]];
  [v2 insertItemsAtIndexPaths:v3];

  v4 = [*(a1 + 32) collectionView];
  v5 = [*(a1 + 48) objectForKey:*MEMORY[0x277D77350]];
  [v4 deleteItemsAtIndexPaths:v5];

  v6 = [*(a1 + 48) objectForKey:*MEMORY[0x277D77368]];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __95___UIDocumentPickerDocumentCollectionViewController_containersChangedWithSnapshot_differences___block_invoke_3;
  v7[3] = &unk_278DD69B8;
  v7[4] = *(a1 + 32);
  [v6 enumerateKeysAndObjectsUsingBlock:v7];
}

void __95___UIDocumentPickerDocumentCollectionViewController_containersChangedWithSnapshot_differences___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 collectionView];
  [v7 moveItemAtIndexPath:v6 toIndexPath:v5];
}

void __79___UIDocumentPickerDocumentCollectionViewController_performAction_forRow_view___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) tableLayout];
  [v1 resetSwipedRowWithCompletion:0];
}

void __81___UIDocumentPickerDocumentCollectionViewController__showMoreOptionsForRow_view___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) tableLayout];
  [v1 resetSwipedRowWithCompletion:0];
}

void __79___UIDocumentPickerDocumentCollectionViewController_previewActionItemsForItem___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) serviceViewController];
  if ([v6 shouldShowAction:a3])
  {
    v7 = [*(a1 + 40) isActionApplicableForItem:a3];

    if (v7)
    {
      v8 = MEMORY[0x277D758C8];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __79___UIDocumentPickerDocumentCollectionViewController_previewActionItemsForItem___block_invoke_2;
      v12[3] = &unk_278DD6A58;
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v12[4] = *(a1 + 32);
      v14 = a3;
      v13 = v9;
      v11 = [v8 actionWithTitle:v5 style:0 handler:v12];
      [v10 addObject:v11];
    }
  }

  else
  {
  }
}

void __79___UIDocumentPickerDocumentCollectionViewController_previewActionItemsForItem___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) serviceViewController];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) view];
  [v5 performAction:v2 item:v3 view:v4 completion:0];
}

@end