@interface HKLegendView
+ (UIEdgeInsets)modifiedInsetsForOpaqueLegend:(BOOL)a3 originalInsets:(UIEdgeInsets)a4;
- (HKLegendView)initWithEdgeInsets:(UIEdgeInsets)a3 opaqueBackground:(BOOL)a4;
- (UIEdgeInsets)edgeInsets;
- (void)_rebuildExtensionsWithStickLocations:(id)a3;
- (void)_rebuildStackStructure;
- (void)_updateLegendLeftEntries:(id)a3 rightEntries:(id)a4;
- (void)hideLollipops;
- (void)setEdgeInsets:(UIEdgeInsets)a3;
- (void)setLeftEntries:(id)a3 rightEntries:(id)a4;
- (void)setTopBorderColor:(id)a3;
@end

@implementation HKLegendView

- (HKLegendView)initWithEdgeInsets:(UIEdgeInsets)a3 opaqueBackground:(BOOL)a4
{
  v4 = a4;
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v10 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v10 bounds];
  v54.receiver = self;
  v54.super_class = HKLegendView;
  v11 = [(HKBorderLineView *)&v54 initWithFrame:?];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E69DCF90]);
    v13 = [v12 initWithArrangedSubviews:MEMORY[0x1E695E0F0]];
    mainStack = v11->_mainStack;
    v11->_mainStack = v13;

    [(UIStackView *)v11->_mainStack setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HKLegendView *)v11 addSubview:v11->_mainStack];
    [(UIStackView *)v11->_mainStack setAlignment:3];
    [(UIStackView *)v11->_mainStack setDistribution:0];
    [(UIStackView *)v11->_mainStack setSpacing:10.0];
    [(UIStackView *)v11->_mainStack setAxis:0];
    v15 = [(UIStackView *)v11->_mainStack layer];
    [v15 setZPosition:2.0];

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    leftEntryViews = v11->_leftEntryViews;
    v11->_leftEntryViews = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    rightEntryViews = v11->_rightEntryViews;
    v11->_rightEntryViews = v18;

    [(HKLegendView *)v11 _rebuildStackStructure];
    v20 = [(UIStackView *)v11->_mainStack leadingAnchor];
    v21 = [(HKLegendView *)v11 leadingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:0.0];
    leadingConstraint = v11->_leadingConstraint;
    v11->_leadingConstraint = v22;

    [(NSLayoutConstraint *)v11->_leadingConstraint setActive:1];
    v24 = [(UIStackView *)v11->_mainStack trailingAnchor];
    v25 = [(HKLegendView *)v11 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:0.0];
    trailingConstraint = v11->_trailingConstraint;
    v11->_trailingConstraint = v26;

    [(NSLayoutConstraint *)v11->_trailingConstraint setActive:1];
    v28 = [(UIStackView *)v11->_mainStack topAnchor];
    v29 = [(HKLegendView *)v11 topAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:0.0];
    topConstraint = v11->_topConstraint;
    v11->_topConstraint = v30;

    [(NSLayoutConstraint *)v11->_topConstraint setActive:1];
    v32 = [(UIStackView *)v11->_mainStack bottomAnchor];
    v33 = [(HKLegendView *)v11 bottomAnchor];
    v34 = [v32 constraintEqualToAnchor:v33 constant:0.0];
    bottomConstraint = v11->_bottomConstraint;
    v11->_bottomConstraint = v34;

    [(NSLayoutConstraint *)v11->_bottomConstraint setActive:1];
    [(HKLegendView *)v11 setEdgeInsets:top, left, bottom, right];
    [(HKLegendView *)v11 setUserInteractionEnabled:0];
    v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
    extensionViews = v11->_extensionViews;
    v11->_extensionViews = v36;

    lollipopColor = v11->_lollipopColor;
    v11->_lollipopColor = 0;

    v11->_opaqueBackground = v4;
    if (v4)
    {
      [(HKLegendView *)v11 setOpaque:1];
      v39 = [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
      [(HKLegendView *)v11 setBackgroundColor:v39];
    }

    else
    {
      [(HKLegendView *)v11 setOpaque:0];
    }

    v40 = objc_alloc_init(MEMORY[0x1E69DD250]);
    topDividerView = v11->_topDividerView;
    v11->_topDividerView = v40;

    [(UIView *)v11->_topDividerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HKLegendView *)v11 addSubview:v11->_topDividerView];
    v42 = [(UIView *)v11->_topDividerView topAnchor];
    v43 = [(HKLegendView *)v11 topAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    [v44 setActive:1];

    v45 = [(UIView *)v11->_topDividerView heightAnchor];
    v46 = [v45 constraintEqualToConstant:HKUIOnePixel()];
    [v46 setActive:1];

    v47 = [(UIView *)v11->_topDividerView leftAnchor];
    v48 = [(HKLegendView *)v11 leftAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];
    [v49 setActive:1];

    v50 = [(UIView *)v11->_topDividerView rightAnchor];
    v51 = [(HKLegendView *)v11 rightAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];
    [v52 setActive:1];

    [(UIView *)v11->_topDividerView setHidden:1];
  }

  return v11;
}

- (void)setLeftEntries:(id)a3 rightEntries:(id)a4
{
  v10 = a3;
  v7 = a4;
  v8 = [v10 count];
  if (v8 == -[NSArray count](self->_leftEntries, "count") && (v9 = [v7 count], v9 == -[NSArray count](self->_rightEntries, "count")))
  {
    [(HKLegendView *)self _updateLegendLeftEntries:v10 rightEntries:v7];
  }

  else
  {
    objc_storeStrong(&self->_leftEntries, a3);
    objc_storeStrong(&self->_rightEntries, a4);
    [(HKLegendView *)self _rebuildStackStructure];
  }
}

- (void)_rebuildStackStructure
{
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = [(UIStackView *)self->_mainStack arrangedSubviews];
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        [(UIStackView *)self->_mainStack removeArrangedSubview:v8];
        [v8 removeFromSuperview];
      }

      v5 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_leftEntryViews removeAllObjects];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = self->_leftEntries;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [[_HKLegendEntryView alloc] initWithLegendEntry:*(*(&v29 + 1) + 8 * j)];
        [(NSMutableArray *)self->_leftEntryViews addObject:v14];
        [(UIStackView *)self->_mainStack addArrangedSubview:v14];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v11);
  }

  v15 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 1.0, 1.0}];
  LODWORD(v16) = 1132068864;
  [v15 setContentHuggingPriority:0 forAxis:v16];
  [(UIStackView *)self->_mainStack addArrangedSubview:v15];
  [(NSMutableArray *)self->_rightEntryViews removeAllObjects];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = self->_rightEntries;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * k);
        v23 = [_HKLegendEntryView alloc];
        v24 = [(_HKLegendEntryView *)v23 initWithLegendEntry:v22, v25];
        [(NSMutableArray *)self->_rightEntryViews addObject:v24];
        [(UIStackView *)self->_mainStack addArrangedSubview:v24];
      }

      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v19);
  }
}

- (void)_updateLegendLeftEntries:(id)a3 rightEntries:(id)a4
{
  v13 = a3;
  v6 = a4;
  if ([v13 count])
  {
    v7 = 0;
    do
    {
      v8 = [v13 objectAtIndexedSubscript:v7];
      v9 = [(NSMutableArray *)self->_leftEntryViews objectAtIndexedSubscript:v7];
      [v9 setLegendEntry:v8];

      ++v7;
    }

    while (v7 < [v13 count]);
  }

  if ([v6 count])
  {
    v10 = 0;
    do
    {
      v11 = [v6 objectAtIndexedSubscript:v10];
      v12 = [(NSMutableArray *)self->_rightEntryViews objectAtIndexedSubscript:v10];
      [v12 setLegendEntry:v11];

      ++v10;
    }

    while (v10 < [v6 count]);
  }
}

- (void)setTopBorderColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_topBorderColor isEqual:?]& 1) == 0)
  {
    [(UIView *)self->_topDividerView setBackgroundColor:v5];
    objc_storeStrong(&self->_topBorderColor, a3);
    [(UIView *)self->_topDividerView setHidden:v5 == 0];
  }
}

- (void)setEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_edgeInsets.top), vceqq_f64(v4, *&self->_edgeInsets.bottom)))) & 1) == 0)
  {
    self->_edgeInsets = a3;
    top = a3.top;
    bottom = a3.bottom;
    right = a3.right;
    [(NSLayoutConstraint *)self->_leadingConstraint setConstant:a3.left];
    [(NSLayoutConstraint *)self->_trailingConstraint setConstant:-right];
    [(NSLayoutConstraint *)self->_topConstraint setConstant:top];
    bottomConstraint = self->_bottomConstraint;

    [(NSLayoutConstraint *)bottomConstraint setConstant:-bottom];
  }
}

+ (UIEdgeInsets)modifiedInsetsForOpaqueLegend:(BOOL)a3 originalInsets:(UIEdgeInsets)a4
{
  v4 = 0.0;
  if (!a3)
  {
    v4 = 4.0;
  }

  v5 = v4 + a4.left;
  v6 = a4.right + 4.0;
  v7 = 8.0;
  if (!a3)
  {
    v7 = 4.0;
  }

  v8 = v7 + a4.top;
  v9 = v4 + a4.bottom;
  [HKLegendView horizontalOffsetWithOpaque:?];
  v11 = v5 - v10;
  v12 = v8;
  v13 = v9;
  v14 = v6;
  result.right = v14;
  result.bottom = v13;
  result.left = v11;
  result.top = v12;
  return result;
}

- (void)hideLollipops
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(HKLegendView *)self extensionViews];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setHidden:1];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_rebuildExtensionsWithStickLocations:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 count];
  v6 = [(HKLegendView *)self extensionViews];
  v7 = [v6 count];

  if (v5 != v7)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = [(HKLegendView *)self extensionViews];
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v31 + 1) + 8 * i) removeFromSuperview];
        }

        v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v10);
    }

    v13 = [(HKLegendView *)self extensionViews];
    [v13 removeAllObjects];

    if ([v4 count])
    {
      v14 = 0;
      v15 = *MEMORY[0x1E695F058];
      v16 = *(MEMORY[0x1E695F058] + 8);
      v17 = *(MEMORY[0x1E695F058] + 16);
      v18 = *(MEMORY[0x1E695F058] + 24);
      do
      {
        v19 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v15, v16, v17, v18}];
        v20 = [(HKLegendView *)self lollipopColor];
        if (v20)
        {
          [v19 setBackgroundColor:v20];
        }

        else
        {
          v21 = [MEMORY[0x1E69DC888] hk_chartLollipopStickColor];
          [v19 setBackgroundColor:v21];
        }

        v22 = [v19 layer];
        [v22 setZPosition:1.0];

        [(HKLegendView *)self addSubview:v19];
        v23 = [(HKLegendView *)self extensionViews];
        [v23 addObject:v19];

        ++v14;
      }

      while (v14 < [v4 count]);
    }
  }

  if ([v4 count])
  {
    v24 = 0;
    do
    {
      v25 = [v4 objectAtIndexedSubscript:v24];
      [v25 doubleValue];
      v27 = HKUIFloorToScreenScale(v26);

      [(HKLegendView *)self frame];
      Height = CGRectGetHeight(v37);
      v29 = [(HKLegendView *)self extensionViews];
      v30 = [v29 objectAtIndexedSubscript:v24];

      [v30 setFrame:{v27 + -1.0, 0.0, 2.0, Height}];
      [v30 setHidden:0];

      ++v24;
    }

    while (v24 < [v4 count]);
  }
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end