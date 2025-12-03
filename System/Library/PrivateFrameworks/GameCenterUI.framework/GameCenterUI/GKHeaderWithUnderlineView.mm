@interface GKHeaderWithUnderlineView
+ (id)macMetrics;
+ (id)padMetrics;
+ (id)phoneMetrics;
+ (void)initialize;
- (GKHeaderWithUnderlineView)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)establishConstraints;
- (void)pinningStateChangedTo:(BOOL)to;
- (void)setIsPinned:(BOOL)pinned;
- (void)setUnderlineHasRightMargin:(BOOL)margin;
- (void)updateConstraints;
- (void)updateGutterConstraints;
@end

@implementation GKHeaderWithUnderlineView

+ (void)initialize
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v7[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [v2 appearanceWhenContainedInInstancesOfClasses:v3];

  phoneMetrics = [objc_opt_class() phoneMetrics];
  v6 = [phoneMetrics mutableCopy];

  [v4 setMetrics:v6];
}

+ (id)macMetrics
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v5 = [v2 numberWithDouble:1.0 / v4];

  v8[0] = @"gutter";
  v8[1] = @"rightGutter";
  v9[0] = &unk_286189150;
  v9[1] = &unk_286189168;
  v8[2] = @"labelSpacing";
  v8[3] = @"hairline";
  v9[2] = &unk_286189180;
  v9[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

+ (id)padMetrics
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v5 = [v2 numberWithDouble:1.0 / v4];

  v8[0] = @"gutter";
  v8[1] = @"rightGutter";
  v9[0] = &unk_286189198;
  v9[1] = &unk_286189168;
  v8[2] = @"labelSpacing";
  v8[3] = @"hairline";
  v9[2] = &unk_286189180;
  v9[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

+ (id)phoneMetrics
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v5 = [v2 numberWithDouble:1.0 / v4];

  v8[0] = @"gutter";
  v8[1] = @"rightGutter";
  v9[0] = &unk_286189168;
  v9[1] = &unk_286189168;
  v8[2] = @"labelSpacing";
  v8[3] = @"hairline";
  v9[2] = &unk_286189180;
  v9[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

- (GKHeaderWithUnderlineView)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = GKHeaderWithUnderlineView;
  v3 = [(GKHeaderWithUnderlineView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(GKHeaderWithUnderlineView *)v3 setOpaque:0];
    mEMORY[0x277D0C868] = [MEMORY[0x277D0C868] sharedPalette];
    floatingHeaderViewBackgroundColor = [mEMORY[0x277D0C868] floatingHeaderViewBackgroundColor];
    [(GKHeaderWithUnderlineView *)v4 setBackgroundColor:floatingHeaderViewBackgroundColor];

    if ([(GKHeaderWithUnderlineView *)v4 drawsUnderline])
    {
      v7 = objc_alloc_init(GKHairlineView);
      underlineView = v4->_underlineView;
      v4->_underlineView = &v7->super;

      [(UIView *)v4->_underlineView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(GKHeaderWithUnderlineView *)v4 addSubview:v4->_underlineView];
    }

    v9 = objc_alloc_init(MEMORY[0x277D755E8]);
    shadowView = v4->_shadowView;
    v4->_shadowView = v9;

    quaternaryLabelColor = [MEMORY[0x277D75348] quaternaryLabelColor];
    [(UIImageView *)v4->_shadowView setBackgroundColor:quaternaryLabelColor];

    [(UIImageView *)v4->_shadowView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_shadowView setOpaque:0];
    [(UIImageView *)v4->_shadowView setAlpha:0.0];
    [(GKHeaderWithUnderlineView *)v4 addSubview:v4->_shadowView];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1 && (*MEMORY[0x277D0C258] != 1 || (*MEMORY[0x277D0C8F0] & 1) != 0))
    {
      currentDevice = [objc_opt_class() padMetrics];
      v14 = [currentDevice mutableCopy];
      v15 = 1;
    }

    else
    {
      userInterfaceIdiom = [objc_opt_class() phoneMetrics];
      v14 = [userInterfaceIdiom mutableCopy];
      v15 = 0;
    }

    objc_storeStrong(&v4->_metrics, v14);
    if (!v15)
    {
      currentDevice = userInterfaceIdiom;
    }

    _gkStandardBackdropView = [MEMORY[0x277D75D18] _gkStandardBackdropView];
    pinnedBackdropView = v4->_pinnedBackdropView;
    v4->_pinnedBackdropView = _gkStandardBackdropView;

    [(UIView *)v4->_pinnedBackdropView setAlpha:0.0];
    [(GKHeaderWithUnderlineView *)v4 insertSubview:v4->_pinnedBackdropView atIndex:0];
  }

  return v4;
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = GKHeaderWithUnderlineView;
  [(GKHeaderWithUnderlineView *)&v3 updateConstraints];
  if (!self->_didSetupConstraints)
  {
    [(GKHeaderWithUnderlineView *)self establishConstraints];
    self->_didSetupConstraints = 1;
  }
}

- (void)establishConstraints
{
  if ([(GKHeaderWithUnderlineView *)self drawsUnderline])
  {
    v3 = MEMORY[0x277CCAAD0];
    metrics = self->_metrics;
    v5 = _NSDictionaryOfVariableBindings(&cfstr_Underlineview.isa, self->_underlineView, 0);
    v6 = [v3 constraintsWithVisualFormat:@"V:[_underlineView(hairline)]|" options:0 metrics:metrics views:v5];
    [(GKHeaderWithUnderlineView *)self addConstraints:v6];

    [(GKHeaderWithUnderlineView *)self updateGutterConstraints];
  }

  v7 = MEMORY[0x277CCAAD0];
  v8 = self->_metrics;
  v9 = _NSDictionaryOfVariableBindings(&cfstr_Shadowview_0.isa, self->_shadowView, 0);
  v10 = [v7 constraintsWithVisualFormat:@"|[_shadowView]|" options:0 metrics:v8 views:v9];
  [(GKHeaderWithUnderlineView *)self addConstraints:v10];

  v11 = MEMORY[0x277CCAAD0];
  v12 = self->_metrics;
  v13 = _NSDictionaryOfVariableBindings(&cfstr_Shadowview_0.isa, self->_shadowView, 0);
  v14 = [v11 constraintsWithVisualFormat:@"V:[_shadowView(hairline)]" options:0 metrics:v12 views:v13];
  [(GKHeaderWithUnderlineView *)self addConstraints:v14];

  v15 = MEMORY[0x277CCAAD0];
  shadowView = self->_shadowView;
  v19 = [(NSMutableDictionary *)self->_metrics objectForKeyedSubscript:@"hairline"];
  [v19 floatValue];
  v18 = [v15 constraintWithItem:shadowView attribute:3 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:-v17];
  [(GKHeaderWithUnderlineView *)self addConstraint:v18];
}

- (void)setUnderlineHasRightMargin:(BOOL)margin
{
  if (self->_underlineHasRightMargin != margin)
  {
    self->_underlineHasRightMargin = margin;
    [(GKHeaderWithUnderlineView *)self updateGutterConstraints];
  }
}

- (void)updateGutterConstraints
{
  if ([(GKHeaderWithUnderlineView *)self drawsUnderline])
  {
    if (self->_gutterConstraints)
    {
      [(GKHeaderWithUnderlineView *)self removeConstraints:?];
    }

    underlineHasRightMargin = self->_underlineHasRightMargin;
    v4 = MEMORY[0x277CCAAD0];
    metrics = self->_metrics;
    v6 = _NSDictionaryOfVariableBindings(&cfstr_Underlineview.isa, self->_underlineView, 0);
    if (underlineHasRightMargin)
    {
      v7 = [v4 constraintsWithVisualFormat:@"|-(gutter)-[_underlineView]-(gutter)-|" options:0 metrics:metrics views:v6];
      [(GKHeaderWithUnderlineView *)self setGutterConstraints:v7];

      firstObject = [(NSArray *)self->_gutterConstraints firstObject];
      lastObject = [(NSArray *)self->_gutterConstraints lastObject];
      [(UICollectionReusableView *)self _gkSetLeadingGuideConstraint:firstObject trailingGuideConstraint:lastObject];
    }

    else
    {
      v10 = [v4 constraintsWithVisualFormat:@"|-(gutter)-[_underlineView]|" options:0 metrics:metrics views:v6];
      [(GKHeaderWithUnderlineView *)self setGutterConstraints:v10];

      firstObject = [(NSArray *)self->_gutterConstraints firstObject];
      [(UICollectionReusableView *)self _gkSetLeadingGuideConstraint:firstObject trailingGuideConstraint:0];
    }

    [(GKHeaderWithUnderlineView *)self leadingMargin];
    v12 = v11;
    [(GKHeaderWithUnderlineView *)self trailingMargin];
    if (v12 > 0.0 || v13 > 0.0)
    {
      [MEMORY[0x277D75298] _gkAdjustConstraintMargins:self->_gutterConstraints leading:v12 trailing:v13];
    }

    gutterConstraints = self->_gutterConstraints;

    [(GKHeaderWithUnderlineView *)self addConstraints:gutterConstraints];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v37.receiver = self;
  v37.super_class = GKHeaderWithUnderlineView;
  [(GKHeaderWithUnderlineView *)&v37 applyLayoutAttributes:attributesCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = attributesCopy;
    -[GKHeaderWithUnderlineView setIsPinned:](self, "setIsPinned:", [v5 isPinned]);
    if (self->_isPinned)
    {
      [v5 frame];
      v7 = v6;
      superview = [(GKHeaderWithUnderlineView *)self superview];
      objc_opt_class();
      v9 = 0.0;
      if (objc_opt_isKindOfClass())
      {
        [superview bounds];
        v11 = v10;
        [superview contentInset];
        v13 = v11 + v12;
        v14 = 0.0;
        if (v7 < v13)
        {
          v14 = ((v13 - v7) & ~((v13 - v7) >> 31));
        }

        collectionViewLayout = [superview collectionViewLayout];
        [collectionViewLayout laidOutContentSize];
        v17 = v16;
        [superview contentSize];
        v19 = v17 - v18;
        if (v18 <= v17)
        {
          v19 = -0.0;
        }

        v9 = v14 + v19;
      }

      [(GKHeaderWithUnderlineView *)self bounds];
      v21 = v20;
      v23 = v22;
      [(UIView *)self->_pinnedBackdropView frame];
      v25 = v24;
      v27 = v26;
      [(UIView *)self->_pinnedBackdropView frame];
      v39.origin.x = v28;
      v39.origin.y = v29;
      v39.size.width = v30;
      v39.size.height = v31;
      v38.origin.x = v25;
      v38.origin.y = v9 + v21;
      v38.size.width = v27;
      v38.size.height = v23 - v9;
      if (!CGRectEqualToRect(v38, v39))
      {
        [(UIView *)self->_pinnedBackdropView setFrame:v25, v9 + v21, v27, v23 - v9];
      }
    }

    if ([(GKHeaderWithUnderlineView *)self drawsUnderline])
    {
      [v5 leadingMargin];
      v33 = v32;
      [v5 trailingMargin];
      v35 = v34;
      [(GKHeaderWithUnderlineView *)self setLeadingMargin:v33];
      [(GKHeaderWithUnderlineView *)self setTrailingMargin:v35];
      gutterConstraints = [(GKHeaderWithUnderlineView *)self gutterConstraints];
      if (gutterConstraints)
      {
        [MEMORY[0x277D75298] _gkAdjustConstraintMargins:gutterConstraints leading:v33 trailing:v35];
      }
    }
  }
}

- (void)setIsPinned:(BOOL)pinned
{
  if (self->_isPinned != pinned)
  {
    v19 = v3;
    v20 = v4;
    pinnedCopy = pinned;
    self->_isPinned = pinned;
    if (!pinned)
    {
      goto LABEL_16;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_16;
    }

    selfCopy = self;
    v8 = [MEMORY[0x277D75D28] viewControllerForView:selfCopy];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      do
      {
        v10 = selfCopy;
        selfCopy = [(GKHeaderWithUnderlineView *)selfCopy superview];

        v11 = [MEMORY[0x277D75D28] viewControllerForView:selfCopy];
        if (v11)
        {
          v12 = 1;
        }

        else
        {
          v12 = selfCopy == 0;
        }
      }

      while (!v12);
      v9 = v11;
      if (!v11)
      {
        goto LABEL_15;
      }
    }

    navigationController = [v9 navigationController];
    if (navigationController)
    {
      v14 = self->_pinnedBackdropView;
      navigationBar = [navigationController navigationBar];
      _backdropViewLayerGroupName = [navigationBar _backdropViewLayerGroupName];
      [(UIView *)v14 setGroupName:_backdropViewLayerGroupName];
    }

LABEL_15:
LABEL_16:
    [(UIView *)self->_pinnedBackdropView setAlpha:pinnedCopy];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __41__GKHeaderWithUnderlineView_setIsPinned___block_invoke;
    v17[3] = &unk_27966A890;
    v17[4] = self;
    v18 = pinnedCopy;
    [MEMORY[0x277D75D18] animateWithDuration:v17 animations:0.3];
  }
}

- (void)pinningStateChangedTo:(BOOL)to
{
  toCopy = to;
  toCopy2 = to;
  [(UIImageView *)self->_shadowView setAlpha:to];
  [(UIView *)self->_underlineView setAlpha:!toCopy];
  [(UIView *)self->_pinnedBackdropView setAlpha:toCopy2];
  mEMORY[0x277D0C868] = [MEMORY[0x277D0C868] sharedPalette];
  v8 = mEMORY[0x277D0C868];
  if (toCopy)
  {
    [mEMORY[0x277D0C868] pinnedHeaderViewBackgroundColor];
  }

  else
  {
    [mEMORY[0x277D0C868] floatingHeaderViewBackgroundColor];
  }
  v7 = ;
  [(GKHeaderWithUnderlineView *)self setBackgroundColor:v7];
}

@end