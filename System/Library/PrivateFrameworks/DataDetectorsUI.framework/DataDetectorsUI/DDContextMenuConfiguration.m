@interface DDContextMenuConfiguration
- (BOOL)performPreviewActionForMenuWithAnimator:(id)a3;
@end

@implementation DDContextMenuConfiguration

- (BOOL)performPreviewActionForMenuWithAnimator:(id)a3
{
  v4 = a3;
  v5 = [(DDContextMenuConfiguration *)self interactionViewControllerProvider];
  if (v5)
  {
    [v4 setPreferredCommitStyle:1];
    v6 = [v4 previewViewController];
    v7 = [v6 presentingViewController];

    if (v7)
    {
      v8 = v5[2](v5);
      if ([v8 modalPresentationStyle] == 7)
      {
        v9 = [v8 popoverPresentationController];
        v10 = [v9 sourceView];

        if (!v10)
        {
          [v8 setModalPresentationStyle:0];
        }
      }

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __70__DDContextMenuConfiguration_performPreviewActionForMenuWithAnimator___block_invoke;
      v15[3] = &unk_278290BC8;
      v16 = v7;
      v17 = v8;
      v11 = v8;
      v7 = v7;
      [v4 addAnimations:v15];

      goto LABEL_9;
    }
  }

  else
  {
    v7 = [(DDContextMenuConfiguration *)self interactionURL];
    if (v7)
    {
      [v4 setPreferredCommitStyle:1];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __70__DDContextMenuConfiguration_performPreviewActionForMenuWithAnimator___block_invoke_2;
      v13[3] = &unk_278290B50;
      v14 = v7;
      v7 = v7;
      [v4 addAnimations:v13];
      v11 = v14;
LABEL_9:

      LOBYTE(v7) = 1;
    }
  }

  return v7;
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