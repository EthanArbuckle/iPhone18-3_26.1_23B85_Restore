@interface HUDashboardNavigationController
- (BOOL)_shouldDisableAnimationForViewController:(id)a3;
- (BOOL)navigationBar:(id)a3 shouldPushItem:(id)a4;
- (BOOL)popToBottomNavigationControllerWithCustomAnimation;
- (BOOL)supportsEditing;
- (HUDashboardFilterBarController)filterBarController;
- (HUDashboardNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (HUDashboardNavigator)dashboardNavigator;
- (NSString)editActionTitle;
- (NSString)editActionTitleLocalizationKey;
- (id)_editActionDelegate;
- (id)_loadWallpaperForViewController:(uint64_t)a1;
- (id)childViewControllerForStatusBarStyle;
- (id)splitViewController;
- (int64_t)preferredStatusBarStyle;
- (void)dashboardFilterBarController:(id)a3 didUpdatePreferredHeight:(double)a4;
- (void)dashboardFilterBarControllerDidLayoutSubviews:(id)a3;
- (void)endEditing;
- (void)navigationBar:(id)a3 didChangeBackgroundVisibility:(BOOL)a4;
- (void)navigationBar:(id)a3 didPushItem:(id)a4;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)sendContextMenuMetricsWithTitleLocalizationKey:(id)a3;
- (void)startEditing;
@end

@implementation HUDashboardNavigationController

- (HUDashboardNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v7.receiver = self;
  v7.super_class = HUDashboardNavigationController;
  v4 = [(HUDashboardNavigationController *)&v7 initWithNavigationBarClass:a3 toolbarClass:a4];
  if (v4)
  {
    v5 = +[HUDashboardPresentationManager sharedManager];
    [(HUDashboardNavigationController *)v4 setDelegate:v5];
  }

  return v4;
}

- (HUDashboardFilterBarController)filterBarController
{
  filterBarController = self->_filterBarController;
  if (!filterBarController)
  {
    v4 = objc_opt_new();
    v5 = self->_filterBarController;
    self->_filterBarController = v4;

    [(HUDashboardFilterBarController *)self->_filterBarController setDelegate:self];
    filterBarController = self->_filterBarController;
  }

  return filterBarController;
}

- (BOOL)navigationBar:(id)a3 shouldPushItem:(id)a4
{
  v5 = a4;
  v6 = +[HUDashboardPresentationManager sharedManager];
  [v6 navigationController:self willPushItem:v5];

  return 1;
}

- (void)navigationBar:(id)a3 didPushItem:(id)a4
{
  v5 = a4;
  v6 = +[HUDashboardPresentationManager sharedManager];
  [v6 navigationController:self didPushItem:v5];
}

- (void)dashboardFilterBarController:(id)a3 didUpdatePreferredHeight:(double)a4
{
  v6 = +[HUDashboardPresentationManager sharedManager];
  [v6 navigationController:self didUpdatePreferredPaletteHeight:a4];
}

- (void)dashboardFilterBarControllerDidLayoutSubviews:(id)a3
{
  objc_opt_class();
  v4 = [(HUDashboardNavigationController *)self topViewController];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 setFilterBarNeedsUpdate];
}

- (id)childViewControllerForStatusBarStyle
{
  v3 = [(HUDashboardNavigationController *)self navigationBar];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    v4 = [(HUDashboardNavigationController *)self topViewController];
  }

  return v4;
}

- (int64_t)preferredStatusBarStyle
{
  objc_opt_class();
  v3 = [(HUDashboardNavigationController *)self navigationBar];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 isBackgroundVisible];
  return v6 ^ 1u;
}

- (void)navigationBar:(id)a3 didChangeBackgroundVisibility:(BOOL)a4
{
  v5 = [objc_alloc(MEMORY[0x277D75A80]) initWithDefaultParameters];
  [v5 setSkipFencing:1];
  [(HUDashboardNavigationController *)self _setNeedsStatusBarAppearanceUpdateWithAnimationParameters:v5];
}

- (HUDashboardNavigator)dashboardNavigator
{
  v3 = [(HUDashboardNavigationController *)self tabBarController];

  if (v3)
  {
    v4 = [(HUDashboardNavigationController *)self tabBarController];
  }

  else
  {
    v5 = [(HUDashboardNavigationController *)self splitViewController];

    if (!v5)
    {
      goto LABEL_10;
    }

    v4 = [(HUDashboardNavigationController *)self splitViewController];
  }

  v6 = v4;
  if ([v4 conformsToProtocol:&unk_282556F78])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v8 dashboardNavigator];

    goto LABEL_11;
  }

LABEL_10:
  v9 = 0;
LABEL_11:

  return v9;
}

- (id)_editActionDelegate
{
  v2 = [(HUDashboardNavigationController *)self topViewController];
  if ([v2 conformsToProtocol:&unk_282557098])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)editActionTitle
{
  v2 = [(HUDashboardNavigationController *)self _editActionDelegate];
  v3 = [v2 editActionTitle];

  return v3;
}

- (NSString)editActionTitleLocalizationKey
{
  v2 = [(HUDashboardNavigationController *)self _editActionDelegate];
  v3 = [v2 editActionTitleLocalizationKey];

  return v3;
}

- (BOOL)supportsEditing
{
  v2 = [(HUDashboardNavigationController *)self _editActionDelegate];
  v3 = [v2 supportsEditing];

  return v3;
}

- (void)startEditing
{
  v3 = [(HUDashboardNavigationController *)self _editActionDelegate];
  [v3 startEditing];

  v4 = [(HUDashboardNavigationController *)self filterBarController];
  [v4 setEditing:1 animated:1];
}

- (void)endEditing
{
  v3 = [(HUDashboardNavigationController *)self _editActionDelegate];
  [v3 endEditing];

  v4 = [(HUDashboardNavigationController *)self filterBarController];
  [v4 setEditing:0 animated:1];
}

- (void)sendContextMenuMetricsWithTitleLocalizationKey:(id)a3
{
  v9 = a3;
  objc_opt_class();
  v4 = [(HUDashboardNavigationController *)self topViewController];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if ([v6 conformsToProtocol:&unk_282557098])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (objc_opt_respondsToSelector())
  {
    [v8 sendContextMenuMetricsWithTitleLocalizationKey:v9];
  }
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(HUDashboardNavigationController *)self _shouldDisableAnimationForViewController:v6]&& v4)
  {
    v7 = [(HUDashboardNavigationController *)self _loadWallpaperForViewController:v6];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__HUDashboardNavigationController_pushViewController_animated___block_invoke;
    v10[3] = &unk_277DC1B58;
    v10[4] = self;
    v11 = v6;
    v12 = 1;
    v8 = [v7 addCompletionBlock:v10];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HUDashboardNavigationController;
    [(HUDashboardNavigationController *)&v9 pushViewController:v6 animated:v4];
  }
}

- (id)_loadWallpaperForViewController:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    objc_opt_class();
    v4 = v3;
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    v7 = [v6 itemManager];
    v8 = [v7 context];

    v9 = [MEMORY[0x277D14D18] sharedInstance];
    v10 = [v8 room];
    v11 = v10;
    if (!v10)
    {
      v11 = [v8 home];
    }

    v12 = [v9 wallpaperForHomeKitObject:v11];
    v13 = [v12 flatMap:&__block_literal_global_217];

    if (!v10)
    {
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __63__HUDashboardNavigationController_pushViewController_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v5 = v2;
    v75 = a2;
    if (v3)
    {
      objc_opt_class();
      v6 = [v3 splitViewController];
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;

      objc_opt_class();
      v9 = [v8 viewControllerForColumn:0];
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      objc_opt_class();
      v12 = v5;
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v74 = v13;

      v14 = [v8 view];
      v15 = [v14 subviews];
      v73 = [v15 na_firstObjectPassingTest:&__block_literal_global_113_1];

      v16 = objc_alloc_init(MEMORY[0x277D75D18]);
      v91 = 0;
      v92 = &v91;
      v93 = 0x4010000000;
      v94 = &unk_20D68B106;
      v95 = 0u;
      v96 = 0u;
      v17 = [v3 view];
      [v17 frame];
      *&v95 = v18;
      *(&v95 + 1) = v19;
      *&v96 = v20;
      *(&v96 + 1) = v21;

      v22 = v92;
      *(v92 + 2) = *MEMORY[0x277CBF348];
      [v16 setFrame:{v22[4], v22[5], v22[6], v22[7]}];
      v72 = v5;
      v23 = [v8 view];
      v24 = [v3 view];
      [v24 frame];
      v25 = [v23 resizableSnapshotViewFromRect:0 afterScreenUpdates:? withCapInsets:?];

      [v16 addSubview:v25];
      v71 = v25;
      v26 = [HUWallpaperView alloc];
      v27 = [v8 view];
      [v27 frame];
      v28 = [(HUWallpaperView *)v26 initWithFrame:?];

      v29 = [v8 view];
      v30 = [v8 view];
      [v30 frame];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v39 = [v3 view];
      [v29 convertRect:v39 toView:{v32, v34, v36, v38}];
      [(HUWallpaperView *)v28 setFrame:?];

      v40 = [v74 view];
      [v40 insertSubview:v28 atIndex:0];

      [(HUWallpaperView *)v28 populateWallpaper:v75 withAnimation:0 onlyIfNeeded:0];
      if ([MEMORY[0x277D14CE8] isAMac] & 1) != 0 || (objc_msgSend(MEMORY[0x277D14CE8], "isAVisionPro", v25))
      {
        v41 = [v12 view];
        v42 = [v41 snapshotViewAfterScreenUpdates:1];
      }

      else
      {
        v90.receiver = v3;
        v90.super_class = HUDashboardNavigationController;
        objc_msgSendSuper2(&v90, sel_pushViewController_animated_, v12, 0);
        v41 = [v3 view];
        v42 = [v41 snapshotViewAfterScreenUpdates:1];
      }

      v44 = v42;

      [v44 frame];
      v45 = v92;
      *(v92 + 4) = v46;
      *(v45 + 5) = v47;
      *(v45 + 6) = v48;
      *(v45 + 7) = v49;
      v50 = [v3 view];
      [v50 frame];
      v92[4] = CGRectGetWidth(v97);

      [v44 setFrame:{v92[4], v92[5], v92[6], v92[7]}];
      [v16 addSubview:v44];
      v51 = [v3 view];
      [v51 addSubview:v16];

      if (([MEMORY[0x277D14CE8] isAMac] & 1) != 0 || objc_msgSend(MEMORY[0x277D14CE8], "isAVisionPro"))
      {
        v89.receiver = v3;
        v89.super_class = HUDashboardNavigationController;
        objc_msgSendSuper2(&v89, sel_pushViewController_animated_, v12, 0);
      }

      v52 = [HUWallpaperView alloc];
      v53 = [v8 view];
      [v53 frame];
      v54 = [(HUWallpaperView *)v52 initWithFrame:?];

      [(HUWallpaperView *)v54 frame];
      v55 = v92;
      *(v92 + 4) = v56;
      *(v55 + 5) = v57;
      *(v55 + 6) = v58;
      *(v55 + 7) = v59;
      v60 = [v11 view];
      [v60 frame];
      v92[4] = -v61;

      [(HUWallpaperView *)v54 setFrame:v92[4], v92[5], v92[6], v92[7]];
      v62 = [v11 view];
      [v62 insertSubview:v54 atIndex:0];

      [(HUWallpaperView *)v54 populateWallpaper:v75 withAnimation:0 onlyIfNeeded:0];
      [(HUWallpaperView *)v54 setAlpha:0.0];
      v63 = MEMORY[0x277D75D18];
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __89__HUDashboardNavigationController__customAnimationForHomeVCToDetailVC_detailVCWallpaper___block_invoke_2;
      v83[3] = &unk_277DC1C10;
      v88 = &v91;
      v64 = v44;
      v84 = v64;
      v65 = v71;
      v85 = v65;
      v66 = v11;
      v86 = v66;
      v87 = v54;
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __89__HUDashboardNavigationController__customAnimationForHomeVCToDetailVC_detailVCWallpaper___block_invoke_5;
      v77[3] = &unk_277DC1C38;
      v67 = v73;
      v78 = v67;
      v79 = v75;
      v68 = v16;
      v80 = v68;
      v69 = v28;
      v81 = v69;
      v70 = v87;
      v82 = v70;
      [v63 animateKeyframesWithDuration:0 delay:v83 options:v77 animations:0.6 completion:0.0];

      _Block_object_dispose(&v91, 8);
      v5 = v72;
    }
  }

  else
  {
    v43 = *(a1 + 48);
    v76.receiver = *(a1 + 32);
    v76.super_class = HUDashboardNavigationController;
    objc_msgSendSuper2(&v76, sel_pushViewController_animated_, v2, v43);
  }
}

- (BOOL)popToBottomNavigationControllerWithCustomAnimation
{
  v3 = [(HUDashboardNavigationController *)self topViewController];
  v4 = [(HUDashboardNavigationController *)self _shouldDisableAnimationForViewController:v3];

  if (v4)
  {
    v5 = [(HUDashboardNavigationController *)self bottomViewController];
    v6 = [(HUDashboardNavigationController *)self _loadWallpaperForViewController:v5];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __85__HUDashboardNavigationController_popToBottomNavigationControllerWithCustomAnimation__block_invoke;
    v9[3] = &unk_277DC1B80;
    v9[4] = self;
    v7 = [v6 addCompletionBlock:v9];
  }

  return v4;
}

void __85__HUDashboardNavigationController_popToBottomNavigationControllerWithCustomAnimation__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v108 = a2;
    if (v2)
    {
      objc_opt_class();
      v3 = [v2 splitViewController];
      if (objc_opt_isKindOfClass())
      {
        v4 = v3;
      }

      else
      {
        v4 = 0;
      }

      v5 = v4;

      objc_opt_class();
      v6 = [v5 viewControllerForColumn:0];
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      v106 = v7;

      objc_opt_class();
      v8 = [v2 bottomViewController];
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v105 = v9;

      v10 = [v5 view];
      v11 = [v10 subviews];
      v12 = [v11 na_firstObjectPassingTest:&__block_literal_global_121_3];

      v104 = v12;
      [v12 setDisableWallpaperUpdate:1];
      v13 = objc_alloc_init(MEMORY[0x277D75D18]);
      v125 = 0;
      v126 = &v125;
      v127 = 0x4010000000;
      v128 = &unk_20D68B106;
      v129 = 0u;
      v130 = 0u;
      v14 = [v2 view];
      [v14 frame];
      *&v129 = v15;
      *(&v129 + 1) = v16;
      *&v130 = v17;
      *(&v130 + 1) = v18;

      v19 = v126;
      *(v126 + 2) = *MEMORY[0x277CBF348];
      [v13 setFrame:{v19[4], v19[5], v19[6], v19[7]}];
      v20 = [v5 view];
      v21 = [v2 view];
      [v21 frame];
      v22 = [v20 resizableSnapshotViewFromRect:0 afterScreenUpdates:? withCapInsets:?];

      [v13 addSubview:v22];
      v102 = v22;
      v23 = [HUWallpaperView alloc];
      v24 = [v5 view];
      [v24 frame];
      v107 = [(HUWallpaperView *)v23 initWithFrame:?];

      v25 = [v5 view];
      v26 = [v5 view];
      [v26 frame];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v35 = [v2 view];
      [v25 convertRect:v35 toView:{v28, v30, v32, v34}];
      [(HUWallpaperView *)v107 setFrame:?];

      v36 = [v105 view];
      [v36 insertSubview:v107 atIndex:0];

      [(HUWallpaperView *)v107 populateWallpaper:v108 withAnimation:0 onlyIfNeeded:0];
      if ([MEMORY[0x277D14CE8] isAMac])
      {
        v37 = [v105 view];
        v38 = [v37 snapshotViewAfterScreenUpdates:1];
      }

      else
      {
        v124.receiver = v2;
        v124.super_class = HUDashboardNavigationController;
        v40 = objc_msgSendSuper2(&v124, sel_popViewControllerAnimated_, 0, v102);
        v37 = [v2 view];
        v38 = [v37 snapshotViewAfterScreenUpdates:1];
      }

      v41 = v38;

      [v41 frame];
      v42 = v126;
      *(v126 + 4) = v43;
      *(v42 + 5) = v44;
      *(v42 + 6) = v45;
      *(v42 + 7) = v46;
      v47 = [v2 view];
      [v47 frame];
      v126[4] = -CGRectGetWidth(v131);

      [v41 setFrame:{v126[4], v126[5], v126[6], v126[7]}];
      [v13 addSubview:v41];
      v48 = [v2 view];
      [v48 addSubview:v13];

      if ([MEMORY[0x277D14CE8] isAMac])
      {
        v123.receiver = v2;
        v123.super_class = HUDashboardNavigationController;
        v49 = objc_msgSendSuper2(&v123, sel_popViewControllerAnimated_, 0);
        v50 = [v2 filterBarController];
        v51 = [v50 collectionView];
        v52 = [v51 effectiveUserInterfaceLayoutDirection];

        v53 = [HUWallpaperView alloc];
        v54 = [v5 view];
        [v54 frame];
        v55 = [(HUWallpaperView *)v53 initWithFrame:?];

        v56 = [v5 view];
        v57 = [v5 view];
        [v57 frame];
        v59 = v58;
        v61 = v60;
        v63 = v62;
        v65 = v64;
        v66 = [v2 filterBarController];
        v67 = [v66 collectionView];
        [v56 convertRect:v67 toView:{v59, v61, v63, v65}];
        [(HUWallpaperView *)v55 setFrame:?];

        if (v52 == 1)
        {
          [(HUWallpaperView *)v55 frame];
          v68 = v126;
          *(v126 + 5) = v69;
          *(v68 + 6) = v70;
          *(v68 + 7) = v71;
          v68[4] = 0.0;
          [(HUWallpaperView *)v55 setFrame:0.0];
        }

        v72 = [v2 filterBarController];
        v73 = [v72 collectionView];
        [v73 insertSubview:v55 atIndex:0];

        [(HUWallpaperView *)v55 populateWallpaper:v108 withAnimation:0 onlyIfNeeded:0];
        v74 = [v2 filterBarController];
        v75 = [v74 collectionView];
        v76 = [v75 snapshotViewAfterScreenUpdates:1];

        [v76 frame];
        v77 = v126;
        *(v126 + 4) = v78;
        *(v77 + 5) = v79;
        *(v77 + 6) = v80;
        *(v77 + 7) = v81;
        v82 = [v2 navigationBar];
        [v82 frame];
        v126[5] = CGRectGetMinY(v132);

        [v76 setFrame:{v126[4], v126[5], v126[6], v126[7]}];
        [v41 addSubview:v76];
      }

      else
      {
        v55 = 0;
      }

      v83 = [HUWallpaperView alloc];
      v84 = [v5 view];
      [v84 frame];
      v85 = [(HUWallpaperView *)v83 initWithFrame:?];

      [(HUWallpaperView *)v85 frame];
      v86 = v126;
      *(v126 + 4) = v87;
      *(v86 + 5) = v88;
      *(v86 + 6) = v89;
      *(v86 + 7) = v90;
      v91 = [v106 view];
      [v91 frame];
      v126[4] = -v92;

      [(HUWallpaperView *)v85 setFrame:v126[4], v126[5], v126[6], v126[7]];
      v93 = [v106 view];
      [v93 insertSubview:v85 atIndex:0];

      [(HUWallpaperView *)v85 populateWallpaper:v108 withAnimation:0 onlyIfNeeded:0];
      [(HUWallpaperView *)v85 setAlpha:0.0];
      v94 = MEMORY[0x277D75D18];
      v117[0] = MEMORY[0x277D85DD0];
      v117[1] = 3221225472;
      v117[2] = __93__HUDashboardNavigationController__customAnimationForPoppingBackToHomeVCWithHomeVCWallpaper___block_invoke_2;
      v117[3] = &unk_277DC1C10;
      v122 = &v125;
      v95 = v41;
      v118 = v95;
      v96 = v103;
      v119 = v96;
      v120 = v2;
      v121 = v85;
      v110[0] = MEMORY[0x277D85DD0];
      v110[1] = 3221225472;
      v110[2] = __93__HUDashboardNavigationController__customAnimationForPoppingBackToHomeVCWithHomeVCWallpaper___block_invoke_5;
      v110[3] = &unk_277DB8A88;
      v97 = v104;
      v111 = v97;
      v112 = v108;
      v98 = v13;
      v113 = v98;
      v99 = v107;
      v114 = v99;
      v100 = v121;
      v115 = v100;
      v101 = v55;
      v116 = v101;
      [v94 animateKeyframesWithDuration:0 delay:v117 options:v110 animations:0.6 completion:0.0];

      _Block_object_dispose(&v125, 8);
    }
  }

  else
  {
    v109.receiver = *(a1 + 32);
    v109.super_class = HUDashboardNavigationController;
    v39 = objc_msgSendSuper2(&v109, sel_popViewControllerAnimated_, 0);
  }
}

uint64_t __89__HUDashboardNavigationController__customAnimationForHomeVCToDetailVC_detailVCWallpaper___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __89__HUDashboardNavigationController__customAnimationForHomeVCToDetailVC_detailVCWallpaper___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__HUDashboardNavigationController__customAnimationForHomeVCToDetailVC_detailVCWallpaper___block_invoke_3;
  v6[3] = &unk_277DC1BE8;
  v10 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  [v2 addKeyframeWithRelativeStartTime:v6 relativeDuration:0.0 animations:1.0];
  v3 = MEMORY[0x277D75D18];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __89__HUDashboardNavigationController__customAnimationForHomeVCToDetailVC_detailVCWallpaper___block_invoke_4;
  v4[3] = &unk_277DB8488;
  v5 = *(a1 + 56);
  [v3 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.85 animations:0.15];
}

uint64_t __89__HUDashboardNavigationController__customAnimationForHomeVCToDetailVC_detailVCWallpaper___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) frame];
  v2 = *(*(a1 + 56) + 8);
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
  *(*(*(a1 + 56) + 8) + 32) = 0;
  [*(a1 + 32) setFrame:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 56) + 8) + 48), *(*(*(a1 + 56) + 8) + 56)}];
  [*(a1 + 40) frame];
  v7 = *(*(a1 + 56) + 8);
  v7[4] = v8;
  v7[5] = v9;
  v7[6] = v10;
  v7[7] = v11;
  v12 = [*(a1 + 48) view];
  [v12 frame];
  *(*(*(a1 + 56) + 8) + 32) = -CGRectGetMaxX(v21);

  v13 = *(*(a1 + 56) + 8);
  v14 = v13[4];
  v15 = v13[5];
  v16 = v13[6];
  v17 = v13[7];
  v18 = *(a1 + 40);

  return [v18 setFrame:{v14, v15, v16, v17}];
}

uint64_t __89__HUDashboardNavigationController__customAnimationForHomeVCToDetailVC_detailVCWallpaper___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setDisableWallpaperUpdate:0];
  [*(a1 + 32) populateWallpaper:*(a1 + 40) withAnimation:0 onlyIfNeeded:0];
  [*(a1 + 48) removeFromSuperview];
  [*(a1 + 56) removeFromSuperview];
  v2 = *(a1 + 64);

  return [v2 removeFromSuperview];
}

uint64_t __93__HUDashboardNavigationController__customAnimationForPoppingBackToHomeVCWithHomeVCWallpaper___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __93__HUDashboardNavigationController__customAnimationForPoppingBackToHomeVCWithHomeVCWallpaper___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __93__HUDashboardNavigationController__customAnimationForPoppingBackToHomeVCWithHomeVCWallpaper___block_invoke_3;
  v8[3] = &unk_277DC1BE8;
  v12 = *(a1 + 64);
  v9 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v10 = v3;
  v11 = v4;
  [v2 addKeyframeWithRelativeStartTime:v8 relativeDuration:0.0 animations:1.0];
  v5 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __93__HUDashboardNavigationController__customAnimationForPoppingBackToHomeVCWithHomeVCWallpaper___block_invoke_4;
  v6[3] = &unk_277DB8488;
  v7 = *(a1 + 56);
  [v5 addKeyframeWithRelativeStartTime:v6 relativeDuration:0.05 animations:0.1];
}

uint64_t __93__HUDashboardNavigationController__customAnimationForPoppingBackToHomeVCWithHomeVCWallpaper___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) frame];
  v2 = *(*(a1 + 56) + 8);
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
  *(*(*(a1 + 56) + 8) + 32) = 0;
  [*(a1 + 32) setFrame:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 56) + 8) + 48), *(*(*(a1 + 56) + 8) + 56)}];
  [*(a1 + 40) frame];
  v7 = *(*(a1 + 56) + 8);
  v7[4] = v8;
  v7[5] = v9;
  v7[6] = v10;
  v7[7] = v11;
  v12 = [*(a1 + 48) view];
  [v12 frame];
  *(*(*(a1 + 56) + 8) + 32) = CGRectGetWidth(v21);

  v13 = *(*(a1 + 56) + 8);
  v14 = v13[4];
  v15 = v13[5];
  v16 = v13[6];
  v17 = v13[7];
  v18 = *(a1 + 40);

  return [v18 setFrame:{v14, v15, v16, v17}];
}

uint64_t __93__HUDashboardNavigationController__customAnimationForPoppingBackToHomeVCWithHomeVCWallpaper___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setDisableWallpaperUpdate:0];
  [*(a1 + 32) populateWallpaper:*(a1 + 40) withAnimation:0 onlyIfNeeded:0];
  [*(a1 + 48) removeFromSuperview];
  [*(a1 + 56) removeFromSuperview];
  [*(a1 + 64) removeFromSuperview];
  v2 = *(a1 + 72);

  return [v2 removeFromSuperview];
}

- (id)splitViewController
{
  objc_opt_class();
  v3 = [(HUDashboardNavigationController *)self parentViewController];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    objc_opt_class();
    v7 = [(HUDashboardNavigationController *)self parentViewController];
    v8 = [v7 parentViewController];
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v3 = v9;
  }

  return v3;
}

- (BOOL)_shouldDisableAnimationForViewController:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 itemManager];
  v8 = [v7 context];
  v9 = [v8 room];
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [v6 itemManager];
    v12 = [v11 context];
    v13 = [v12 overrideDashboardTitle];
    v10 = v13 == 0;
  }

  v14 = [v6 isOverlay];
  v15 = [v6 itemManager];
  v16 = [v15 context];
  v17 = [v16 backgroundStyle];

  v18 = (v17 != 1) & ~v14;
  if (v10)
  {
    v18 = 0;
  }

  if (v6)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (_os_feature_enabled_impl() && (_os_feature_enabled_impl() & 1) != 0)
  {
    LOBYTE(v19) = 0;
  }

  else if (([MEMORY[0x277D14CE8] isAVisionPro] & 1) == 0 && (objc_msgSend(MEMORY[0x277D14CE8], "isAnIPad") & 1) == 0)
  {
    v19 &= [MEMORY[0x277D14CE8] isAMac];
  }

  return v19;
}

@end