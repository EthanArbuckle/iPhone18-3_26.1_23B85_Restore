@interface DYPlaybackViewController
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation DYPlaybackViewController

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v10.receiver = self;
  v10.super_class = DYPlaybackViewController;
  [(DYPlaybackViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__DYPlaybackViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_279665010;
  v9[4] = self;
  v8 = MEMORY[0x2530352B0](v9);
  [coordinatorCopy animateAlongsideTransition:v8 completion:&__block_literal_global];
}

void __79__DYPlaybackViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) view];
  v3 = [v2 layer];
  v4 = v3;
  if (v3)
  {
    [v3 transform];
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
  }

  CATransform3DInvert(&v26, &v25);
  v5 = [*(a1 + 32) view];
  v6 = [v5 layer];
  v25 = v26;
  [v6 setSublayerTransform:&v25];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [*(a1 + 32) view];
  v8 = [v7 layer];
  v9 = [v8 sublayers];

  v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v10)
  {
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [*(a1 + 32) view];
        v15 = [v14 layer];
        [v15 bounds];
        v17 = v16;
        v19 = v18;

        [v13 setPosition:{v17 * 0.5, v19 * 0.5}];
      }

      v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v10);
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end