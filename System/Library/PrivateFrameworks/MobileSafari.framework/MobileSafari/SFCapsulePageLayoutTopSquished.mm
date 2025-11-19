@interface SFCapsulePageLayoutTopSquished
- (NSArray)supplementaryIdentifiers;
- (SFCapsulePageContainer)container;
- (SFCapsulePageLayout)baseLayout;
- (SFCapsulePageLayoutTopSquished)initWithContainer:(id)a3;
- (SFCapsulePageLayoutTopSquished)initWithContainer:(id)a3 baseLayout:(id)a4;
- (double)lockdownStatusBarContentOverlapOnPage:(id)a3;
- (double)lockdownStatusBarHeightDecreaseOnPage:(id)a3;
- (double)pageWidth;
- (double)spacingAboveLockdownStatusBarOnPage:(id)a3;
- (double)spacingBelowLockdownStatusBarOnPage:(id)a3;
- (id)bottomBackdropInfoForPage:(id)a3;
- (id)capsuleInfoForPage:(id)a3;
- (id)infoForSupplementaryIdentifier:(id)a3 page:(id)a4;
- (id)lockdownStatusBarFrameOnPage:(id)a3;
- (id)topBackdropInfoForPage:(id)a3;
@end

@implementation SFCapsulePageLayoutTopSquished

- (SFCapsulePageLayoutTopSquished)initWithContainer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFCapsulePageLayoutTopSquished;
  v5 = [(SFCapsulePageLayoutTopSquished *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_container, v4);
    v7 = v6;
  }

  return v6;
}

- (SFCapsulePageLayoutTopSquished)initWithContainer:(id)a3 baseLayout:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SFCapsulePageLayoutTopSquished;
  v8 = [(SFCapsulePageLayoutTopSquished *)&v12 init];
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
  WeakRetained = objc_loadWeakRetained(&self->_container);
  v6 = objc_loadWeakRetained(&self->_baseLayout);
  v7 = [v6 capsuleInfoForPage:v4];

  [v7 frame];
  v9 = v8;
  v11 = v10;
  [v4 capsuleHeightForWidth:1 defaultHeight:v10 state:44.0];
  v13 = v12;

  [WeakRetained safeAreaInsets];
  v15 = v14 + -13.0;
  HasHomeButton = _SFDeviceHasHomeButton();
  v17 = 5.0;
  if (!HasHomeButton)
  {
    v17 = 0.0;
  }

  [v7 setFrame:{v9, fmax(v15 + v17, 0.0), v11, v13}];

  return v7;
}

- (id)bottomBackdropInfoForPage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
  v6 = [WeakRetained bottomBackdropInfoForPage:v4];

  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_loadWeakRetained(&self->_container);
  [v13 bounds];
  MaxY = CGRectGetMaxY(v17);

  [v6 setFrame:{v8, MaxY, v10, v12}];

  return v6;
}

- (id)topBackdropInfoForPage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  v6 = [(SFCapsulePageLayoutTopSquished *)self capsuleInfoForPage:v4];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [v4 lockdownStatusBar];

  if (v15)
  {
    [(SFCapsulePageLayoutTopSquished *)self spacingAboveLockdownStatusBarOnPage:v4];
    v17 = v16 + 0.0;
    [(SFCapsulePageLayoutTopSquished *)self spacingBelowLockdownStatusBarOnPage:v4];
    v19 = v17 + v18;
    v20 = [v4 lockdownStatusBar];
    [v20 preferredSize];
    v22 = v19 + v21;

    [(SFCapsulePageLayoutTopSquished *)self lockdownStatusBarContentOverlapOnPage:v4];
    v24 = v22 - v23;
    [(SFCapsulePageLayoutTopSquished *)self lockdownStatusBarHeightDecreaseOnPage:v4];
    v26 = v24 + v25 * -0.5;
  }

  else
  {
    v26 = 0.0;
  }

  v31.origin.x = v8;
  v31.origin.y = v10;
  v31.size.width = v12;
  v31.size.height = v14;
  v27 = v26 + CGRectGetMaxY(v31);
  v28 = objc_alloc_init(_TtC12MobileSafari23SFCapsulePageLayoutInfo);
  [WeakRetained bounds];
  [(SFCapsulePageLayoutInfo *)v28 setFrame:0.0, 0.0, CGRectGetWidth(v32), v27];

  return v28;
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
  if ([v6 isEqual:@"SFCapsuleSupplementaryViewLockdownStatusBar"])
  {
    v8 = [(SFCapsulePageLayoutTopSquished *)self lockdownStatusBarFrameOnPage:v7];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
    v8 = [WeakRetained infoForSupplementaryIdentifier:v6 page:v7];
    [v8 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [WeakRetained bottomBackdropInfoForPage:v7];
    [v18 frame];
    v19 = v13 + CGRectGetHeight(v22);

    [v8 setFrame:{v11, v19, v15, v17}];
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
  v15 = [(SFCapsulePageLayoutTopSquished *)self capsuleInfoForPage:v4];
  [v15 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = objc_alloc_init(_TtC12MobileSafari23SFCapsulePageLayoutInfo);
  v34.origin.x = v17;
  v34.origin.y = v19;
  v34.size.width = v21;
  v34.size.height = v23;
  MaxY = CGRectGetMaxY(v34);
  [(SFCapsulePageLayoutTopSquished *)self spacingAboveLockdownStatusBarOnPage:v4];
  v27 = MaxY + v26;
  [(SFCapsulePageLayoutTopSquished *)self lockdownStatusBarContentOverlapOnPage:v4];
  v29 = v28;

  v35.origin.x = v7;
  v35.origin.y = v9;
  v35.size.width = v11;
  v35.size.height = v13;
  Width = CGRectGetWidth(v35);
  [v14 preferredSize];
  [(SFCapsulePageLayoutInfo *)v24 setFrame:0.0, v27 - v29, Width, v31];

  return v24;
}

- (double)spacingAboveLockdownStatusBarOnPage:(id)a3
{
  v4 = [a3 lockdownStatusBar];
  [v4 titleCapHeightInsetFromTop];
  v6 = v5;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained minimizedContentScale];
  v9 = 8.0 - _SFRoundFloatToPixels(v6 * v8);

  return v9;
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
  v14 = [(SFCapsulePageLayoutTopSquished *)self capsuleInfoForPage:v4];
  [v14 frame];
  Height = CGRectGetHeight(v22);

  v16 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v5 keyContentBaselineBottomInset];
    v16 = v17;
  }

  v23.origin.x = v10;
  v23.origin.y = v11;
  v23.size.width = v12;
  v23.size.height = v13;
  v18 = v16 + (Height - CGRectGetHeight(v23)) * 0.5;
  [(SFCapsulePageLayoutTopSquished *)self lockdownStatusBarHeightDecreaseOnPage:v4];
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