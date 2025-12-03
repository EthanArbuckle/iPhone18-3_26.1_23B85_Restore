@interface OBButtonTray
- (BOOL)_shouldHandleLandscapeiPhoneLayout;
- (BOOL)hasContent;
- (BOOL)isEmpty;
- (CGSize)detachedSize;
- (CGSize)intrinsicContentSize;
- (NSArray)allButtons;
- (OBButtonTray)initWithFrame:(CGRect)frame;
- (UIViewController)parentViewController;
- (double)_privacyLinkControllerBottomPadding;
- (double)bottomPadding;
- (double)buttonTrayButtonSpacing;
- (double)topPadding;
- (void)_setUpBackdrops;
- (void)_updateButtonConstraints;
- (void)_updateCaptionTextAppearance;
- (void)_updateTrayVisibility;
- (void)addButton:(id)button;
- (void)addScrollPocketToScrollView:(id)view;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)removeAllButtons;
- (void)removeButton:(id)button;
- (void)removeFromSuperview;
- (void)removeScrollPocket;
- (void)setCaptionText:(id)text style:(int64_t)style;
- (void)setCaptionText:(id)text style:(int64_t)style instructionsForUseAction:(id)action;
- (void)setCaptionText:(id)text style:(int64_t)style learnMoreURL:(id)l;
- (void)setDetached:(BOOL)detached;
- (void)setPrivacyLinkCallback:(id)callback;
- (void)setPrivacyLinkController:(id)controller;
- (void)setPrivacyLinkForBundles:(id)bundles;
- (void)showButtonsAvailable;
- (void)showButtonsBusy;
- (void)traitCollectionDidChange:(id)change;
- (void)updatePrivacyLinkControllerBottomConstraint;
@end

@implementation OBButtonTray

- (OBButtonTray)initWithFrame:(CGRect)frame
{
  v94[2] = *MEMORY[0x1E69E9840];
  v91.receiver = self;
  v91.super_class = OBButtonTray;
  v3 = [(OBButtonTray *)&v91 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(OBButtonTray *)v3 setButtons:v4];

    v5 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    [(OBButtonTray *)v3 setStackView:v5];

    stackView = [(OBButtonTray *)v3 stackView];
    [stackView setAxis:1];

    [(OBButtonTray *)v3 buttonTrayButtonSpacing];
    v8 = v7;
    stackView2 = [(OBButtonTray *)v3 stackView];
    [stackView2 setSpacing:v8];

    v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(OBButtonTray *)v3 setPrivacyContainer:v10];

    privacyContainer = [(OBButtonTray *)v3 privacyContainer];
    [privacyContainer setTranslatesAutoresizingMaskIntoConstraints:0];

    v12 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(OBButtonTray *)v3 setBackdropContainer:v12];

    stackView3 = [(OBButtonTray *)v3 stackView];
    [stackView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    backdropContainer = [(OBButtonTray *)v3 backdropContainer];
    [backdropContainer setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = objc_alloc_init(OBButtonTrayLayoutGuide);
    [(OBButtonTray *)v3 setButtonLayoutGuide:v15];

    buttonLayoutGuide = [(OBButtonTray *)v3 buttonLayoutGuide];
    [(OBButtonTray *)v3 addLayoutGuide:buttonLayoutGuide];

    backdropContainer2 = [(OBButtonTray *)v3 backdropContainer];
    [(OBButtonTray *)v3 addSubview:backdropContainer2];

    stackView4 = [(OBButtonTray *)v3 stackView];
    [(OBButtonTray *)v3 addSubview:stackView4];

    privacyContainer2 = [(OBButtonTray *)v3 privacyContainer];
    [(OBButtonTray *)v3 addSubview:privacyContainer2];

    privacyContainer3 = [(OBButtonTray *)v3 privacyContainer];
    topAnchor = [privacyContainer3 topAnchor];
    topAnchor2 = [(OBButtonTray *)v3 topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [(OBButtonTray *)v3 setButtonViewTopConstraint:v23];

    buttonLayoutGuide2 = [(OBButtonTray *)v3 buttonLayoutGuide];
    bottomAnchor = [buttonLayoutGuide2 bottomAnchor];
    stackView5 = [(OBButtonTray *)v3 stackView];
    bottomAnchor2 = [stackView5 bottomAnchor];
    v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [(OBButtonTray *)v3 setButtonViewBottomConstraint:v28];

    buttonLayoutGuide3 = [(OBButtonTray *)v3 buttonLayoutGuide];
    leadingAnchor = [buttonLayoutGuide3 leadingAnchor];
    stackView6 = [(OBButtonTray *)v3 stackView];
    leadingAnchor2 = [stackView6 leadingAnchor];
    v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [(OBButtonTray *)v3 setButtonViewLeadingConstraint:v33];

    buttonLayoutGuide4 = [(OBButtonTray *)v3 buttonLayoutGuide];
    trailingAnchor = [buttonLayoutGuide4 trailingAnchor];
    stackView7 = [(OBButtonTray *)v3 stackView];
    trailingAnchor2 = [stackView7 trailingAnchor];
    v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [(OBButtonTray *)v3 setButtonViewTrailingConstraint:v38];

    LODWORD(v38) = +[OBFeatureFlags isNaturalUIEnabled];
    v39 = 0x1E696A000uLL;
    v40 = MEMORY[0x1E696ACD8];
    stackView8 = [(OBButtonTray *)v3 stackView];
    topAnchor3 = [stackView8 topAnchor];
    privacyContainer4 = [(OBButtonTray *)v3 privacyContainer];
    bottomAnchor3 = [privacyContainer4 bottomAnchor];
    if (v38)
    {
      v45 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor3];
      v94[0] = v45;
      stackView9 = [(OBButtonTray *)v3 stackView];
      [stackView9 bottomAnchor];
      v47 = v87 = topAnchor3;
      [(OBButtonTray *)v3 buttonLayoutGuide];
      v48 = v85 = v40;
      [v48 bottomAnchor];
      v49 = v89 = stackView8;
      [(OBButtonTray *)v3 bottomPadding];
      v51 = [v47 constraintEqualToAnchor:v49 constant:-v50];
      v94[1] = v51;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:2];
      [v85 activateConstraints:v52];

      v39 = 0x1E696A000;
      stackView8 = v89;

      topAnchor3 = v87;
    }

    else
    {
      v45 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3];
      v93 = v45;
      stackView9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
      [v40 activateConstraints:stackView9];
    }

    v74 = *(v39 + 3288);
    privacyContainer5 = [(OBButtonTray *)v3 privacyContainer];
    leadingAnchor3 = [privacyContainer5 leadingAnchor];
    leadingAnchor4 = [(OBButtonTray *)v3 leadingAnchor];
    v84 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v92[0] = v84;
    privacyContainer6 = [(OBButtonTray *)v3 privacyContainer];
    trailingAnchor3 = [privacyContainer6 trailingAnchor];
    trailingAnchor4 = [(OBButtonTray *)v3 trailingAnchor];
    v80 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v92[1] = v80;
    buttonViewTopConstraint = [(OBButtonTray *)v3 buttonViewTopConstraint];
    v92[2] = buttonViewTopConstraint;
    buttonViewBottomConstraint = [(OBButtonTray *)v3 buttonViewBottomConstraint];
    v92[3] = buttonViewBottomConstraint;
    buttonViewLeadingConstraint = [(OBButtonTray *)v3 buttonViewLeadingConstraint];
    v92[4] = buttonViewLeadingConstraint;
    buttonViewTrailingConstraint = [(OBButtonTray *)v3 buttonViewTrailingConstraint];
    v92[5] = buttonViewTrailingConstraint;
    buttonLayoutGuide5 = [(OBButtonTray *)v3 buttonLayoutGuide];
    heightAnchor = [buttonLayoutGuide5 heightAnchor];
    v72 = [heightAnchor constraintEqualToConstant:0.0];
    v92[6] = v72;
    widthAnchor = [(OBButtonTray *)v3 widthAnchor];
    backdropContainer3 = [(OBButtonTray *)v3 backdropContainer];
    widthAnchor2 = [backdropContainer3 widthAnchor];
    v68 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0];
    v92[7] = v68;
    heightAnchor2 = [(OBButtonTray *)v3 heightAnchor];
    backdropContainer4 = [(OBButtonTray *)v3 backdropContainer];
    heightAnchor3 = [backdropContainer4 heightAnchor];
    v64 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 multiplier:1.0];
    v92[8] = v64;
    leadingAnchor5 = [(OBButtonTray *)v3 leadingAnchor];
    backdropContainer5 = [(OBButtonTray *)v3 backdropContainer];
    leadingAnchor6 = [backdropContainer5 leadingAnchor];
    v56 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v92[9] = v56;
    bottomAnchor4 = [(OBButtonTray *)v3 bottomAnchor];
    backdropContainer6 = [(OBButtonTray *)v3 backdropContainer];
    bottomAnchor5 = [backdropContainer6 bottomAnchor];
    v60 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v92[10] = v60;
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:11];
    [v74 activateConstraints:v61];

    [(OBButtonTray *)v3 setBackdropStyle:1];
    [(OBButtonTray *)v3 _setUpBackdrops];
  }

  v62 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)removeFromSuperview
{
  v21[2] = *MEMORY[0x1E69E9840];
  stackView = [(OBButtonTray *)self stackView];
  buttonViewLeadingConstraint = [(OBButtonTray *)self buttonViewLeadingConstraint];
  v21[0] = buttonViewLeadingConstraint;
  buttonViewTrailingConstraint = [(OBButtonTray *)self buttonViewTrailingConstraint];
  v21[1] = buttonViewTrailingConstraint;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  [stackView removeConstraints:v6];

  buttonLayoutGuide = [(OBButtonTray *)self buttonLayoutGuide];
  widthConstraint = [buttonLayoutGuide widthConstraint];
  [widthConstraint setActive:0];

  v20.receiver = self;
  v20.super_class = OBButtonTray;
  [(OBButtonTray *)&v20 removeFromSuperview];
  buttonLayoutGuide2 = [(OBButtonTray *)self buttonLayoutGuide];
  leadingAnchor = [buttonLayoutGuide2 leadingAnchor];
  stackView2 = [(OBButtonTray *)self stackView];
  leadingAnchor2 = [stackView2 leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [(OBButtonTray *)self setButtonViewLeadingConstraint:v13];

  buttonLayoutGuide3 = [(OBButtonTray *)self buttonLayoutGuide];
  trailingAnchor = [buttonLayoutGuide3 trailingAnchor];
  stackView3 = [(OBButtonTray *)self stackView];
  trailingAnchor2 = [stackView3 trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [(OBButtonTray *)self setButtonViewTrailingConstraint:v18];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = OBButtonTray;
  [(OBButtonTray *)&v3 layoutSubviews];
  [(OBButtonTray *)self _updateTrayVisibility];
}

- (NSArray)allButtons
{
  buttons = [(OBButtonTray *)self buttons];
  v3 = [buttons copy];

  return v3;
}

- (void)showButtonsBusy
{
  v16 = *MEMORY[0x1E69E9840];
  buttons = [(OBButtonTray *)self buttons];
  firstObject = [buttons firstObject];
  [firstObject showsBusyIndicator];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  buttons2 = [(OBButtonTray *)self buttons];
  v6 = [buttons2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(buttons2);
        }

        [*(*(&v11 + 1) + 8 * v9++) setEnabled:0];
      }

      while (v7 != v9);
      v7 = [buttons2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)showButtonsAvailable
{
  v16 = *MEMORY[0x1E69E9840];
  buttons = [(OBButtonTray *)self buttons];
  firstObject = [buttons firstObject];
  [firstObject hidesBusyIndicator];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  buttons2 = [(OBButtonTray *)self buttons];
  v6 = [buttons2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(buttons2);
        }

        [*(*(&v11 + 1) + 8 * v9++) setEnabled:1];
      }

      while (v7 != v9);
      v7 = [buttons2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (double)buttonTrayButtonSpacing
{
  v2 = +[OBFeatureFlags isNaturalUIEnabled];
  result = 5.0;
  if (v2)
  {
    return 10.0;
  }

  return result;
}

- (void)addButton:(id)button
{
  v26 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    buttons = [(OBButtonTray *)self buttons];
    v6 = [buttons countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(buttons);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"A link button cannot be placed above a bold button." userInfo:0];
            objc_exception_throw(v20);
          }
        }

        v7 = [buttons countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }
  }

  stackView = [(OBButtonTray *)self stackView];
  [stackView addArrangedSubview:buttonCopy];

  buttons2 = [(OBButtonTray *)self buttons];
  [buttons2 addObject:buttonCopy];

  [(OBButtonTray *)self _updateButtonConstraints];
  parentViewController = [(OBButtonTray *)self parentViewController];
  isViewLoaded = [parentViewController isViewLoaded];

  if (isViewLoaded)
  {
    parentViewController2 = [(OBButtonTray *)self parentViewController];
    view = [parentViewController2 view];
    [view setNeedsLayout];

    parentViewController3 = [(OBButtonTray *)self parentViewController];
    view2 = [parentViewController3 view];
    [view2 layoutIfNeeded];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)removeButton:(id)button
{
  buttonCopy = button;
  stackView = [(OBButtonTray *)self stackView];
  [stackView removeArrangedSubview:buttonCopy];

  buttons = [(OBButtonTray *)self buttons];
  [buttons removeObject:buttonCopy];

  [buttonCopy removeFromSuperview];
  [(OBButtonTray *)self _updateButtonConstraints];
  parentViewController = [(OBButtonTray *)self parentViewController];
  LODWORD(buttons) = [parentViewController isViewLoaded];

  if (buttons)
  {
    parentViewController2 = [(OBButtonTray *)self parentViewController];
    view = [parentViewController2 view];
    [view setNeedsLayout];

    parentViewController3 = [(OBButtonTray *)self parentViewController];
    view2 = [parentViewController3 view];
    [view2 layoutIfNeeded];
  }
}

- (void)removeAllButtons
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  buttons = [(OBButtonTray *)self buttons];
  v4 = [buttons countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(buttons);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        stackView = [(OBButtonTray *)self stackView];
        [stackView removeArrangedSubview:v8];

        [v8 removeFromSuperview];
        ++v7;
      }

      while (v5 != v7);
      v5 = [buttons countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  buttons2 = [(OBButtonTray *)self buttons];
  [buttons2 removeAllObjects];

  [(OBButtonTray *)self _updateButtonConstraints];
  parentViewController = [(OBButtonTray *)self parentViewController];
  view = [parentViewController view];
  [view setNeedsLayout];

  parentViewController2 = [(OBButtonTray *)self parentViewController];
  view2 = [parentViewController2 view];
  [view2 layoutIfNeeded];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setPrivacyLinkForBundles:(id)bundles
{
  v4 = [OBPrivacyLinkController linkWithBundleIdentifiers:bundles];
  [(OBButtonTray *)self setPrivacyLinkController:v4];
}

- (double)_privacyLinkControllerBottomPadding
{
  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    v3 = 14.0;
  }

  else
  {
    v3 = 24.0;
  }

  buttons = [(OBButtonTray *)self buttons];
  v5 = [buttons count];

  if (!v5)
  {
    v3 = 0.0;
  }

  v6 = MGGetProductType();
  if (v6 == 2903084588 || v6 == 1895344378)
  {
    return 14.0;
  }

  else
  {
    return v3;
  }
}

- (void)setPrivacyLinkController:(id)controller
{
  v56[4] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  captionLabel = [(OBButtonTray *)self captionLabel];

  if (captionLabel)
  {
    v47 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Privacy link not permitted with caption text." userInfo:0];
    objc_exception_throw(v47);
  }

  privacyLinkController = [(OBButtonTray *)self privacyLinkController];

  if (privacyLinkController)
  {
    privacyLinkController2 = [(OBButtonTray *)self privacyLinkController];
    view = [privacyLinkController2 view];
    [view removeFromSuperview];

    privacyLinkController3 = [(OBButtonTray *)self privacyLinkController];
    [privacyLinkController3 removeFromParentViewController];

    privacyLinkController = self->_privacyLinkController;
    self->_privacyLinkController = 0;
  }

  if (controllerCopy)
  {
    v55 = controllerCopy;
    objc_storeStrong(&self->_privacyLinkController, controller);
    parentViewController = [(OBButtonTray *)self parentViewController];
    privacyLinkController4 = [(OBButtonTray *)self privacyLinkController];
    [parentViewController addChildViewController:privacyLinkController4];

    privacyLinkController5 = [(OBButtonTray *)self privacyLinkController];
    view2 = [privacyLinkController5 view];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

    privacyContainer = [(OBButtonTray *)self privacyContainer];
    privacyLinkController6 = [(OBButtonTray *)self privacyLinkController];
    view3 = [privacyLinkController6 view];
    [privacyContainer addSubview:view3];

    v19 = +[OBFeatureFlags isNaturalUIEnabled];
    privacyLinkController7 = [(OBButtonTray *)self privacyLinkController];
    view4 = [privacyLinkController7 view];
    leadingAnchor = [view4 leadingAnchor];
    leadingAnchor2 = [(OBButtonTray *)self leadingAnchor];
    if (v19)
    {
      v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [(OBButtonTray *)self setPrivacyLinkControllerLeadingConstraint:v24];

      privacyLinkController8 = [(OBButtonTray *)self privacyLinkController];
      view5 = [privacyLinkController8 view];
      trailingAnchor = [view5 trailingAnchor];
      trailingAnchor2 = [(OBButtonTray *)self trailingAnchor];
      parentViewController3 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [(OBButtonTray *)self setPrivacyLinkControllerTrailingConstraint:parentViewController3];
    }

    else
    {
      parentViewController2 = [(OBButtonTray *)self parentViewController];
      view6 = [parentViewController2 view];
      [view6 directionalLayoutMargins];
      v33 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:v32];
      [(OBButtonTray *)self setPrivacyLinkControllerLeadingConstraint:v33];

      privacyLinkController8 = [(OBButtonTray *)self privacyLinkController];
      view5 = [privacyLinkController8 view];
      trailingAnchor = [view5 trailingAnchor];
      trailingAnchor2 = [(OBButtonTray *)self trailingAnchor];
      parentViewController3 = [(OBButtonTray *)self parentViewController];
      view7 = [parentViewController3 view];
      [view7 directionalLayoutMargins];
      v36 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-v35];
      [(OBButtonTray *)self setPrivacyLinkControllerTrailingConstraint:v36];
    }

    v48 = MEMORY[0x1E696ACD8];
    privacyLinkControllerLeadingConstraint = [(OBButtonTray *)self privacyLinkControllerLeadingConstraint];
    v56[0] = privacyLinkControllerLeadingConstraint;
    privacyLinkControllerTrailingConstraint = [(OBButtonTray *)self privacyLinkControllerTrailingConstraint];
    v56[1] = privacyLinkControllerTrailingConstraint;
    privacyLinkController9 = [(OBButtonTray *)self privacyLinkController];
    view8 = [privacyLinkController9 view];
    centerXAnchor = [view8 centerXAnchor];
    privacyContainer2 = [(OBButtonTray *)self privacyContainer];
    centerXAnchor2 = [privacyContainer2 centerXAnchor];
    v38 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v56[2] = v38;
    privacyLinkController10 = [(OBButtonTray *)self privacyLinkController];
    view9 = [privacyLinkController10 view];
    topAnchor = [view9 topAnchor];
    privacyContainer3 = [(OBButtonTray *)self privacyContainer];
    topAnchor2 = [privacyContainer3 topAnchor];
    v44 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v56[3] = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:4];
    [v48 activateConstraints:v45];

    [(OBButtonTray *)self _updateButtonConstraints];
    controllerCopy = v55;
  }

  v46 = *MEMORY[0x1E69E9840];
}

- (void)setPrivacyLinkCallback:(id)callback
{
  v4 = MEMORY[0x1B8C83960](callback, a2);
  privacyLinkCallback = self->_privacyLinkCallback;
  self->_privacyLinkCallback = v4;

  privacyLinkController = [(OBButtonTray *)self privacyLinkController];
  [privacyLinkController setPrivacyLinkCallback:self->_privacyLinkCallback];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = OBButtonTray;
  [(OBButtonTray *)&v4 traitCollectionDidChange:change];
  [(OBButtonTray *)self _updateCaptionTextAppearance];
}

- (void)setDetached:(BOOL)detached
{
  if (self->_detached != detached)
  {
    self->_detached = detached;
    [(OBButtonTray *)self _updateButtonConstraints];
    [(OBButtonTray *)self bounds];
    v5 = v4;
    v7 = v6;
    [(OBButtonTray *)self intrinsicContentSize];
    if (v5 != v9 || v7 != v8)
    {
      [(OBButtonTray *)self invalidateIntrinsicContentSize];

      [(OBButtonTray *)self setNeedsLayout];
    }
  }
}

- (BOOL)hasContent
{
  stackView = [(OBButtonTray *)self stackView];
  subviews = [stackView subviews];
  v4 = subviews != 0;

  return v4;
}

- (void)setCaptionText:(id)text style:(int64_t)style learnMoreURL:(id)l
{
  lCopy = l;
  [(OBButtonTray *)self setCaptionText:text style:style];
  captionLabel = [(OBButtonTray *)self captionLabel];
  [captionLabel setLearnMoreURL:lCopy];
}

- (void)setCaptionText:(id)text style:(int64_t)style instructionsForUseAction:(id)action
{
  actionCopy = action;
  [(OBButtonTray *)self setCaptionText:text style:style];
  captionLabel = [(OBButtonTray *)self captionLabel];
  [captionLabel setInstructionsForUseTextWithAction:actionCopy];
}

- (void)setCaptionText:(id)text style:(int64_t)style
{
  textCopy = text;
  privacyLinkController = [(OBButtonTray *)self privacyLinkController];

  if (privacyLinkController)
  {
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Caption text not permitted with a privacy link." userInfo:0];
    objc_exception_throw(v19);
  }

  captionLabel = [(OBButtonTray *)self captionLabel];

  if (captionLabel)
  {
    stackView = [(OBButtonTray *)self stackView];
    captionLabel2 = [(OBButtonTray *)self captionLabel];
    [stackView removeArrangedSubview:captionLabel2];

    captionLabel3 = [(OBButtonTray *)self captionLabel];
    [captionLabel3 removeFromSuperview];
  }

  if ([textCopy length])
  {
    v11 = objc_alloc_init(OBLinkableTemplateLabel);
    [(OBButtonTray *)self setCaptionLabel:v11];

    captionLabel4 = [(OBButtonTray *)self captionLabel];
    [captionLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

    captionLabel5 = [(OBButtonTray *)self captionLabel];
    [captionLabel5 setText:textCopy];

    captionLabel6 = [(OBButtonTray *)self captionLabel];
    [captionLabel6 setNumberOfLines:0];

    stackView2 = [(OBButtonTray *)self stackView];
    captionLabel7 = [(OBButtonTray *)self captionLabel];
    [stackView2 insertArrangedSubview:captionLabel7 atIndex:0];

    stackView3 = [(OBButtonTray *)self stackView];
    captionLabel8 = [(OBButtonTray *)self captionLabel];
    [stackView3 setCustomSpacing:captionLabel8 afterView:24.0];

    [(OBButtonTray *)self setCaptionStyle:style];
    [(OBButtonTray *)self _updateCaptionTextAppearance];
  }
}

- (void)_updateCaptionTextAppearance
{
  captionStyle = [(OBButtonTray *)self captionStyle];
  if (captionStyle == 2)
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v5 = MEMORY[0x1E69DDCF8];
  }

  else
  {
    if (captionStyle != 1)
    {
      return;
    }

    labelColor = [MEMORY[0x1E69DC888] lightGrayColor];
    v5 = MEMORY[0x1E69DDD10];
  }

  captionLabel = [(OBButtonTray *)self captionLabel];
  [captionLabel setTextColor:labelColor];

  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*v5];
  captionLabel2 = [(OBButtonTray *)self captionLabel];
  [captionLabel2 setFont:v8];
}

- (void)didMoveToSuperview
{
  v17.receiver = self;
  v17.super_class = OBButtonTray;
  [(OBButtonTray *)&v17 didMoveToSuperview];
  superview = [(OBButtonTray *)self superview];
  parentViewController = [(OBButtonTray *)self parentViewController];
  view = [parentViewController view];

  if (superview == view)
  {
    parentViewController2 = [(OBButtonTray *)self parentViewController];
    view2 = [parentViewController2 view];
    [view2 directionalLayoutMargins];
    v11 = v10;
    privacyLinkControllerLeadingConstraint = [(OBButtonTray *)self privacyLinkControllerLeadingConstraint];
    [privacyLinkControllerLeadingConstraint setConstant:v11];

    parentViewController3 = [(OBButtonTray *)self parentViewController];
    view3 = [parentViewController3 view];
    [view3 directionalLayoutMargins];
    v15 = -v14;
    privacyLinkControllerTrailingConstraint = [(OBButtonTray *)self privacyLinkControllerTrailingConstraint];
    [privacyLinkControllerTrailingConstraint setConstant:v15];
  }

  else
  {
    privacyLinkControllerLeadingConstraint2 = [(OBButtonTray *)self privacyLinkControllerLeadingConstraint];
    [privacyLinkControllerLeadingConstraint2 setConstant:0.0];

    parentViewController3 = [(OBButtonTray *)self privacyLinkControllerTrailingConstraint];
    [parentViewController3 setConstant:0.0];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = OBButtonTray;
  [(OBButtonTray *)&v3 didMoveToWindow];
  [(OBButtonTray *)self _updateButtonConstraints];
}

- (void)_updateButtonConstraints
{
  if (![(OBButtonTray *)self isEmpty])
  {
    [(OBButtonTray *)self topPadding];
    v4 = v3;
    buttonViewTopConstraint = [(OBButtonTray *)self buttonViewTopConstraint];
    [buttonViewTopConstraint setConstant:v4];

    [(OBButtonTray *)self bottomPadding];
    v7 = v6;
    buttonViewBottomConstraint = [(OBButtonTray *)self buttonViewBottomConstraint];
    [buttonViewBottomConstraint setConstant:v7];

    privacyLinkController = [(OBButtonTray *)self privacyLinkController];

    if (privacyLinkController)
    {

      [(OBButtonTray *)self updatePrivacyLinkControllerBottomConstraint];
    }
  }
}

- (void)updatePrivacyLinkControllerBottomConstraint
{
  v14[1] = *MEMORY[0x1E69E9840];
  [(OBButtonTray *)self _privacyLinkControllerBottomPadding];
  v4 = v3;
  v5 = MEMORY[0x1E696ACD8];
  privacyLinkController = [(OBButtonTray *)self privacyLinkController];
  textView = [privacyLinkController textView];
  lastBaselineAnchor = [textView lastBaselineAnchor];
  privacyContainer = [(OBButtonTray *)self privacyContainer];
  bottomAnchor = [privacyContainer bottomAnchor];
  v11 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:-v4];
  v14[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v5 activateConstraints:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (double)topPadding
{
  v3 = 5.0;
  if (![(OBButtonTray *)self _shouldHandleLandscapeiPhoneLayout])
  {
    buttons = [(OBButtonTray *)self buttons];
    v5 = [buttons count];

    v3 = 24.0;
    if (v5 == 1)
    {
      buttons2 = [(OBButtonTray *)self buttons];
      firstObject = [buttons2 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        parentViewController = [(OBButtonTray *)self parentViewController];
        tabBarController = [parentViewController tabBarController];

        v3 = 6.0;
        if (!tabBarController)
        {
          v10 = +[OBDevice currentDevice];
          if ([v10 type] == 2)
          {
            parentViewController2 = [(OBButtonTray *)self parentViewController];
            ob_isFormSheet = [parentViewController2 ob_isFormSheet];
          }

          else
          {
            ob_isFormSheet = 0;
          }

          v13 = +[OBDevice currentDevice];
          v14 = [v13 hasHomeButton] | ob_isFormSheet;

          if (v14)
          {
            v3 = 5.0;
          }

          else
          {
            v3 = 34.0;
          }
        }
      }
    }
  }

  return v3;
}

- (double)bottomPadding
{
  isDetached = [(OBButtonTray *)self isDetached];
  result = 20.0;
  if (!isDetached)
  {
    buttons = [(OBButtonTray *)self buttons];
    v6 = [buttons count];

    v7 = 0.0;
    if (v6 == 1)
    {
      buttons2 = [(OBButtonTray *)self buttons];
      firstObject = [buttons2 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        +[OBTrayButton standardHeight];
        v11 = v10;
        [(OBButtonTray *)self buttonTrayButtonSpacing];
        v7 = v11 + v12;
      }
    }

    v13 = +[OBDevice currentDevice];
    if ([v13 type] == 2)
    {
      parentViewController = [(OBButtonTray *)self parentViewController];
      ob_isFormSheet = [parentViewController ob_isFormSheet];
    }

    else
    {
      ob_isFormSheet = 0;
    }

    parentViewController2 = [(OBButtonTray *)self parentViewController];
    tabBarController = [parentViewController2 tabBarController];

    v18 = 6.0;
    if (tabBarController)
    {
      return v7 + v18;
    }

    if (+[OBFeatureFlags isNaturalUIEnabled])
    {
      return 38.0;
    }

    v19 = +[OBDevice currentDevice];
    if (([v19 hasHomeButton] | ob_isFormSheet))
    {
    }

    else
    {
      _shouldHandleLandscapeiPhoneLayout = [(OBButtonTray *)self _shouldHandleLandscapeiPhoneLayout];

      if (!_shouldHandleLandscapeiPhoneLayout)
      {
        v18 = 34.0;
        return v7 + v18;
      }
    }

    buttons3 = [(OBButtonTray *)self buttons];
    lastObject = [buttons3 lastObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    buttons4 = [(OBButtonTray *)self buttons];
    LODWORD(buttons3) = [buttons4 count] > 1;

    v18 = 5.0;
    if ((buttons3 & isKindOfClass) != 0)
    {
      v18 = 24.0;
    }

    return v7 + v18;
  }

  return result;
}

- (void)_setUpBackdrops
{
  v33[4] = *MEMORY[0x1E69E9840];
  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    stackView = [(OBButtonTray *)self stackView];
    [stackView _obk_applyGlassGroup];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E69DD298]);
    stackView = [MEMORY[0x1E69DC730] effectWithStyle:1100];
    v5 = [v4 initWithEffect:stackView];
    [(OBButtonTray *)self setEffectView:v5];
  }

  effectView = [(OBButtonTray *)self effectView];

  if (effectView)
  {
    effectView2 = [(OBButtonTray *)self effectView];
    [effectView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    backdropContainer = [(OBButtonTray *)self backdropContainer];
    effectView3 = [(OBButtonTray *)self effectView];
    [backdropContainer addSubview:effectView3];

    v24 = MEMORY[0x1E696ACD8];
    backdropContainer2 = [(OBButtonTray *)self backdropContainer];
    widthAnchor = [backdropContainer2 widthAnchor];
    effectView4 = [(OBButtonTray *)self effectView];
    widthAnchor2 = [effectView4 widthAnchor];
    v28 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0];
    v33[0] = v28;
    backdropContainer3 = [(OBButtonTray *)self backdropContainer];
    heightAnchor = [backdropContainer3 heightAnchor];
    effectView5 = [(OBButtonTray *)self effectView];
    heightAnchor2 = [effectView5 heightAnchor];
    v22 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:1.0];
    v33[1] = v22;
    backdropContainer4 = [(OBButtonTray *)self backdropContainer];
    leadingAnchor = [backdropContainer4 leadingAnchor];
    effectView6 = [(OBButtonTray *)self effectView];
    leadingAnchor2 = [effectView6 leadingAnchor];
    v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v33[2] = v12;
    backdropContainer5 = [(OBButtonTray *)self backdropContainer];
    bottomAnchor = [backdropContainer5 bottomAnchor];
    effectView7 = [(OBButtonTray *)self effectView];
    bottomAnchor2 = [effectView7 bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v33[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    [v24 activateConstraints:v18];
  }

  [(OBButtonTray *)self _updateTrayVisibility];
  v19 = *MEMORY[0x1E69E9840];
}

- (void)_updateTrayVisibility
{
  stackView = [(OBButtonTray *)self stackView];
  arrangedSubviews = [stackView arrangedSubviews];
  if ([arrangedSubviews count])
  {
    [(OBButtonTray *)self setHidden:0];
  }

  else
  {
    privacyLinkController = [(OBButtonTray *)self privacyLinkController];
    [(OBButtonTray *)self setHidden:privacyLinkController == 0];
  }

  v6 = [(OBButtonTray *)self backdropStyle]== 1;
  effectView = [(OBButtonTray *)self effectView];
  [effectView setHidden:v6];
}

- (CGSize)intrinsicContentSize
{
  if ([(OBButtonTray *)self isEmpty])
  {
    [(OBButtonTray *)self bounds];
    v4 = v3;
    v5 = 0.0;
  }

  else
  {
    privacyLinkController = [(OBButtonTray *)self privacyLinkController];
    view = [privacyLinkController view];
    [view intrinsicContentSize];
    v9 = v8;

    if (v9 > 0.0)
    {
      [(OBButtonTray *)self _privacyLinkControllerBottomPadding];
      v9 = v9 + v10;
    }

    captionLabel = [(OBButtonTray *)self captionLabel];
    [captionLabel intrinsicContentSize];
    v13 = v12;

    [(OBButtonTray *)self bounds];
    v4 = v14;
    stackView = [(OBButtonTray *)self stackView];
    [stackView bounds];
    v17 = v16;
    [(OBButtonTray *)self bottomPadding];
    v19 = v18 + v17;
    [(OBButtonTray *)self topPadding];
    v5 = v9 + v13 + v20 + v19;
  }

  v21 = v4;
  v22 = v5;
  result.height = v22;
  result.width = v21;
  return result;
}

- (BOOL)_shouldHandleLandscapeiPhoneLayout
{
  v3 = +[OBDevice currentDevice];
  v4 = [v3 type] == 1 && (+[OBViewUtilities activeInterfaceOrientationForView:](OBViewUtilities, "activeInterfaceOrientationForView:", self) - 3) < 2;

  return v4;
}

- (CGSize)detachedSize
{
  isEmpty = [(OBButtonTray *)self isEmpty];
  [(OBButtonTray *)self bounds];
  v5 = v4;
  v6 = 0.0;
  if (!isEmpty)
  {
    stackView = [(OBButtonTray *)self stackView];
    [stackView bounds];
    v9 = v8 + 20.0;
    [(OBButtonTray *)self topPadding];
    v6 = v10 + v9;
  }

  v11 = v5;
  v12 = v6;
  result.height = v12;
  result.width = v11;
  return result;
}

- (BOOL)isEmpty
{
  buttons = [(OBButtonTray *)self buttons];
  if ([buttons count])
  {
    v4 = 0;
  }

  else
  {
    captionLabel = [(OBButtonTray *)self captionLabel];
    if (captionLabel)
    {
      v4 = 0;
    }

    else
    {
      privacyLinkController = [(OBButtonTray *)self privacyLinkController];
      v4 = privacyLinkController == 0;
    }
  }

  return v4;
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

- (void)addScrollPocketToScrollView:(id)view
{
  viewCopy = view;
  if (![(OBButtonTray *)self isEmpty])
  {
    scrollPocketInteraction = [(OBButtonTray *)self scrollPocketInteraction];

    if (!scrollPocketInteraction)
    {
      if (+[OBFeatureFlags isNaturalUIEnabled])
      {
        v5 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithScrollView:viewCopy edge:4 style:0];
        [(OBButtonTray *)self setScrollPocketInteraction:v5];
        scrollPocketInteraction2 = [(OBButtonTray *)self scrollPocketInteraction];
        [(OBButtonTray *)self addInteraction:scrollPocketInteraction2];
      }
    }
  }
}

- (void)removeScrollPocket
{
  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    scrollPocketInteraction = [(OBButtonTray *)self scrollPocketInteraction];

    if (scrollPocketInteraction)
    {
      scrollPocketInteraction2 = [(OBButtonTray *)self scrollPocketInteraction];
      [(OBButtonTray *)self removeInteraction:scrollPocketInteraction2];

      [(OBButtonTray *)self setScrollPocketInteraction:0];
    }
  }
}

@end