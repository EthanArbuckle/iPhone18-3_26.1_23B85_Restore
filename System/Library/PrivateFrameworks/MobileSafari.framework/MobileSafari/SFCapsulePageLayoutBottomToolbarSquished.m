@interface SFCapsulePageLayoutBottomToolbarSquished
- (CGSize)capsuleSizeForPage:(id)a3;
- (NSArray)supplementaryIdentifiers;
- (SFCapsulePageContainer)container;
- (SFCapsulePageLayout)baseLayout;
- (SFCapsulePageLayoutBottomToolbarSquished)initWithContainer:(id)a3;
- (SFCapsulePageLayoutBottomToolbarSquished)initWithContainer:(id)a3 baseLayout:(id)a4;
- (double)lockdownStatusBarContentOverlapOnPage:(id)a3;
- (double)lockdownStatusBarHeightDecreaseOnPage:(id)a3;
- (double)offsetForDodgingKeyboardOnPage:(id)a3;
- (double)pageWidth;
- (double)spacingAboveLockdownStatusBarOnPage:(id)a3;
- (double)spacingBelowLockdownStatusBarOnPage:(id)a3;
- (id)bottomBackdropInfoForPage:(id)a3;
- (id)capsuleInfoForPage:(id)a3;
- (id)infoForSupplementaryIdentifier:(id)a3 page:(id)a4;
- (id)lockdownStatusBarFrameOnPage:(id)a3;
- (id)topBackdropInfoForPage:(id)a3;
@end

@implementation SFCapsulePageLayoutBottomToolbarSquished

- (SFCapsulePageLayoutBottomToolbarSquished)initWithContainer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFCapsulePageLayoutBottomToolbarSquished;
  v5 = [(SFCapsulePageLayoutBottomToolbarSquished *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_container, v4);
    v7 = v6;
  }

  return v6;
}

- (SFCapsulePageLayoutBottomToolbarSquished)initWithContainer:(id)a3 baseLayout:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SFCapsulePageLayoutBottomToolbarSquished;
  v8 = [(SFCapsulePageLayoutBottomToolbarSquished *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_baseLayout, v7);
    objc_storeWeak(&v9->_container, v6);
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

- (id)capsuleInfoForPage:(id)a3
{
  v4 = a3;
  v5 = [(SFCapsulePageLayoutBottomToolbarSquished *)self container];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
  v15 = [WeakRetained capsuleInfoForPage:v4];

  [v15 frame];
  v17 = v16;
  [(SFCapsulePageLayoutBottomToolbarSquished *)self capsuleSizeForPage:v4];
  v19 = v18;
  v21 = v20;
  v29.origin.x = v7;
  v29.origin.y = v9;
  v29.size.width = v11;
  v29.size.height = v13;
  v22 = CGRectGetHeight(v29) - v21;
  [(SFCapsulePageLayoutBottomToolbarSquished *)self offsetForDodgingKeyboardOnPage:v4];
  v24 = v23;

  v25 = objc_alloc_init(_TtC12MobileSafari23SFCapsulePageLayoutInfo);
  [v15 cornerRadius];
  [(SFCapsulePageLayoutInfo *)v25 setCornerRadius:?];
  [(SFCapsulePageLayoutInfo *)v25 setFrame:v17, v22 - v24, v19, v21];
  v26 = [v15 parentIdentifier];
  [(SFCapsulePageLayoutInfo *)v25 setParentIdentifier:v26];

  return v25;
}

- (CGSize)capsuleSizeForPage:(id)a3
{
  v4 = a3;
  v5 = [(SFCapsulePageLayoutBottomToolbarSquished *)self container];
  WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
  v7 = [WeakRetained capsuleInfoForPage:v4];
  [v7 frame];
  v9 = v8;

  [v4 capsuleHeightForWidth:1 defaultHeight:v9 state:44.0];
  v11 = v10;

  [v5 safeAreaInsets];
  v13 = v12;
  [v5 keyboardHeight];
  v15 = fmax(v13 - v14, 0.0);
  v16 = fmax(v11 + fmin(v15, 13.0), v15 + 18.0);

  v17 = v9;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (id)bottomBackdropInfoForPage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained bounds];
  v37 = v7;
  v38 = v6;
  v35 = v9;
  v36 = v8;
  v10 = [v4 lockdownStatusBar];

  if (v10)
  {
    [(SFCapsulePageLayoutBottomToolbarSquished *)self spacingAboveLockdownStatusBarOnPage:v4];
    v12 = v11 + 0.0;
    [(SFCapsulePageLayoutBottomToolbarSquished *)self spacingBelowLockdownStatusBarOnPage:v4];
    v14 = v12 + v13;
    v15 = [v4 lockdownStatusBar];
    [v15 preferredSize];
    v17 = v14 + v16;

    [(SFCapsulePageLayoutBottomToolbarSquished *)self lockdownStatusBarContentOverlapOnPage:v4];
    v19 = v17 - v18;
  }

  else
  {
    v19 = 0.0;
  }

  v34 = v19;
  v20 = [(SFCapsulePageLayoutBottomToolbarSquished *)self capsuleInfoForPage:v4];
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

- (double)offsetForDodgingKeyboardOnPage:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained keyboardHeight];
  v5 = v4;
  [WeakRetained inputAccessoryViewFrame];
  v6 = fmax(v5 - CGRectGetHeight(v8), 0.0);

  return v6;
}

- (id)topBackdropInfoForPage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
  v6 = [WeakRetained topBackdropInfoForPage:v4];

  return v6;
}

- (NSArray)supplementaryIdentifiers
{
  WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
  v3 = [WeakRetained supplementaryIdentifiers];

  return v3;
}

- (id)infoForSupplementaryIdentifier:(id)a3 page:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"SFCapsuleSupplementaryViewLockdownStatusBar"])
  {
    v8 = [(SFCapsulePageLayoutBottomToolbarSquished *)self lockdownStatusBarFrameOnPage:v7];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
    v8 = [WeakRetained infoForSupplementaryIdentifier:v6 page:v7];

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

- (id)lockdownStatusBarFrameOnPage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v4 lockdownStatusBar];
  v15 = [(SFCapsulePageLayoutBottomToolbarSquished *)self bottomBackdropInfoForPage:v4];
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
  [(SFCapsulePageLayoutBottomToolbarSquished *)self spacingAboveLockdownStatusBarOnPage:v4];
  v27 = v26;

  v33.origin.x = v7;
  v33.origin.y = v9;
  v33.size.width = v11;
  v33.size.height = v13;
  Width = CGRectGetWidth(v33);
  [v14 preferredSize];
  [(SFCapsulePageLayoutInfo *)v24 setFrame:0.0, MinY + v27, Width, v29];

  return v24;
}

- (double)spacingAboveLockdownStatusBarOnPage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained minimizedContentScale];
  v7 = v6;

  v8 = [v4 lockdownStatusBar];
  [v8 titleCapHeightInsetFromTop];
  v10 = 8.0 - _SFRoundFloatToPixels(v7 * v9);
  [(SFCapsulePageLayoutBottomToolbarSquished *)self lockdownStatusBarHeightDecreaseOnPage:v4];
  v12 = v11;

  return v10 + v12 * -0.5;
}

- (double)spacingBelowLockdownStatusBarOnPage:(id)a3
{
  v4 = [a3 lockdownStatusBar];
  [v4 titleBaselineInsetFromBottom];
  v6 = v5;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained minimizedContentScale];
  v9 = 8.0 - _SFRoundFloatToPixels(v6 * v8);

  return v9;
}

- (double)lockdownStatusBarContentOverlapOnPage:(id)a3
{
  v4 = a3;
  v5 = [v4 contentView];
  if (objc_opt_respondsToSelector())
  {
    [v5 keyContentRect];
  }

  else
  {
    [v5 bounds];
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = [(SFCapsulePageLayoutBottomToolbarSquished *)self capsuleInfoForPage:v4];
  [v14 frame];
  Height = CGRectGetHeight(v22);

  v16 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v5 keyContentCapHeightTopInset];
    v16 = v17;
  }

  v23.origin.x = v10;
  v23.origin.y = v11;
  v23.size.width = v12;
  v23.size.height = v13;
  v18 = v16 + (Height - 13.0 - CGRectGetHeight(v23)) * 0.5;
  [(SFCapsulePageLayoutBottomToolbarSquished *)self lockdownStatusBarHeightDecreaseOnPage:v4];
  v20 = v19 * 0.5 + v18;

  return v20;
}

- (double)lockdownStatusBarHeightDecreaseOnPage:(id)a3
{
  v4 = [a3 lockdownStatusBar];
  [v4 preferredSize];
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