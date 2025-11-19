@interface UIViewController
@end

@implementation UIViewController

void __113__UIViewController_GKChallengeAdditions___gkPresentSendDialogForChallenge_selectPlayers_defaultMessage_complete___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  [*(a1 + 32) _gkPresentChallengeVC:v4];
}

uint64_t __113__UIViewController_GKChallengeAdditions___gkPresentSendDialogForChallenge_selectPlayers_defaultMessage_complete___block_invoke_2(void *a1, void *a2)
{
  [a2 count];
  if ((*MEMORY[0x277D0C258] & 1) != 0 || ([*(*(a1[6] + 8) + 40) presentingViewController], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    if (!a1[5])
    {
      v5 = [*(*(a1[6] + 8) + 40) navigationController];
      v6 = [v5 popToViewController:a1[4] animated:1];
    }
  }

  else
  {
    v4 = [*(*(a1[6] + 8) + 40) presentingViewController];

    if (v4)
    {
      [*(*(a1[6] + 8) + 40) dismissViewControllerAnimated:1 completion:&__block_literal_global_149];
    }
  }

  result = a1[5];
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

@end