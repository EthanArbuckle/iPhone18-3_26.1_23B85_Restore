@interface SFCapsulePageLayoutHidden
+ (BOOL)isFrameTopAligned:(CGRect)aligned inBounds:(CGRect)bounds;
- (NSArray)supplementaryIdentifiers;
- (SFCapsulePageContainer)container;
- (SFCapsulePageLayout)baseLayout;
- (SFCapsulePageLayoutHidden)initWithContainer:(id)container;
- (SFCapsulePageLayoutHidden)initWithContainer:(id)container baseLayout:(id)layout;
- (double)pageWidth;
- (id)bottomBackdropInfoForPage:(id)page;
- (id)capsuleInfoForPage:(id)page;
- (id)infoForSupplementaryIdentifier:(id)identifier page:(id)page;
- (id)shiftFrame:(id)frame inTandemWithBackdropOnPage:(id)page;
- (id)topBackdropInfoForPage:(id)page;
@end

@implementation SFCapsulePageLayoutHidden

- (SFCapsulePageLayoutHidden)initWithContainer:(id)container
{
  containerCopy = container;
  v9.receiver = self;
  v9.super_class = SFCapsulePageLayoutHidden;
  v5 = [(SFCapsulePageLayoutHidden *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_container, containerCopy);
    v7 = v6;
  }

  return v6;
}

- (SFCapsulePageLayoutHidden)initWithContainer:(id)container baseLayout:(id)layout
{
  containerCopy = container;
  layoutCopy = layout;
  v12.receiver = self;
  v12.super_class = SFCapsulePageLayoutHidden;
  v8 = [(SFCapsulePageLayoutHidden *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_baseLayout, layoutCopy);
    objc_storeWeak(&v9->_container, containerCopy);
    v10 = v9;
  }

  return v9;
}

+ (BOOL)isFrameTopAligned:(CGRect)aligned inBounds:(CGRect)bounds
{
  rect = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  height = aligned.size.height;
  v8 = aligned.size.width;
  v9 = aligned.origin.y;
  v10 = aligned.origin.x;
  MinY = CGRectGetMinY(aligned);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = rect;
  MaxY = CGRectGetMaxY(v15);
  v16.origin.x = v10;
  v16.origin.y = v9;
  v16.size.width = v8;
  v16.size.height = height;
  return MinY < MaxY - CGRectGetMaxY(v16);
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
  WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
  v6 = [WeakRetained capsuleInfoForPage:pageCopy];
  v7 = [(SFCapsulePageLayoutHidden *)self shiftFrame:v6 inTandemWithBackdropOnPage:pageCopy];

  return v7;
}

- (id)bottomBackdropInfoForPage:(id)page
{
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
  v6 = [WeakRetained bottomBackdropInfoForPage:pageCopy];

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

- (id)topBackdropInfoForPage:(id)page
{
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
  v6 = [WeakRetained topBackdropInfoForPage:pageCopy];

  [v6 frame];
  x = v16.origin.x;
  width = v16.size.width;
  height = v16.size.height;
  v10 = CGRectGetHeight(v16);
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v11 = objc_loadWeakRetained(&self->_container);
    [v11 safeAreaInsets];
    v13 = v12 - v10;
  }

  else
  {
    v13 = -v10;
  }

  [v6 setFrame:{x, v13, width, height}];

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
  pageCopy = page;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
  v9 = [WeakRetained infoForSupplementaryIdentifier:identifierCopy page:pageCopy];

  v10 = [(SFCapsulePageLayoutHidden *)self shiftFrame:v9 inTandemWithBackdropOnPage:pageCopy];

  return v10;
}

- (id)shiftFrame:(id)frame inTandemWithBackdropOnPage:(id)page
{
  frameCopy = frame;
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = objc_loadWeakRetained(&self->_baseLayout);
  [frameCopy frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  if ([SFCapsulePageLayoutHidden isFrameTopAligned:"isFrameTopAligned:inBounds:" inBounds:?])
  {
    v26 = [v17 topBackdropInfoForPage:pageCopy];
    [v26 frame];
    v27 = v21 - CGRectGetMaxY(v31);
  }

  else
  {
    v32.origin.x = v10;
    v32.origin.y = v12;
    v32.size.width = v14;
    v32.size.height = v16;
    Height = CGRectGetHeight(v32);
    v26 = [v17 bottomBackdropInfoForPage:pageCopy];
    [v26 frame];
    v27 = v21 + Height - CGRectGetMinY(v33);
  }

  [frameCopy setFrame:{v19, v27, v23, v25}];

  return frameCopy;
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