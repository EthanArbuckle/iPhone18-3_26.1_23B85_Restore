@interface SFCapsulePageLayoutTop
- (NSArray)supplementaryIdentifiers;
- (SFCapsulePageContainer)container;
- (SFCapsulePageLayoutTop)initWithContainer:(id)a3;
- (double)pageWidth;
- (double)spacingAboveLockdownStatusBarOnPage:(id)a3;
- (double)spacingBelowLockdownStatusBarOnPage:(id)a3;
- (id)bottomBackdropInfoForPage:(id)a3;
- (id)capsuleInfoForPage:(id)a3;
- (id)infoForSupplementaryIdentifier:(id)a3 page:(id)a4;
- (id)lockdownStatusBarFrameOnPage:(id)a3;
- (id)toolbarFrameOnPage:(id)a3;
- (id)topBackdropInfoForPage:(id)a3;
@end

@implementation SFCapsulePageLayoutTop

- (SFCapsulePageLayoutTop)initWithContainer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFCapsulePageLayoutTop;
  v5 = [(SFCapsulePageLayoutTop *)&v9 init];
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
  Width = CGRectGetWidth(v5);

  return Width;
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
  [WeakRetained safeAreaInsets];
  v15 = v14;
  SFCapsuleTopBarPaddingForTopLayoutStyleWithStatusBar();
  v17 = v16;
  v29.origin.x = v7 + v18;
  v20 = v11 - (v18 + v19);
  v29.size.height = v13 - (v17 + v21);
  v29.origin.y = v9 + v17;
  v29.size.width = v20;
  Width = CGRectGetWidth(v29);
  [v4 capsuleHeightForWidth:0 defaultHeight:Width state:36.0];
  v24 = v23;

  v30.origin.x = v7;
  v30.origin.y = v9;
  v30.size.width = v11;
  v30.size.height = v13;
  v25 = (CGRectGetWidth(v30) - Width) * 0.5;
  v26 = objc_alloc_init(_TtC12MobileSafari23SFCapsulePageLayoutInfo);
  [(SFCapsulePageLayoutInfo *)v26 setCornerRadius:9.0];
  [(SFCapsulePageLayoutInfo *)v26 setFrame:v25, v15 + v17, Width, v24];

  return v26;
}

- (id)bottomBackdropInfoForPage:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained safeAreaInsets];
  v6 = v5 + 44.0 + SFCapsuleBottomBarPaddingForTopLayoutStyle();

  v7 = objc_loadWeakRetained(&self->_container);
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = objc_alloc_init(_TtC12MobileSafari23SFCapsulePageLayoutInfo);
  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  v17 = CGRectGetHeight(v20) - v6;
  v21.origin.x = v9;
  v21.origin.y = v11;
  v21.size.width = v13;
  v21.size.height = v15;
  [(SFCapsulePageLayoutInfo *)v16 setFrame:0.0, v17, CGRectGetWidth(v21), v6];

  return v16;
}

- (id)topBackdropInfoForPage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  v6 = [(SFCapsulePageLayoutTop *)self capsuleInfoForPage:v4];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [v4 lockdownStatusBar];

  if (v15)
  {
    [(SFCapsulePageLayoutTop *)self spacingAboveLockdownStatusBarOnPage:v4];
    v17 = v16 + 0.0;
    [(SFCapsulePageLayoutTop *)self spacingBelowLockdownStatusBarOnPage:v4];
    v19 = v17 + v18;
    v20 = [v4 lockdownStatusBar];
    [v20 preferredSize];
    v22 = v19 + v21;
  }

  else
  {
    v22 = 0.0;
  }

  v28.origin.x = v8;
  v28.origin.y = v10;
  v28.size.width = v12;
  v28.size.height = v14;
  MaxY = CGRectGetMaxY(v28);
  if (v22 == 0.0)
  {
    [WeakRetained safeAreaInsets];
    SFCapsuleTopBarPaddingForTopLayoutStyleWithStatusBar();
    v22 = v24;
  }

  v25 = objc_alloc_init(_TtC12MobileSafari23SFCapsulePageLayoutInfo);
  [WeakRetained bounds];
  [(SFCapsulePageLayoutInfo *)v25 setFrame:0.0, 0.0, CGRectGetWidth(v29), MaxY + v22];

  return v25;
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
    v8 = [(SFCapsulePageLayoutTop *)self toolbarFrameOnPage:v7];
  }

  else if ([v6 isEqualToString:@"SFCapsuleSupplementaryViewLockdownStatusBar"])
  {
    v8 = [(SFCapsulePageLayoutTop *)self lockdownStatusBarFrameOnPage:v7];
  }

  else
  {
    v8 = objc_alloc_init(_TtC12MobileSafari23SFCapsulePageLayoutInfo);
  }

  v9 = v8;

  return v9;
}

- (id)toolbarFrameOnPage:(id)a3
{
  v3 = [(SFCapsulePageLayoutTop *)self bottomBackdropInfoForPage:a3];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = objc_alloc_init(_TtC12MobileSafari23SFCapsulePageLayoutInfo);
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  MinX = CGRectGetMinX(v18);
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  MinY = CGRectGetMinY(v19);
  v15 = MinY + SFCapsuleBottomBarPaddingForTopLayoutStyle();
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  [(SFCapsulePageLayoutInfo *)v12 setFrame:MinX, v15, CGRectGetWidth(v20), 44.0];

  return v12;
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
  v15 = [(SFCapsulePageLayoutTop *)self capsuleInfoForPage:v4];
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
  MaxY = CGRectGetMaxY(v32);
  [(SFCapsulePageLayoutTop *)self spacingAboveLockdownStatusBarOnPage:v4];
  v27 = v26;

  v33.origin.x = v7;
  v33.origin.y = v9;
  v33.size.width = v11;
  v33.size.height = v13;
  Width = CGRectGetWidth(v33);
  [v14 preferredSize];
  [(SFCapsulePageLayoutInfo *)v24 setFrame:0.0, MaxY + v27, Width, v29];

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

@end