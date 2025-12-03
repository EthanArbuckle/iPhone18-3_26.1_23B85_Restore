@interface SFCapsulePageLayoutTop
- (NSArray)supplementaryIdentifiers;
- (SFCapsulePageContainer)container;
- (SFCapsulePageLayoutTop)initWithContainer:(id)container;
- (double)pageWidth;
- (double)spacingAboveLockdownStatusBarOnPage:(id)page;
- (double)spacingBelowLockdownStatusBarOnPage:(id)page;
- (id)bottomBackdropInfoForPage:(id)page;
- (id)capsuleInfoForPage:(id)page;
- (id)infoForSupplementaryIdentifier:(id)identifier page:(id)page;
- (id)lockdownStatusBarFrameOnPage:(id)page;
- (id)toolbarFrameOnPage:(id)page;
- (id)topBackdropInfoForPage:(id)page;
@end

@implementation SFCapsulePageLayoutTop

- (SFCapsulePageLayoutTop)initWithContainer:(id)container
{
  containerCopy = container;
  v9.receiver = self;
  v9.super_class = SFCapsulePageLayoutTop;
  v5 = [(SFCapsulePageLayoutTop *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_container, containerCopy);
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

- (id)capsuleInfoForPage:(id)page
{
  pageCopy = page;
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
  [pageCopy capsuleHeightForWidth:0 defaultHeight:Width state:36.0];
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

- (id)bottomBackdropInfoForPage:(id)page
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

- (id)topBackdropInfoForPage:(id)page
{
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  v6 = [(SFCapsulePageLayoutTop *)self capsuleInfoForPage:pageCopy];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  lockdownStatusBar = [pageCopy lockdownStatusBar];

  if (lockdownStatusBar)
  {
    [(SFCapsulePageLayoutTop *)self spacingAboveLockdownStatusBarOnPage:pageCopy];
    v17 = v16 + 0.0;
    [(SFCapsulePageLayoutTop *)self spacingBelowLockdownStatusBarOnPage:pageCopy];
    v19 = v17 + v18;
    lockdownStatusBar2 = [pageCopy lockdownStatusBar];
    [lockdownStatusBar2 preferredSize];
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

- (id)infoForSupplementaryIdentifier:(id)identifier page:(id)page
{
  identifierCopy = identifier;
  pageCopy = page;
  if ([identifierCopy isEqualToString:@"SFCapsuleSupplementaryViewToolbar"])
  {
    v8 = [(SFCapsulePageLayoutTop *)self toolbarFrameOnPage:pageCopy];
  }

  else if ([identifierCopy isEqualToString:@"SFCapsuleSupplementaryViewLockdownStatusBar"])
  {
    v8 = [(SFCapsulePageLayoutTop *)self lockdownStatusBarFrameOnPage:pageCopy];
  }

  else
  {
    v8 = objc_alloc_init(_TtC12MobileSafari23SFCapsulePageLayoutInfo);
  }

  v9 = v8;

  return v9;
}

- (id)toolbarFrameOnPage:(id)page
{
  v3 = [(SFCapsulePageLayoutTop *)self bottomBackdropInfoForPage:page];
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
  v15 = [(SFCapsulePageLayoutTop *)self capsuleInfoForPage:pageCopy];
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
  [(SFCapsulePageLayoutTop *)self spacingAboveLockdownStatusBarOnPage:pageCopy];
  v27 = v26;

  v33.origin.x = v7;
  v33.origin.y = v9;
  v33.size.width = v11;
  v33.size.height = v13;
  Width = CGRectGetWidth(v33);
  [lockdownStatusBar preferredSize];
  [(SFCapsulePageLayoutInfo *)v24 setFrame:0.0, MaxY + v27, Width, v29];

  return v24;
}

- (double)spacingAboveLockdownStatusBarOnPage:(id)page
{
  lockdownStatusBar = [page lockdownStatusBar];
  [lockdownStatusBar titleCapHeightInsetFromTop];
  v5 = 10.0 - v4;

  return v5;
}

- (double)spacingBelowLockdownStatusBarOnPage:(id)page
{
  lockdownStatusBar = [page lockdownStatusBar];
  [lockdownStatusBar titleBaselineInsetFromBottom];
  v5 = 10.0 - v4;

  return v5;
}

- (SFCapsulePageContainer)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

@end