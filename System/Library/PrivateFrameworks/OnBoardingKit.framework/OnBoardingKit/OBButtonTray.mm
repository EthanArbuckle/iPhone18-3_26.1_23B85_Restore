@interface OBButtonTray
- (BOOL)_shouldHandleLandscapeiPhoneLayout;
- (BOOL)hasContent;
- (BOOL)isEmpty;
- (CGSize)detachedSize;
- (CGSize)intrinsicContentSize;
- (NSArray)allButtons;
- (OBButtonTray)initWithFrame:(CGRect)a3;
- (UIViewController)parentViewController;
- (double)_privacyLinkControllerBottomPadding;
- (double)bottomPadding;
- (double)buttonTrayButtonSpacing;
- (double)topPadding;
- (void)_setUpBackdrops;
- (void)_updateButtonConstraints;
- (void)_updateCaptionTextAppearance;
- (void)_updateTrayVisibility;
- (void)addButton:(id)a3;
- (void)addScrollPocketToScrollView:(id)a3;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)removeAllButtons;
- (void)removeButton:(id)a3;
- (void)removeFromSuperview;
- (void)removeScrollPocket;
- (void)setCaptionText:(id)a3 style:(int64_t)a4;
- (void)setCaptionText:(id)a3 style:(int64_t)a4 instructionsForUseAction:(id)a5;
- (void)setCaptionText:(id)a3 style:(int64_t)a4 learnMoreURL:(id)a5;
- (void)setDetached:(BOOL)a3;
- (void)setPrivacyLinkCallback:(id)a3;
- (void)setPrivacyLinkController:(id)a3;
- (void)setPrivacyLinkForBundles:(id)a3;
- (void)showButtonsAvailable;
- (void)showButtonsBusy;
- (void)traitCollectionDidChange:(id)a3;
- (void)updatePrivacyLinkControllerBottomConstraint;
@end

@implementation OBButtonTray

- (OBButtonTray)initWithFrame:(CGRect)a3
{
  v94[2] = *MEMORY[0x1E69E9840];
  v91.receiver = self;
  v91.super_class = OBButtonTray;
  v3 = [(OBButtonTray *)&v91 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(OBButtonTray *)v3 setButtons:v4];

    v5 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    [(OBButtonTray *)v3 setStackView:v5];

    v6 = [(OBButtonTray *)v3 stackView];
    [v6 setAxis:1];

    [(OBButtonTray *)v3 buttonTrayButtonSpacing];
    v8 = v7;
    v9 = [(OBButtonTray *)v3 stackView];
    [v9 setSpacing:v8];

    v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(OBButtonTray *)v3 setPrivacyContainer:v10];

    v11 = [(OBButtonTray *)v3 privacyContainer];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    v12 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(OBButtonTray *)v3 setBackdropContainer:v12];

    v13 = [(OBButtonTray *)v3 stackView];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    v14 = [(OBButtonTray *)v3 backdropContainer];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = objc_alloc_init(OBButtonTrayLayoutGuide);
    [(OBButtonTray *)v3 setButtonLayoutGuide:v15];

    v16 = [(OBButtonTray *)v3 buttonLayoutGuide];
    [(OBButtonTray *)v3 addLayoutGuide:v16];

    v17 = [(OBButtonTray *)v3 backdropContainer];
    [(OBButtonTray *)v3 addSubview:v17];

    v18 = [(OBButtonTray *)v3 stackView];
    [(OBButtonTray *)v3 addSubview:v18];

    v19 = [(OBButtonTray *)v3 privacyContainer];
    [(OBButtonTray *)v3 addSubview:v19];

    v20 = [(OBButtonTray *)v3 privacyContainer];
    v21 = [v20 topAnchor];
    v22 = [(OBButtonTray *)v3 topAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [(OBButtonTray *)v3 setButtonViewTopConstraint:v23];

    v24 = [(OBButtonTray *)v3 buttonLayoutGuide];
    v25 = [v24 bottomAnchor];
    v26 = [(OBButtonTray *)v3 stackView];
    v27 = [v26 bottomAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
    [(OBButtonTray *)v3 setButtonViewBottomConstraint:v28];

    v29 = [(OBButtonTray *)v3 buttonLayoutGuide];
    v30 = [v29 leadingAnchor];
    v31 = [(OBButtonTray *)v3 stackView];
    v32 = [v31 leadingAnchor];
    v33 = [v30 constraintEqualToAnchor:v32];
    [(OBButtonTray *)v3 setButtonViewLeadingConstraint:v33];

    v34 = [(OBButtonTray *)v3 buttonLayoutGuide];
    v35 = [v34 trailingAnchor];
    v36 = [(OBButtonTray *)v3 stackView];
    v37 = [v36 trailingAnchor];
    v38 = [v35 constraintEqualToAnchor:v37];
    [(OBButtonTray *)v3 setButtonViewTrailingConstraint:v38];

    LODWORD(v38) = +[OBFeatureFlags isNaturalUIEnabled];
    v39 = 0x1E696A000uLL;
    v40 = MEMORY[0x1E696ACD8];
    v41 = [(OBButtonTray *)v3 stackView];
    v42 = [v41 topAnchor];
    v43 = [(OBButtonTray *)v3 privacyContainer];
    v44 = [v43 bottomAnchor];
    if (v38)
    {
      v45 = [v42 constraintGreaterThanOrEqualToAnchor:v44];
      v94[0] = v45;
      v46 = [(OBButtonTray *)v3 stackView];
      [v46 bottomAnchor];
      v47 = v87 = v42;
      [(OBButtonTray *)v3 buttonLayoutGuide];
      v48 = v85 = v40;
      [v48 bottomAnchor];
      v49 = v89 = v41;
      [(OBButtonTray *)v3 bottomPadding];
      v51 = [v47 constraintEqualToAnchor:v49 constant:-v50];
      v94[1] = v51;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:2];
      [v85 activateConstraints:v52];

      v39 = 0x1E696A000;
      v41 = v89;

      v42 = v87;
    }

    else
    {
      v45 = [v42 constraintEqualToAnchor:v44];
      v93 = v45;
      v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
      [v40 activateConstraints:v46];
    }

    v74 = *(v39 + 3288);
    v90 = [(OBButtonTray *)v3 privacyContainer];
    v88 = [v90 leadingAnchor];
    v86 = [(OBButtonTray *)v3 leadingAnchor];
    v84 = [v88 constraintEqualToAnchor:v86];
    v92[0] = v84;
    v83 = [(OBButtonTray *)v3 privacyContainer];
    v82 = [v83 trailingAnchor];
    v81 = [(OBButtonTray *)v3 trailingAnchor];
    v80 = [v82 constraintEqualToAnchor:v81];
    v92[1] = v80;
    v79 = [(OBButtonTray *)v3 buttonViewTopConstraint];
    v92[2] = v79;
    v78 = [(OBButtonTray *)v3 buttonViewBottomConstraint];
    v92[3] = v78;
    v77 = [(OBButtonTray *)v3 buttonViewLeadingConstraint];
    v92[4] = v77;
    v76 = [(OBButtonTray *)v3 buttonViewTrailingConstraint];
    v92[5] = v76;
    v75 = [(OBButtonTray *)v3 buttonLayoutGuide];
    v73 = [v75 heightAnchor];
    v72 = [v73 constraintEqualToConstant:0.0];
    v92[6] = v72;
    v70 = [(OBButtonTray *)v3 widthAnchor];
    v71 = [(OBButtonTray *)v3 backdropContainer];
    v69 = [v71 widthAnchor];
    v68 = [v70 constraintEqualToAnchor:v69 multiplier:1.0];
    v92[7] = v68;
    v66 = [(OBButtonTray *)v3 heightAnchor];
    v67 = [(OBButtonTray *)v3 backdropContainer];
    v65 = [v67 heightAnchor];
    v64 = [v66 constraintEqualToAnchor:v65 multiplier:1.0];
    v92[8] = v64;
    v53 = [(OBButtonTray *)v3 leadingAnchor];
    v54 = [(OBButtonTray *)v3 backdropContainer];
    v55 = [v54 leadingAnchor];
    v56 = [v53 constraintEqualToAnchor:v55];
    v92[9] = v56;
    v57 = [(OBButtonTray *)v3 bottomAnchor];
    v58 = [(OBButtonTray *)v3 backdropContainer];
    v59 = [v58 bottomAnchor];
    v60 = [v57 constraintEqualToAnchor:v59];
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
  v3 = [(OBButtonTray *)self stackView];
  v4 = [(OBButtonTray *)self buttonViewLeadingConstraint];
  v21[0] = v4;
  v5 = [(OBButtonTray *)self buttonViewTrailingConstraint];
  v21[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  [v3 removeConstraints:v6];

  v7 = [(OBButtonTray *)self buttonLayoutGuide];
  v8 = [v7 widthConstraint];
  [v8 setActive:0];

  v20.receiver = self;
  v20.super_class = OBButtonTray;
  [(OBButtonTray *)&v20 removeFromSuperview];
  v9 = [(OBButtonTray *)self buttonLayoutGuide];
  v10 = [v9 leadingAnchor];
  v11 = [(OBButtonTray *)self stackView];
  v12 = [v11 leadingAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  [(OBButtonTray *)self setButtonViewLeadingConstraint:v13];

  v14 = [(OBButtonTray *)self buttonLayoutGuide];
  v15 = [v14 trailingAnchor];
  v16 = [(OBButtonTray *)self stackView];
  v17 = [v16 trailingAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
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
  v2 = [(OBButtonTray *)self buttons];
  v3 = [v2 copy];

  return v3;
}

- (void)showButtonsBusy
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(OBButtonTray *)self buttons];
  v4 = [v3 firstObject];
  [v4 showsBusyIndicator];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(OBButtonTray *)self buttons];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setEnabled:0];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)showButtonsAvailable
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(OBButtonTray *)self buttons];
  v4 = [v3 firstObject];
  [v4 hidesBusyIndicator];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(OBButtonTray *)self buttons];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setEnabled:1];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)addButton:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [(OBButtonTray *)self buttons];
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"A link button cannot be placed above a bold button." userInfo:0];
            objc_exception_throw(v20);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }
  }

  v11 = [(OBButtonTray *)self stackView];
  [v11 addArrangedSubview:v4];

  v12 = [(OBButtonTray *)self buttons];
  [v12 addObject:v4];

  [(OBButtonTray *)self _updateButtonConstraints];
  v13 = [(OBButtonTray *)self parentViewController];
  v14 = [v13 isViewLoaded];

  if (v14)
  {
    v15 = [(OBButtonTray *)self parentViewController];
    v16 = [v15 view];
    [v16 setNeedsLayout];

    v17 = [(OBButtonTray *)self parentViewController];
    v18 = [v17 view];
    [v18 layoutIfNeeded];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)removeButton:(id)a3
{
  v4 = a3;
  v5 = [(OBButtonTray *)self stackView];
  [v5 removeArrangedSubview:v4];

  v6 = [(OBButtonTray *)self buttons];
  [v6 removeObject:v4];

  [v4 removeFromSuperview];
  [(OBButtonTray *)self _updateButtonConstraints];
  v7 = [(OBButtonTray *)self parentViewController];
  LODWORD(v6) = [v7 isViewLoaded];

  if (v6)
  {
    v8 = [(OBButtonTray *)self parentViewController];
    v9 = [v8 view];
    [v9 setNeedsLayout];

    v11 = [(OBButtonTray *)self parentViewController];
    v10 = [v11 view];
    [v10 layoutIfNeeded];
  }
}

- (void)removeAllButtons
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(OBButtonTray *)self buttons];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = [(OBButtonTray *)self stackView];
        [v9 removeArrangedSubview:v8];

        [v8 removeFromSuperview];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v10 = [(OBButtonTray *)self buttons];
  [v10 removeAllObjects];

  [(OBButtonTray *)self _updateButtonConstraints];
  v11 = [(OBButtonTray *)self parentViewController];
  v12 = [v11 view];
  [v12 setNeedsLayout];

  v13 = [(OBButtonTray *)self parentViewController];
  v14 = [v13 view];
  [v14 layoutIfNeeded];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setPrivacyLinkForBundles:(id)a3
{
  v4 = [OBPrivacyLinkController linkWithBundleIdentifiers:a3];
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

  v4 = [(OBButtonTray *)self buttons];
  v5 = [v4 count];

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

- (void)setPrivacyLinkController:(id)a3
{
  v56[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(OBButtonTray *)self captionLabel];

  if (v6)
  {
    v47 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Privacy link not permitted with caption text." userInfo:0];
    objc_exception_throw(v47);
  }

  v7 = [(OBButtonTray *)self privacyLinkController];

  if (v7)
  {
    v8 = [(OBButtonTray *)self privacyLinkController];
    v9 = [v8 view];
    [v9 removeFromSuperview];

    v10 = [(OBButtonTray *)self privacyLinkController];
    [v10 removeFromParentViewController];

    privacyLinkController = self->_privacyLinkController;
    self->_privacyLinkController = 0;
  }

  if (v5)
  {
    v55 = v5;
    objc_storeStrong(&self->_privacyLinkController, a3);
    v12 = [(OBButtonTray *)self parentViewController];
    v13 = [(OBButtonTray *)self privacyLinkController];
    [v12 addChildViewController:v13];

    v14 = [(OBButtonTray *)self privacyLinkController];
    v15 = [v14 view];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = [(OBButtonTray *)self privacyContainer];
    v17 = [(OBButtonTray *)self privacyLinkController];
    v18 = [v17 view];
    [v16 addSubview:v18];

    v19 = +[OBFeatureFlags isNaturalUIEnabled];
    v20 = [(OBButtonTray *)self privacyLinkController];
    v21 = [v20 view];
    v22 = [v21 leadingAnchor];
    v23 = [(OBButtonTray *)self leadingAnchor];
    if (v19)
    {
      v24 = [v22 constraintEqualToAnchor:v23];
      [(OBButtonTray *)self setPrivacyLinkControllerLeadingConstraint:v24];

      v25 = [(OBButtonTray *)self privacyLinkController];
      v26 = [v25 view];
      v27 = [v26 trailingAnchor];
      v28 = [(OBButtonTray *)self trailingAnchor];
      v29 = [v27 constraintEqualToAnchor:v28];
      [(OBButtonTray *)self setPrivacyLinkControllerTrailingConstraint:v29];
    }

    else
    {
      v30 = [(OBButtonTray *)self parentViewController];
      v31 = [v30 view];
      [v31 directionalLayoutMargins];
      v33 = [v22 constraintGreaterThanOrEqualToAnchor:v23 constant:v32];
      [(OBButtonTray *)self setPrivacyLinkControllerLeadingConstraint:v33];

      v25 = [(OBButtonTray *)self privacyLinkController];
      v26 = [v25 view];
      v27 = [v26 trailingAnchor];
      v28 = [(OBButtonTray *)self trailingAnchor];
      v29 = [(OBButtonTray *)self parentViewController];
      v34 = [v29 view];
      [v34 directionalLayoutMargins];
      v36 = [v27 constraintLessThanOrEqualToAnchor:v28 constant:-v35];
      [(OBButtonTray *)self setPrivacyLinkControllerTrailingConstraint:v36];
    }

    v48 = MEMORY[0x1E696ACD8];
    v54 = [(OBButtonTray *)self privacyLinkControllerLeadingConstraint];
    v56[0] = v54;
    v53 = [(OBButtonTray *)self privacyLinkControllerTrailingConstraint];
    v56[1] = v53;
    v52 = [(OBButtonTray *)self privacyLinkController];
    v51 = [v52 view];
    v49 = [v51 centerXAnchor];
    v50 = [(OBButtonTray *)self privacyContainer];
    v37 = [v50 centerXAnchor];
    v38 = [v49 constraintEqualToAnchor:v37];
    v56[2] = v38;
    v39 = [(OBButtonTray *)self privacyLinkController];
    v40 = [v39 view];
    v41 = [v40 topAnchor];
    v42 = [(OBButtonTray *)self privacyContainer];
    v43 = [v42 topAnchor];
    v44 = [v41 constraintEqualToAnchor:v43];
    v56[3] = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:4];
    [v48 activateConstraints:v45];

    [(OBButtonTray *)self _updateButtonConstraints];
    v5 = v55;
  }

  v46 = *MEMORY[0x1E69E9840];
}

- (void)setPrivacyLinkCallback:(id)a3
{
  v4 = MEMORY[0x1B8C83960](a3, a2);
  privacyLinkCallback = self->_privacyLinkCallback;
  self->_privacyLinkCallback = v4;

  v6 = [(OBButtonTray *)self privacyLinkController];
  [v6 setPrivacyLinkCallback:self->_privacyLinkCallback];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = OBButtonTray;
  [(OBButtonTray *)&v4 traitCollectionDidChange:a3];
  [(OBButtonTray *)self _updateCaptionTextAppearance];
}

- (void)setDetached:(BOOL)a3
{
  if (self->_detached != a3)
  {
    self->_detached = a3;
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
  v2 = [(OBButtonTray *)self stackView];
  v3 = [v2 subviews];
  v4 = v3 != 0;

  return v4;
}

- (void)setCaptionText:(id)a3 style:(int64_t)a4 learnMoreURL:(id)a5
{
  v8 = a5;
  [(OBButtonTray *)self setCaptionText:a3 style:a4];
  v9 = [(OBButtonTray *)self captionLabel];
  [v9 setLearnMoreURL:v8];
}

- (void)setCaptionText:(id)a3 style:(int64_t)a4 instructionsForUseAction:(id)a5
{
  v8 = a5;
  [(OBButtonTray *)self setCaptionText:a3 style:a4];
  v9 = [(OBButtonTray *)self captionLabel];
  [v9 setInstructionsForUseTextWithAction:v8];
}

- (void)setCaptionText:(id)a3 style:(int64_t)a4
{
  v20 = a3;
  v6 = [(OBButtonTray *)self privacyLinkController];

  if (v6)
  {
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Caption text not permitted with a privacy link." userInfo:0];
    objc_exception_throw(v19);
  }

  v7 = [(OBButtonTray *)self captionLabel];

  if (v7)
  {
    v8 = [(OBButtonTray *)self stackView];
    v9 = [(OBButtonTray *)self captionLabel];
    [v8 removeArrangedSubview:v9];

    v10 = [(OBButtonTray *)self captionLabel];
    [v10 removeFromSuperview];
  }

  if ([v20 length])
  {
    v11 = objc_alloc_init(OBLinkableTemplateLabel);
    [(OBButtonTray *)self setCaptionLabel:v11];

    v12 = [(OBButtonTray *)self captionLabel];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = [(OBButtonTray *)self captionLabel];
    [v13 setText:v20];

    v14 = [(OBButtonTray *)self captionLabel];
    [v14 setNumberOfLines:0];

    v15 = [(OBButtonTray *)self stackView];
    v16 = [(OBButtonTray *)self captionLabel];
    [v15 insertArrangedSubview:v16 atIndex:0];

    v17 = [(OBButtonTray *)self stackView];
    v18 = [(OBButtonTray *)self captionLabel];
    [v17 setCustomSpacing:v18 afterView:24.0];

    [(OBButtonTray *)self setCaptionStyle:a4];
    [(OBButtonTray *)self _updateCaptionTextAppearance];
  }
}

- (void)_updateCaptionTextAppearance
{
  v3 = [(OBButtonTray *)self captionStyle];
  if (v3 == 2)
  {
    v4 = [MEMORY[0x1E69DC888] labelColor];
    v5 = MEMORY[0x1E69DDCF8];
  }

  else
  {
    if (v3 != 1)
    {
      return;
    }

    v4 = [MEMORY[0x1E69DC888] lightGrayColor];
    v5 = MEMORY[0x1E69DDD10];
  }

  v6 = [(OBButtonTray *)self captionLabel];
  [v6 setTextColor:v4];

  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*v5];
  v7 = [(OBButtonTray *)self captionLabel];
  [v7 setFont:v8];
}

- (void)didMoveToSuperview
{
  v17.receiver = self;
  v17.super_class = OBButtonTray;
  [(OBButtonTray *)&v17 didMoveToSuperview];
  v3 = [(OBButtonTray *)self superview];
  v4 = [(OBButtonTray *)self parentViewController];
  v5 = [v4 view];

  if (v3 == v5)
  {
    v8 = [(OBButtonTray *)self parentViewController];
    v9 = [v8 view];
    [v9 directionalLayoutMargins];
    v11 = v10;
    v12 = [(OBButtonTray *)self privacyLinkControllerLeadingConstraint];
    [v12 setConstant:v11];

    v7 = [(OBButtonTray *)self parentViewController];
    v13 = [v7 view];
    [v13 directionalLayoutMargins];
    v15 = -v14;
    v16 = [(OBButtonTray *)self privacyLinkControllerTrailingConstraint];
    [v16 setConstant:v15];
  }

  else
  {
    v6 = [(OBButtonTray *)self privacyLinkControllerLeadingConstraint];
    [v6 setConstant:0.0];

    v7 = [(OBButtonTray *)self privacyLinkControllerTrailingConstraint];
    [v7 setConstant:0.0];
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
    v5 = [(OBButtonTray *)self buttonViewTopConstraint];
    [v5 setConstant:v4];

    [(OBButtonTray *)self bottomPadding];
    v7 = v6;
    v8 = [(OBButtonTray *)self buttonViewBottomConstraint];
    [v8 setConstant:v7];

    v9 = [(OBButtonTray *)self privacyLinkController];

    if (v9)
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
  v6 = [(OBButtonTray *)self privacyLinkController];
  v7 = [v6 textView];
  v8 = [v7 lastBaselineAnchor];
  v9 = [(OBButtonTray *)self privacyContainer];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10 constant:-v4];
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
    v4 = [(OBButtonTray *)self buttons];
    v5 = [v4 count];

    v3 = 24.0;
    if (v5 == 1)
    {
      v6 = [(OBButtonTray *)self buttons];
      v7 = [v6 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [(OBButtonTray *)self parentViewController];
        v9 = [v8 tabBarController];

        v3 = 6.0;
        if (!v9)
        {
          v10 = +[OBDevice currentDevice];
          if ([v10 type] == 2)
          {
            v11 = [(OBButtonTray *)self parentViewController];
            v12 = [v11 ob_isFormSheet];
          }

          else
          {
            v12 = 0;
          }

          v13 = +[OBDevice currentDevice];
          v14 = [v13 hasHomeButton] | v12;

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
  v3 = [(OBButtonTray *)self isDetached];
  result = 20.0;
  if (!v3)
  {
    v5 = [(OBButtonTray *)self buttons];
    v6 = [v5 count];

    v7 = 0.0;
    if (v6 == 1)
    {
      v8 = [(OBButtonTray *)self buttons];
      v9 = [v8 firstObject];

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
      v14 = [(OBButtonTray *)self parentViewController];
      v15 = [v14 ob_isFormSheet];
    }

    else
    {
      v15 = 0;
    }

    v16 = [(OBButtonTray *)self parentViewController];
    v17 = [v16 tabBarController];

    v18 = 6.0;
    if (v17)
    {
      return v7 + v18;
    }

    if (+[OBFeatureFlags isNaturalUIEnabled])
    {
      return 38.0;
    }

    v19 = +[OBDevice currentDevice];
    if (([v19 hasHomeButton] | v15))
    {
    }

    else
    {
      v20 = [(OBButtonTray *)self _shouldHandleLandscapeiPhoneLayout];

      if (!v20)
      {
        v18 = 34.0;
        return v7 + v18;
      }
    }

    v21 = [(OBButtonTray *)self buttons];
    v22 = [v21 lastObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v24 = [(OBButtonTray *)self buttons];
    LODWORD(v21) = [v24 count] > 1;

    v18 = 5.0;
    if ((v21 & isKindOfClass) != 0)
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
    v3 = [(OBButtonTray *)self stackView];
    [v3 _obk_applyGlassGroup];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E69DD298]);
    v3 = [MEMORY[0x1E69DC730] effectWithStyle:1100];
    v5 = [v4 initWithEffect:v3];
    [(OBButtonTray *)self setEffectView:v5];
  }

  v6 = [(OBButtonTray *)self effectView];

  if (v6)
  {
    v7 = [(OBButtonTray *)self effectView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(OBButtonTray *)self backdropContainer];
    v9 = [(OBButtonTray *)self effectView];
    [v8 addSubview:v9];

    v24 = MEMORY[0x1E696ACD8];
    v32 = [(OBButtonTray *)self backdropContainer];
    v30 = [v32 widthAnchor];
    v31 = [(OBButtonTray *)self effectView];
    v29 = [v31 widthAnchor];
    v28 = [v30 constraintEqualToAnchor:v29 multiplier:1.0];
    v33[0] = v28;
    v27 = [(OBButtonTray *)self backdropContainer];
    v25 = [v27 heightAnchor];
    v26 = [(OBButtonTray *)self effectView];
    v23 = [v26 heightAnchor];
    v22 = [v25 constraintEqualToAnchor:v23 multiplier:1.0];
    v33[1] = v22;
    v21 = [(OBButtonTray *)self backdropContainer];
    v20 = [v21 leadingAnchor];
    v10 = [(OBButtonTray *)self effectView];
    v11 = [v10 leadingAnchor];
    v12 = [v20 constraintEqualToAnchor:v11];
    v33[2] = v12;
    v13 = [(OBButtonTray *)self backdropContainer];
    v14 = [v13 bottomAnchor];
    v15 = [(OBButtonTray *)self effectView];
    v16 = [v15 bottomAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    v33[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    [v24 activateConstraints:v18];
  }

  [(OBButtonTray *)self _updateTrayVisibility];
  v19 = *MEMORY[0x1E69E9840];
}

- (void)_updateTrayVisibility
{
  v3 = [(OBButtonTray *)self stackView];
  v4 = [v3 arrangedSubviews];
  if ([v4 count])
  {
    [(OBButtonTray *)self setHidden:0];
  }

  else
  {
    v5 = [(OBButtonTray *)self privacyLinkController];
    [(OBButtonTray *)self setHidden:v5 == 0];
  }

  v6 = [(OBButtonTray *)self backdropStyle]== 1;
  v7 = [(OBButtonTray *)self effectView];
  [v7 setHidden:v6];
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
    v6 = [(OBButtonTray *)self privacyLinkController];
    v7 = [v6 view];
    [v7 intrinsicContentSize];
    v9 = v8;

    if (v9 > 0.0)
    {
      [(OBButtonTray *)self _privacyLinkControllerBottomPadding];
      v9 = v9 + v10;
    }

    v11 = [(OBButtonTray *)self captionLabel];
    [v11 intrinsicContentSize];
    v13 = v12;

    [(OBButtonTray *)self bounds];
    v4 = v14;
    v15 = [(OBButtonTray *)self stackView];
    [v15 bounds];
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
  v3 = [(OBButtonTray *)self isEmpty];
  [(OBButtonTray *)self bounds];
  v5 = v4;
  v6 = 0.0;
  if (!v3)
  {
    v7 = [(OBButtonTray *)self stackView];
    [v7 bounds];
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
  v3 = [(OBButtonTray *)self buttons];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(OBButtonTray *)self captionLabel];
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v6 = [(OBButtonTray *)self privacyLinkController];
      v4 = v6 == 0;
    }
  }

  return v4;
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

- (void)addScrollPocketToScrollView:(id)a3
{
  v7 = a3;
  if (![(OBButtonTray *)self isEmpty])
  {
    v4 = [(OBButtonTray *)self scrollPocketInteraction];

    if (!v4)
    {
      if (+[OBFeatureFlags isNaturalUIEnabled])
      {
        v5 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithScrollView:v7 edge:4 style:0];
        [(OBButtonTray *)self setScrollPocketInteraction:v5];
        v6 = [(OBButtonTray *)self scrollPocketInteraction];
        [(OBButtonTray *)self addInteraction:v6];
      }
    }
  }
}

- (void)removeScrollPocket
{
  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    v3 = [(OBButtonTray *)self scrollPocketInteraction];

    if (v3)
    {
      v4 = [(OBButtonTray *)self scrollPocketInteraction];
      [(OBButtonTray *)self removeInteraction:v4];

      [(OBButtonTray *)self setScrollPocketInteraction:0];
    }
  }
}

@end