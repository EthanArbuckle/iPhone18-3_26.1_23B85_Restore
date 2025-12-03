@interface CAMExpandableMenuButton
- (BOOL)_wantsHeaderViewToBeVisible;
- (BOOL)wantsSelectedItemToBeVisible;
- (CAMExpandableMenuButton)initWithCoder:(id)coder;
- (CAMExpandableMenuButton)initWithFrame:(CGRect)frame;
- (CAMExpandableMenuButton)initWithLayoutStyle:(int64_t)style;
- (CAMExpandableMenuButtonDelegate)expandableMenuDelegate;
- (CGRect)alignmentRectForFrame:(CGRect)frame expanded:(BOOL)expanded;
- (CGRect)frameForAlignmentRect:(CGRect)rect expanded:(BOOL)expanded;
- (CGSize)_layoutForPadCollapsedPortraitButton:(BOOL)button;
- (CGSize)_layoutForPadExpandedPortraitButton:(BOOL)button;
- (CGSize)_layoutForPadStyle:(BOOL)style expanded:(BOOL)expanded;
- (CGSize)_layoutForPhoneCollapsedLandscapeButton:(BOOL)button;
- (CGSize)_layoutForPhoneCollapsedPortraitButton:(BOOL)button;
- (CGSize)_layoutForPhoneExpandedLandscapeButton:(BOOL)button;
- (CGSize)_layoutForPhoneExpandedPortraitButton:(BOOL)button;
- (CGSize)_layoutForPhoneStyle:(BOOL)style expanded:(BOOL)expanded;
- (CGSize)_layoutMenuButton:(BOOL)button expanded:(BOOL)expanded;
- (CGSize)_padCollapsedIntrinsicContentSize;
- (CGSize)intrinsicContentSize;
- (CGSize)intrinsicContentSizeForExpansion:(BOOL)expansion;
- (UIEdgeInsets)tappableEdgeInsets;
- (id)_selectedLabel;
- (id)_viewToTrackForTouchAtLocation:(CGPoint)location;
- (id)hudItemForAccessibilityHUDManager:(id)manager;
- (void)_applyHeaderViewForCurrentExpansionState;
- (void)_applyMenuItemAlphaForCurrentExpansionState;
- (void)_applyMenuItemColorsForCurrentState;
- (void)_applyMenuItemTextAlignmentAndShadowForCurrentOrientation;
- (void)_convertAllSubviewsToProposedFrame:(CGRect)frame;
- (void)_createPadBackgroundView;
- (void)_handleTouchGesture:(id)gesture;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_updateFromExpansionChangeAnimated:(BOOL)animated;
- (void)_updateFromOrientationChangeAnimated:(BOOL)animated;
- (void)_updateFromSelectedIndexChange;
- (void)collapseMenuAnimated:(BOOL)animated;
- (void)expandMenuAnimated:(BOOL)animated;
- (void)finishCollapsingAnimated:(BOOL)animated;
- (void)finishExpansionAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)reloadData;
- (void)selectedByAccessibilityHUDManager:(id)manager;
- (void)setHighlighted:(BOOL)highlighted forIndex:(int64_t)index;
- (void)setLayoutStyle:(int64_t)style;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setSelectedIndex:(int64_t)index;
- (void)setTappableEdgeInsets:(UIEdgeInsets)insets;
@end

@implementation CAMExpandableMenuButton

- (void)_applyHeaderViewForCurrentExpansionState
{
  _headerView = [(CAMExpandableMenuButton *)self _headerView];

  if (_headerView)
  {
    isExpanded = [(CAMExpandableMenuButton *)self isExpanded];

    [(CAMExpandableMenuButton *)self prepareHeaderViewForExpanding:isExpanded];
  }
}

- (void)_applyMenuItemColorsForCurrentState
{
  if ([(NSMutableArray *)self->__menuItems count])
  {
    isExpanded = [(CAMExpandableMenuButton *)self isExpanded];
    menuItems = self->__menuItems;
    if (isExpanded)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __62__CAMExpandableMenuButton__applyMenuItemColorsForCurrentState__block_invoke;
      v14[3] = &unk_1E76FCB68;
      v14[4] = self;
      [(NSMutableArray *)menuItems enumerateObjectsUsingBlock:v14];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      headerView = self->__headerView;
      v7 = MEMORY[0x1E69DC888];
      if (isKindOfClass)
      {
        v8 = headerView;
        whiteColor = [v7 whiteColor];
        [(UIView *)v8 setTextColor:whiteColor];

LABEL_11:
        return;
      }

      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      v12 = headerView;
    }

    else
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __62__CAMExpandableMenuButton__applyMenuItemColorsForCurrentState__block_invoke_2;
      v13[3] = &unk_1E76FCB68;
      v13[4] = self;
      [(NSMutableArray *)menuItems enumerateObjectsUsingBlock:v13];
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      if ([(NSMutableIndexSet *)self->__highlightedIndexesWhileCollapsed containsIndex:self->_selectedIndex])
      {
        systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];

        whiteColor = systemYellowColor;
      }

      objc_opt_class();
      v11 = objc_opt_isKindOfClass();
      v12 = self->__headerView;
      if (v11)
      {
        [(UIView *)v12 setTextColor:whiteColor];
        goto LABEL_11;
      }
    }

    [(UIView *)v12 setTintColor:whiteColor];
    goto LABEL_11;
  }
}

- (void)_applyMenuItemAlphaForCurrentExpansionState
{
  if ([(CAMExpandableMenuButton *)self isExpanded])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  menuItems = self->__menuItems;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__CAMExpandableMenuButton__applyMenuItemAlphaForCurrentExpansionState__block_invoke;
  v6[3] = &unk_1E76FCB90;
  v6[4] = self;
  v6[5] = 0x3FF0000000000000;
  *&v6[6] = v3;
  [(NSMutableArray *)menuItems enumerateObjectsUsingBlock:v6];
  if ([(CAMExpandableMenuButton *)self _wantsHeaderViewToBeVisible])
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  [(UIView *)self->__headerView setAlpha:v5];
}

- (BOOL)_wantsHeaderViewToBeVisible
{
  isExpanded = [(CAMExpandableMenuButton *)self isExpanded];
  wantsSelectedItemToBeVisible = [(CAMExpandableMenuButton *)self wantsSelectedItemToBeVisible];
  v5 = [(CAMExpandableMenuButton *)self layoutStyle]!= 1 || isExpanded || !wantsSelectedItemToBeVisible;
  return v5 & 1;
}

- (BOOL)wantsSelectedItemToBeVisible
{
  selectedIndex = [(CAMExpandableMenuButton *)self selectedIndex];
  _shownIndexesWhileCollapsed = [(CAMExpandableMenuButton *)self _shownIndexesWhileCollapsed];
  LOBYTE(selectedIndex) = [_shownIndexesWhileCollapsed containsIndex:selectedIndex];

  return selectedIndex;
}

- (void)_applyMenuItemTextAlignmentAndShadowForCurrentOrientation
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = self->_orientation - 3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->__menuItems;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 setTextAlignment:{v2 < 2, v9}];
        [v8 setWantsLegibilityShadow:v2 < 2];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)reloadData
{
  layoutStyle = [(CAMExpandableMenuButton *)self layoutStyle];
  [(NSMutableArray *)self->__menuItems makeObjectsPerformSelector:sel_removeFromSuperview];
  [(NSMutableArray *)self->__menuItems removeAllObjects];
  numberOfMenuItems = [(CAMExpandableMenuButton *)self numberOfMenuItems];
  if (numberOfMenuItems >= 1)
  {
    v5 = numberOfMenuItems;
    v6 = 0;
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v11 = [[CAMButtonLabel alloc] initWithFrame:v7, v8, v9, v10];
      v12 = [(CAMExpandableMenuButton *)self titleForMenuItemAtIndex:v6];
      [(CAMButtonLabel *)v11 setText:v12];
      [(NSMutableArray *)self->__menuItems addObject:v11];
      [(CAMExpandableMenuButton *)self addSubview:v11];

      ++v6;
    }

    while (v5 != v6);
  }

  [(UIView *)self->__headerView removeFromSuperview];
  headerView = [(CAMExpandableMenuButton *)self headerView];
  headerView = self->__headerView;
  self->__headerView = headerView;

  [(CAMExpandableMenuButton *)self addSubview:self->__headerView];
  [(UIView *)self->__padBackgroundView removeFromSuperview];
  padBackgroundView = self->__padBackgroundView;
  self->__padBackgroundView = 0;

  if (layoutStyle == 1)
  {
    [(CAMExpandableMenuButton *)self _createPadBackgroundView];
  }

  shownIndexesWhileCollapsed = [(CAMExpandableMenuButton *)self shownIndexesWhileCollapsed];
  shownIndexesWhileCollapsed = self->__shownIndexesWhileCollapsed;
  self->__shownIndexesWhileCollapsed = shownIndexesWhileCollapsed;

  v18 = [(NSMutableArray *)self->__menuItems count];
  selectedIndex = self->_selectedIndex;
  if (selectedIndex > [(NSMutableArray *)self->__menuItems count]- 1)
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    if (v18 > 0)
    {
      v20 = 0;
    }

    self->_selectedIndex = v20;
  }

  [(CAMExpandableMenuButton *)self _applyMenuItemColorsForCurrentState];
  [(CAMExpandableMenuButton *)self _applyMenuItemAlphaForCurrentExpansionState];
  [(CAMExpandableMenuButton *)self _applyMenuItemTextAlignmentAndShadowForCurrentOrientation];

  [(CAMExpandableMenuButton *)self setNeedsLayout];
}

void __70__CAMExpandableMenuButton__applyMenuItemAlphaForCurrentExpansionState__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  if (v5[59] == a3 && ([v5 wantsSelectedItemToBeVisible] & 1) != 0)
  {
    v6 = 40;
  }

  else
  {
    v6 = 48;
  }

  [v7 setAlpha:*(a1 + v6)];
}

- (void)_updateFromSelectedIndexChange
{
  [(CAMExpandableMenuButton *)self invalidateIntrinsicContentSize];
  [(CAMExpandableMenuButton *)self setNeedsLayout];
  [(CAMExpandableMenuButton *)self _applyMenuItemColorsForCurrentState];

  [(CAMExpandableMenuButton *)self _applyMenuItemAlphaForCurrentExpansionState];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CAMExpandableMenuButton;
  [(CAMExpandableMenuButton *)&v3 layoutSubviews];
  [(CAMExpandableMenuButton *)self _layoutMenuButton:1 expanded:[(CAMExpandableMenuButton *)self isExpanded]];
}

- (CAMExpandableMenuButton)initWithLayoutStyle:(int64_t)style
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = CAMExpandableMenuButton;
  v4 = [(CAMExpandableMenuButton *)&v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    menuItems = v4->__menuItems;
    v4->__menuItems = v5;

    v4->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    v4->_orientation = 1;
    v4->_layoutStyle = style;
    v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
    highlightedIndexesWhileCollapsed = v4->__highlightedIndexesWhileCollapsed;
    v4->__highlightedIndexesWhileCollapsed = v7;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(CAMExpandableMenuButton *)v4 setTintColor:whiteColor];

    [(CAMExpandableMenuButton *)v4 _updateFromExpansionChangeAnimated:0];
    [(CAMExpandableMenuButton *)v4 _updateFromOrientationChangeAnimated:0];
    v10 = [[CAMTouchingGestureRecognizer alloc] initWithTarget:v4 action:sel__handleTouchGesture_];
    touchingGestureRecognizer = v4->_touchingGestureRecognizer;
    v4->_touchingGestureRecognizer = v10;

    [(CAMExpandableMenuButton *)v4 addGestureRecognizer:v4->_touchingGestureRecognizer];
    v17[0] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v13 = [(CAMExpandableMenuButton *)v4 registerForTraitChanges:v12 withAction:sel__preferredContentSizeCategoryDidChange];

    v14 = v4;
  }

  return v4;
}

- (CAMExpandableMenuButton)initWithFrame:(CGRect)frame
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  return [(CAMExpandableMenuButton *)self initWithLayoutStyle:cam_initialLayoutStyle];
}

- (CAMExpandableMenuButton)initWithCoder:(id)coder
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  return [(CAMExpandableMenuButton *)self initWithLayoutStyle:cam_initialLayoutStyle];
}

- (CGRect)alignmentRectForFrame:(CGRect)frame expanded:(BOOL)expanded
{
  if (expanded)
  {
    p_tappableEdgeInsets = MEMORY[0x1E69DDCE0];
  }

  else
  {
    p_tappableEdgeInsets = &self->_tappableEdgeInsets;
  }

  left = p_tappableEdgeInsets->left;
  v6 = frame.origin.x + left;
  v7 = frame.origin.y + p_tappableEdgeInsets->top;
  v8 = frame.size.width - (p_tappableEdgeInsets->right + left);
  v9 = frame.size.height - (p_tappableEdgeInsets->bottom + p_tappableEdgeInsets->top);
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)frameForAlignmentRect:(CGRect)rect expanded:(BOOL)expanded
{
  if (expanded)
  {
    p_tappableEdgeInsets = MEMORY[0x1E69DDCE0];
  }

  else
  {
    p_tappableEdgeInsets = &self->_tappableEdgeInsets;
  }

  left = p_tappableEdgeInsets->left;
  v6 = rect.origin.x - left;
  v7 = rect.origin.y - p_tappableEdgeInsets->top;
  v8 = rect.size.width - (-p_tappableEdgeInsets->right - left);
  v9 = rect.size.height - (-p_tappableEdgeInsets->bottom - p_tappableEdgeInsets->top);
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGSize)intrinsicContentSizeForExpansion:(BOOL)expansion
{
  [(CAMExpandableMenuButton *)self _layoutMenuButton:0 expanded:expansion];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(CAMExpandableMenuButton *)self intrinsicContentSizeForExpansion:self->_expanded];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)_layoutForPhoneCollapsedPortraitButton:(BOOL)button
{
  buttonCopy = button;
  [(CAMExpandableMenuButton *)self bounds];
  [(CAMExpandableMenuButton *)self alignmentRectForFrame:0 expanded:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  wantsSelectedItemToBeVisible = [(CAMExpandableMenuButton *)self wantsSelectedItemToBeVisible];
  [(UIView *)self->__headerView intrinsicContentSize];
  v55 = 0;
  UIRectCenteredIntegralRectScale();
  v17 = v16;
  v19 = v18;
  v57 = v15;
  if (wantsSelectedItemToBeVisible)
  {
    v61.origin.x = v6;
    v61.origin.y = v8;
    v61.size.width = v10;
    v61.size.height = v12;
    v56 = CGRectGetMinX(v61) + 0.0;
    if (buttonCopy)
    {
      _headerView = [(CAMExpandableMenuButton *)self _headerView];
      [_headerView frameForAlignmentRect:{v56, v17, v19, v57}];
      CAMViewSetBoundsAndCenterForFrame(_headerView, v21, v22, v23, v24);
    }

    v59[0] = 0;
    v59[1] = v59;
    v59[2] = 0x2020000000;
    v59[3] = 0;
    menuItems = self->__menuItems;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __66__CAMExpandableMenuButton__layoutForPhoneCollapsedPortraitButton___block_invoke;
    v58[3] = &unk_1E76FCB40;
    v58[4] = v59;
    [(NSMutableArray *)menuItems enumerateObjectsUsingBlock:v58, v55];
    _selectedLabel = [(CAMExpandableMenuButton *)self _selectedLabel];
    [_selectedLabel intrinsicContentSize];
    UIRectCenteredIntegralRectScale();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v62.origin.x = v56;
    v62.size.height = v57;
    v62.origin.y = v17;
    v62.size.width = v19;
    MaxX = CGRectGetMaxX(v62);
    [(CAMExpandableMenuButton *)self collapsedSelectedLabelHorizontalMargin];
    v35 = MaxX + v34;
    if (buttonCopy)
    {
      [_selectedLabel frameForAlignmentRect:{MaxX + v34, v28, v30, v32}];
      CAMViewSetBoundsAndCenterForFrame(_selectedLabel, v36, v37, v38, v39);
    }

    v63.origin.x = v35;
    v63.origin.y = v28;
    v63.size.width = v30;
    v63.size.height = v32;
    v40 = CGRectGetMaxX(v63);
    v64.origin.x = v56;
    v64.size.height = v57;
    v64.origin.y = v17;
    v64.size.width = v19;
    MinX = CGRectGetMinX(v64);
    v65.origin.x = v56;
    v65.size.height = v57;
    v65.origin.y = v17;
    v65.size.width = v19;
    Height = CGRectGetHeight(v65);
    v66.origin.x = v35;
    v66.origin.y = v28;
    v66.size.width = v30;
    v66.size.height = v32;
    v43 = CGRectGetHeight(v66);
    Width = v40 - MinX;
    if (Height >= v43)
    {
      v45 = Height;
    }

    else
    {
      v45 = v43;
    }

    _Block_object_dispose(v59, 8);
  }

  else
  {
    v46 = v14;
    if (buttonCopy)
    {
      _headerView2 = [(CAMExpandableMenuButton *)self _headerView];
      v48 = v57;
      [_headerView2 frameForAlignmentRect:{v46, v17, v19, v57}];
      CAMViewSetBoundsAndCenterForFrame(_headerView2, v49, v50, v51, v52);
    }

    else
    {
      v48 = v15;
    }

    v67.origin.x = v46;
    v67.origin.y = v17;
    v67.size.width = v19;
    v67.size.height = v48;
    Width = CGRectGetWidth(v67);
    v68.origin.x = v46;
    v68.origin.y = v17;
    v68.size.width = v19;
    v68.size.height = v48;
    v45 = CGRectGetHeight(v68);
  }

  v53 = Width;
  v54 = v45;
  result.height = v54;
  result.width = v53;
  return result;
}

uint64_t __66__CAMExpandableMenuButton__layoutForPhoneCollapsedPortraitButton___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 intrinsicContentSize];
  if (v3 >= v5)
  {
    v5 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

- (CGSize)_layoutForPhoneCollapsedLandscapeButton:(BOOL)button
{
  [(CAMExpandableMenuButton *)self bounds];
  [(CAMExpandableMenuButton *)self alignmentRectForFrame:0 expanded:?];
  if ([(CAMExpandableMenuButton *)self wantsSelectedItemToBeVisible])
  {
    [(UIView *)self->__headerView intrinsicContentSize];
    UIRectCenteredIntegralRectScale();
    v75 = v5;
    v7 = v6;
    v9 = v8;
    v78 = v10;
    _selectedLabel = [(CAMExpandableMenuButton *)self _selectedLabel];
    [_selectedLabel intrinsicContentSize];
    UIRectCenteredIntegralRectScale();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v84.origin.x = v7;
    v84.origin.y = v75;
    v84.size.width = v9;
    v84.size.height = v78;
    v92.origin.y = CGRectGetMaxY(v84) + 2.0;
    v85.origin.x = v7;
    v85.origin.y = v75;
    v85.size.width = v9;
    v85.size.height = v78;
    v69 = v13;
    v70 = v15;
    v92.origin.x = v13;
    v92.size.width = v15;
    v92.size.height = v17;
    v18 = v7;
    v19 = v9;
    CGRectUnion(v85, v92);
    UIRectCenteredIntegralRectScale();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    v86.origin.x = v18;
    v86.origin.y = v75;
    v86.size.height = v78;
    v86.size.width = v9;
    Height = CGRectGetHeight(v86);
    v87.origin.x = v21;
    v87.origin.y = v23;
    v87.size.width = v25;
    v87.size.height = v27;
    CGRectDivide(v87, &slice, &remainder, Height, CGRectMinYEdge);
    y = slice.origin.y;
    v30 = slice.size.height;
    if (button)
    {
      v76 = remainder.origin.y;
      v79 = remainder.size.height;
      _headerView = [(CAMExpandableMenuButton *)self _headerView];
      [_headerView frameForAlignmentRect:{v18, y, v19, v30}];
      v71 = v33;
      v72 = v32;
      v67 = v35;
      v68 = v34;
      [_selectedLabel frameForAlignmentRect:{v69, v76, v70, v79}];
      v73 = v27;
      v74 = v25;
      v36 = v19;
      v38 = v37;
      v39 = v18;
      v41 = v40;
      v77 = v23;
      v80 = v21;
      v43 = v42;
      v45 = v44;
      CAMViewSetBoundsAndCenterForFrame(_headerView, v72, v71, v68, v67);
      v46 = v38;
      v19 = v36;
      v47 = v41;
      v18 = v39;
      v27 = v73;
      v25 = v74;
      v48 = v43;
      v49 = v45;
      v23 = v77;
      v21 = v80;
      CAMViewSetBoundsAndCenterForFrame(_selectedLabel, v46, v47, v48, v49);
    }

    v88.origin.x = v21;
    v88.origin.y = v23;
    v88.size.width = v25;
    v88.size.height = v27;
    v50 = CGRectGetHeight(v88);
    v89.origin.x = v18;
    v89.origin.y = y;
    v89.size.width = v19;
    v89.size.height = v30;
    Width = CGRectGetWidth(v89);
  }

  else
  {
    [(UIView *)self->__headerView intrinsicContentSize];
    UIRectCenteredIntegralRectScale();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    if (button)
    {
      _headerView2 = [(CAMExpandableMenuButton *)self _headerView];
      [_headerView2 frameForAlignmentRect:{v53, v55, v57, v59}];
      CAMViewSetBoundsAndCenterForFrame(_headerView2, v61, v62, v63, v64);
    }

    v90.origin.x = v53;
    v90.origin.y = v55;
    v90.size.width = v57;
    v90.size.height = v59;
    v50 = CGRectGetHeight(v90);
    v91.origin.x = v53;
    v91.origin.y = v55;
    v91.size.width = v57;
    v91.size.height = v59;
    Width = CGRectGetWidth(v91);
  }

  v65 = v50;
  v66 = Width;
  result.height = v66;
  result.width = v65;
  return result;
}

- (CGSize)_layoutForPhoneExpandedPortraitButton:(BOOL)button
{
  buttonCopy = button;
  v47 = *MEMORY[0x1E69E9840];
  [(CAMExpandableMenuButton *)self bounds];
  [(CAMExpandableMenuButton *)self alignmentRectForFrame:1 expanded:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v13 addObject:self->__headerView];
  [v13 addObjectsFromArray:self->__menuItems];
  v37 = v12;
  v49.origin.x = v6;
  v49.origin.y = v8;
  v38 = v10;
  v49.size.width = v10;
  v49.size.height = v12;
  CGRectGetWidth(v49);
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v45[3] = 0;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __65__CAMExpandableMenuButton__layoutForPhoneExpandedPortraitButton___block_invoke;
  v44[3] = &unk_1E76FCB40;
  v44[4] = v45;
  [v13 enumerateObjectsUsingBlock:v44];
  [v13 count];
  UIRoundToViewScale();
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v14)
  {
    v15 = 0;
    v16 = *v41;
    v17 = 11.0;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v40 + 1) + 8 * i);
        [(UIView *)v19 intrinsicContentSize];
        UIRectCenteredIntegralRectScale();
        v21 = v20;
        v23 = v22;
        v25 = v24;
        if (buttonCopy)
        {
          wantsSelectedItemToBeVisible = [(CAMExpandableMenuButton *)self wantsSelectedItemToBeVisible];
          v27 = self->__headerView == v19;
          v28 = self->_selectedIndex == v15;
          aBlock[0] = MEMORY[0x1E69E9820];
          v29 = !v28;
          aBlock[1] = 3221225472;
          if ((v29 | v27))
          {
            v30 = v27;
          }

          else
          {
            v30 = wantsSelectedItemToBeVisible;
          }

          aBlock[2] = __65__CAMExpandableMenuButton__layoutForPhoneExpandedPortraitButton___block_invoke_2;
          aBlock[3] = &unk_1E76F7768;
          aBlock[4] = v19;
          *&aBlock[5] = v17;
          *&aBlock[6] = v21;
          *&aBlock[7] = v23;
          *&aBlock[8] = v25;
          v31 = _Block_copy(aBlock);
          v32 = v31;
          if (v30)
          {
            (*(v31 + 2))(v31);
          }

          else
          {
            [MEMORY[0x1E69DD250] performWithoutAnimation:v31];
          }
        }

        v50.origin.x = v17;
        v50.origin.y = v21;
        v50.size.width = v23;
        v50.size.height = v25;
        CGRectGetWidth(v50);
        UIRoundToViewScale();
        v17 = v33;
        v15 += [(NSMutableArray *)self->__menuItems containsObject:v19];
      }

      v14 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v14);
  }

  _Block_object_dispose(v45, 8);
  v35 = v37;
  v34 = v38;
  result.height = v35;
  result.width = v34;
  return result;
}

double __65__CAMExpandableMenuButton__layoutForPhoneExpandedPortraitButton___block_invoke(uint64_t a1, void *a2)
{
  [a2 intrinsicContentSize];
  v3 = *(*(a1 + 32) + 8);
  result = v4 + *(v3 + 24);
  *(v3 + 24) = result;
  return result;
}

void __65__CAMExpandableMenuButton__layoutForPhoneExpandedPortraitButton___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) frameForAlignmentRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v6 = *(a1 + 32);

  CAMViewSetBoundsAndCenterForFrame(v6, v2, v3, v4, v5);
}

- (CGSize)_layoutForPhoneExpandedLandscapeButton:(BOOL)button
{
  buttonCopy = button;
  v81 = *MEMORY[0x1E69E9840];
  [(CAMExpandableMenuButton *)self bounds];
  [(CAMExpandableMenuButton *)self alignmentRectForFrame:1 expanded:?];
  v67 = v6;
  v68 = v5;
  v8 = v7;
  rect = v9;
  orientation = [(CAMExpandableMenuButton *)self orientation];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v11 addObjectsFromArray:self->__menuItems];
  WeakRetained = objc_loadWeakRetained(&self->_expandableMenuDelegate);
  [WeakRetained collapsedFrameForMenuButton:self];
  v14 = v13;
  v16 = v15;

  [(CAMExpandableMenuButton *)self alignmentRectForFrame:0 expanded:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v14, v16];
  [(UIView *)self->__headerView intrinsicContentSize];
  v57 = 0;
  UIRectCenteredIntegralRectScale();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v64 = buttonCopy;
  if (buttonCopy)
  {
    _headerView = [(CAMExpandableMenuButton *)self _headerView];
    [_headerView frameForAlignmentRect:{v20, v18, v24, v22}];
    v30 = v29;
    if (orientation == 4)
    {
      obja = v26;
      v83.origin.y = v67;
      v83.origin.x = v68;
      v61 = v28;
      v63 = v27;
      v83.size.width = v8;
      v83.size.height = rect;
      MaxX = CGRectGetMaxX(v83);
      v84.origin.x = v30;
      v84.origin.y = obja;
      v84.size.height = v61;
      v84.size.width = v63;
      v31 = CGRectGetMaxX(v84);
      v28 = v61;
      v27 = v63;
      v26 = obja;
      v30 = MaxX - v31;
    }

    CAMViewSetBoundsAndCenterForFrame(_headerView, v30, v26, v27, v28);
  }

  v85.origin.x = v20;
  v85.origin.y = v18;
  v85.size.width = v24;
  v85.size.height = v22;
  v32 = CGRectGetMaxX(v85);
  v86.origin.y = v67;
  v86.origin.x = v68;
  v86.size.width = v8;
  v86.size.height = rect;
  CGRectGetWidth(v86);
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 0;
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __66__CAMExpandableMenuButton__layoutForPhoneExpandedLandscapeButton___block_invoke;
  v75[3] = &unk_1E76FCB40;
  v75[4] = &v76;
  [v11 enumerateObjectsUsingBlock:v75];
  v62 = [v11 count];
  UIRoundToViewScale();
  v34 = v33;
  v60 = v77[3];
  if (orientation == 4)
  {
    v87.origin.y = v67;
    v87.origin.x = v68;
    v87.size.width = v8;
    v87.size.height = rect;
    v35 = CGRectGetMaxX(v87) - v32 - v34;
  }

  else
  {
    v35 = v32 + v33;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v11;
  v36 = [obj countByEnumeratingWithState:&v71 objects:v80 count:16];
  if (v36)
  {
    v37 = 0;
    v38 = *v72;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v72 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v71 + 1) + 8 * i);
        [(UIView *)v40 intrinsicContentSize];
        v58 = 0;
        UIRectCenteredIntegralRectScale();
        v45 = v42;
        v46 = v43;
        v47 = v44;
        if (orientation == 4)
        {
          v35 = v35 - CGRectGetWidth(*&v41);
        }

        if (buttonCopy)
        {
          wantsSelectedItemToBeVisible = [(CAMExpandableMenuButton *)self wantsSelectedItemToBeVisible];
          v49 = self->__headerView == v40;
          v50 = self->_selectedIndex == v37;
          aBlock[0] = MEMORY[0x1E69E9820];
          v51 = !v50;
          aBlock[1] = 3221225472;
          if ((v51 | v49))
          {
            v52 = v49;
          }

          else
          {
            v52 = wantsSelectedItemToBeVisible;
          }

          aBlock[2] = __66__CAMExpandableMenuButton__layoutForPhoneExpandedLandscapeButton___block_invoke_2;
          aBlock[3] = &unk_1E76F7768;
          aBlock[4] = v40;
          *&aBlock[5] = v35;
          *&aBlock[6] = v45;
          *&aBlock[7] = v46;
          *&aBlock[8] = v47;
          v53 = _Block_copy(aBlock);
          v54 = v53;
          if (v52)
          {
            (*(v53 + 2))(v53);
          }

          else
          {
            [MEMORY[0x1E69DD250] performWithoutAnimation:v53];
          }

          buttonCopy = v64;
        }

        if (orientation == 4)
        {
          v35 = v35 - v34;
        }

        else
        {
          v88.origin.x = v35;
          v88.origin.y = v45;
          v88.size.width = v46;
          v88.size.height = v47;
          v35 = v35 + v34 + CGRectGetWidth(v88);
        }

        v37 += [(NSMutableArray *)self->__menuItems containsObject:v40, v58];
      }

      v36 = [obj countByEnumeratingWithState:&v71 objects:v80 count:16];
    }

    while (v36);
  }

  _Block_object_dispose(&v76, 8);
  v55 = v60 + v34 * (v62 - 1);
  v56 = rect;
  result.height = v55;
  result.width = v56;
  return result;
}

double __66__CAMExpandableMenuButton__layoutForPhoneExpandedLandscapeButton___block_invoke(uint64_t a1, void *a2)
{
  [a2 intrinsicContentSize];
  v3 = *(*(a1 + 32) + 8);
  result = v4 + *(v3 + 24);
  *(v3 + 24) = result;
  return result;
}

void __66__CAMExpandableMenuButton__layoutForPhoneExpandedLandscapeButton___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) frameForAlignmentRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v6 = *(a1 + 32);

  CAMViewSetBoundsAndCenterForFrame(v6, v2, v3, v4, v5);
}

- (CGSize)_padCollapsedIntrinsicContentSize
{
  v2 = 44.0;
  v3 = 44.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)_layoutForPadCollapsedPortraitButton:(BOOL)button
{
  buttonCopy = button;
  v40 = *MEMORY[0x1E69E9840];
  [(CAMExpandableMenuButton *)self bounds];
  [(CAMExpandableMenuButton *)self alignmentRectForFrame:0 expanded:?];
  if (buttonCopy)
  {
    [(UIView *)self->__padBackgroundView setFrame:v5, v6, v7, v8];
  }

  [(UIView *)self->__headerView intrinsicContentSize];
  v32 = 0;
  UIRectCenteredIntegralRectScale();
  if (buttonCopy)
  {
    v13 = v9;
    v14 = v10;
    v33 = v11;
    v34 = v12;
    _headerView = [(CAMExpandableMenuButton *)self _headerView];
    [_headerView frameForAlignmentRect:{v13, v14, v33, v34}];
    CAMViewSetBoundsAndCenterForFrame(_headerView, v16, v17, v18, v19);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = self->__menuItems;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v35 + 1) + 8 * i);
        [v25 intrinsicContentSize];
        v32 = 0;
        UIRectCenteredIntegralRectScale();
        if (buttonCopy)
        {
          [v25 frameForAlignmentRect:0];
          CAMViewSetBoundsAndCenterForFrame(v25, v26, v27, v28, v29);
        }
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v22);
  }

  [(CAMExpandableMenuButton *)self _padCollapsedIntrinsicContentSize];
  result.height = v31;
  result.width = v30;
  return result;
}

- (CGSize)_layoutForPadExpandedPortraitButton:(BOOL)button
{
  buttonCopy = button;
  v54 = *MEMORY[0x1E69E9840];
  [(CAMExpandableMenuButton *)self tappableEdgeInsets];
  v6 = v5;
  [(CAMExpandableMenuButton *)self bounds];
  [(CAMExpandableMenuButton *)self alignmentRectForFrame:0 expanded:?];
  if (buttonCopy)
  {
    [(UIView *)self->__padBackgroundView setFrame:v7, v8, v9, v10];
  }

  v48 = v6;
  v11 = v6 + 13.0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v12 = self->__menuItems;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v50;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v50 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v49 + 1) + 8 * i);
        [v17 intrinsicContentSize];
        v47 = 0;
        UIRectCenteredIntegralRectScale();
        v21 = v18;
        v22 = v19;
        v23 = v20;
        if (buttonCopy)
        {
          [v17 frameForAlignmentRect:{v11, v18, v19, v20, 0}];
          CAMViewSetBoundsAndCenterForFrame(v17, v24, v25, v26, v27);
        }

        v56.origin.x = v11;
        v56.origin.y = v21;
        v56.size.width = v22;
        v56.size.height = v23;
        v11 = CGRectGetMaxX(v56) + 29.0;
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v14);
  }

  [(UIView *)self->__headerView intrinsicContentSize];
  UIRectCenteredIntegralRectScale();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  [(CAMExpandableMenuButton *)self padHeaderViewContentInsetLeft];
  v35 = v11 - v34;
  if (buttonCopy)
  {
    _headerView = [(CAMExpandableMenuButton *)self _headerView];
    [_headerView frameForAlignmentRect:{v35, v29, v31, v33}];
    CAMViewSetBoundsAndCenterForFrame(_headerView, v37, v38, v39, v40);
  }

  [(CAMExpandableMenuButton *)self _padCollapsedIntrinsicContentSize];
  v42 = v41;
  v44 = v43;
  v57.origin.x = v35;
  v57.origin.y = v29;
  v57.size.width = v31;
  v57.size.height = v33;
  v45 = CGRectGetMidX(v57) + v42 * 0.5 - v48;
  v46 = v44;
  result.height = v46;
  result.width = v45;
  return result;
}

- (CGSize)_layoutForPhoneStyle:(BOOL)style expanded:(BOOL)expanded
{
  expandedCopy = expanded;
  styleCopy = style;
  v7 = [(CAMExpandableMenuButton *)self orientation]- 3;
  v8 = !expandedCopy;
  if (!expandedCopy || v7 > 1)
  {
    if (v7 < 2)
    {
      v8 = 1;
    }

    if (v8)
    {
      if (expandedCopy || v7 > 1)
      {
        v9 = *MEMORY[0x1E695F060];
        v10 = *(MEMORY[0x1E695F060] + 8);
        if (!expandedCopy && v7 >= 2)
        {
          [(CAMExpandableMenuButton *)self _layoutForPhoneCollapsedPortraitButton:styleCopy, v9, v10];
        }
      }

      else
      {
        [(CAMExpandableMenuButton *)self _layoutForPhoneCollapsedLandscapeButton:styleCopy];
      }
    }

    else
    {
      [(CAMExpandableMenuButton *)self _layoutForPhoneExpandedPortraitButton:styleCopy];
    }
  }

  else
  {
    [(CAMExpandableMenuButton *)self _layoutForPhoneExpandedLandscapeButton:styleCopy];
  }

  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)_layoutForPadStyle:(BOOL)style expanded:(BOOL)expanded
{
  expandedCopy = expanded;
  styleCopy = style;
  v7 = [(CAMExpandableMenuButton *)self orientation]- 3;
  v8 = *MEMORY[0x1E695F060];
  v9 = *(MEMORY[0x1E695F060] + 8);
  if (!expandedCopy || v7 >= 2)
  {
    if (expandedCopy && v7 >= 2)
    {
      [(CAMExpandableMenuButton *)self _layoutForPadExpandedPortraitButton:styleCopy, v8, v9];
    }

    else if (!expandedCopy && v7 >= 2)
    {
      [(CAMExpandableMenuButton *)self _layoutForPadCollapsedPortraitButton:styleCopy, v8, v9];
    }
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)_layoutMenuButton:(BOOL)button expanded:(BOOL)expanded
{
  expandedCopy = expanded;
  buttonCopy = button;
  layoutStyle = [(CAMExpandableMenuButton *)self layoutStyle];
  if (layoutStyle != 3)
  {
    if (layoutStyle == 1)
    {
      [(CAMExpandableMenuButton *)self _layoutForPadStyle:buttonCopy expanded:expandedCopy];
      goto LABEL_7;
    }

    if (layoutStyle)
    {
      v8 = *MEMORY[0x1E695F060];
      v9 = *(MEMORY[0x1E695F060] + 8);
      goto LABEL_7;
    }
  }

  [(CAMExpandableMenuButton *)self _layoutForPhoneStyle:buttonCopy expanded:expandedCopy];
LABEL_7:
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)_selectedLabel
{
  if ([(CAMExpandableMenuButton *)self selectedIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(NSMutableArray *)self->__menuItems count];
    if (v3)
    {
      v3 = [(NSMutableArray *)self->__menuItems objectAtIndex:[(CAMExpandableMenuButton *)self selectedIndex]];
    }
  }

  return v3;
}

- (void)setSelectedIndex:(int64_t)index
{
  if (self->_selectedIndex != index)
  {
    self->_selectedIndex = index;
    [(CAMExpandableMenuButton *)self _updateFromSelectedIndexChange];
  }
}

- (void)setLayoutStyle:(int64_t)style
{
  if (self->_layoutStyle != style)
  {
    self->_layoutStyle = style;
    [(CAMExpandableMenuButton *)self reloadData];
  }
}

- (void)_createPadBackgroundView
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = CAMCameraUIFrameworkBundle();
  v10 = [v3 imageNamed:@"CAMButtonBackgroundPad" inBundle:v4];

  [v10 size];
  v7 = [v10 resizableImageWithCapInsets:1 resizingMode:{v5 * 0.5, v6 * 0.5, v5 * 0.5, v6 * 0.5}];
  v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v7];
  [(CAMExpandableMenuButton *)self insertSubview:v8 atIndex:0];
  padBackgroundView = self->__padBackgroundView;
  self->__padBackgroundView = v8;
}

- (void)expandMenuAnimated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_expandableMenuDelegate);
  [WeakRetained expandMenuButton:self animated:animatedCopy];
}

- (void)collapseMenuAnimated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_expandableMenuDelegate);
  [WeakRetained collapseMenuButton:self animated:animatedCopy];
}

void __62__CAMExpandableMenuButton__applyMenuItemColorsForCurrentState__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 472);
  v5 = MEMORY[0x1E69DC888];
  v6 = a2;
  if (v4 == a3)
  {
    [v5 systemYellowColor];
  }

  else
  {
    [v5 whiteColor];
  }
  v7 = ;
  [v6 setTextColor:v7];
}

void __62__CAMExpandableMenuButton__applyMenuItemColorsForCurrentState__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if ([*(*(a1 + 32) + 504) containsIndex:a3])
  {
    if ([*(*(a1 + 32) + 512) containsIndex:a3] && *(*(a1 + 32) + 472) == a3)
    {
      v5 = [MEMORY[0x1E69DC888] systemYellowColor];
    }

    else
    {
      v5 = [MEMORY[0x1E69DC888] whiteColor];
    }

    v6 = v5;
    [v7 setTextColor:v5];
  }
}

- (void)_updateFromExpansionChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(CAMExpandableMenuButton *)self invalidateIntrinsicContentSize];
  [(CAMExpandableMenuButton *)self setNeedsLayout];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__CAMExpandableMenuButton__updateFromExpansionChangeAnimated___block_invoke;
  aBlock[3] = &unk_1E76F77B0;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (animatedCopy)
  {
    [objc_opt_class() expansionDuration];
    v8 = v7;
    v9 = MEMORY[0x1E69DD250];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__CAMExpandableMenuButton__updateFromExpansionChangeAnimated___block_invoke_2;
    v10[3] = &unk_1E76F7E40;
    v10[4] = self;
    v11 = v6;
    [v9 animateWithDuration:2 delay:v10 options:0 animations:v8 completion:0.0];
  }

  else
  {
    (*(v5 + 2))(v5);
  }
}

uint64_t __62__CAMExpandableMenuButton__updateFromExpansionChangeAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _applyHeaderViewForCurrentExpansionState];
  [*(a1 + 32) _applyMenuItemColorsForCurrentState];
  v2 = *(a1 + 32);

  return [v2 _applyMenuItemAlphaForCurrentExpansionState];
}

uint64_t __62__CAMExpandableMenuButton__updateFromExpansionChangeAnimated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_convertAllSubviewsToProposedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v36 = *MEMORY[0x1E69E9840];
  [(CAMExpandableMenuButton *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  orientation = [(CAMExpandableMenuButton *)self orientation];
  if ([(CAMExpandableMenuButton *)self orientation]== 4 || [(CAMExpandableMenuButton *)self orientation]== 2)
  {
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    rect = height;
    MaxX = CGRectGetMaxX(v37);
    v38.origin.x = v9;
    v38.origin.y = v11;
    v38.size.width = v13;
    v38.size.height = v15;
    v30 = MaxX - CGRectGetMaxX(v38);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = rect;
    MaxY = CGRectGetMaxY(v39);
    v40.origin.x = v9;
    v40.origin.y = v11;
    v40.size.width = v13;
    v40.size.height = v15;
    v19 = MaxY - CGRectGetMaxY(v40);
  }

  else
  {
    v30 = v9 - x;
    v19 = v11 - y;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  subviews = [(CAMExpandableMenuButton *)self subviews];
  v21 = [subviews countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    if ((orientation - 3) >= 2)
    {
      v24 = v30;
    }

    else
    {
      v24 = v19;
    }

    if ((orientation - 3) < 2)
    {
      v19 = v30;
    }

    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(subviews);
        }

        v26 = *(*(&v31 + 1) + 8 * i);
        [v26 frame];
        [v26 setFrame:{v24 + v27, v19 + v28}];
      }

      v22 = [subviews countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v22);
  }
}

- (void)finishCollapsingAnimated:(BOOL)animated
{
  if (self->_expanded)
  {
    self->_expanded = 0;
    [(CAMExpandableMenuButton *)self _updateFromExpansionChangeAnimated:animated];
  }
}

- (void)finishExpansionAnimated:(BOOL)animated
{
  if (!self->_expanded)
  {
    self->_expanded = 1;
    [(CAMExpandableMenuButton *)self _updateFromExpansionChangeAnimated:animated];
  }
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (self->_orientation != orientation)
  {
    self->_orientation = orientation;
    [(CAMExpandableMenuButton *)self _updateFromOrientationChangeAnimated:animated];
  }
}

- (void)_updateFromOrientationChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (([(CAMExpandableMenuButton *)self isHidden]& 1) != 0)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    [(CAMExpandableMenuButton *)self alpha];
    v6 = 0;
    v5 = 0;
    if (animatedCopy && v7 != 0.0)
    {
      v8 = [(CAMExpandableMenuButton *)self snapshotViewAfterScreenUpdates:0];
      v9 = MEMORY[0x1E69DD250];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __64__CAMExpandableMenuButton__updateFromOrientationChangeAnimated___block_invoke;
      v21[3] = &unk_1E76F7960;
      v6 = v8;
      v22 = v6;
      selfCopy = self;
      [v9 performWithoutAnimation:v21];

      v5 = 1;
    }
  }

  shownIndexesWhileCollapsed = [(CAMExpandableMenuButton *)self shownIndexesWhileCollapsed];
  v11 = [shownIndexesWhileCollapsed containsIndex:{-[CAMExpandableMenuButton selectedIndex](self, "selectedIndex")}];
  [CAMView rotateView:self toInterfaceOrientation:self->_orientation animated:v5];
  [(CAMExpandableMenuButton *)self _applyMenuItemTextAlignmentAndShadowForCurrentOrientation];
  if ([(CAMExpandableMenuButton *)self isExpanded])
  {
    WeakRetained = objc_loadWeakRetained(&self->_expandableMenuDelegate);
    [WeakRetained collapseMenuButton:self animated:0];
  }

  if (v11)
  {
    [(CAMExpandableMenuButton *)self _removeAllAnimations:1];
  }

  [(CAMExpandableMenuButton *)self setNeedsLayout];
  [(CAMExpandableMenuButton *)self invalidateIntrinsicContentSize];
  if ((v5 & v11) == 1)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __64__CAMExpandableMenuButton__updateFromOrientationChangeAnimated___block_invoke_2;
    v20[3] = &unk_1E76F77B0;
    v20[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v20];
    superview = [(CAMExpandableMenuButton *)self superview];
    [superview addSubview:v6];

    v14 = MEMORY[0x1E69DD250];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __64__CAMExpandableMenuButton__updateFromOrientationChangeAnimated___block_invoke_3;
    v18[3] = &unk_1E76F77B0;
    v19 = v6;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __64__CAMExpandableMenuButton__updateFromOrientationChangeAnimated___block_invoke_4;
    v16[3] = &unk_1E76F7988;
    v17 = v19;
    [v14 animateWithDuration:2 delay:v18 options:v16 animations:0.2 completion:0.0];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__CAMExpandableMenuButton__updateFromOrientationChangeAnimated___block_invoke_5;
    v15[3] = &unk_1E76F77B0;
    v15[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v15 options:0 animations:0.5 completion:0.0];
  }
}

uint64_t __64__CAMExpandableMenuButton__updateFromOrientationChangeAnimated___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 transform];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  [v3 setTransform:v6];
  v4 = *(a1 + 32);
  [*(a1 + 40) frame];
  return [v4 setFrame:?];
}

uint64_t __64__CAMExpandableMenuButton__updateFromOrientationChangeAnimated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)setHighlighted:(BOOL)highlighted forIndex:(int64_t)index
{
  highlightedIndexesWhileCollapsed = self->__highlightedIndexesWhileCollapsed;
  if (highlighted)
  {
    [(NSMutableIndexSet *)highlightedIndexesWhileCollapsed addIndex:index];
  }

  else
  {
    [(NSMutableIndexSet *)highlightedIndexesWhileCollapsed removeIndex:index];
  }

  [(CAMExpandableMenuButton *)self _applyMenuItemColorsForCurrentState];
}

- (void)_handleTouchGesture:(id)gesture
{
  gestureCopy = gesture;
  if (![(CAMExpandableMenuButton *)self shouldIgnoreMenuInteraction])
  {
    _trackingView = [(CAMExpandableMenuButton *)self _trackingView];
    [gestureCopy locationInView:self];
    v6 = v5;
    v8 = v7;
    state = [gestureCopy state];
    if (state == 1)
    {
      v10 = [(CAMExpandableMenuButton *)self _viewToTrackForTouchAtLocation:v6, v8];
      if (v10)
      {
        [(CAMExpandableMenuButton *)self _setTrackingView:v10];
        [(CAMExpandableMenuButton *)self _setTrackingViewHighlighted:1];
        layer = [v10 layer];
        [CAMAnimationHelper animateLayer:layer forButtonHighlighted:1 layoutStyle:[(CAMExpandableMenuButton *)self layoutStyle]];
      }
    }

    else if (_trackingView)
    {
      v12 = state;
      [_trackingView frame];
      UIDistanceBetweenPointAndRect();
      v14 = v13;
      if (v12 == 2)
      {
        if (v13 < 50.0 != [(CAMExpandableMenuButton *)self _isTrackingViewHighlighted])
        {
          [(CAMExpandableMenuButton *)self _setTrackingViewHighlighted:v14 < 50.0, 50.0];
          layer2 = [_trackingView layer];
          [CAMAnimationHelper animateLayer:layer2 forButtonHighlighted:v14 < 50.0 layoutStyle:[(CAMExpandableMenuButton *)self layoutStyle]];
        }
      }

      else
      {
        if (v12 != 4 && v13 < 50.0)
        {
          selectedIndex = [(CAMExpandableMenuButton *)self selectedIndex];
          _menuItems = [(CAMExpandableMenuButton *)self _menuItems];
          shouldAllowExpansion = [(CAMExpandableMenuButton *)self shouldAllowExpansion];
          if (shouldAllowExpansion)
          {
            headerView = [(CAMExpandableMenuButton *)self headerView];

            if (_trackingView != headerView)
            {
              selectedIndex = [_menuItems indexOfObject:_trackingView];
            }
          }

          else
          {
            selectedIndex = (selectedIndex + 1) % [_menuItems count];
          }

          selectedIndex2 = [(CAMExpandableMenuButton *)self selectedIndex];
          [(CAMExpandableMenuButton *)self setSelectedIndex:selectedIndex];
          expandableMenuDelegate = [(CAMExpandableMenuButton *)self expandableMenuDelegate];
          if ([(CAMExpandableMenuButton *)self isExpanded])
          {
            [expandableMenuDelegate collapseMenuButton:self animated:1];
          }

          else if (shouldAllowExpansion)
          {
            [expandableMenuDelegate expandMenuButton:self animated:1];
          }

          if (selectedIndex != selectedIndex2)
          {
            [(CAMExpandableMenuButton *)self sendActionsForControlEvents:4096];
          }
        }

        if ([(CAMExpandableMenuButton *)self _isTrackingViewHighlighted])
        {
          layer3 = [_trackingView layer];
          [CAMAnimationHelper animateLayer:layer3 forButtonHighlighted:0 layoutStyle:[(CAMExpandableMenuButton *)self layoutStyle]];
          [(CAMExpandableMenuButton *)self _setTrackingViewHighlighted:0];
        }

        [(CAMExpandableMenuButton *)self _setTrackingView:0];
      }
    }
  }
}

- (id)_viewToTrackForTouchAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  _menuItems = [(CAMExpandableMenuButton *)self _menuItems];
  _headerView = [(CAMExpandableMenuButton *)self _headerView];
  if ([(CAMExpandableMenuButton *)self isExpanded])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__19;
    v23 = __Block_byref_object_dispose__19;
    v24 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0x7FEFFFFFFFFFFFFFLL;
    v8 = [_menuItems arrayByAddingObject:_headerView];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __58__CAMExpandableMenuButton__viewToTrackForTouchAtLocation___block_invoke;
    v14[3] = &unk_1E76FCBB8;
    *&v14[6] = x;
    *&v14[7] = y;
    v14[4] = &v15;
    v14[5] = &v19;
    [v8 enumerateObjectsUsingBlock:v14];
    if (v16[3] >= 20.0)
    {
      v9 = 0;
    }

    else
    {
      v9 = v20[5];
    }

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    wantsSelectedItemToBeVisible = [(CAMExpandableMenuButton *)self wantsSelectedItemToBeVisible];
    _wantsHeaderViewToBeVisible = [(CAMExpandableMenuButton *)self _wantsHeaderViewToBeVisible];
    if (!wantsSelectedItemToBeVisible || _wantsHeaderViewToBeVisible)
    {
      v12 = _headerView;
    }

    else
    {
      v12 = [_menuItems objectAtIndexedSubscript:{-[CAMExpandableMenuButton selectedIndex](self, "selectedIndex")}];
    }

    v9 = v12;
  }

  return v9;
}

void __58__CAMExpandableMenuButton__viewToTrackForTouchAtLocation___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  [v13 frame];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  MinX = CGRectGetMinX(v15);
  v9 = *(a1 + 48);
  v10 = MinX - v9;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v11 = fmax(v10, v9 - CGRectGetMaxX(v16));
  v12 = *(*(a1 + 32) + 8);
  if (v11 < *(v12 + 24))
  {
    *(v12 + 24) = v11;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (UIEdgeInsets)tappableEdgeInsets
{
  top = self->_tappableEdgeInsets.top;
  left = self->_tappableEdgeInsets.left;
  bottom = self->_tappableEdgeInsets.bottom;
  right = self->_tappableEdgeInsets.right;
  layoutStyle = [(CAMExpandableMenuButton *)self layoutStyle];
  if (layoutStyle == 3 || !layoutStyle)
  {
    if ([(CAMExpandableMenuButton *)self isExpanded])
    {
      top = *MEMORY[0x1E69DDCE0];
      left = *(MEMORY[0x1E69DDCE0] + 8);
      bottom = *(MEMORY[0x1E69DDCE0] + 16);
      right = *(MEMORY[0x1E69DDCE0] + 24);
    }
  }

  v8 = top;
  v9 = left;
  v10 = bottom;
  v11 = right;
  result.right = v11;
  result.bottom = v10;
  result.left = v9;
  result.top = v8;
  return result;
}

- (void)setTappableEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_tappableEdgeInsets.top), vceqq_f64(v4, *&self->_tappableEdgeInsets.bottom)))) & 1) == 0)
  {
    self->_tappableEdgeInsets = insets;
    [(CAMExpandableMenuButton *)self setNeedsLayout];
  }
}

- (void)_preferredContentSizeCategoryDidChange
{
  [(CAMExpandableMenuButton *)self invalidateIntrinsicContentSize];

  [(CAMExpandableMenuButton *)self setNeedsLayout];
}

- (id)hudItemForAccessibilityHUDManager:(id)manager
{
  [manager locationOfAccessibilityGestureInView:self];
  v4 = [(CAMExpandableMenuButton *)self _viewToTrackForTouchAtLocation:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x1E69DC618];
    v6 = v4;
    v7 = [v5 alloc];
    text = [v6 text];

    v9 = [v7 initWithTitle:text image:0 imageInsets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  }

  else
  {
    headerView = [(CAMExpandableMenuButton *)self headerView];
    v11 = [v4 isEqual:headerView];

    if (!v11)
    {
      v9 = 0;
      goto LABEL_15;
    }

    text = [(CAMExpandableMenuButton *)self shownIndexesWhileCollapsed];
    if ([text containsIndex:{-[CAMExpandableMenuButton selectedIndex](self, "selectedIndex")}])
    {
      _menuItems = [(CAMExpandableMenuButton *)self _menuItems];
      v13 = [_menuItems objectAtIndex:{-[CAMExpandableMenuButton selectedIndex](self, "selectedIndex")}];

      text2 = [v13 text];
    }

    else
    {
      text2 = 0;
    }

    if ([(CAMExpandableMenuButton *)self conformsToProtocol:&unk_1F1717470])
    {
      imageForAccessibilityHUD = [(CAMExpandableMenuButton *)self imageForAccessibilityHUD];
    }

    else
    {
      headerView2 = [(CAMExpandableMenuButton *)self headerView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        headerView3 = [(CAMExpandableMenuButton *)self headerView];
        imageForAccessibilityHUD = [headerView3 image];
      }

      else
      {
        imageForAccessibilityHUD = 0;
      }
    }

    v19 = objc_alloc(MEMORY[0x1E69DC618]);
    v9 = [v19 initWithTitle:text2 image:imageForAccessibilityHUD imageInsets:1 scaleImage:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  }

LABEL_15:

  return v9;
}

- (void)selectedByAccessibilityHUDManager:(id)manager
{
  managerCopy = manager;
  if ([(CAMExpandableMenuButton *)self isExpanded])
  {
    [managerCopy locationOfAccessibilityGestureInView:self];
    v4 = [(CAMExpandableMenuButton *)self _viewToTrackForTouchAtLocation:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      _menuItems = [(CAMExpandableMenuButton *)self _menuItems];
      v7 = [_menuItems indexOfObject:v5];

      [(CAMExpandableMenuButton *)self setSelectedIndex:v7];
      [(CAMExpandableMenuButton *)self sendActionsForControlEvents:4096];
    }

    [(CAMExpandableMenuButton *)self collapseMenuAnimated:1];
  }

  else if ([(CAMExpandableMenuButton *)self shouldAllowExpansion])
  {
    [(CAMExpandableMenuButton *)self expandMenuAnimated:1];
  }

  else
  {
    v8 = [(CAMExpandableMenuButton *)self selectedIndex]+ 1;
    _menuItems2 = [(CAMExpandableMenuButton *)self _menuItems];
    -[CAMExpandableMenuButton setSelectedIndex:](self, "setSelectedIndex:", v8 % [_menuItems2 count]);

    [(CAMExpandableMenuButton *)self sendActionsForControlEvents:4096];
  }
}

- (CAMExpandableMenuButtonDelegate)expandableMenuDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_expandableMenuDelegate);

  return WeakRetained;
}

@end