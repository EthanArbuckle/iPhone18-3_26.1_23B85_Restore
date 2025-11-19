@interface SFCapsulePageLayoutBottomToolbar
- (CGSize)capsuleSizeForPage:(id)a3;
- (NSArray)supplementaryIdentifiers;
- (SFCapsulePageContainer)container;
- (SFCapsulePageLayoutBottomToolbar)initWithContainer:(id)a3;
- (UIEdgeInsets)capsulePadding;
- (UIEdgeInsets)layoutMargins;
- (double)offsetForDodgingKeyboardOnPage:(id)a3;
- (double)pageWidth;
- (double)spacingAboveLockdownStatusBarOnPage:(id)a3;
- (double)spacingBelowLockdownStatusBarOnPage:(id)a3;
- (id)bottomBackdropInfoForPage:(id)a3;
- (id)capsuleInfoForPage:(id)a3;
- (id)infoForSupplementaryIdentifier:(id)a3 page:(id)a4;
- (id)lockdownStatusBarInfoOnPage:(id)a3;
- (id)toolbarInfoOnPage:(id)a3;
- (id)topBackdropInfoForPage:(id)a3;
@end

@implementation SFCapsulePageLayoutBottomToolbar

- (SFCapsulePageLayoutBottomToolbar)initWithContainer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFCapsulePageLayoutBottomToolbar;
  v5 = [(SFCapsulePageLayoutBottomToolbar *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_container, v4);
    v7 = v6;
  }

  return v6;
}

- (double)pageWidth
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(SFCapsulePageLayoutBottomToolbar *)self layoutMargins];
  v13 = v7 + v12;
  v16 = v9 - (v14 + v15);
  v20.size.height = v11 - (v12 + v17);
  v20.origin.x = v5 + v14;
  v20.origin.y = v13;
  v20.size.width = v16;
  v18 = CGRectGetWidth(v20) + self->_interCapsuleSpacing;

  return v18;
}

- (id)capsuleInfoForPage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(SFCapsulePageLayoutBottomToolbar *)self capsuleSizeForPage:v4];
  v15 = v14;
  v17 = v16;
  v27.origin.x = v7;
  v27.origin.y = v9;
  v27.size.width = v11;
  v27.size.height = v13;
  Height = CGRectGetHeight(v27);
  [WeakRetained safeAreaInsets];
  v20 = Height - v19 - 44.0 - self->_capsulePadding.bottom - v17;
  [(SFCapsulePageLayoutBottomToolbar *)self offsetForDodgingKeyboardOnPage:v4];
  v22 = v21;

  v28.origin.x = v7;
  v28.origin.y = v9;
  v28.size.width = v11;
  v28.size.height = v13;
  v23 = (CGRectGetWidth(v28) - v15) * 0.5;
  v24 = objc_alloc_init(_TtC12MobileSafari23SFCapsulePageLayoutInfo);
  [(SFCapsulePageLayoutInfo *)v24 setCornerRadius:12.0];
  [(SFCapsulePageLayoutInfo *)v24 setFrame:v23, v20 - v22, v15, v17];

  return v24;
}

- (CGSize)capsuleSizeForPage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(SFCapsulePageLayoutBottomToolbar *)self layoutMargins];
  v15 = v9 + v14;
  v18 = v11 - (v16 + v17);
  v26.size.height = v13 - (v14 + v19);
  v26.origin.x = v7 + v16;
  v26.origin.y = v15;
  v26.size.width = v18;
  Width = CGRectGetWidth(v26);
  [v4 capsuleHeightForWidth:0 defaultHeight:Width state:44.0];
  v22 = v21;

  v23 = Width;
  v24 = v22;
  result.height = v24;
  result.width = v23;
  return result;
}

- (UIEdgeInsets)layoutMargins
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained layoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (NSArray)supplementaryIdentifiers
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"SFCapsuleSupplementaryViewLockdownStatusBar";
  v4[1] = @"SFCapsuleSupplementaryViewToolbar";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

- (id)infoForSupplementaryIdentifier:(id)a3 page:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"SFCapsuleSupplementaryViewToolbar"])
  {
    v8 = [(SFCapsulePageLayoutBottomToolbar *)self toolbarInfoOnPage:v7];
  }

  else if ([v6 isEqualToString:@"SFCapsuleSupplementaryViewLockdownStatusBar"])
  {
    v8 = [(SFCapsulePageLayoutBottomToolbar *)self lockdownStatusBarInfoOnPage:v7];
  }

  else
  {
    v8 = objc_alloc_init(_TtC12MobileSafari23SFCapsulePageLayoutInfo);
  }

  v9 = v8;

  return v9;
}

- (id)toolbarInfoOnPage:(id)a3
{
  v4 = a3;
  v5 = [(SFCapsulePageLayoutBottomToolbar *)self bottomBackdropInfoForPage:v4];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(SFCapsulePageLayoutBottomToolbar *)self capsuleInfoForPage:v4];

  [v14 frame];
  rect = v15;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = objc_alloc_init(_TtC12MobileSafari23SFCapsulePageLayoutInfo);
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained keyboardHeight];
  v25 = v24 <= 0.0;
  v26 = 0.0;
  if (v25)
  {
    v26 = 1.0;
  }

  [(SFCapsulePageLayoutInfo *)v22 setAlpha:v26];

  v32.origin.x = v7;
  v32.origin.y = v9;
  v32.size.width = v11;
  v32.size.height = v13;
  MinX = CGRectGetMinX(v32);
  v33.origin.x = rect;
  v33.origin.y = v17;
  v33.size.width = v19;
  v33.size.height = v21;
  v28 = CGRectGetMaxY(v33) + self->_capsulePadding.bottom;
  v34.origin.x = v7;
  v34.origin.y = v9;
  v34.size.width = v11;
  v34.size.height = v13;
  [(SFCapsulePageLayoutInfo *)v22 setFrame:MinX, v28, CGRectGetWidth(v34), 44.0];

  return v22;
}

- (id)bottomBackdropInfoForPage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v4 lockdownStatusBar];

  if (!v14 || (-[SFCapsulePageLayoutBottomToolbar spacingAboveLockdownStatusBarOnPage:](self, "spacingAboveLockdownStatusBarOnPage:", v4), v16 = v15 + 0.0, -[SFCapsulePageLayoutBottomToolbar spacingBelowLockdownStatusBarOnPage:](self, "spacingBelowLockdownStatusBarOnPage:", v4), v18 = v16 + v17, [v4 lockdownStatusBar], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "preferredSize"), top = v18 + v20, v19, top == 0.0))
  {
    top = self->_capsulePadding.top;
  }

  [(SFCapsulePageLayoutBottomToolbar *)self capsuleSizeForPage:v4];
  v23 = v22;
  [WeakRetained safeAreaInsets];
  v25 = self->_capsulePadding.bottom + v23 + top + v24 + 44.0;
  [(SFCapsulePageLayoutBottomToolbar *)self offsetForDodgingKeyboardOnPage:v4];
  v27 = v26 + v25;
  v28 = objc_alloc_init(_TtC12MobileSafari23SFCapsulePageLayoutInfo);
  v32.origin.x = v7;
  v32.origin.y = v9;
  v32.size.width = v11;
  v32.size.height = v13;
  v29 = CGRectGetHeight(v32) - v27;
  v33.origin.x = v7;
  v33.origin.y = v9;
  v33.size.width = v11;
  v33.size.height = v13;
  [(SFCapsulePageLayoutInfo *)v28 setFrame:0.0, v29, CGRectGetWidth(v33), v27];

  return v28;
}

- (double)offsetForDodgingKeyboardOnPage:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  bottom = self->_capsulePadding.bottom;
  [WeakRetained safeAreaInsets];
  v7 = self->_capsulePadding.top + self->_capsulePadding.bottom + bottom + v6 + 44.0;
  [WeakRetained keyboardHeight];
  v9 = v8 - v7;
  [WeakRetained inputAccessoryViewFrame];
  v10 = fmax(v9 - CGRectGetHeight(v12), 0.0);

  return v10;
}

- (id)topBackdropInfoForPage:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  v4 = objc_alloc_init(_TtC12MobileSafari23SFCapsulePageLayoutInfo);
  [WeakRetained bounds];
  Width = CGRectGetWidth(v9);
  [WeakRetained safeAreaInsets];
  [(SFCapsulePageLayoutInfo *)v4 setFrame:0.0, 0.0, Width, v6];

  return v4;
}

- (id)lockdownStatusBarInfoOnPage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [v4 lockdownStatusBar];
  v15 = [(SFCapsulePageLayoutBottomToolbar *)self bottomBackdropInfoForPage:v4];
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
  MinY = CGRectGetMinY(v34);
  [(SFCapsulePageLayoutBottomToolbar *)self spacingAboveLockdownStatusBarOnPage:v4];
  v27 = MinY + v26;
  [(SFCapsulePageLayoutBottomToolbar *)self offsetForDodgingKeyboardOnPage:v4];
  v29 = v28;

  v35.origin.x = v7;
  v35.origin.y = v9;
  v35.size.width = v11;
  v35.size.height = v13;
  Width = CGRectGetWidth(v35);
  [v14 preferredSize];
  [(SFCapsulePageLayoutInfo *)v24 setFrame:0.0, v27 + v29, Width, v31];

  return v24;
}

- (double)spacingAboveLockdownStatusBarOnPage:(id)a3
{
  v3 = [a3 lockdownStatusBar];
  [v3 titleCapHeightInsetFromTop];
  v5 = 10.0 - v4;

  return v5;
}

- (double)spacingBelowLockdownStatusBarOnPage:(id)a3
{
  v3 = [a3 lockdownStatusBar];
  [v3 titleBaselineInsetFromBottom];
  v5 = 10.0 - v4;

  return v5;
}

- (SFCapsulePageContainer)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

- (UIEdgeInsets)capsulePadding
{
  top = self->_capsulePadding.top;
  left = self->_capsulePadding.left;
  bottom = self->_capsulePadding.bottom;
  right = self->_capsulePadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end