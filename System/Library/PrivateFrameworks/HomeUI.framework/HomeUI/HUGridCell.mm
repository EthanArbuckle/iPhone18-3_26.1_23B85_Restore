@interface HUGridCell
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (HUGridCell)initWithCoder:(id)coder;
- (HUGridCell)initWithFrame:(CGRect)frame;
- (UIView)gridForegroundContentView;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (unint64_t)backgroundState;
- (unint64_t)iconDisplayStyle;
- (void)_removeDashedBorderLayer;
- (void)_setupCommonCellAppearance;
- (void)_updateForegroundStyle;
- (void)_updateTintColorSettingsForSubviewsOfView:(id)view desiredDisplayStyle:(unint64_t)style;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutOptionsDidChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setCellContentsHidden:(BOOL)hidden;
- (void)setContentEffect:(id)effect;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setLayoutOptions:(id)options;
- (void)setPointerInteractionEnabled:(BOOL)enabled;
- (void)setRearranging:(BOOL)rearranging;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUGridCell

- (HUGridCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HUGridCell;
  v3 = [(HUGridCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(HUGridCell *)v3 _setupCommonCellAppearance];
  }

  return v4;
}

- (HUGridCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HUGridCell;
  v3 = [(HUGridCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUGridCell *)v3 _setupCommonCellAppearance];
  }

  return v4;
}

- (void)setLayoutOptions:(id)options
{
  optionsCopy = options;
  if (([optionsCopy isEqual:self->_layoutOptions] & 1) == 0)
  {
    objc_storeStrong(&self->_layoutOptions, options);
    [(HUGridCell *)self layoutOptionsDidChange];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v7.receiver = self;
  v7.super_class = HUGridCell;
  [(HUGridCell *)&v7 applyLayoutAttributes:attributesCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    backgroundEffectViewGrouper = [attributesCopy backgroundEffectViewGrouper];
    gridBackgroundView = [(HUGridCell *)self gridBackgroundView];
    [gridBackgroundView setBackgroundEffectViewGrouper:backgroundEffectViewGrouper];
  }
}

- (void)_setupCommonCellAppearance
{
  [(HUGridCell *)self setPrimaryState:0];
  v3 = objc_alloc_init(HUGridCellBackgroundView);
  [(HUGridCell *)self setGridBackgroundView:v3];

  contentView = [(HUGridCell *)self contentView];
  gridBackgroundView = [(HUGridCell *)self gridBackgroundView];
  [contentView addSubview:gridBackgroundView];

  v6 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
  [(HUGridCell *)self setGridForegroundView:v6];

  contentView2 = [(HUGridCell *)self contentView];
  gridForegroundView = [(HUGridCell *)self gridForegroundView];
  [contentView2 addSubview:gridForegroundView];
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
    gridBackgroundView = [(HUGridCell *)self gridBackgroundView];
    [gridBackgroundView setFrame:{v4, v6, v8, v10}];
  }

  [(HUGridCell *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  gridForegroundView = [(HUGridCell *)self gridForegroundView];
  [gridForegroundView setFrame:{v13, v15, v17, v19}];
}

- (unint64_t)backgroundState
{
  gridBackgroundView = [(HUGridCell *)self gridBackgroundView];
  backgroundState = [gridBackgroundView backgroundState];

  return backgroundState;
}

- (UIView)gridForegroundContentView
{
  gridForegroundView = [(HUGridCell *)self gridForegroundView];
  contentView = [gridForegroundView contentView];

  return contentView;
}

- (void)setContentEffect:(id)effect
{
  effectCopy = effect;
  gridForegroundView = self->_contentEffect;
  v7 = effectCopy;
  v10 = v7;
  if (gridForegroundView == v7)
  {

LABEL_8:
    v9 = v10;
    goto LABEL_9;
  }

  if (!gridForegroundView)
  {

    goto LABEL_7;
  }

  v8 = [(UIVisualEffect *)gridForegroundView isEqual:v7];

  v9 = v10;
  if ((v8 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_contentEffect, effect);
    gridForegroundView = [(HUGridCell *)self gridForegroundView];
    [(UIVisualEffect *)gridForegroundView setEffect:v10];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)setRearranging:(BOOL)rearranging
{
  if (self->_rearranging != rearranging)
  {
    rearrangingCopy = rearranging;
    self->_rearranging = rearranging;
    layer = [(HUGridCell *)self layer];
    [(HUGridCell *)self frame];
    [HUGraphicsUtilities legacy_setRearrangingAnimation:rearrangingCopy layer:layer frame:?];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = HUGridCell;
  [(HUGridCell *)&v6 setHighlighted:?];
  gridBackgroundView = [(HUGridCell *)self gridBackgroundView];
  [gridBackgroundView setPressed:highlightedCopy];
}

- (void)setPointerInteractionEnabled:(BOOL)enabled
{
  if (self->_pointerInteractionEnabled != enabled)
  {
    self->_pointerInteractionEnabled = enabled;
    if (enabled)
    {
      v4 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:self];
      [(HUGridCell *)self setPointerInteraction:v4];

      pointerInteraction = [(HUGridCell *)self pointerInteraction];
      [(HUGridCell *)self addInteraction:pointerInteraction];
    }

    else
    {
      pointerInteraction2 = [(HUGridCell *)self pointerInteraction];
      [(HUGridCell *)self removeInteraction:pointerInteraction2];

      [(HUGridCell *)self setPointerInteraction:0];
    }
  }
}

- (void)layoutOptionsDidChange
{
  layoutOptions = [(HUGridCell *)self layoutOptions];
  [layoutOptions cellCornerRadius];
  v5 = v4;
  gridBackgroundView = [(HUGridCell *)self gridBackgroundView];
  [gridBackgroundView setCornerRadius:v5];

  layoutOptions2 = [(HUGridCell *)self layoutOptions];
  backgroundDisplayOptions = [layoutOptions2 backgroundDisplayOptions];
  gridBackgroundView2 = [(HUGridCell *)self gridBackgroundView];
  [gridBackgroundView2 setDisplayOptions:backgroundDisplayOptions];

  layoutOptions3 = [(HUGridCell *)self layoutOptions];
  [layoutOptions3 cellCornerRadius];
  v12 = v11;
  layer = [(HUGridCell *)self layer];
  [layer setCornerRadius:v12];

  [(HUGridCell *)self _updateForegroundStyle];
}

- (void)_removeDashedBorderLayer
{
  dashedBorderLayer = [(HUGridCell *)self dashedBorderLayer];

  if (dashedBorderLayer)
  {
    dashedBorderLayer2 = [(HUGridCell *)self dashedBorderLayer];
    [dashedBorderLayer2 removeFromSuperlayer];

    [(HUGridCell *)self setDashedBorderLayer:0];
  }
}

- (void)_updateForegroundStyle
{
  iconDisplayStyle = [(HUGridCell *)self iconDisplayStyle];
  if (iconDisplayStyle == 3)
  {
    v4 = 2;
  }

  else
  {
    v4 = iconDisplayStyle;
  }

  if (v4 == 2)
  {
    layoutOptions = [(HUGridCell *)self layoutOptions];
    vibrancyEffect = [layoutOptions vibrancyEffect];

    layoutOptions2 = [(HUGridCell *)self layoutOptions];
    secondaryVibrancyEffect = [layoutOptions2 secondaryVibrancyEffect];
    if (secondaryVibrancyEffect)
    {
      v8 = secondaryVibrancyEffect;
    }

    else
    {
      v8 = vibrancyEffect;
    }

    v9 = v8;

    layoutOptions3 = [(HUGridCell *)self layoutOptions];
    [layoutOptions3 secondaryContentDimmingFactor];
    v12 = v11;
  }

  else
  {
    v9 = 0;
    vibrancyEffect = 0;
    v12 = 1.0;
  }

  gridForegroundContentView = [(HUGridCell *)self gridForegroundContentView];
  [(HUGridCell *)self _updateTintColorSettingsForSubviewsOfView:gridForegroundContentView desiredDisplayStyle:v4];

  contentEffect = [(HUGridCell *)self contentEffect];
  if (vibrancyEffect != contentEffect)
  {
    goto LABEL_13;
  }

  contentEffect2 = [(HUGridCell *)self contentEffect];
  v16 = contentEffect2;
  if (v9 != contentEffect2)
  {

LABEL_13:
LABEL_14:
    [(HUGridCell *)self setContentEffect:vibrancyEffect];
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
    layoutOptions = [(HUGridCell *)self layoutOptions];
    contentColorStyle = [layoutOptions contentColorStyle];

    v6 = 3;
    if (contentColorStyle != 1)
    {
      v6 = 1;
    }

    if (contentColorStyle)
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

- (void)updateUIWithAnimation:(BOOL)animation
{
  v78[1] = *MEMORY[0x277D85DE8];
  item = [(HUGridCell *)self item];
  latestResults = [item latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14068]];
  -[HUGridCell setPrimaryState:](self, "setPrimaryState:", [v6 integerValue]);

  item2 = [(HUGridCell *)self item];
  latestResults2 = [item2 latestResults];
  v9 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D140C8]];

  v11 = v9 && (v10 = -[HUGridCell primaryState](self, "primaryState"), v10 != [v9 integerValue]) || -[HUGridCell primaryState](self, "primaryState") == 2;
  gridBackgroundView = [(HUGridCell *)self gridBackgroundView];
  [gridBackgroundView setBackgroundState:v11];

  [(HUGridCell *)self _updateForegroundStyle];
  layoutOptions = [(HUGridCell *)self layoutOptions];
  onStateBorderStyle = [layoutOptions onStateBorderStyle];

  switch(onStateBorderStyle)
  {
    case 0:
      goto LABEL_16;
    case 1:
      [(HUGridCell *)self _removeDashedBorderLayer];
      systemLightGrayColor = [MEMORY[0x277D75348] systemLightGrayColor];
      cGColor = [systemLightGrayColor CGColor];
      gridBackgroundView2 = [(HUGridCell *)self gridBackgroundView];
      layer = [gridBackgroundView2 layer];
      [layer setBorderColor:cGColor];

      if ([(HUGridCell *)self primaryState]== 2)
      {
        v77 = 1.0;
      }

      else
      {
        v77 = 0.0;
      }

      gridBackgroundView3 = [(HUGridCell *)self gridBackgroundView];
      layer2 = [gridBackgroundView3 layer];
      v71 = layer2;
      v72 = v77;
      goto LABEL_22;
    case 2:
      if ([(HUGridCell *)self primaryState]== 2)
      {
        dashedBorderLayer = [(HUGridCell *)self dashedBorderLayer];

        if (!dashedBorderLayer)
        {
          layer3 = [MEMORY[0x277CD9F90] layer];
          [(HUGridCell *)self setDashedBorderLayer:layer3];

          gridBackgroundView4 = [(HUGridCell *)self gridBackgroundView];
          layer4 = [gridBackgroundView4 layer];
          dashedBorderLayer2 = [(HUGridCell *)self dashedBorderLayer];
          [layer4 addSublayer:dashedBorderLayer2];

          v78[0] = &unk_282491898;
          v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:1];
          dashedBorderLayer3 = [(HUGridCell *)self dashedBorderLayer];
          [dashedBorderLayer3 setLineDashPattern:v20];

          dashedBorderLayer4 = [(HUGridCell *)self dashedBorderLayer];
          [dashedBorderLayer4 setLineWidth:2.0];

          dashedBorderLayer5 = [(HUGridCell *)self dashedBorderLayer];
          [dashedBorderLayer5 setFillColor:0];
        }

        dashedBorderLayer6 = [(HUGridCell *)self dashedBorderLayer];
        [dashedBorderLayer6 frame];
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
          dashedBorderLayer7 = [(HUGridCell *)self dashedBorderLayer];
          [dashedBorderLayer7 setFrame:{v39, v41, v43, v45}];

          v47 = MEMORY[0x277D75208];
          dashedBorderLayer8 = [(HUGridCell *)self dashedBorderLayer];
          [dashedBorderLayer8 frame];
          v50 = v49;
          v52 = v51;
          v54 = v53;
          v56 = v55;
          gridBackgroundView5 = [(HUGridCell *)self gridBackgroundView];
          layer5 = [gridBackgroundView5 layer];
          [layer5 cornerRadius];
          v60 = [v47 bezierPathWithRoundedRect:v50 cornerRadius:{v52, v54, v56, v59}];
          cGPath = [v60 CGPath];
          dashedBorderLayer9 = [(HUGridCell *)self dashedBorderLayer];
          [dashedBorderLayer9 setPath:cGPath];
        }

        systemLightMidGrayColor = [MEMORY[0x277D75348] systemLightMidGrayColor];
        cGColor2 = [systemLightMidGrayColor CGColor];

        traitCollection = [(HUGridCell *)self traitCollection];
        userInterfaceStyle = [traitCollection userInterfaceStyle];

        if (userInterfaceStyle == 2)
        {
          systemDarkLightMidGrayColor = [MEMORY[0x277D75348] systemDarkLightMidGrayColor];
          cGColor2 = [systemDarkLightMidGrayColor CGColor];
        }

        dashedBorderLayer10 = [(HUGridCell *)self dashedBorderLayer];
        [dashedBorderLayer10 setStrokeColor:cGColor2];

        goto LABEL_17;
      }

LABEL_16:
      [(HUGridCell *)self _removeDashedBorderLayer];
LABEL_17:
      gridBackgroundView3 = [(HUGridCell *)self gridBackgroundView];
      layer2 = [gridBackgroundView3 layer];
      v71 = layer2;
      v72 = 0.0;
LABEL_22:
      [layer2 setBorderWidth:v72];

      break;
  }
}

- (void)setCellContentsHidden:(BOOL)hidden
{
  if (self->_cellContentsHidden != hidden)
  {
    hiddenCopy = hidden;
    self->_cellContentsHidden = hidden;
    contentView = [(HUGridCell *)self contentView];
    [contentView setHidden:hiddenCopy];
  }
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  regionCopy = region;
  [(HUGridCell *)self pointerRegionMargin];
  if (v7 == 0.0)
  {
    v8 = regionCopy;
  }

  else
  {
    [regionCopy rect];
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
    identifier = [regionCopy identifier];
    v8 = [v25 regionWithRect:identifier identifier:{x, y, width, height}];
  }

  return v8;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self];
  v6 = [MEMORY[0x277D75878] effectWithPreview:v5];
  v7 = MEMORY[0x277D75888];
  [(HUGridCell *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  layoutOptions = [(HUGridCell *)self layoutOptions];
  [layoutOptions cellCornerRadius];
  v18 = [v7 shapeWithRoundedRect:v9 cornerRadius:{v11, v13, v15, v17}];

  v19 = [MEMORY[0x277D75890] styleWithEffect:v6 shape:v18];

  return v19;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v23.receiver = self;
  v23.super_class = HUGridCell;
  if ([(HUGridCell *)&v23 pointInside:eventCopy withEvent:x, y])
  {
    v8 = 1;
  }

  else if ([eventCopy type] != 11 || (-[HUGridCell pointerRegionMargin](self, "pointerRegionMargin"), v9 == 0.0))
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

- (void)_updateTintColorSettingsForSubviewsOfView:(id)view desiredDisplayStyle:(unint64_t)style
{
  v32 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v7 = viewCopy;
  if (style != 2)
  {
    [viewCopy setTintColor:0];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = v7;
  subviews = [v7 subviews];
  v9 = [subviews countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    v12 = 1;
    if (style != 1)
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
          objc_enumerationMutation(subviews);
        }

        v15 = *(*(&v27 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v15 _setTextColorFollowsTintColor:style == 2];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            styleCopy = style;
            v17 = v11;
            selfCopy = self;
            v19 = v13;
            v20 = subviews;
            v21 = v15;
            image = [v21 image];
            v23 = [image imageWithRenderingMode:v25];
            [v21 setImage:v23];

            subviews = v20;
            v13 = v19;
            self = selfCopy;
            v11 = v17;
            style = styleCopy;
            v10 = v26;
          }
        }

        [(HUGridCell *)self _updateTintColorSettingsForSubviewsOfView:v15 desiredDisplayStyle:style];
        ++v14;
      }

      while (v10 != v14);
      v10 = [subviews countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }
}

@end