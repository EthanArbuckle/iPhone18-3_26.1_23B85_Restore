@interface ICHostedNotesAppearanceCoordinator
- (BOOL)shouldHideModeButtonWithPresentedViewController:(id)a3;
- (ICHostedNotesAppearanceCoordinating)delegate;
- (ICHostedNotesAppearanceCoordinator)initWithDelegate:(id)a3;
- (NSSet)modeButtonHidingModalTypes;
- (NSSet)modeButtonHidingPopoverTypes;
- (UIView)view;
- (UIViewController)viewController;
- (_UIHostedWindowScene)hostedWindowScene;
- (void)didDismissViewController:(id)a3;
- (void)updateAppearance;
- (void)willDismissViewController:(id)a3;
- (void)willPresentViewController:(id)a3;
@end

@implementation ICHostedNotesAppearanceCoordinator

- (ICHostedNotesAppearanceCoordinator)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICHostedNotesAppearanceCoordinator;
  v5 = [(ICHostedNotesAppearanceCoordinator *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v6 selector:sel_willPresentViewController_ name:*MEMORY[0x1E69DE2E0] object:0];
    [v7 addObserver:v6 selector:sel_willDismissViewController_ name:*MEMORY[0x1E69DE2D0] object:0];
    [v7 addObserver:v6 selector:sel_didDismissViewController_ name:*MEMORY[0x1E69DE2C8] object:0];
  }

  return v6;
}

- (void)updateAppearance
{
  v3 = [(ICHostedNotesAppearanceCoordinator *)self hostedWindowScene];

  if (!v3)
  {
    return;
  }

  v4 = [(ICHostedNotesAppearanceCoordinator *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(ICHostedNotesAppearanceCoordinator *)self view];
  [v13 safeAreaInsets];
  rect = v8;
  v109 = v6;
  v15 = v6 + v14;
  v17 = v8 + v16;
  v104 = v12;
  v105 = v10;
  v19 = v10 - (v14 + v18);
  v21 = v12 - (v16 + v20);

  v22 = MEMORY[0x1E6978530];
  v23 = [(ICHostedNotesAppearanceCoordinator *)self view];
  v24 = [v23 window];
  v106 = [v22 _existingToolPickerForWindow:v24];

  v25 = [v106 _paletteView];
  [v25 frame];
  x = v114.origin.x;
  y = v114.origin.y;
  width = v114.size.width;
  height = v114.size.height;
  v138.origin.x = v15;
  v138.origin.y = v17;
  v138.size.width = v19;
  v138.size.height = v21;
  v97 = CGRectIntersection(v114, v138);
  if (!CGRectIsNull(v97))
  {
    v30 = [(ICHostedNotesAppearanceCoordinator *)self view];
    v94 = v17;
    v96 = v15;
    v91 = v21;
    v92 = v19;
    [v30 convertRect:0 toView:{v15, v17, v19, v21}];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v39 = [v25 palettePosition];
    if (v39 == 8 || v39 == 4)
    {
      v117.origin.y = rect;
      v117.origin.x = v109;
      v117.size.height = v104;
      v117.size.width = v105;
      v110 = CGRectGetHeight(v117);
      v118.origin.x = x;
      v118.origin.y = y;
      v118.size.width = width;
      v118.size.height = height;
      v111 = v110 - CGRectGetMaxY(v118);
      v90 = v32;
      v119.origin.x = v32;
      v119.origin.y = v34;
      v119.size.width = v36;
      v119.size.height = v38;
      if (v111 < CGRectGetMinY(v119) + 158.0)
      {
        v120.origin.x = v32;
        v120.origin.y = v34;
        v120.size.width = v36;
        v120.size.height = v38;
        MinX = CGRectGetMinX(v120);
        v121.origin.x = x;
        v121.origin.y = y;
        v121.size.width = width;
        v121.size.height = height;
        if (MinX < CGRectGetWidth(v121))
        {
          v42 = CGRectGetWidth(v97);
          v15 = v96 + v42;
          v17 = v94 + 0.0;
          v19 = v92 - (v42 + 0.0);
LABEL_13:
          v21 = v91;
          goto LABEL_14;
        }
      }
    }

    else if (v39 == 3)
    {
      v115.origin.x = x;
      v115.origin.y = y;
      v115.size.width = width;
      v115.size.height = height;
      v40 = CGRectGetMinX(v115);
      v116.origin.x = v32;
      v116.origin.y = v34;
      v116.size.width = v36;
      v116.size.height = v38;
      if (v40 < CGRectGetMinX(v116) + 165.0)
      {
        v15 = v96 + 0.0;
        v17 = v94 + 0.0;
        v19 = v92;
        v21 = v91 - (CGRectGetHeight(v97) + 0.0);
        goto LABEL_14;
      }
    }

    v17 = v94;
    v15 = v96;
    v19 = v92;
    goto LABEL_13;
  }

LABEL_14:
  v43 = [(ICHostedNotesAppearanceCoordinator *)self view];
  [v43 convertRect:0 toView:{v15, v17, v19, v21}];
  v45 = v44;
  v102 = v47;
  v103 = v46;
  v49 = v48;

  v50 = [(ICHostedNotesAppearanceCoordinator *)self view];
  v51 = [v50 window];
  [v51 bounds];
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = [(ICHostedNotesAppearanceCoordinator *)self view];
  v61 = [v60 window];
  [v61 safeAreaInsets];
  v63 = v53 + v62;
  v65 = v55 + v64;
  v112 = v57 - (v62 + v66);
  v68 = v59 - (v64 + v67);

  v69 = MEMORY[0x1E69DDCE0];
  v122.origin.x = v45;
  v122.origin.y = v103;
  v122.size.width = v49;
  v122.size.height = v102;
  recta = CGRectGetMinX(v122);
  v123.origin.x = v63;
  v123.origin.y = v65;
  v123.size.width = v112;
  v123.size.height = v68;
  rect2a = CGRectGetMidY(v123);
  v124.origin.x = v45;
  v70 = v63;
  v124.origin.y = v103;
  v124.size.width = v49;
  v124.size.height = v102;
  v139.size.width = CGRectGetWidth(v124);
  v139.size.height = 1.0;
  v125.origin.x = v63;
  v125.origin.y = v65;
  v139.origin.x = recta;
  v71 = v112;
  v125.size.width = v112;
  v125.size.height = v68;
  v139.origin.y = rect2a;
  if (CGRectIntersectsRect(v125, v139))
  {
    v126.origin.x = v45;
    v126.origin.y = v103;
    v126.size.width = v49;
    v126.size.height = v102;
    v72 = v68;
    v73 = CGRectGetMinX(v126);
    v127.origin.x = v70;
    v127.size.width = v112;
    v127.origin.y = v65;
    v127.size.height = v72;
    v98 = fmax(v73 - CGRectGetMinX(v127), 0.0);
    v128.origin.x = v70;
    v128.size.width = v112;
    v128.origin.y = v65;
    v128.size.height = v72;
    MaxX = CGRectGetMaxX(v128);
    v129.origin.x = v45;
    v129.origin.y = v103;
    v129.size.width = v49;
    v75 = v102;
    v129.size.height = v102;
    v76 = fmax(MaxX - CGRectGetMaxX(v129), 0.0);
    v77 = [(ICHostedNotesAppearanceCoordinator *)self viewController];
    if ([v77 ic_isRTL])
    {
      v78 = v76;
    }

    else
    {
      v78 = v98;
    }

    rect2 = v78;

    v79 = [(ICHostedNotesAppearanceCoordinator *)self viewController];
    if ([v79 ic_isRTL])
    {
      v80 = v98;
    }

    else
    {
      v80 = v76;
    }

    v99 = v80;
    v68 = v72;
    v71 = v112;
  }

  else
  {
    v99 = v69[3];
    rect2 = v69[1];
    v75 = v102;
  }

  v130.origin.x = v70;
  v130.origin.y = v65;
  v130.size.width = v71;
  v130.size.height = v68;
  MidX = CGRectGetMidX(v130);
  v131.origin.x = v45;
  v131.origin.y = v103;
  v131.size.width = v49;
  v81 = v75;
  v131.size.height = v75;
  MinY = CGRectGetMinY(v131);
  v132.origin.x = v45;
  v132.origin.y = v103;
  v132.size.width = v49;
  v132.size.height = v81;
  v140.size.height = CGRectGetHeight(v132);
  v140.size.width = 1.0;
  v133.origin.x = v70;
  v133.origin.y = v65;
  v133.size.width = v71;
  v93 = v68;
  v133.size.height = v68;
  v140.origin.x = MidX;
  v140.origin.y = MinY;
  if (CGRectIntersectsRect(v133, v140))
  {
    v134.origin.x = v45;
    v134.origin.y = v103;
    v134.size.width = v49;
    v134.size.height = v81;
    v83 = CGRectGetMinY(v134);
    v135.origin.x = v70;
    v135.origin.y = v65;
    v135.size.width = v112;
    v135.size.height = v93;
    v84 = fmax(v83 - CGRectGetMinY(v135), 0.0);
    v136.origin.x = v70;
    v136.origin.y = v65;
    v136.size.width = v112;
    v136.size.height = v93;
    MaxY = CGRectGetMaxY(v136);
    v137.origin.x = v45;
    v137.origin.y = v103;
    v137.size.width = v49;
    v137.size.height = v102;
    v86 = fmax(MaxY - CGRectGetMaxY(v137), 0.0);
  }

  else
  {
    v84 = *v69;
    v86 = v69[2];
  }

  v87 = [(ICHostedNotesAppearanceCoordinator *)self modeButtonHidingPresentedViewController];
  v88 = v87 != 0;

  v89 = [(ICHostedNotesAppearanceCoordinator *)self viewController];
  [v89 ic_hostedNotesUpdateAdditionalSafeAreaInsets:v88 isModeButtonHidden:{v84, rect2, v86, v99}];
}

- (void)willPresentViewController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v6 = ICDynamicCast();

  if (v6 && [(ICHostedNotesAppearanceCoordinator *)self shouldHideModeButtonWithPresentedViewController:v6])
  {
    [(ICHostedNotesAppearanceCoordinator *)self setModeButtonHidingPresentedViewController:v6];
    [(ICHostedNotesAppearanceCoordinator *)self updateAppearance];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)willDismissViewController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v10 = ICDynamicCast();

  v6 = [v10 transitionCoordinator];
  v7 = [v6 isInteractive];

  v8 = [(ICHostedNotesAppearanceCoordinator *)self modeButtonHidingPresentedViewController];

  v9 = v10;
  if (v10 == v8 && (v7 & 1) == 0)
  {
    [(ICHostedNotesAppearanceCoordinator *)self setModeButtonHidingPresentedViewController:0];
    [(ICHostedNotesAppearanceCoordinator *)self updateAppearance];
    v9 = v10;
  }
}

- (void)didDismissViewController:(id)a3
{
  v6 = [a3 userInfo];
  v4 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69DE2C0]];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    [(ICHostedNotesAppearanceCoordinator *)self setModeButtonHidingPresentedViewController:0];
    [(ICHostedNotesAppearanceCoordinator *)self updateAppearance];
  }
}

- (NSSet)modeButtonHidingModalTypes
{
  v3 = [(ICHostedNotesAppearanceCoordinator *)self delegate];
  v4 = [v3 hostedNotesAppearanceCoordinatorModeButtonHidingModalTypes:self];

  return v4;
}

- (NSSet)modeButtonHidingPopoverTypes
{
  v3 = [(ICHostedNotesAppearanceCoordinator *)self delegate];
  v4 = [v3 hostedNotesAppearanceCoordinatorModeButtonHidingPopoverTypes:self];

  return v4;
}

- (BOOL)shouldHideModeButtonWithPresentedViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 presentationController];
  v6 = [v5 presentingViewController];
  v7 = [v6 _hostedWindowScene];
  if (v7 && ([(ICHostedNotesAppearanceCoordinator *)self hostedWindowScene], v8 = objc_claimAutoreleasedReturnValue(), v8, v7 == v8))
  {
    v10 = [v4 popoverPresentationController];

    v11 = [(ICHostedNotesAppearanceCoordinator *)self viewController];
    v12 = [v11 traitCollection];
    v13 = [v12 horizontalSizeClass];

    if ([v4 modalPresentationStyle] == -1)
    {
      v15 = 1;
    }

    else
    {
      if (v10)
      {
        v14 = v13 == 1;
      }

      else
      {
        v14 = 1;
      }

      v15 = !v14;
    }

    v16 = [(ICHostedNotesAppearanceCoordinator *)self modeButtonHidingModalTypes];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __86__ICHostedNotesAppearanceCoordinator_shouldHideModeButtonWithPresentedViewController___block_invoke;
    v27[3] = &unk_1E846B670;
    v17 = v4;
    v28 = v17;
    v18 = [v16 ic_containsObjectPassingTest:v27];

    v19 = v15 ^ 1;
    if ((v15 & 1) == 0 && (v18 & 1) == 0)
    {
      v20 = [(ICHostedNotesAppearanceCoordinator *)self delegate];
      v19 = [v20 hostedNotesAppearanceCoordinator:self shouldHideWithModal:v17];
    }

    v21 = v10 != 0;
    v22 = [(ICHostedNotesAppearanceCoordinator *)self modeButtonHidingPopoverTypes];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __86__ICHostedNotesAppearanceCoordinator_shouldHideModeButtonWithPresentedViewController___block_invoke_2;
    v25[3] = &unk_1E846B670;
    v26 = v17;
    v23 = [v22 ic_containsObjectPassingTest:v25];

    v9 = v19 | v21 & v23;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (_UIHostedWindowScene)hostedWindowScene
{
  v2 = [(ICHostedNotesAppearanceCoordinator *)self viewController];
  v3 = [v2 _hostedWindowScene];

  return v3;
}

- (UIViewController)viewController
{
  v3 = [(ICHostedNotesAppearanceCoordinator *)self delegate];
  v4 = [v3 hostedNotesAppearanceCoordinatorSafeAreaViewController:self];

  return v4;
}

- (UIView)view
{
  v2 = [(ICHostedNotesAppearanceCoordinator *)self viewController];
  v3 = [v2 view];

  return v3;
}

- (ICHostedNotesAppearanceCoordinating)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end