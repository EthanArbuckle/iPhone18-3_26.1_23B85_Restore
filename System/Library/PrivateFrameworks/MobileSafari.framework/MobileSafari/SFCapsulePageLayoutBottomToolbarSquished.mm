@interface SFCapsulePageLayoutBottomToolbarSquished
- (CGSize)capsuleSizeForPage:(id)page;
- (NSArray)supplementaryIdentifiers;
- (SFCapsulePageContainer)container;
- (SFCapsulePageLayout)baseLayout;
- (SFCapsulePageLayoutBottomToolbarSquished)initWithContainer:(id)container;
- (SFCapsulePageLayoutBottomToolbarSquished)initWithContainer:(id)container baseLayout:(id)layout;
- (double)lockdownStatusBarContentOverlapOnPage:(id)page;
- (double)lockdownStatusBarHeightDecreaseOnPage:(id)page;
- (double)offsetForDodgingKeyboardOnPage:(id)page;
- (double)pageWidth;
- (double)spacingAboveLockdownStatusBarOnPage:(id)page;
- (double)spacingBelowLockdownStatusBarOnPage:(id)page;
- (id)bottomBackdropInfoForPage:(id)page;
- (id)capsuleInfoForPage:(id)page;
- (id)infoForSupplementaryIdentifier:(id)identifier page:(id)page;
- (id)lockdownStatusBarFrameOnPage:(id)page;
- (id)topBackdropInfoForPage:(id)page;
@end

@implementation SFCapsulePageLayoutBottomToolbarSquished

- (SFCapsulePageLayoutBottomToolbarSquished)initWithContainer:(id)container
{
  containerCopy = container;
  v9.receiver = self;
  v9.super_class = SFCapsulePageLayoutBottomToolbarSquished;
  v5 = [(SFCapsulePageLayoutBottomToolbarSquished *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_container, containerCopy);
    v7 = v6;
  }

  return v6;
}

- (SFCapsulePageLayoutBottomToolbarSquished)initWithContainer:(id)container baseLayout:(id)layout
{
  containerCopy = container;
  layoutCopy = layout;
  v12.receiver = self;
  v12.super_class = SFCapsulePageLayoutBottomToolbarSquished;
  v8 = [(SFCapsulePageLayoutBottomToolbarSquished *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_baseLayout, layoutCopy);
    objc_storeWeak(&v9->_container, containerCopy);
    v10 = v9;
  }

  return v9;
}

- (double)pageWidth
{
  WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
  [WeakRetained pageWidth];
  v4 = v3;

  return v4;
}

- (id)capsuleInfoForPage:(id)page
{
  pageCopy = page;
  container = [(SFCapsulePageLayoutBottomToolbarSquished *)self container];
  [container bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
  v15 = [WeakRetained capsuleInfoForPage:pageCopy];

  [v15 frame];
  v17 = v16;
  [(SFCapsulePageLayoutBottomToolbarSquished *)self capsuleSizeForPage:pageCopy];
  v19 = v18;
  v21 = v20;
  v29.origin.x = v7;
  v29.origin.y = v9;
  v29.size.width = v11;
  v29.size.height = v13;
  v22 = CGRectGetHeight(v29) - v21;
  [(SFCapsulePageLayoutBottomToolbarSquished *)self offsetForDodgingKeyboardOnPage:pageCopy];
  v24 = v23;

  v25 = objc_alloc_init(_TtC12MobileSafari23SFCapsulePageLayoutInfo);
  [v15 cornerRadius];
  [(SFCapsulePageLayoutInfo *)v25 setCornerRadius:?];
  [(SFCapsulePageLayoutInfo *)v25 setFrame:v17, v22 - v24, v19, v21];
  parentIdentifier = [v15 parentIdentifier];
  [(SFCapsulePageLayoutInfo *)v25 setParentIdentifier:parentIdentifier];

  return v25;
}

- (CGSize)capsuleSizeForPage:(id)page
{
  pageCopy = page;
  container = [(SFCapsulePageLayoutBottomToolbarSquished *)self container];
  WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
  v7 = [WeakRetained capsuleInfoForPage:pageCopy];
  [v7 frame];
  v9 = v8;

  [pageCopy capsuleHeightForWidth:1 defaultHeight:v9 state:44.0];
  v11 = v10;

  [container safeAreaInsets];
  v13 = v12;
  [container keyboardHeight];
  v15 = fmax(v13 - v14, 0.0);
  v16 = fmax(v11 + fmin(v15, 13.0), v15 + 18.0);

  v17 = v9;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (id)bottomBackdropInfoForPage:(id)page
{
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained bounds];
  v37 = v7;
  v38 = v6;
  v35 = v9;
  v36 = v8;
  lockdownStatusBar = [pageCopy lockdownStatusBar];

  if (lockdownStatusBar)
  {
    [(SFCapsulePageLayoutBottomToolbarSquished *)self spacingAboveLockdownStatusBarOnPage:pageCopy];
    v12 = v11 + 0.0;
    [(SFCapsulePageLayoutBottomToolbarSquished *)self spacingBelowLockdownStatusBarOnPage:pageCopy];
    v14 = v12 + v13;
    lockdownStatusBar2 = [pageCopy lockdownStatusBar];
    [lockdownStatusBar2 preferredSize];
    v17 = v14 + v16;

    [(SFCapsulePageLayoutBottomToolbarSquished *)self lockdownStatusBarContentOverlapOnPage:pageCopy];
    v19 = v17 - v18;
  }

  else
  {
    v19 = 0.0;
  }

  v34 = v19;
  v20 = [(SFCapsulePageLayoutBottomToolbarSquished *)self capsuleInfoForPage:pageCopy];
  [v20 frame];
  v22 = v21;
  rect = v23;
  v25 = v24;
  v27 = v26;

  v40.origin.x = v38;
  v40.origin.y = v37;
  v40.size.width = v36;
  v40.size.height = v35;
  Height = CGRectGetHeight(v40);
  v41.origin.x = v22;
  v41.origin.y = rect;
  v41.size.width = v25;
  v41.size.height = v27;
  v29 = v34 + Height - CGRectGetMinY(v41);
  v30 = objc_alloc_init(_TtC12MobileSafari23SFCapsulePageLayoutInfo);
  v42.origin.x = v38;
  v42.origin.y = v37;
  v42.size.width = v36;
  v42.size.height = v35;
  v31 = CGRectGetHeight(v42) - v29;
  v43.origin.x = v38;
  v43.origin.y = v37;
  v43.size.width = v36;
  v43.size.height = v35;
  [(SFCapsulePageLayoutInfo *)v30 setFrame:0.0, v31, CGRectGetWidth(v43), v29];

  return v30;
}

- (double)offsetForDodgingKeyboardOnPage:(id)page
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained keyboardHeight];
  v5 = v4;
  [WeakRetained inputAccessoryViewFrame];
  v6 = fmax(v5 - CGRectGetHeight(v8), 0.0);

  return v6;
}

- (id)topBackdropInfoForPage:(id)page
{
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
  v6 = [WeakRetained topBackdropInfoForPage:pageCopy];

  return v6;
}

- (NSArray)supplementaryIdentifiers
{
  WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
  supplementaryIdentifiers = [WeakRetained supplementaryIdentifiers];

  return supplementaryIdentifiers;
}

- (id)infoForSupplementaryIdentifier:(id)identifier page:(id)page
{
  identifierCopy = identifier;
  pageCopy = page;
  if ([identifierCopy isEqualToString:@"SFCapsuleSupplementaryViewLockdownStatusBar"])
  {
    v8 = [(SFCapsulePageLayoutBottomToolbarSquished *)self lockdownStatusBarFrameOnPage:pageCopy];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
    v8 = [WeakRetained infoForSupplementaryIdentifier:identifierCopy page:pageCopy];

    [v8 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = objc_loadWeakRetained(&self->_container);
    [v16 bounds];
    MaxY = CGRectGetMaxY(v20);

    [v8 setFrame:{v11, MaxY, v13, v15}];
  }

  return v8;
}

- (id)lockdownStatusBarFrameOnPage:(id)page
{
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  lockdownStatusBar = [pageCopy lockdownStatusBar];
  v15 = [(SFCapsulePageLayoutBottomToolbarSquished *)self bottomBackdropInfoForPage:pageCopy];
  [v15 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = objc_alloc_init(_TtC12MobileSafari23SFCapsulePageLayoutInfo);
  v32.origin.x = v17;
  v32.origin.y = v19;
  v32.size.width = v21;
  v32.size.height = v23;
  MinY = CGRectGetMinY(v32);
  [(SFCapsulePageLayoutBottomToolbarSquished *)self spacingAboveLockdownStatusBarOnPage:pageCopy];
  v27 = v26;

  v33.origin.x = v7;
  v33.origin.y = v9;
  v33.size.width = v11;
  v33.size.height = v13;
  Width = CGRectGetWidth(v33);
  [lockdownStatusBar preferredSize];
  [(SFCapsulePageLayoutInfo *)v24 setFrame:0.0, MinY + v27, Width, v29];

  return v24;
}

- (double)spacingAboveLockdownStatusBarOnPage:(id)page
{
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained minimizedContentScale];
  v7 = v6;

  lockdownStatusBar = [pageCopy lockdownStatusBar];
  [lockdownStatusBar titleCapHeightInsetFromTop];
  v10 = 8.0 - _SFRoundFloatToPixels(v7 * v9);
  [(SFCapsulePageLayoutBottomToolbarSquished *)self lockdownStatusBarHeightDecreaseOnPage:pageCopy];
  v12 = v11;

  return v10 + v12 * -0.5;
}

- (double)spacingBelowLockdownStatusBarOnPage:(id)page
{
  lockdownStatusBar = [page lockdownStatusBar];
  [lockdownStatusBar titleBaselineInsetFromBottom];
  v6 = v5;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained minimizedContentScale];
  v9 = 8.0 - _SFRoundFloatToPixels(v6 * v8);

  return v9;
}

- (double)lockdownStatusBarContentOverlapOnPage:(id)page
{
  pageCopy = page;
  contentView = [pageCopy contentView];
  if (objc_opt_respondsToSelector())
  {
    [contentView keyContentRect];
  }

  else
  {
    [contentView bounds];
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = [(SFCapsulePageLayoutBottomToolbarSquished *)self capsuleInfoForPage:pageCopy];
  [v14 frame];
  Height = CGRectGetHeight(v22);

  v16 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [contentView keyContentCapHeightTopInset];
    v16 = v17;
  }

  v23.origin.x = v10;
  v23.origin.y = v11;
  v23.size.width = v12;
  v23.size.height = v13;
  v18 = v16 + (Height - 13.0 - CGRectGetHeight(v23)) * 0.5;
  [(SFCapsulePageLayoutBottomToolbarSquished *)self lockdownStatusBarHeightDecreaseOnPage:pageCopy];
  v20 = v19 * 0.5 + v18;

  return v20;
}

- (double)lockdownStatusBarHeightDecreaseOnPage:(id)page
{
  lockdownStatusBar = [page lockdownStatusBar];
  [lockdownStatusBar preferredSize];
  v6 = v5;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained minimizedContentScale];
  v9 = v6 * (1.0 - v8);

  return v9;
}

- (SFCapsulePageLayout)baseLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_baseLayout);

  return WeakRetained;
}

- (SFCapsulePageContainer)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

@end