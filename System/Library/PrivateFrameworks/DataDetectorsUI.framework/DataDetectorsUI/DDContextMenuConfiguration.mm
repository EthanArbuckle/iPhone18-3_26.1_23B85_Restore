@interface DDContextMenuConfiguration
- (BOOL)performPreviewActionForMenuWithAnimator:(id)animator;
@end

@implementation DDContextMenuConfiguration

- (BOOL)performPreviewActionForMenuWithAnimator:(id)animator
{
  animatorCopy = animator;
  interactionViewControllerProvider = [(DDContextMenuConfiguration *)self interactionViewControllerProvider];
  if (interactionViewControllerProvider)
  {
    [animatorCopy setPreferredCommitStyle:1];
    previewViewController = [animatorCopy previewViewController];
    presentingViewController = [previewViewController presentingViewController];

    if (presentingViewController)
    {
      v8 = interactionViewControllerProvider[2](interactionViewControllerProvider);
      if ([v8 modalPresentationStyle] == 7)
      {
        popoverPresentationController = [v8 popoverPresentationController];
        sourceView = [popoverPresentationController sourceView];

        if (!sourceView)
        {
          [v8 setModalPresentationStyle:0];
        }
      }

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __70__DDContextMenuConfiguration_performPreviewActionForMenuWithAnimator___block_invoke;
      v15[3] = &unk_278290BC8;
      v16 = presentingViewController;
      v17 = v8;
      v11 = v8;
      presentingViewController = presentingViewController;
      [animatorCopy addAnimations:v15];

      goto LABEL_9;
    }
  }

  else
  {
    presentingViewController = [(DDContextMenuConfiguration *)self interactionURL];
    if (presentingViewController)
    {
      [animatorCopy setPreferredCommitStyle:1];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __70__DDContextMenuConfiguration_performPreviewActionForMenuWithAnimator___block_invoke_2;
      v13[3] = &unk_278290B50;
      v14 = presentingViewController;
      presentingViewController = presentingViewController;
      [animatorCopy addAnimations:v13];
      v11 = v14;
LABEL_9:

      LOBYTE(presentingViewController) = 1;
    }
  }

  return presentingViewController;
}

void __70__DDContextMenuConfiguration_performPreviewActionForMenuWithAnimator___block_invoke_2(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x277D0AC58];
  v7[0] = *MEMORY[0x277D0AC70];
  v7[1] = v4;
  v8[0] = MEMORY[0x277CBEC38];
  v8[1] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 openSensitiveURL:v3 withOptions:v5 error:0];

  v6 = *MEMORY[0x277D85DE8];
}

@end