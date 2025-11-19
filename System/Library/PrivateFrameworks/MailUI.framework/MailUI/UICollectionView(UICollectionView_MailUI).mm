@interface UICollectionView(UICollectionView_MailUI)
- (void)mui_interactiveDeselectAllSelectedIndexPathsUsingTransitionCoordinator:()UICollectionView_MailUI animated:;
@end

@implementation UICollectionView(UICollectionView_MailUI)

- (void)mui_interactiveDeselectAllSelectedIndexPathsUsingTransitionCoordinator:()UICollectionView_MailUI animated:
{
  v6 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __125__UICollectionView_UICollectionView_MailUI__mui_interactiveDeselectAllSelectedIndexPathsUsingTransitionCoordinator_animated___block_invoke;
  aBlock[3] = &unk_27818B350;
  aBlock[4] = a1;
  v7 = _Block_copy(aBlock);
  v8 = [a1 indexPathsForSelectedItems];
  if ([v8 count])
  {
    if (v6)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __125__UICollectionView_UICollectionView_MailUI__mui_interactiveDeselectAllSelectedIndexPathsUsingTransitionCoordinator_animated___block_invoke_2;
      v12[3] = &unk_27818B378;
      v12[4] = a1;
      v14 = v7;
      v13 = v8;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __125__UICollectionView_UICollectionView_MailUI__mui_interactiveDeselectAllSelectedIndexPathsUsingTransitionCoordinator_animated___block_invoke_4;
      v9[3] = &unk_27818B3A0;
      v11 = v14;
      v10 = v13;
      [v6 animateAlongsideTransition:v12 completion:v9];
    }

    else
    {
      (*(v7 + 2))(v7, v8, 0, a4);
    }
  }
}

@end