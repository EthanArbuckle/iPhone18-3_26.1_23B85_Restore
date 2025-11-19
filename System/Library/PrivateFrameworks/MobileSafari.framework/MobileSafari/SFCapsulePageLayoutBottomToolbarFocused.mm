@interface SFCapsulePageLayoutBottomToolbarFocused
- (NSArray)supplementaryIdentifiers;
- (SFCapsulePageContainer)container;
- (SFCapsulePageLayout)baseLayout;
- (SFCapsulePageLayoutBottomToolbarFocused)initWithContainer:(id)a3;
- (SFCapsulePageLayoutBottomToolbarFocused)initWithContainer:(id)a3 baseLayout:(id)a4;
- (double)_horizontalPositionForSupplementaryViewWithFrame:(CGRect)a3 isLeadingEdge:(BOOL)a4;
- (double)keyboardHeightBelowCapsuleForPage:(id)a3;
- (double)pageWidth;
- (id)bottomBackdropInfoForPage:(id)a3;
- (id)capsuleInfoForPage:(id)a3;
- (id)infoForSupplementaryIdentifier:(id)a3 page:(id)a4;
- (id)topBackdropInfoForPage:(id)a3;
@end

@implementation SFCapsulePageLayoutBottomToolbarFocused

- (SFCapsulePageLayoutBottomToolbarFocused)initWithContainer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFCapsulePageLayoutBottomToolbarFocused;
  v5 = [(SFCapsulePageLayoutBottomToolbarFocused *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_container, v4);
    v7 = v6;
  }

  return v6;
}

- (SFCapsulePageLayoutBottomToolbarFocused)initWithContainer:(id)a3 baseLayout:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SFCapsulePageLayoutBottomToolbarFocused;
  v8 = [(SFCapsulePageLayoutBottomToolbarFocused *)&v12 init];
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
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained bounds];
  Width = CGRectGetWidth(v5);

  return Width;
}

- (id)capsuleInfoForPage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
  v6 = objc_loadWeakRetained(&self->_container);
  if ([v4 isSelected])
  {
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = 8.0;
    v16 = 8.0;
    v17 = [WeakRetained capsuleInfoForPage:v4];
    [v17 frame];
    Height = CGRectGetHeight(v60);
    v61.origin.x = v8;
    v61.origin.y = v10;
    v61.size.width = v12;
    v61.size.height = v14;
    v19 = CGRectGetHeight(v61) - Height;
    v62.origin.x = v8;
    v62.origin.y = v10;
    v62.size.width = v12;
    v62.size.height = v14;
    v47 = Height;
    [v6 concentricEdgeInsetsForEdge:4 bounds:0.0 minimumEdgeInsets:{v19, CGRectGetWidth(v62), Height, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    v21 = v20;
    v43 = v22;
    v24 = v23;
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      [v6 keyboardHeight];
      if (v25 == 0.0)
      {
        v16 = v24;
      }

      v46 = v16;
      if (v25 == 0.0)
      {
        v15 = v21;
      }
    }

    else
    {
      v46 = 8.0;
    }

    v63.origin.x = v8;
    v63.origin.y = v10;
    v63.size.width = v12;
    v63.size.height = v14;
    v48 = v15;
    v45 = CGRectGetWidth(v63) - v15;
    [v6 inputAccessoryViewFrame];
    v28 = v27;
    v29 = v8;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    [(SFCapsulePageLayoutBottomToolbarFocused *)self keyboardHeightBelowCapsuleForPage:v4];
    v42 = v36;
    v64.origin.x = v28;
    v64.origin.y = v31;
    v64.size.width = v33;
    v64.size.height = v35;
    v44 = v12;
    if (CGRectIsEmpty(v64))
    {
      v65.origin.x = v29;
      v65.origin.y = v10;
      v65.size.width = v12;
      v65.size.height = v14;
      v37 = v47;
      v38 = CGRectGetHeight(v65) - v42 - v47 - 8.0;
    }

    else
    {
      v66.origin.x = v28;
      v66.origin.y = v31;
      v66.size.width = v33;
      v66.size.height = v35;
      v38 = CGRectGetMinY(v66) + 12.0;
      v37 = v47;
    }

    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v67.origin.x = v29;
      v67.size.width = v44;
      v67.origin.y = v10;
      v67.size.height = v14;
      MinY = CGRectGetHeight(v67) - v37 - v43;
    }

    else
    {
      [v17 frame];
      MinY = CGRectGetMinY(v68);
    }

    v40 = fmin(v38, MinY);
    v26 = objc_alloc_init(_TtC12MobileSafari23SFCapsulePageLayoutInfo);
    [v17 cornerRadius];
    [(SFCapsulePageLayoutInfo *)v26 setCornerRadius:?];
    [(SFCapsulePageLayoutInfo *)v26 setFrame:v48, v40, v45 - v46, v37];
  }

  else
  {
    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__8;
    v57 = __Block_byref_object_dispose__8;
    v58 = 0;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __62__SFCapsulePageLayoutBottomToolbarFocused_capsuleInfoForPage___block_invoke;
    v49[3] = &unk_1E721E8F0;
    v52 = &v53;
    v50 = WeakRetained;
    v51 = v4;
    [v6 performIgnoringKeyboard:v49];
    v26 = v54[5];

    _Block_object_dispose(&v53, 8);
  }

  return v26;
}

void __62__SFCapsulePageLayoutBottomToolbarFocused_capsuleInfoForPage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) capsuleInfoForPage:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (double)keyboardHeightBelowCapsuleForPage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  [WeakRetained keyboardHeight];
  v7 = v6;
  v8 = objc_loadWeakRetained(&self->_baseLayout);
  v9 = [v8 capsuleInfoForPage:v4];

  [v9 frame];
  v10 = fmax(v7 - CGRectGetHeight(v12), 0.0);

  return v10;
}

- (NSArray)supplementaryIdentifiers
{
  WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
  v3 = [WeakRetained supplementaryIdentifiers];

  return v3;
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
  v14 = [(SFCapsulePageLayoutBottomToolbarFocused *)self capsuleInfoForPage:v4];

  [v14 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v28.origin.x = v16;
  v28.origin.y = v18;
  v28.size.width = v20;
  v28.size.height = v22;
  v23 = CGRectGetMinY(v28) - 12.0;
  v24 = objc_alloc_init(_TtC12MobileSafari23SFCapsulePageLayoutInfo);
  v29.origin.x = v7;
  v29.origin.y = v9;
  v29.size.width = v11;
  v29.size.height = v13;
  Width = CGRectGetWidth(v29);
  v30.origin.x = v7;
  v30.origin.y = v9;
  v30.size.width = v11;
  v30.size.height = v13;
  [(SFCapsulePageLayoutInfo *)v24 setFrame:0.0, v23, Width, CGRectGetHeight(v30) - v23];

  return v24;
}

- (id)infoForSupplementaryIdentifier:(id)a3 page:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
  v9 = [WeakRetained infoForSupplementaryIdentifier:v6 page:v7];

  [v9 frame];
  v11 = v10;
  MaxY = v12;
  v15 = v14;
  v17 = v16;
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    [v9 setAlpha:0.0];
    v18 = v11;
    if ([v6 isEqualToString:@"SFCapsuleSupplementaryViewLeadingButton"])
    {
      [(SFCapsulePageLayoutBottomToolbarFocused *)self _horizontalPositionForSupplementaryViewWithFrame:1 isLeadingEdge:v11, MaxY, v15, v17];
      v18 = v19;
    }

    if ([v6 isEqualToString:@"SFCapsuleSupplementaryViewTrailingButton"])
    {
      [(SFCapsulePageLayoutBottomToolbarFocused *)self _horizontalPositionForSupplementaryViewWithFrame:0 isLeadingEdge:v11, MaxY, v15, v17];
      v11 = v20;
    }

    else
    {
      v11 = v18;
    }
  }

  else
  {
    v21 = objc_loadWeakRetained(&self->_container);
    [v21 bounds];
    MaxY = CGRectGetMaxY(v24);
  }

  [v9 setFrame:{v11, MaxY, v15, v17}];

  return v9;
}

- (id)topBackdropInfoForPage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_baseLayout);
  v6 = [WeakRetained topBackdropInfoForPage:v4];

  return v6;
}

- (double)_horizontalPositionForSupplementaryViewWithFrame:(CGRect)a3 isLeadingEdge:(BOOL)a4
{
  v4 = a4;
  width = a3.size.width;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  v7 = [WeakRetained traitCollection];
  v8 = [v7 layoutDirection];

  if ((v8 != 0) == v4)
  {
    [WeakRetained bounds];
    v9 = CGRectGetWidth(v11) - 8.0 - width;
  }

  else
  {
    v9 = 8.0;
  }

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