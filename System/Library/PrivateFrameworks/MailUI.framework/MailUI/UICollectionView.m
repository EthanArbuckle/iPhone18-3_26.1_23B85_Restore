@interface UICollectionView
@end

@implementation UICollectionView

uint64_t __58__UICollectionView_MailUI__mui_indexPathsForPreparedItems__block_invoke()
{
  result = objc_opt_respondsToSelector();
  mui_indexPathsForPreparedItems_shouldUseImprovedSPI = result & 1;
  return result;
}

void __125__UICollectionView_UICollectionView_MailUI__mui_interactiveDeselectAllSelectedIndexPathsUsingTransitionCoordinator_animated___block_invoke(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = *(a1 + 32);
        if (a3)
        {
          [v13 selectItemAtIndexPath:v12 animated:a4 scrollPosition:0];
        }

        else
        {
          [v13 deselectItemAtIndexPath:v12 animated:a4];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

uint64_t __125__UICollectionView_UICollectionView_MailUI__mui_interactiveDeselectAllSelectedIndexPathsUsingTransitionCoordinator_animated___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __125__UICollectionView_UICollectionView_MailUI__mui_interactiveDeselectAllSelectedIndexPathsUsingTransitionCoordinator_animated___block_invoke_3;
  v3[3] = &unk_278188BB0;
  v3[4] = *(a1 + 32);
  [MEMORY[0x277D75D18] performWithoutAnimation:v3];
  return (*(*(a1 + 48) + 16))();
}

uint64_t __125__UICollectionView_UICollectionView_MailUI__mui_interactiveDeselectAllSelectedIndexPathsUsingTransitionCoordinator_animated___block_invoke_4(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

@end