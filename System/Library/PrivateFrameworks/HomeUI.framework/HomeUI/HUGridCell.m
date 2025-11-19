@interface HUGridCell
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (HUGridCell)initWithCoder:(id)a3;
- (HUGridCell)initWithFrame:(CGRect)a3;
- (UIView)gridForegroundContentView;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (unint64_t)backgroundState;
- (unint64_t)iconDisplayStyle;
- (void)_removeDashedBorderLayer;
- (void)_setupCommonCellAppearance;
- (void)_updateForegroundStyle;
- (void)_updateTintColorSettingsForSubviewsOfView:(id)a3 desiredDisplayStyle:(unint64_t)a4;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutOptionsDidChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setCellContentsHidden:(BOOL)a3;
- (void)setContentEffect:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setLayoutOptions:(id)a3;
- (void)setPointerInteractionEnabled:(BOOL)a3;
- (void)setRearranging:(BOOL)a3;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUGridCell

- (HUGridCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HUGridCell;
  v3 = [(HUGridCell *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(HUGridCell *)v3 _setupCommonCellAppearance];
  }

  return v4;
}

- (HUGridCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HUGridCell;
  v3 = [(HUGridCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUGridCell *)v3 _setupCommonCellAppearance];
  }

  return v4;
}

- (void)setLayoutOptions:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_layoutOptions] & 1) == 0)
  {
    objc_storeStrong(&self->_layoutOptions, a3);
    [(HUGridCell *)self layoutOptionsDidChange];
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HUGridCell;
  [(HUGridCell *)&v7 applyLayoutAttributes:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 backgroundEffectViewGrouper];
    v6 = [(HUGridCell *)self gridBackgroundView];
    [v6 setBackgroundEffectViewGrouper:v5];
  }
}

- (void)_setupCommonCellAppearance
{
  [(HUGridCell *)self setPrimaryState:0];
  v3 = objc_alloc_init(HUGridCellBackgroundView);
  [(HUGridCell *)self setGridBackgroundView:v3];

  v4 = [(HUGridCell *)self contentView];
  v5 = [(HUGridCell *)self gridBackgroundView];
  [v4 addSubview:v5];

  v6 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
  [(HUGridCell *)self setGridForegroundView:v6];

  v8 = [(HUGridCell *)self contentView];
  v7 = [(HUGridCell *)self gridForegroundView];
  [v8 addSubview:v7];
}

- (void)prepareForReuse
{
  [(HUGridCell *)self setCellContentsHidden:0];
  [(HUGridCell *)self setPrimaryState:0];
  [(HUGridCell *)self setRearranging:0];
  v3.receiver = self;
  v3.super_class = HUGridCell;
  [(HUGridCell *)&v3 prepareForReuse];
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = HUGridCell;
  [(HUGridCell *)&v21 layoutSubviews];
  if (![(HUGridCell *)self managesOwnBackgroundViewLayout])
  {
    [(HUGridCell *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(HUGridCell *)self gridBackgroundView];
    [v11 setFrame:{v4, v6, v8, v10}];
  }

  [(HUGridCell *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(HUGridCell *)self gridForegroundView];
  [v20 setFrame:{v13, v15, v17, v19}];
}

- (unint64_t)backgroundState
{
  v2 = [(HUGridCell *)self gridBackgroundView];
  v3 = [v2 backgroundState];

  return v3;
}

- (UIView)gridForegroundContentView
{
  v2 = [(HUGridCell *)self gridForegroundView];
  v3 = [v2 contentView];

  return v3;
}

- (void)setContentEffect:(id)a3
{
  v5 = a3;
  v6 = self->_contentEffect;
  v7 = v5;
  v10 = v7;
  if (v6 == v7)
  {

LABEL_8:
    v9 = v10;
    goto LABEL_9;
  }

  if (!v6)
  {

    goto LABEL_7;
  }

  v8 = [(UIVisualEffect *)v6 isEqual:v7];

  v9 = v10;
  if ((v8 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_contentEffect, a3);
    v6 = [(HUGridCell *)self gridForegroundView];
    [(UIVisualEffect *)v6 setEffect:v10];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)setRearranging:(BOOL)a3
{
  if (self->_rearranging != a3)
  {
    v4 = a3;
    self->_rearranging = a3;
    v6 = [(HUGridCell *)self layer];
    [(HUGridCell *)self frame];
    [HUGraphicsUtilities legacy_setRearrangingAnimation:v4 layer:v6 frame:?];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = HUGridCell;
  [(HUGridCell *)&v6 setHighlighted:?];
  v5 = [(HUGridCell *)self gridBackgroundView];
  [v5 setPressed:v3];
}

- (void)setPointerInteractionEnabled:(BOOL)a3
{
  if (self->_pointerInteractionEnabled != a3)
  {
    self->_pointerInteractionEnabled = a3;
    if (a3)
    {
      v4 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:self];
      [(HUGridCell *)self setPointerInteraction:v4];

      v6 = [(HUGridCell *)self pointerInteraction];
      [(HUGridCell *)self addInteraction:v6];
    }

    else
    {
      v5 = [(HUGridCell *)self pointerInteraction];
      [(HUGridCell *)self removeInteraction:v5];

      [(HUGridCell *)self setPointerInteraction:0];
    }
  }
}

- (void)layoutOptionsDidChange
{
  v3 = [(HUGridCell *)self layoutOptions];
  [v3 cellCornerRadius];
  v5 = v4;
  v6 = [(HUGridCell *)self gridBackgroundView];
  [v6 setCornerRadius:v5];

  v7 = [(HUGridCell *)self layoutOptions];
  v8 = [v7 backgroundDisplayOptions];
  v9 = [(HUGridCell *)self gridBackgroundView];
  [v9 setDisplayOptions:v8];

  v10 = [(HUGridCell *)self layoutOptions];
  [v10 cellCornerRadius];
  v12 = v11;
  v13 = [(HUGridCell *)self layer];
  [v13 setCornerRadius:v12];

  [(HUGridCell *)self _updateForegroundStyle];
}

- (void)_removeDashedBorderLayer
{
  v3 = [(HUGridCell *)self dashedBorderLayer];

  if (v3)
  {
    v4 = [(HUGridCell *)self dashedBorderLayer];
    [v4 removeFromSuperlayer];

    [(HUGridCell *)self setDashedBorderLayer:0];
  }
}

- (void)_updateForegroundStyle
{
  v3 = [(HUGridCell *)self iconDisplayStyle];
  if (v3 == 3)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if (v4 == 2)
  {
    v5 = [(HUGridCell *)self layoutOptions];
    v19 = [v5 vibrancyEffect];

    v6 = [(HUGridCell *)self layoutOptions];
    v7 = [v6 secondaryVibrancyEffect];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v19;
    }

    v9 = v8;

    v10 = [(HUGridCell *)self layoutOptions];
    [v10 secondaryContentDimmingFactor];
    v12 = v11;
  }

  else
  {
    v9 = 0;
    v19 = 0;
    v12 = 1.0;
  }

  v13 = [(HUGridCell *)self gridForegroundContentView];
  [(HUGridCell *)self _updateTintColorSettingsForSubviewsOfView:v13 desiredDisplayStyle:v4];

  v14 = [(HUGridCell *)self contentEffect];
  if (v19 != v14)
  {
    goto LABEL_13;
  }

  v15 = [(HUGridCell *)self contentEffect];
  v16 = v15;
  if (v9 != v15)
  {

LABEL_13:
LABEL_14:
    [(HUGridCell *)self setContentEffect:v19];
    [(HUGridCell *)self setSecondaryContentEffect:v9];
    [(HUGridCell *)self setSecondaryContentDimmingFactor:v12];
    [(HUGridCell *)self displayStyleDidChange];
    goto LABEL_15;
  }

  [(HUGridCell *)self secondaryContentDimmingFactor];
  v18 = v17;

  if (v12 != v18)
  {
    goto LABEL_14;
  }

LABEL_15:
}

- (unint64_t)iconDisplayStyle
{
  result = [(HUGridCell *)self backgroundState];
  if (result != 1)
  {
    v4 = [(HUGridCell *)self layoutOptions];
    v5 = [v4 contentColorStyle];

    v6 = 3;
    if (v5 != 1)
    {
      v6 = 1;
    }

    if (v5)
    {
      return v6;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v78[1] = *MEMORY[0x277D85DE8];
  v4 = [(HUGridCell *)self item];
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D14068]];
  -[HUGridCell setPrimaryState:](self, "setPrimaryState:", [v6 integerValue]);

  v7 = [(HUGridCell *)self item];
  v8 = [v7 latestResults];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D140C8]];

  v11 = v9 && (v10 = -[HUGridCell primaryState](self, "primaryState"), v10 != [v9 integerValue]) || -[HUGridCell primaryState](self, "primaryState") == 2;
  v12 = [(HUGridCell *)self gridBackgroundView];
  [v12 setBackgroundState:v11];

  [(HUGridCell *)self _updateForegroundStyle];
  v13 = [(HUGridCell *)self layoutOptions];
  v14 = [v13 onStateBorderStyle];

  switch(v14)
  {
    case 0:
      goto LABEL_16;
    case 1:
      [(HUGridCell *)self _removeDashedBorderLayer];
      v73 = [MEMORY[0x277D75348] systemLightGrayColor];
      v74 = [v73 CGColor];
      v75 = [(HUGridCell *)self gridBackgroundView];
      v76 = [v75 layer];
      [v76 setBorderColor:v74];

      if ([(HUGridCell *)self primaryState]== 2)
      {
        v77 = 1.0;
      }

      else
      {
        v77 = 0.0;
      }

      v69 = [(HUGridCell *)self gridBackgroundView];
      v70 = [v69 layer];
      v71 = v70;
      v72 = v77;
      goto LABEL_22;
    case 2:
      if ([(HUGridCell *)self primaryState]== 2)
      {
        v15 = [(HUGridCell *)self dashedBorderLayer];

        if (!v15)
        {
          v16 = [MEMORY[0x277CD9F90] layer];
          [(HUGridCell *)self setDashedBorderLayer:v16];

          v17 = [(HUGridCell *)self gridBackgroundView];
          v18 = [v17 layer];
          v19 = [(HUGridCell *)self dashedBorderLayer];
          [v18 addSublayer:v19];

          v78[0] = &unk_282491898;
          v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:1];
          v21 = [(HUGridCell *)self dashedBorderLayer];
          [v21 setLineDashPattern:v20];

          v22 = [(HUGridCell *)self dashedBorderLayer];
          [v22 setLineWidth:2.0];

          v23 = [(HUGridCell *)self dashedBorderLayer];
          [v23 setFillColor:0];
        }

        v24 = [(HUGridCell *)self dashedBorderLayer];
        [v24 frame];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;
        [(HUGridCell *)self bounds];
        v80.origin.x = v33;
        v80.origin.y = v34;
        v80.size.width = v35;
        v80.size.height = v36;
        v79.origin.x = v26;
        v79.origin.y = v28;
        v79.size.width = v30;
        v79.size.height = v32;
        v37 = CGRectEqualToRect(v79, v80);

        if (!v37)
        {
          [(HUGridCell *)self bounds];
          v39 = v38;
          v41 = v40;
          v43 = v42;
          v45 = v44;
          v46 = [(HUGridCell *)self dashedBorderLayer];
          [v46 setFrame:{v39, v41, v43, v45}];

          v47 = MEMORY[0x277D75208];
          v48 = [(HUGridCell *)self dashedBorderLayer];
          [v48 frame];
          v50 = v49;
          v52 = v51;
          v54 = v53;
          v56 = v55;
          v57 = [(HUGridCell *)self gridBackgroundView];
          v58 = [v57 layer];
          [v58 cornerRadius];
          v60 = [v47 bezierPathWithRoundedRect:v50 cornerRadius:{v52, v54, v56, v59}];
          v61 = [v60 CGPath];
          v62 = [(HUGridCell *)self dashedBorderLayer];
          [v62 setPath:v61];
        }

        v63 = [MEMORY[0x277D75348] systemLightMidGrayColor];
        v64 = [v63 CGColor];

        v65 = [(HUGridCell *)self traitCollection];
        v66 = [v65 userInterfaceStyle];

        if (v66 == 2)
        {
          v67 = [MEMORY[0x277D75348] systemDarkLightMidGrayColor];
          v64 = [v67 CGColor];
        }

        v68 = [(HUGridCell *)self dashedBorderLayer];
        [v68 setStrokeColor:v64];

        goto LABEL_17;
      }

LABEL_16:
      [(HUGridCell *)self _removeDashedBorderLayer];
LABEL_17:
      v69 = [(HUGridCell *)self gridBackgroundView];
      v70 = [v69 layer];
      v71 = v70;
      v72 = 0.0;
LABEL_22:
      [v70 setBorderWidth:v72];

      break;
  }
}

- (void)setCellContentsHidden:(BOOL)a3
{
  if (self->_cellContentsHidden != a3)
  {
    v4 = a3;
    self->_cellContentsHidden = a3;
    v5 = [(HUGridCell *)self contentView];
    [v5 setHidden:v4];
  }
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a5;
  [(HUGridCell *)self pointerRegionMargin];
  if (v7 == 0.0)
  {
    v8 = v6;
  }

  else
  {
    [v6 rect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(HUGridCell *)self pointerRegionMargin];
    v18 = -v17;
    [(HUGridCell *)self pointerRegionMargin];
    v20 = -v19;
    v29.origin.x = v10;
    v29.origin.y = v12;
    v29.size.width = v14;
    v29.size.height = v16;
    v30 = CGRectInset(v29, v18, v20);
    x = v30.origin.x;
    y = v30.origin.y;
    width = v30.size.width;
    height = v30.size.height;
    v25 = MEMORY[0x277D75880];
    v26 = [v6 identifier];
    v8 = [v25 regionWithRect:v26 identifier:{x, y, width, height}];
  }

  return v8;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self];
  v6 = [MEMORY[0x277D75878] effectWithPreview:v5];
  v7 = MEMORY[0x277D75888];
  [(HUGridCell *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(HUGridCell *)self layoutOptions];
  [v16 cellCornerRadius];
  v18 = [v7 shapeWithRoundedRect:v9 cornerRadius:{v11, v13, v15, v17}];

  v19 = [MEMORY[0x277D75890] styleWithEffect:v6 shape:v18];

  return v19;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = HUGridCell;
  if ([(HUGridCell *)&v23 pointInside:v7 withEvent:x, y])
  {
    v8 = 1;
  }

  else if ([v7 type] != 11 || (-[HUGridCell pointerRegionMargin](self, "pointerRegionMargin"), v9 == 0.0))
  {
    v8 = 0;
  }

  else
  {
    [(HUGridCell *)self bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(HUGridCell *)self pointerRegionMargin];
    v19 = -v18;
    [(HUGridCell *)self pointerRegionMargin];
    v21 = -v20;
    v25.origin.x = v11;
    v25.origin.y = v13;
    v25.size.width = v15;
    v25.size.height = v17;
    v26 = CGRectInset(v25, v19, v21);
    v24.x = x;
    v24.y = y;
    v8 = CGRectContainsPoint(v26, v24);
  }

  return v8;
}

- (void)_updateTintColorSettingsForSubviewsOfView:(id)a3 desiredDisplayStyle:(unint64_t)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (a4 != 2)
  {
    [v6 setTintColor:0];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = v7;
  v8 = [v7 subviews];
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    v12 = 1;
    if (a4 != 1)
    {
      v12 = 2;
    }

    v25 = v12;
    v13 = 0x277D75000uLL;
    do
    {
      v14 = 0;
      v26 = v10;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v27 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v15 _setTextColorFollowsTintColor:a4 == 2];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = a4;
            v17 = v11;
            v18 = self;
            v19 = v13;
            v20 = v8;
            v21 = v15;
            v22 = [v21 image];
            v23 = [v22 imageWithRenderingMode:v25];
            [v21 setImage:v23];

            v8 = v20;
            v13 = v19;
            self = v18;
            v11 = v17;
            a4 = v16;
            v10 = v26;
          }
        }

        [(HUGridCell *)self _updateTintColorSettingsForSubviewsOfView:v15 desiredDisplayStyle:a4];
        ++v14;
      }

      while (v10 != v14);
      v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }
}

@end