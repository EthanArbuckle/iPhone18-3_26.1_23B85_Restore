@interface SFCapsulePageLayoutHidden
+ (BOOL)isFrameTopAligned:(CGRect)a3 inBounds:(CGRect)a4;
- (NSArray)supplementaryIdentifiers;
- (SFCapsulePageContainer)container;
- (SFCapsulePageLayout)baseLayout;
- (SFCapsulePageLayoutHidden)initWithContainer:(id)a3;
- (SFCapsulePageLayoutHidden)initWithContainer:(id)a3 baseLayout:(id)a4;
- (double)pageWidth;
- (id)bottomBackdropInfoForPage:(id)a3;
- (id)capsuleInfoForPage:(id)a3;
- (id)infoForSupplementaryIdentifier:(id)a3 page:(id)a4;
- (id)shiftFrame:(id)a3 inTandemWithBackdropOnPage:(id)a4;
- (id)topBackdropInfoForPage:(id)a3;
@end

@implementation SFCapsulePageLayoutHidden

- (SFCapsulePageLayoutHidden)initWithContainer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFCapsulePageLayoutHidden;
  v5 = [(SFCapsulePageLayoutHidden *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_container, v4);
    v7 = v6;
  }

  return v6;
}

- (SFCapsulePageLayoutHidden)initWithContainer:(id)a3 baseLayout:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SFCapsulePageLayoutHidden;
  v8 = [(SFCapsulePageLayoutHidden *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_baseLayout, v7);
    objc_storeWeak(&v9->_container, v6);
    v10 = v9;
  }

  return v9;
}

+ (BOOL)isFrameTopAligned:(CGRect)a3 inBounds:(CGRect)a4
{
  rect = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  height = a3.size.height;
  v8 = a3.size.width;
  v9 = a3.origin.y;
  v10 = a3.origin.x;
  MinY = CGRectGetMinY(a3);
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

- (id)capsuleInfoForPage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
  v6 = [WeakRetained capsuleInfoForPage:v4];
  v7 = [(SFCapsulePageLayoutHidden *)self shiftFrame:v6 inTandemWithBackdropOnPage:v4];

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
  WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
  v6 = [WeakRetained topBackdropInfoForPage:v4];

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
  v3 = [WeakRetained supplementaryIdentifiers];

  return v3;
}

- (id)infoForSupplementaryIdentifier:(id)a3 page:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
  v9 = [WeakRetained infoForSupplementaryIdentifier:v7 page:v6];

  v10 = [(SFCapsulePageLayoutHidden *)self shiftFrame:v9 inTandemWithBackdropOnPage:v6];

  return v10;
}

- (id)shiftFrame:(id)a3 inTandemWithBackdropOnPage:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = objc_loadWeakRetained(&self->_baseLayout);
  [v6 frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  if ([SFCapsulePageLayoutHidden isFrameTopAligned:"isFrameTopAligned:inBounds:" inBounds:?])
  {
    v26 = [v17 topBackdropInfoForPage:v7];
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
    v26 = [v17 bottomBackdropInfoForPage:v7];
    [v26 frame];
    v27 = v21 + Height - CGRectGetMinY(v33);
  }

  [v6 setFrame:{v19, v27, v23, v25}];

  return v6;
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