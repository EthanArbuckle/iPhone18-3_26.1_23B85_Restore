@interface ICHostedNotesAppearanceCoordinator
- (BOOL)shouldHideModeButtonWithPresentedViewController:(id)controller;
- (ICHostedNotesAppearanceCoordinating)delegate;
- (ICHostedNotesAppearanceCoordinator)initWithDelegate:(id)delegate;
- (NSSet)modeButtonHidingModalTypes;
- (NSSet)modeButtonHidingPopoverTypes;
- (UIView)view;
- (UIViewController)viewController;
- (_UIHostedWindowScene)hostedWindowScene;
- (void)didDismissViewController:(id)controller;
- (void)updateAppearance;
- (void)willDismissViewController:(id)controller;
- (void)willPresentViewController:(id)controller;
@end

@implementation ICHostedNotesAppearanceCoordinator

- (ICHostedNotesAppearanceCoordinator)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = ICHostedNotesAppearanceCoordinator;
  v5 = [(ICHostedNotesAppearanceCoordinator *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_willPresentViewController_ name:*MEMORY[0x1E69DE2E0] object:0];
    [defaultCenter addObserver:v6 selector:sel_willDismissViewController_ name:*MEMORY[0x1E69DE2D0] object:0];
    [defaultCenter addObserver:v6 selector:sel_didDismissViewController_ name:*MEMORY[0x1E69DE2C8] object:0];
  }

  return v6;
}

- (void)updateAppearance
{
  hostedWindowScene = [(ICHostedNotesAppearanceCoordinator *)self hostedWindowScene];

  if (!hostedWindowScene)
  {
    return;
  }

  view = [(ICHostedNotesAppearanceCoordinator *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  view2 = [(ICHostedNotesAppearanceCoordinator *)self view];
  [view2 safeAreaInsets];
  rect = v8;
  v109 = v6;
  v15 = v6 + v14;
  v17 = v8 + v16;
  v104 = v12;
  v105 = v10;
  v19 = v10 - (v14 + v18);
  v21 = v12 - (v16 + v20);

  v22 = MEMORY[0x1E6978530];
  view3 = [(ICHostedNotesAppearanceCoordinator *)self view];
  window = [view3 window];
  v106 = [v22 _existingToolPickerForWindow:window];

  _paletteView = [v106 _paletteView];
  [_paletteView frame];
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
    view4 = [(ICHostedNotesAppearanceCoordinator *)self view];
    v94 = v17;
    v96 = v15;
    v91 = v21;
    v92 = v19;
    [view4 convertRect:0 toView:{v15, v17, v19, v21}];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    palettePosition = [_paletteView palettePosition];
    if (palettePosition == 8 || palettePosition == 4)
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

    else if (palettePosition == 3)
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
  view5 = [(ICHostedNotesAppearanceCoordinator *)self view];
  [view5 convertRect:0 toView:{v15, v17, v19, v21}];
  v45 = v44;
  v102 = v47;
  v103 = v46;
  v49 = v48;

  view6 = [(ICHostedNotesAppearanceCoordinator *)self view];
  window2 = [view6 window];
  [window2 bounds];
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  view7 = [(ICHostedNotesAppearanceCoordinator *)self view];
  window3 = [view7 window];
  [window3 safeAreaInsets];
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
    viewController = [(ICHostedNotesAppearanceCoordinator *)self viewController];
    if ([viewController ic_isRTL])
    {
      v78 = v76;
    }

    else
    {
      v78 = v98;
    }

    rect2 = v78;

    viewController2 = [(ICHostedNotesAppearanceCoordinator *)self viewController];
    if ([viewController2 ic_isRTL])
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

  modeButtonHidingPresentedViewController = [(ICHostedNotesAppearanceCoordinator *)self modeButtonHidingPresentedViewController];
  v88 = modeButtonHidingPresentedViewController != 0;

  viewController3 = [(ICHostedNotesAppearanceCoordinator *)self viewController];
  [viewController3 ic_hostedNotesUpdateAdditionalSafeAreaInsets:v88 isModeButtonHidden:{v84, rect2, v86, v99}];
}

- (void)willPresentViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  object = [controllerCopy object];

  v6 = ICDynamicCast();

  if (v6 && [(ICHostedNotesAppearanceCoordinator *)self shouldHideModeButtonWithPresentedViewController:v6])
  {
    [(ICHostedNotesAppearanceCoordinator *)self setModeButtonHidingPresentedViewController:v6];
    [(ICHostedNotesAppearanceCoordinator *)self updateAppearance];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)willDismissViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  object = [controllerCopy object];

  v10 = ICDynamicCast();

  transitionCoordinator = [v10 transitionCoordinator];
  isInteractive = [transitionCoordinator isInteractive];

  modeButtonHidingPresentedViewController = [(ICHostedNotesAppearanceCoordinator *)self modeButtonHidingPresentedViewController];

  v9 = v10;
  if (v10 == modeButtonHidingPresentedViewController && (isInteractive & 1) == 0)
  {
    [(ICHostedNotesAppearanceCoordinator *)self setModeButtonHidingPresentedViewController:0];
    [(ICHostedNotesAppearanceCoordinator *)self updateAppearance];
    v9 = v10;
  }
}

- (void)didDismissViewController:(id)controller
{
  userInfo = [controller userInfo];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DE2C0]];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    [(ICHostedNotesAppearanceCoordinator *)self setModeButtonHidingPresentedViewController:0];
    [(ICHostedNotesAppearanceCoordinator *)self updateAppearance];
  }
}

- (NSSet)modeButtonHidingModalTypes
{
  delegate = [(ICHostedNotesAppearanceCoordinator *)self delegate];
  v4 = [delegate hostedNotesAppearanceCoordinatorModeButtonHidingModalTypes:self];

  return v4;
}

- (NSSet)modeButtonHidingPopoverTypes
{
  delegate = [(ICHostedNotesAppearanceCoordinator *)self delegate];
  v4 = [delegate hostedNotesAppearanceCoordinatorModeButtonHidingPopoverTypes:self];

  return v4;
}

- (BOOL)shouldHideModeButtonWithPresentedViewController:(id)controller
{
  controllerCopy = controller;
  presentationController = [controllerCopy presentationController];
  presentingViewController = [presentationController presentingViewController];
  _hostedWindowScene = [presentingViewController _hostedWindowScene];
  if (_hostedWindowScene && ([(ICHostedNotesAppearanceCoordinator *)self hostedWindowScene], v8 = objc_claimAutoreleasedReturnValue(), v8, _hostedWindowScene == v8))
  {
    popoverPresentationController = [controllerCopy popoverPresentationController];

    viewController = [(ICHostedNotesAppearanceCoordinator *)self viewController];
    traitCollection = [viewController traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if ([controllerCopy modalPresentationStyle] == -1)
    {
      v15 = 1;
    }

    else
    {
      if (popoverPresentationController)
      {
        v14 = horizontalSizeClass == 1;
      }

      else
      {
        v14 = 1;
      }

      v15 = !v14;
    }

    modeButtonHidingModalTypes = [(ICHostedNotesAppearanceCoordinator *)self modeButtonHidingModalTypes];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __86__ICHostedNotesAppearanceCoordinator_shouldHideModeButtonWithPresentedViewController___block_invoke;
    v27[3] = &unk_1E846B670;
    v17 = controllerCopy;
    v28 = v17;
    v18 = [modeButtonHidingModalTypes ic_containsObjectPassingTest:v27];

    v19 = v15 ^ 1;
    if ((v15 & 1) == 0 && (v18 & 1) == 0)
    {
      delegate = [(ICHostedNotesAppearanceCoordinator *)self delegate];
      v19 = [delegate hostedNotesAppearanceCoordinator:self shouldHideWithModal:v17];
    }

    v21 = popoverPresentationController != 0;
    modeButtonHidingPopoverTypes = [(ICHostedNotesAppearanceCoordinator *)self modeButtonHidingPopoverTypes];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __86__ICHostedNotesAppearanceCoordinator_shouldHideModeButtonWithPresentedViewController___block_invoke_2;
    v25[3] = &unk_1E846B670;
    v26 = v17;
    v23 = [modeButtonHidingPopoverTypes ic_containsObjectPassingTest:v25];

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
  viewController = [(ICHostedNotesAppearanceCoordinator *)self viewController];
  _hostedWindowScene = [viewController _hostedWindowScene];

  return _hostedWindowScene;
}

- (UIViewController)viewController
{
  delegate = [(ICHostedNotesAppearanceCoordinator *)self delegate];
  v4 = [delegate hostedNotesAppearanceCoordinatorSafeAreaViewController:self];

  return v4;
}

- (UIView)view
{
  viewController = [(ICHostedNotesAppearanceCoordinator *)self viewController];
  view = [viewController view];

  return view;
}

- (ICHostedNotesAppearanceCoordinating)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end