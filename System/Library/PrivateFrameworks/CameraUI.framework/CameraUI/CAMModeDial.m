@interface CAMModeDial
- (CAMModeDial)initWithCoder:(id)a3;
- (CAMModeDial)initWithFrame:(CGRect)a3;
- (CAMModeDial)initWithLayoutStyle:(int64_t)a3;
- (CGPoint)_horizontalContainerCenterForMode:(int64_t)a3;
- (CGPoint)_verticalContainerCenterForMode:(int64_t)a3;
- (CGSize)_interpolatedHorizontalMeshTransformSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)_centeringNudgeForMode:(int64_t)a3;
- (id)_fontForLayoutStyle:(int64_t)a3 selected:(BOOL)a4;
- (id)_horizontalMeshTransform;
- (id)_meshTransformForLayoutStyle:(int64_t)a3;
- (id)_selectedItem;
- (id)hudItemForAccessibilityHUDManager:(id)a3;
- (int64_t)_nearestCaptureModeForLocation:(CGPoint)a3;
- (void)_commonCAMModeDialInitializationWithLayoutStyle:(int64_t)a3;
- (void)_configureGradientForLayoutStyle:(int64_t)a3;
- (void)_configureMeshTransformForLayoutStyle:(int64_t)a3;
- (void)_layoutHorizontalModeDial;
- (void)_layoutVerticalModeDial;
- (void)_updateContainerCenterFromSelectedModeAnimated:(BOOL)a3;
- (void)_updateForLayoutStyle;
- (void)_updateItemsForLayoutStyle:(int64_t)a3;
- (void)_updateSelectedItemBackgroundForLayoutStyle:(int64_t)a3;
- (void)layoutSubviews;
- (void)reloadData;
- (void)selectedByAccessibilityHUDManager:(id)a3;
- (void)setLayoutStyle:(int64_t)a3;
- (void)setSelectedMode:(int64_t)a3 animated:(BOOL)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation CAMModeDial

- (id)_horizontalMeshTransform
{
  v8 = *MEMORY[0x1E69E9840];
  memcpy(__dst, &unk_1A3A68A78, sizeof(__dst));
  memcpy(v6, &unk_1A3A69608, sizeof(v6));
  v2 = [MEMORY[0x1E69793D8] meshTransformWithVertexCount:74 vertices:__dst faceCount:36 faces:v6 depthNormalization:*MEMORY[0x1E6979700]];
  v3 = [v2 mutableCopy];
  [v3 setSubdivisionSteps:0];
  v4 = [v3 copy];

  return v4;
}

- (void)_updateForLayoutStyle
{
  v3 = [(CAMModeDial *)self layoutStyle];
  [(CAMModeDial *)self _configureGradientForLayoutStyle:v3];
  [(CAMModeDial *)self _configureMeshTransformForLayoutStyle:v3];
  [(CAMModeDial *)self _updateItemsForLayoutStyle:v3];
  [(CAMModeDial *)self _updateSelectedItemBackgroundForLayoutStyle:v3];
  [(CAMModeDial *)self _updateContainerCenterFromSelectedModeAnimated:0];
  [(CAMModeDial *)self reloadData];

  [(CAMModeDial *)self setNeedsLayout];
}

- (id)_selectedItem
{
  v3 = [(CAMModeDial *)self selectedMode];
  v4 = [(CAMModeDial *)self _items];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (void)reloadData
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = [(CAMModeDial *)self dataSource];
  if (v3)
  {
    v29 = [(CAMModeDial *)self _items];
    v28 = [v29 allValues];
    [v28 makeObjectsPerformSelector:sel_removeFromSuperview];
    v30 = v3;
    v4 = [v3 modesForModeDial:self];
    [(CAMModeDial *)self _setModes:v4];
    v5 = [(CAMModeDial *)self selectedMode];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    v7 = [v4 containsObject:v6];

    if ((v7 & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:0];
      v9 = [v4 containsObject:v8];

      if ((v9 & 1) != 0 || ![v4 count])
      {
        v11 = 0;
      }

      else
      {
        v10 = [v4 firstObject];
        v11 = [v10 integerValue];
      }

      [(CAMModeDial *)self setSelectedMode:v11];
    }

    v33 = [(CAMModeDial *)self selectedMode];
    v12 = [(CAMModeDial *)self layoutStyle];
    v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v4;
    v35 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v35)
    {
      v32 = *v42;
      v13 = *MEMORY[0x1E695F058];
      v14 = *(MEMORY[0x1E695F058] + 8);
      v15 = *(MEMORY[0x1E695F058] + 16);
      v16 = *(MEMORY[0x1E695F058] + 24);
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v42 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v41 + 1) + 8 * i);
          v19 = [v18 integerValue];
          v20 = [[CAMModeDialItem alloc] initWithFrame:v13, v14, v15, v16];
          v21 = v19 == v33;
          v22 = [MEMORY[0x1E696AEC0] cam_localizedTitleForMode:v19 wantsCompactTitle:{objc_msgSend(objc_opt_class(), "wantsVerticalModeDialForLayoutStyle:", v12)}];
          v23 = [(CAMModeDial *)self _fontForLayoutStyle:v12 selected:v21];
          if ((v12 - 2) < 2)
          {
LABEL_16:
            v24 = +[CAMCaptureCapabilities capabilities];
            v25 = [v24 wantsFullscreenViewfinder];

            goto LABEL_19;
          }

          if (v12 == 1)
          {
            v25 = 1;
          }

          else
          {
            if (!v12)
            {
              goto LABEL_16;
            }

            v25 = 0;
          }

LABEL_19:
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __25__CAMModeDial_reloadData__block_invoke;
          v36[3] = &unk_1E76FAEA8;
          v37 = v23;
          v38 = v22;
          v39 = v25;
          v40 = v21;
          v26 = v22;
          v27 = v23;
          [(CAMModeDialItem *)v20 configure:v36];
          [(UIView *)self->__itemsContainerView addSubview:v20];
          [v34 setObject:v20 forKey:v18];
        }

        v35 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v35);
    }

    [(CAMModeDial *)self _setItems:v34];
    [(CAMModeDial *)self setNeedsLayout];

    v3 = v30;
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CAMModeDial;
  [(CAMModeDial *)&v3 layoutSubviews];
  if ([objc_opt_class() wantsVerticalModeDialForLayoutStyle:{-[CAMModeDial layoutStyle](self, "layoutStyle")}])
  {
    [(CAMModeDial *)self _layoutVerticalModeDial];
  }

  else
  {
    [(CAMModeDial *)self _layoutHorizontalModeDial];
  }

  [(CAMModeDial *)self _updateContainerCenterFromSelectedModeAnimated:0];
}

- (void)_layoutHorizontalModeDial
{
  v49 = *MEMORY[0x1E69E9840];
  [(CAMModeDial *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CAMModeDial *)self _interpolatedHorizontalMeshTransformSize];
  v12 = v11;
  v14 = v13;
  v50.origin.x = v4;
  v50.origin.y = v6;
  v50.size.width = v8;
  v50.size.height = v10;
  CGRectGetWidth(v50);
  UIRoundToViewScale();
  v16 = v15;
  v51.origin.x = v4;
  v51.origin.y = v6;
  v51.size.width = v8;
  v51.size.height = v10;
  v17 = v16 + CGRectGetMinX(v51);
  v52.origin.x = v4;
  v18 = v4;
  v52.origin.y = v6;
  v52.size.width = v8;
  v52.size.height = v10;
  v19 = CGRectGetMaxY(v52) - v14;
  v20 = [(CAMModeDial *)self _meshTransformView];
  [v20 setFrame:{v17, v19, v12, v14}];
  v53.origin.x = v17;
  v53.origin.y = v19;
  v53.size.width = v12;
  v53.size.height = v14;
  v43 = -CGRectGetMinX(v53);
  v54.origin.x = v17;
  v54.origin.y = v19;
  v54.size.width = v12;
  v54.size.height = v14;
  v42 = -CGRectGetMinY(v54);
  v21 = [(CAMModeDial *)self _gradientLayer];
  [v21 setFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v12, v14}];
  v22 = [(CAMModeDial *)self _modes];
  v23 = [(CAMModeDial *)self _items];
  v55.origin.x = v18;
  v55.origin.y = v6;
  v55.size.width = v8;
  v55.size.height = v10;
  Width = CGRectGetWidth(v55);
  v56.origin.x = v18;
  v56.origin.y = v6;
  v56.size.width = v8;
  v56.size.height = v10;
  Height = CGRectGetHeight(v56);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v26 = v22;
  v27 = [v26 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v45;
    v30 = *MEMORY[0x1E695F060];
    v31 = *(MEMORY[0x1E695F060] + 8);
    v32 = 0.0;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v45 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v34 = [v23 objectForKey:*(*(&v44 + 1) + 8 * i)];
        [v34 sizeThatFits:{v30, v31}];
        v36 = v35;
        v38 = v37;
        v57.origin.y = v42;
        v57.origin.x = v43;
        v57.size.width = Width;
        v57.size.height = Height;
        CGRectGetHeight(v57);
        UIRoundToViewScale();
        v40 = v39;
        [v34 setFrame:{v32, v39, v36, v38}];
        v58.origin.x = v32;
        v58.origin.y = v40;
        v58.size.width = v36;
        v58.size.height = v38;
        v32 = CGRectGetMaxX(v58) + 26.0;
      }

      v28 = [v26 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v28);
  }

  else
  {
    v32 = 0.0;
  }

  v41 = [(CAMModeDial *)self _itemsContainerView];
  [v41 setFrame:{v43, v42, v32, Height}];
}

- (CGSize)_interpolatedHorizontalMeshTransformSize
{
  [(CAMModeDial *)self bounds];
  CGRectGetWidth(v8);
  UIRoundToViewScale();
  v3 = v2;
  UIRoundToViewScale();
  v5 = v4;
  v6 = v3;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)_commonCAMModeDialInitializationWithLayoutStyle:(int64_t)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69DC888] systemYellowColor];
  [(CAMModeDial *)self setTintColor:v5];

  [(CAMModeDial *)self setClipsToBounds:1];
  self->_layoutStyle = a3;
  v6 = objc_alloc(MEMORY[0x1E69DD250]);
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v10 = *(MEMORY[0x1E695F058] + 24);
  v11 = [v6 initWithFrame:{*MEMORY[0x1E695F058], v8, v9, v10}];
  meshTransformView = self->__meshTransformView;
  self->__meshTransformView = v11;

  [(UIView *)self->__meshTransformView setUserInteractionEnabled:0];
  [(CAMModeDial *)self addSubview:self->__meshTransformView];
  [(CAMModeDial *)self _configureMeshTransformForLayoutStyle:a3];
  v13 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v7, v8, v9, v10}];
  itemsContainerView = self->__itemsContainerView;
  self->__itemsContainerView = v13;

  [(UIView *)self->__itemsContainerView setUserInteractionEnabled:0];
  [(UIView *)self->__meshTransformView addSubview:self->__itemsContainerView];
  v15 = [MEMORY[0x1E6979380] layer];
  gradientLayer = self->__gradientLayer;
  self->__gradientLayer = v15;

  v17 = [MEMORY[0x1E69DC888] clearColor];
  -[CAGradientLayer setBackgroundColor:](self->__gradientLayer, "setBackgroundColor:", [v17 CGColor]);

  v18 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
  [(CAGradientLayer *)self->__gradientLayer setCompositingFilter:v18];

  v19 = [(UIView *)self->__meshTransformView layer];
  [v19 addSublayer:self->__gradientLayer];

  [(CAMModeDial *)self _configureGradientForLayoutStyle:a3];
  [(CAMModeDial *)self _updateForLayoutStyle];
  v22[0] = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v21 = [(CAMModeDial *)self registerForTraitChanges:v20 withAction:sel_reloadData];
}

- (CAMModeDial)initWithLayoutStyle:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CAMModeDial;
  v4 = [(CAMModeDial *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(CAMModeDial *)v4 _commonCAMModeDialInitializationWithLayoutStyle:a3];
    v6 = v5;
  }

  return v5;
}

- (CAMModeDial)initWithFrame:(CGRect)a3
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 cam_initialLayoutStyle];

  return [(CAMModeDial *)self initWithLayoutStyle:v5];
}

- (CAMModeDial)initWithCoder:(id)a3
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 cam_initialLayoutStyle];

  return [(CAMModeDial *)self initWithLayoutStyle:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v26 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() wantsVerticalModeDialForLayoutStyle:{-[CAMModeDial layoutStyle](self, "layoutStyle")}])
  {
    v6 = [(CAMModeDial *)self _modes];
    v7 = [(CAMModeDial *)self _items];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      v12 = *MEMORY[0x1E695F060];
      v13 = *(MEMORY[0x1E695F060] + 8);
      v14 = 0.0;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v16 = [v7 objectForKey:{*(*(&v21 + 1) + 8 * i), v21}];
          [v16 sizeThatFits:{v12, v13}];
          if (v17 > v14)
          {
            v14 = v17;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    UIRoundToViewScale();
    width = v18;
  }

  v19 = width;
  v20 = height;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)_layoutVerticalModeDial
{
  v42 = *MEMORY[0x1E69E9840];
  [(CAMModeDial *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v34 = [(CAMModeDial *)self _meshTransformView];
  v35 = v4;
  v36 = v6;
  [v34 setFrame:{v4, v6, v8, v10}];
  v11 = [(CAMModeDial *)self _gradientLayer];
  v12 = v8;
  [v11 setFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v8, v10}];
  v13 = [(CAMModeDial *)self _modes];
  v14 = [(CAMModeDial *)self _items];
  v15 = [(CAMModeDial *)self _itemsContainerView];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v16 = v13;
  v17 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    v20 = *MEMORY[0x1E695F060];
    v21 = *(MEMORY[0x1E695F060] + 8);
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v23 = [v14 objectForKey:*(*(&v37 + 1) + 8 * i)];
        [v23 sizeThatFits:{v20, v21}];
        v43.origin.x = v35;
        v43.origin.y = v36;
        v43.size.width = v12;
        v43.size.height = v10;
        CGRectGetWidth(v43);
        v24 = [(CAMModeDial *)self traitCollection];
        [v24 displayScale];
        UIRectIntegralWithScale();
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;

        [v23 setFrame:{v26, v28, v30, v32}];
        v44.origin.x = v26;
        v44.origin.y = v28;
        v44.size.width = v30;
        v44.size.height = v32;
        v33 = CGRectGetMaxY(v44) + 30.0;
      }

      v18 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v18);
  }

  else
  {
    v33 = 0.0;
  }

  [v15 setFrame:{v35, v36, v12, v33}];
}

- (void)setSelectedMode:(int64_t)a3 animated:(BOOL)a4
{
  v32 = *MEMORY[0x1E69E9840];
  if (self->_selectedMode != a3)
  {
    v19 = a4;
    if (a4)
    {
      [(CAMModeDial *)self layoutIfNeeded];
    }

    v5 = [(CAMModeDial *)self _items];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_selectedMode];
    v7 = [v5 objectForKeyedSubscript:v6];

    self->_selectedMode = a3;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v9 = [v5 objectForKeyedSubscript:v8];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = [v10 objectForKeyedSubscript:v15];
          v17 = [v15 integerValue];
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __40__CAMModeDial_setSelectedMode_animated___block_invoke;
          v21[3] = &unk_1E76FAE30;
          v25 = v17 == a3;
          v21[4] = self;
          v22 = v16;
          v23 = v9;
          v26 = v19;
          v24 = v7;
          v18 = v16;
          [v18 configure:v21];
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v12);
    }

    [(CAMModeDial *)self _updateContainerCenterFromSelectedModeAnimated:v19];
  }
}

void __40__CAMModeDial_setSelectedMode_animated___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) _fontForLayoutStyle:*(*(a1 + 32) + 456) selected:*(a1 + 64)];
  [v6 setFont:v3];

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v4 == v5 || v4 == *(a1 + 56))
  {
    [v6 setSelected:v4 == v5 animated:*(a1 + 65)];
  }
}

- (double)_centeringNudgeForMode:(int64_t)a3
{
  result = 0.0;
  if (a3 > 3)
  {
    if ((a3 - 4) > 1)
    {
      return result;
    }
  }

  else
  {
    if (a3 == 1)
    {
      return 1.0 - CAMPixelWidthForView(self);
    }

    if (a3 != 2)
    {
      if (a3 == 3)
      {
        return -CAMPixelWidthForView(self);
      }

      return result;
    }
  }

  return CAMPixelWidthForView(self);
}

- (CGPoint)_horizontalContainerCenterForMode:(int64_t)a3
{
  v5 = [(CAMModeDial *)self _itemsContainerView];
  v6 = [v5 superview];
  [(CAMModeDial *)self bounds];
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  MidX = CGRectGetMidX(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  [v6 convertPoint:self fromView:{MidX, CGRectGetMidY(v23)}];
  v12 = [(CAMModeDial *)self _selectedItem];
  [(CAMModeDial *)self _centeringNudgeForMode:a3];
  [v12 center];
  [v6 convertPoint:v5 fromView:?];
  UIRoundToViewScale();
  v14 = v13;
  [v5 center];
  v16 = v15;
  v18 = v14 + v17;

  v19 = v18;
  v20 = v16;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGPoint)_verticalContainerCenterForMode:(int64_t)a3
{
  v4 = [(CAMModeDial *)self _itemsContainerView];
  v5 = [v4 superview];
  [(CAMModeDial *)self bounds];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  [v5 convertPoint:self fromView:{MidX, CGRectGetMidY(v22)}];
  v11 = [(CAMModeDial *)self _selectedItem];
  [v11 center];
  [v5 convertPoint:v4 fromView:?];
  UIRoundToViewScale();
  v13 = v12;
  [v4 center];
  v15 = v14;
  v17 = v13 + v16;

  v18 = v15;
  v19 = v17;
  result.y = v19;
  result.x = v18;
  return result;
}

- (void)_updateContainerCenterFromSelectedModeAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMModeDial *)self selectedMode];
  v6 = [objc_opt_class() wantsVerticalModeDialForLayoutStyle:{-[CAMModeDial layoutStyle](self, "layoutStyle")}];
  if (v6)
  {
    [(CAMModeDial *)self _verticalContainerCenterForMode:v5];
  }

  else
  {
    [(CAMModeDial *)self _horizontalContainerCenterForMode:v5];
  }

  v9 = v7;
  v10 = v8;
  v11 = [(CAMModeDial *)self _itemsContainerView];
  v12 = v11;
  if (v3)
  {
    v13 = [v11 layer];
    v14 = [v13 presentationLayer];
    [v14 position];
    v16 = v15;
    v18 = v17;

    v19 = [MEMORY[0x1E6979318] animationWithKeyPath:@"position"];
    v20 = [MEMORY[0x1E696B098] valueWithCGPoint:{v16, v18}];
    [v19 setFromValue:v20];

    v21 = [MEMORY[0x1E696B098] valueWithCGPoint:{v9, v10}];
    [v19 setToValue:v21];

    UIAnimationDragCoefficient();
    [v19 setDuration:v22 * 0.3];
    LODWORD(v23) = 1042536202;
    LODWORD(v24) = 1045220557;
    LODWORD(v25) = 0.25;
    LODWORD(v26) = 1.0;
    v27 = [MEMORY[0x1E69793D0] functionWithControlPoints:v25 :v23 :v24 :v26];
    [v19 setTimingFunction:v27];

    [v13 addAnimation:v19 forKey:@"centerTranslation"];
    [v13 setPosition:{v9, v10}];

    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    [v11 setCenter:{v9, v10}];
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = [(CAMModeDial *)self _items];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __62__CAMModeDial__updateContainerCenterFromSelectedModeAnimated___block_invoke;
  v33[3] = &unk_1E76FAE58;
  v33[4] = &v34;
  [v28 enumerateKeysAndObjectsUsingBlock:v33];
  UICeilToViewScale();
  v30 = v29;
  v31 = [(CAMModeDial *)self _selectedItem];
  [v31 frame];
  if (CGRectGetHeight(v38) > v35[3] * 1.8)
  {
    UICeilToViewScale();
  }

  [(CAMModeDial *)self bounds];
  UIRectCenteredIntegralRectScale();
  [(UIView *)self->__selectedItemBackgroundView setFrame:0];
  v32 = [(UIView *)self->__selectedItemBackgroundView layer];
  [v32 setCornerRadius:v30 * 0.5];

  _Block_object_dispose(&v34, 8);
LABEL_11:
}

void __62__CAMModeDial__updateContainerCenterFromSelectedModeAnimated___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 frame];
  Height = CGRectGetHeight(v8);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 24);
  if (v6 == 0.0 || v6 > Height)
  {
    *(v5 + 24) = Height;
  }
}

- (id)_fontForLayoutStyle:(int64_t)a3 selected:(BOOL)a4
{
  v4 = a4;
  v5 = [(CAMModeDial *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = [CAMFont cameraModeDialFontForContentSize:v6];
  if (v4)
  {
    v8 = +[CAMCaptureCapabilities capabilities];
    v9 = [v8 wantsFullscreenViewfinder];

    if (v9)
    {
      v10 = [CAMFont cameraModeDialFontForContentSize:v6 weight:*MEMORY[0x1E69DB980]];

      v7 = v10;
    }
  }

  return v7;
}

- (void)_updateItemsForLayoutStyle:(int64_t)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [(CAMModeDial *)self _items];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 integerValue];
        v12 = [v5 objectForKeyedSubscript:v10];
        v13 = [MEMORY[0x1E696AEC0] cam_localizedTitleForMode:v11 wantsCompactTitle:{objc_msgSend(objc_opt_class(), "wantsVerticalModeDialForLayoutStyle:", a3)}];
        v14 = [(CAMModeDial *)self _fontForLayoutStyle:a3 selected:v11 == [(CAMModeDial *)self selectedMode]];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __42__CAMModeDial__updateItemsForLayoutStyle___block_invoke;
        v17[3] = &unk_1E76FAE80;
        v18 = v14;
        v19 = v13;
        v15 = v13;
        v16 = v14;
        [v12 configure:v17];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  [(CAMModeDial *)self setNeedsLayout];
}

void __42__CAMModeDial__updateItemsForLayoutStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setFont:v3];
  [v4 setTitle:*(a1 + 40)];
}

void __25__CAMModeDial_reloadData__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setFont:v3];
  [v4 setTitle:*(a1 + 40)];
  [v4 setShouldShadowTitleText:*(a1 + 48)];
  [v4 setSelected:*(a1 + 49)];
}

- (int64_t)_nearestCaptureModeForLocation:(CGPoint)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [(CAMModeDial *)self _modes];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    v9 = 1.79769313e308;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(CAMModeDial *)self _items];
        v13 = [v12 objectForKeyedSubscript:v11];
        [v13 frame];
        UIDistanceBetweenPointAndRect();
        if (v14 < v9)
        {
          v15 = v14;
          v7 = [v11 integerValue];
          v9 = v15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_configureGradientForLayoutStyle:(int64_t)a3
{
  v17[6] = *MEMORY[0x1E69E9840];
  v4 = [(CAMModeDial *)self _gradientLayer];
  v5 = [objc_opt_class() wantsVerticalModeDialForLayoutStyle:a3];
  [v4 setType:*MEMORY[0x1E6979DA0]];
  if (v5)
  {
    v6 = 0.5;
  }

  else
  {
    v6 = 0.0;
  }

  if (v5)
  {
    v7 = 0.5;
  }

  else
  {
    v7 = 1.0;
  }

  if (v5)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.5;
  }

  if (v5)
  {
    v9 = &unk_1F16C9680;
  }

  else
  {
    v9 = &unk_1F16C9698;
  }

  [v4 setStartPoint:v6];
  [v4 setEndPoint:{v7, v8}];
  v10 = [MEMORY[0x1E69DC888] blackColor];
  v17[0] = [v10 CGColor];
  v11 = [MEMORY[0x1E69DC888] blackColor];
  v17[1] = [v11 CGColor];
  v12 = [MEMORY[0x1E69DC888] clearColor];
  v17[2] = [v12 CGColor];
  v13 = [MEMORY[0x1E69DC888] clearColor];
  v17[3] = [v13 CGColor];
  v14 = [MEMORY[0x1E69DC888] blackColor];
  v17[4] = [v14 CGColor];
  v15 = [MEMORY[0x1E69DC888] blackColor];
  v17[5] = [v15 CGColor];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:6];
  [v4 setColors:v16];

  [v4 setLocations:v9];
}

- (id)_meshTransformForLayoutStyle:(int64_t)a3
{
  if ([objc_opt_class() wantsVerticalModeDialForLayoutStyle:a3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(CAMModeDial *)self _horizontalMeshTransform];
  }

  return v4;
}

- (void)_configureMeshTransformForLayoutStyle:(int64_t)a3
{
  v5 = [objc_opt_class() wantsVerticalModeDialForLayoutStyle:a3];
  v8 = [(UIView *)self->__meshTransformView layer];
  v6 = [(CAMModeDial *)self _meshTransformForLayoutStyle:a3];
  [v8 setMeshTransform:v6];
  v7 = [(CAMModeDial *)self traitCollection];
  [v7 displayScale];
  [v8 setRasterizationScale:?];

  [v8 setAllowsGroupBlending:v5];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v12 = [a3 anyObject];
  v5 = [(CAMModeDial *)self _itemsContainerView];
  [v12 locationInView:v5];
  v7 = v6;
  v9 = v8;
  v10 = [(CAMModeDial *)self selectedMode];
  v11 = [(CAMModeDial *)self _nearestCaptureModeForLocation:v7, v9];
  if (v10 != v11)
  {
    [(CAMModeDial *)self setSelectedMode:v11 animated:1];
    [(CAMModeDial *)self sendActionsForControlEvents:4096];
  }
}

- (void)setLayoutStyle:(int64_t)a3
{
  if (self->_layoutStyle != a3)
  {
    self->_layoutStyle = a3;
    [(CAMModeDial *)self _updateForLayoutStyle];
  }
}

- (void)_updateSelectedItemBackgroundForLayoutStyle:(int64_t)a3
{
  if (!a3 || a3 == 3)
  {
    [(UIView *)self->__selectedItemBackgroundView removeFromSuperview];
    selectedItemBackgroundView = self->__selectedItemBackgroundView;
    self->__selectedItemBackgroundView = 0;
  }

  else if (a3 == 1)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->__selectedItemBackgroundView;
    self->__selectedItemBackgroundView = v5;

    v7 = self->__selectedItemBackgroundView;
    v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.3];
    [(UIView *)v7 setBackgroundColor:v8];

    [(CAMModeDial *)self insertSubview:self->__selectedItemBackgroundView atIndex:0];
  }

  [(CAMModeDial *)self setNeedsLayout];
}

- (id)hudItemForAccessibilityHUDManager:(id)a3
{
  v4 = a3;
  v5 = [(CAMModeDial *)self _itemsContainerView];
  [v4 locationOfAccessibilityGestureInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(CAMModeDial *)self _nearestCaptureModeForLocation:v7, v9];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
  v12 = [(NSDictionary *)self->__items objectForKeyedSubscript:v11];
  v13 = [v12 title];
  v14 = objc_alloc(MEMORY[0x1E69DC618]);
  v15 = [v14 initWithTitle:v13 image:0 imageInsets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  return v15;
}

- (void)selectedByAccessibilityHUDManager:(id)a3
{
  v4 = a3;
  v5 = [(CAMModeDial *)self _itemsContainerView];
  [v4 locationOfAccessibilityGestureInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(CAMModeDial *)self _nearestCaptureModeForLocation:v7, v9];
  if (v10 != [(CAMModeDial *)self selectedMode])
  {
    [(CAMModeDial *)self setSelectedMode:v10 animated:1];

    [(CAMModeDial *)self sendActionsForControlEvents:4096];
  }
}

@end