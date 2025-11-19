@interface GKNotificationBannerViewController
- (BOOL)useShortBanner;
- (BOOL)windowPointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGPoint)_hiddenBannerPosition:(CGSize)a3;
- (CGPoint)_visibleBannerCenterPosition:(CGSize)a3;
- (double)bannerWidthForViewSize:(CGSize)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)addBannerView:(id)a3;
- (void)addConstraintsForBannerView;
- (void)addConstraintsForTVOSBannerView;
- (void)handleWindowPan:(id)a3;
- (void)handleWindowSingleTap:(id)a3;
- (void)hideBannerQuickly:(BOOL)a3;
- (void)showCurrentBanner;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)windowTouchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation GKNotificationBannerViewController

- (BOOL)useShortBanner
{
  v2 = [(GKNotificationBannerViewController *)self bannerView];
  v3 = [v2 useShortBanner];

  return v3;
}

- (BOOL)windowPointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(GKNotificationBannerViewController *)self view:a4];
  v7 = [v6 subviews];

  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 layer];
          v13 = [v12 presentationLayer];
          v14 = [v13 hitTest:{x, y}];

          if (v14)
          {
            LOBYTE(v8) = 1;
            goto LABEL_12;
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v8;
}

- (void)windowTouchesEnded:(id)a3 withEvent:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = a4;
  v6 = [a3 anyObject];
  v7 = [(GKNotificationBannerViewController *)self view];
  v23 = v6;
  [v6 locationInView:v7];
  v9 = v8;
  v11 = v10;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [(GKNotificationBannerViewController *)self view];
  v13 = [v12 subviews];

  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      v17 = 0;
      do
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * v17);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = [v18 layer];
          v20 = [v19 presentationLayer];
          v21 = [v20 hitTest:{v9, v11}];

          if (v21)
          {
            v22 = [v18 touchHandler];

            if (v22)
            {
              [v18 _wasTouched:v24];
              [(GKNotificationBannerViewController *)self hideBannerQuickly:0];
            }
          }
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v15);
  }
}

- (void)handleWindowSingleTap:(id)a3
{
  if ([(GKNotificationBannerViewController *)self bannerVisible])
  {

    [(GKNotificationBannerViewController *)self hideBannerQuickly:1];
  }
}

- (void)handleWindowPan:(id)a3
{
  v7 = a3;
  if ([(GKNotificationBannerViewController *)self bannerVisible])
  {
    v4 = [(GKNotificationBannerViewController *)self view];
    [v7 translationInView:v4];
    v6 = v5;

    if (v6 < 0.0)
    {
      [(GKNotificationBannerViewController *)self hideBannerQuickly:1];
    }
  }
}

- (void)addBannerView:(id)a3
{
  v8 = a3;
  v4 = [(GKNotificationBannerViewController *)self bannerView];

  if (v4)
  {
    [(GKNotificationBannerViewController *)self setBannerYPositionConstraint:0];
    [(GKNotificationBannerViewController *)self setBannerWidthConstraint:0];
    v5 = [(GKNotificationBannerViewController *)self bannerView];
    [v5 removeFromSuperview];

    [(GKNotificationBannerViewController *)self setBannerView:0];
  }

  [(GKNotificationBannerViewController *)self setBannerView:v8];
  v6 = [(GKNotificationBannerViewController *)self view];
  v7 = [(GKNotificationBannerViewController *)self bannerView];
  [v6 addSubview:v7];

  [(GKNotificationBannerViewController *)self addConstraintsForBannerView];
}

- (void)showCurrentBanner
{
  v3 = [(GKNotificationBannerViewController *)self bannerView];
  v4 = [(GKNotificationBannerViewController *)self view];
  v5 = [v4 subviews];
  v6 = [v5 containsObject:v3];

  if ((v6 & 1) == 0)
  {
    v7 = [(GKNotificationBannerViewController *)self view];
    [v7 addSubview:v3];
  }

  [(GKNotificationBannerViewController *)self setBannerAnimating:1];
  [(GKNotificationBannerViewController *)self setBannerVisible:1];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__GKNotificationBannerViewController_showCurrentBanner__block_invoke;
  aBlock[3] = &unk_279669E48;
  aBlock[4] = self;
  v8 = v3;
  v21 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [(GKNotificationBannerViewController *)self view];
  [v10 layoutIfNeeded];

  v11 = MEMORY[0x277D75D18];
  v17 = v9;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __55__GKNotificationBannerViewController_showCurrentBanner__block_invoke_3;
  v18[3] = &unk_279669E48;
  v18[4] = self;
  v19 = v8;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__GKNotificationBannerViewController_showCurrentBanner__block_invoke_4;
  v16[3] = &unk_279669CB8;
  v12 = v9;
  v13 = v8;
  [v11 animateWithDuration:38 delay:v18 options:v16 animations:0.3 completion:0.0];

  v14 = dispatch_time(0, 1000000000);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__GKNotificationBannerViewController_showCurrentBanner__block_invoke_5;
  v15[3] = &unk_2796699A8;
  v15[4] = self;
  dispatch_after(v14, MEMORY[0x277D85CD0], v15);
}

void __55__GKNotificationBannerViewController_showCurrentBanner__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBannerAnimating:0];
  [*(a1 + 40) duration];
  v3 = dispatch_time(0, (v2 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__GKNotificationBannerViewController_showCurrentBanner__block_invoke_2;
  block[3] = &unk_2796699A8;
  block[4] = *(a1 + 32);
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

uint64_t __55__GKNotificationBannerViewController_showCurrentBanner__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) bannerVisible];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 hideBannerQuickly:0];
  }

  return result;
}

void __55__GKNotificationBannerViewController_showCurrentBanner__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) bounds];
  [v2 _visibleBannerCenterPosition:{v3, v4}];
  v6 = v5;
  v7 = [*(a1 + 32) bannerYPositionConstraint];
  [v7 setConstant:v6];

  v8 = [*(a1 + 32) view];
  [v8 layoutIfNeeded];
}

void __55__GKNotificationBannerViewController_showCurrentBanner__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) bannerView];
  v3 = [v2 canTransitionToPlayerAvatar];

  v4 = [*(a1 + 32) bannerView];
  v5 = v4;
  if (v3)
  {
    [v4 transitionToPlayerAvatar];
  }

  else
  {
    [v4 setCanTransitionToPlayerAvatar:1];
  }
}

- (void)hideBannerQuickly:(BOOL)a3
{
  v3 = a3;
  v5 = [(GKNotificationBannerViewController *)self bannerView];
  [(GKNotificationBannerViewController *)self setBannerAnimating:1];
  [(GKNotificationBannerViewController *)self setBannerVisible:0];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__GKNotificationBannerViewController_hideBannerQuickly___block_invoke;
  aBlock[3] = &unk_279669E48;
  aBlock[4] = self;
  v6 = v5;
  v18 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(GKNotificationBannerViewController *)self view];
  [v8 layoutIfNeeded];

  v9 = MEMORY[0x277D75D18];
  if (v3)
  {
    v10 = 0.1;
  }

  else
  {
    v10 = 0.3;
  }

  v14 = v7;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__GKNotificationBannerViewController_hideBannerQuickly___block_invoke_3;
  v15[3] = &unk_279669E48;
  v15[4] = self;
  v16 = v6;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__GKNotificationBannerViewController_hideBannerQuickly___block_invoke_4;
  v13[3] = &unk_279669CB8;
  v11 = v7;
  v12 = v6;
  [v9 animateWithDuration:38 delay:v15 options:v13 animations:v10 completion:0.0];
}

void __56__GKNotificationBannerViewController_hideBannerQuickly___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBannerAnimating:0];
  [*(a1 + 40) callCompletionHandler];
  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 32) setBannerView:0];
  v2 = dispatch_time(0, 500000000);
  v3 = MEMORY[0x277D85CD0];

  dispatch_after(v2, v3, &__block_literal_global_215);
}

uint64_t __56__GKNotificationBannerViewController_hideBannerQuickly___block_invoke_2()
{
  v0 = [sBannerWindow bannerSemaphore];

  if (v0)
  {
    v1 = [sBannerWindow bannerSemaphore];
    dispatch_semaphore_signal(v1);
  }

  result = GKAtomicDecrement32();
  if (!result)
  {
    objc_sync_enter(@"GKNotificationBannerSyncObject");
    v3 = sBannerWindow;
    sBannerWindow = 0;

    return objc_sync_exit(@"GKNotificationBannerSyncObject");
  }

  return result;
}

void __56__GKNotificationBannerViewController_hideBannerQuickly___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) bounds];
  [v2 _hiddenBannerPosition:{v3, v4}];
  v6 = v5;
  v7 = [*(a1 + 32) bannerYPositionConstraint];
  [v7 setConstant:v6];

  v8 = [*(a1 + 32) view];
  [v8 layoutIfNeeded];
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 windows];
  v5 = [v4 count];

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [MEMORY[0x277D75128] sharedApplication];
  v7 = [v6 windows];
  v8 = [v7 objectAtIndexedSubscript:0];

  v9 = [(GKNotificationBannerViewController *)self view];
  v10 = [v9 window];
  v11 = v10;
  if (v8 == v10)
  {
  }

  else
  {
    v12 = [v8 rootViewController];

    if (v12)
    {
      v13 = [v8 rootViewController];
      v14 = [v13 supportedInterfaceOrientations];

      if (v14)
      {
        goto LABEL_11;
      }
    }
  }

  v15 = [MEMORY[0x277D75128] sharedApplication];
  v14 = [v15 supportedInterfaceOrientationsForWindow:v8];

  if (!v14)
  {
LABEL_8:
    v8 = [(GKNotificationBannerViewController *)self traitCollection];
    if ([v8 userInterfaceIdiom])
    {
      v14 = 30;
    }

    else
    {
      v14 = 26;
    }

LABEL_11:
  }

  return v14;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = GKNotificationBannerViewController;
  [(GKNotificationBannerViewController *)&v11 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(GKNotificationBannerViewController *)self bannerView];
  v9 = [v8 superview];

  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __89__GKNotificationBannerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v10[3] = &unk_27966AD00;
    v10[4] = self;
    *&v10[5] = width;
    *&v10[6] = height;
    [v7 animateAlongsideTransition:v10 completion:0];
  }
}

void __89__GKNotificationBannerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) bannerWidthConstraint];

  if (v2)
  {
    [*(a1 + 32) bannerWidthForViewSize:{*(a1 + 40), *(a1 + 48)}];
    v4 = v3;
    v5 = [*(a1 + 32) bannerWidthConstraint];
    [v5 setConstant:v4];
  }

  v6 = [*(a1 + 32) bannerYPositionConstraint];
  [v6 constant];
  v8 = v7;

  v9 = *(a1 + 32);
  v10 = [v9 bannerView];
  [v10 bounds];
  [v9 _hiddenBannerPosition:{v11, v12}];
  v14 = v13;

  if (v8 != v14)
  {
    v15 = *(a1 + 32);
    v16 = [v15 bannerView];
    [v16 bounds];
    [v15 _visibleBannerCenterPosition:{v17, v18}];
    v20 = v19;
    v21 = [*(a1 + 32) bannerYPositionConstraint];
    [v21 setConstant:v20];
  }

  v22 = [*(a1 + 32) view];
  [v22 layoutIfNeeded];
}

- (double)bannerWidthForViewSize:(CGSize)a3
{
  width = a3.width;
  v5 = [(GKNotificationBannerViewController *)self useShortBanner:a3.width];
  v6 = 30.0;
  if (v5)
  {
    v6 = 15.0;
  }

  v7 = width - v6;
  v8 = [(GKNotificationBannerViewController *)self bannerView];
  [v8 preferredBannerWidth];
  v10 = v9;

  if (v7 <= v10)
  {
    return v7;
  }

  else
  {
    return v10;
  }
}

- (void)addConstraintsForTVOSBannerView
{
  v3 = [(GKNotificationBannerViewController *)self bannerView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(GKNotificationBannerViewController *)self bannerView];
  v5 = [v4 heightAnchor];
  if ([(GKNotificationBannerViewController *)self useShortBanner])
  {
    v6 = 0x4044000000000000;
LABEL_7:
    v9 = *&v6;
    goto LABEL_8;
  }

  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 != 1 || (v9 = 66.0, *MEMORY[0x277D0C258] == 1) && (*MEMORY[0x277D0C8F0] & 1) == 0)
  {
    v6 = 0x4050000000000000;
    goto LABEL_7;
  }

LABEL_8:
  v10 = [v5 constraintEqualToConstant:v9];
  [v10 setActive:1];

  v11 = [(GKNotificationBannerViewController *)self bannerView];
  v12 = [v11 widthAnchor];
  v13 = [v12 constraintEqualToConstant:640.0];
  [v13 setActive:1];

  v14 = [(GKNotificationBannerViewController *)self view];
  v15 = [v14 trailingAnchor];
  v16 = [(GKNotificationBannerViewController *)self bannerView];
  v17 = [v16 trailingAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v23 = [(GKNotificationBannerViewController *)self view];
  v19 = [v23 topAnchor];
  v20 = [(GKNotificationBannerViewController *)self bannerView];
  v21 = [v20 topAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  [v22 setActive:1];
}

- (void)addConstraintsForBannerView
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  if ((GKApplicationLinkedOnOrAfter() & 1) == 0)
  {
    v8 = [MEMORY[0x277D75128] sharedApplication];
    v9 = [v8 statusBarOrientation] - 3;

    if (v9 >= 2)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }

    if (v9 < 2)
    {
      v5 = v7;
    }

    v7 = v10;
  }

  v11 = [(GKNotificationBannerViewController *)self bannerView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(GKNotificationBannerViewController *)self bannerWidthForViewSize:v5, v7];
  v13 = v12;
  v14 = MEMORY[0x277CCAAD0];
  v15 = [(GKNotificationBannerViewController *)self bannerView];
  v16 = [v14 constraintWithItem:v15 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v13];
  [(GKNotificationBannerViewController *)self setBannerWidthConstraint:v16];

  v17 = [(GKNotificationBannerViewController *)self bannerView];
  v18 = [(GKNotificationBannerViewController *)self bannerWidthConstraint];
  [v17 addConstraint:v18];

  v19 = [(GKNotificationBannerViewController *)self bannerView];
  v20 = MEMORY[0x277CCAAD0];
  v21 = [(GKNotificationBannerViewController *)self bannerView];
  if ([(GKNotificationBannerViewController *)self useShortBanner])
  {
    *&v22 = 40.0;
LABEL_14:
    v25 = *&v22;
    goto LABEL_15;
  }

  v23 = [MEMORY[0x277D75418] currentDevice];
  v24 = [v23 userInterfaceIdiom];

  if (v24 != 1 || (v25 = 66.0, *MEMORY[0x277D0C258] == 1) && (*MEMORY[0x277D0C8F0] & 1) == 0)
  {
    *&v22 = 64.0;
    goto LABEL_14;
  }

LABEL_15:
  v26 = [v20 constraintWithItem:v21 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v25];
  [v19 addConstraint:v26];

  v27 = [(GKNotificationBannerViewController *)self view];
  v28 = MEMORY[0x277CCAAD0];
  v29 = [(GKNotificationBannerViewController *)self bannerView];
  v30 = [(GKNotificationBannerViewController *)self view];
  v31 = [v28 constraintWithItem:v29 attribute:9 relatedBy:0 toItem:v30 attribute:9 multiplier:1.0 constant:0.0];
  [v27 addConstraint:v31];

  v32 = [(GKNotificationBannerViewController *)self bannerView];
  [v32 bounds];
  [(GKNotificationBannerViewController *)self _hiddenBannerPosition:v33, v34];
  v36 = v35;

  v37 = MEMORY[0x277CCAAD0];
  v38 = [(GKNotificationBannerViewController *)self bannerView];
  v39 = [(GKNotificationBannerViewController *)self view];
  v40 = [v37 constraintWithItem:v38 attribute:10 relatedBy:0 toItem:v39 attribute:3 multiplier:1.0 constant:v36];
  [(GKNotificationBannerViewController *)self setBannerYPositionConstraint:v40];

  v42 = [(GKNotificationBannerViewController *)self view];
  v41 = [(GKNotificationBannerViewController *)self bannerYPositionConstraint];
  [v42 addConstraint:v41];
}

- (CGPoint)_hiddenBannerPosition:(CGSize)a3
{
  v4 = [(GKNotificationBannerViewController *)self view:a3.width];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v22.origin.x = v6;
  v22.origin.y = v8;
  v22.size.width = v10;
  v22.size.height = v12;
  MidX = CGRectGetMidX(v22);
  v23.origin.x = v6;
  v23.origin.y = v8;
  v23.size.width = v10;
  v23.size.height = v12;
  MinY = CGRectGetMinY(v23);
  v15 = [(GKNotificationBannerViewController *)self useShortBanner];
  v16 = 20.0;
  if (!v15)
  {
    v17 = [MEMORY[0x277D75418] currentDevice];
    v18 = [v17 userInterfaceIdiom];

    if (v18 != 1 || (v16 = 33.0, *MEMORY[0x277D0C258] == 1) && (*MEMORY[0x277D0C8F0] & 1) == 0)
    {
      v16 = 32.0;
    }
  }

  v19 = MinY - floor(v16);
  v20 = MidX;
  result.y = v19;
  result.x = v20;
  return result;
}

- (CGPoint)_visibleBannerCenterPosition:(CGSize)a3
{
  v4 = [(GKNotificationBannerViewController *)self view:a3.width];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(GKNotificationBannerViewController *)self view];
  [v13 safeAreaInsets];
  v15 = v14;

  v28.origin.x = v6;
  v28.origin.y = v8;
  v28.size.width = v10;
  v28.size.height = v12;
  MidX = CGRectGetMidX(v28);
  v29.origin.x = v6;
  v29.origin.y = v8;
  v29.size.width = v10;
  v29.size.height = v12;
  MinY = CGRectGetMinY(v29);
  v18 = 20.0;
  if (![(GKNotificationBannerViewController *)self useShortBanner])
  {
    v19 = [MEMORY[0x277D75418] currentDevice];
    v20 = [v19 userInterfaceIdiom];

    if (v20 != 1 || (v18 = 33.0, *MEMORY[0x277D0C258] == 1) && (*MEMORY[0x277D0C8F0] & 1) == 0)
    {
      v18 = 32.0;
    }
  }

  v21 = [(GKNotificationBannerViewController *)self useShortBanner];
  v22 = 21.0;
  if (!v21)
  {
    v23 = [MEMORY[0x277D75418] currentDevice];
    v24 = [v23 userInterfaceIdiom];

    v22 = 8.0;
    if (v24 == 1)
    {
      if (*MEMORY[0x277D0C8F0] & 1 | ((*MEMORY[0x277D0C258] & 1) == 0))
      {
        v22 = 16.0;
      }
    }
  }

  v25 = v15 + MinY + floor(v18) + v22;
  v26 = MidX;
  result.y = v25;
  result.x = v26;
  return result;
}

@end