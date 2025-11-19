@interface GKSectionHeaderView
+ (id)padMetrics;
+ (id)phoneMetrics;
- (CGRect)rightButtonFrame;
- (GKSectionHeaderView)initWithFrame:(CGRect)a3;
- (NSString)rightText;
- (SEL)rightAction;
- (SEL)showAllAction;
- (void)applyLayoutAttributes:(id)a3;
- (void)establishConstraints;
- (void)prepareForReuse;
- (void)rightButtonTouched:(id)a3;
- (void)setItemCountFormatter:(void *)a3;
- (void)setLeftText:(id)a3;
- (void)setRightAction:(SEL)a3;
- (void)setRightText:(id)a3;
- (void)setShowAllAction:(SEL)a3;
- (void)updateGutterConstraints;
- (void)updateLabel;
@end

@implementation GKSectionHeaderView

+ (id)padMetrics
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___GKSectionHeaderView;
  v2 = objc_msgSendSuper2(&v5, sel_padMetrics);
  v3 = [v2 mutableCopy];

  [v3 addEntriesFromDictionary:&unk_286189858];

  return v3;
}

+ (id)phoneMetrics
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___GKSectionHeaderView;
  v2 = objc_msgSendSuper2(&v5, sel_phoneMetrics);
  v3 = [v2 mutableCopy];

  [v3 addEntriesFromDictionary:&unk_286189880];

  return v3;
}

- (GKSectionHeaderView)initWithFrame:(CGRect)a3
{
  v40.receiver = self;
  v40.super_class = GKSectionHeaderView;
  v3 = [(GKHeaderWithUnderlineView *)&v40 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [GKLabel alloc];
    [(GKSectionHeaderView *)v3 bounds];
    v5 = [(GKLabel *)v4 initWithFrame:?];
    leftLabel = v3->_leftLabel;
    v3->_leftLabel = v5;

    v7 = 1;
    v8 = [GKButton buttonWithType:1];
    rightButton = v3->_rightButton;
    v3->_rightButton = v8;

    [(GKLabel *)v3->_leftLabel setBackgroundColor:0];
    [(GKLabel *)v3->_leftLabel setOpaque:0];
    v10 = [MEMORY[0x277D75418] currentDevice];
    v11 = [v10 userInterfaceIdiom];

    if (v11 == 1)
    {
      v7 = *MEMORY[0x277D0C258] & (*MEMORY[0x277D0C8F0] ^ 1);
    }

    [(GKLabel *)v3->_leftLabel setShouldInhibitReplay:v7 & 1];
    v12 = [MEMORY[0x277D0C8B0] textStyle];
    v13 = [v12 sectionHeader];

    [(GKLabel *)v3->_leftLabel applyTextStyle:v13];
    [(GKLabel *)v3->_leftLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v14) = 1148846080;
    [(GKButton *)v3->_rightButton setContentHuggingPriority:1 forAxis:v14];
    LODWORD(v15) = 1132068864;
    [(GKButton *)v3->_rightButton setContentCompressionResistancePriority:1 forAxis:v15];
    [(GKButton *)v3->_rightButton setBackgroundColor:0];
    [(GKButton *)v3->_rightButton setOpaque:0];
    [(GKButton *)v3->_rightButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKButton *)v3->_rightButton setEnabled:0];
    [(GKButton *)v3->_rightButton applyTextStyle:v13];
    [(GKButton *)v3->_rightButton addTarget:v3 action:sel_rightButtonTouched_ forControlEvents:64];
    v16 = objc_alloc_init(MEMORY[0x277D75D18]);
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v16;

    v18 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.200000003];
    [(UIView *)v3->_backgroundView setBackgroundColor:v18];

    [(UIView *)v3->_backgroundView setClipsToBounds:1];
    [(UIView *)v3->_backgroundView setHidden:1];
    v19 = [(UIView *)v3->_backgroundView layer];
    [v19 setMaskedCorners:3];

    v20 = [(UIView *)v3->_backgroundView layer];
    [v20 setCornerRadius:10.0];

    v21 = *MEMORY[0x277CDA138];
    v22 = [(UIView *)v3->_backgroundView layer];
    [v22 setCornerCurve:v21];

    [(UIView *)v3->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKSectionHeaderView *)v3 addSubview:v3->_backgroundView];
    v23 = [(UIView *)v3->_backgroundView bottomAnchor];
    v24 = [(UIView *)v3->_backgroundView superview];
    v25 = [v24 bottomAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];
    [v26 setActive:1];

    v27 = [(UIView *)v3->_backgroundView leftAnchor];
    v28 = [(UIView *)v3->_backgroundView superview];
    v29 = [v28 leftAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    [v30 setActive:1];

    v31 = [(UIView *)v3->_backgroundView rightAnchor];
    v32 = [(UIView *)v3->_backgroundView superview];
    v33 = [v32 rightAnchor];
    v34 = [v31 constraintEqualToAnchor:v33];
    [v34 setActive:1];

    v35 = [(UIView *)v3->_backgroundView heightAnchor];
    v36 = [MEMORY[0x277D75520] defaultMetrics];
    [v36 scaledValueForValue:30.0];
    v37 = [v35 constraintEqualToConstant:?];
    [(GKSectionHeaderView *)v3 setBackgroundViewHeightConstraint:v37];

    v38 = [(GKSectionHeaderView *)v3 backgroundViewHeightConstraint];
    [v38 setActive:1];

    [(GKSectionHeaderView *)v3 addSubview:v3->_leftLabel];
    [(GKSectionHeaderView *)v3 addSubview:v3->_rightButton];
  }

  return v3;
}

- (void)updateGutterConstraints
{
  v21.receiver = self;
  v21.super_class = GKSectionHeaderView;
  [(GKHeaderWithUnderlineView *)&v21 updateGutterConstraints];
  v3 = [(GKHeaderWithUnderlineView *)self metrics];
  v4 = MEMORY[0x277CCAAD0];
  v5 = _NSDictionaryOfVariableBindings(&cfstr_LeftlabelRight.isa, self->_leftLabel, self->_rightButton, 0);
  v6 = [v4 constraintsWithVisualFormat:@"|-(gutter)-[_leftLabel]-(>=labelSpacing)-[_rightButton]-(rightGutter)-|" options:0 metrics:v3 views:v5];

  v7 = [(GKSectionHeaderView *)self leftLabel];
  v8 = [v7 leftAnchor];
  v9 = [(GKSectionHeaderView *)self leftLabel];
  v10 = [v9 superview];
  v11 = [v10 leftAnchor];
  v12 = [MEMORY[0x277D75418] currentDevice];
  v13 = [v12 userInterfaceIdiom];

  v14 = 15.0;
  if (v13 == 1 && *MEMORY[0x277D0C8F0] & 1 | ((*MEMORY[0x277D0C258] & 1) == 0))
  {
    v14 = 25.0;
  }

  v15 = [v8 constraintEqualToAnchor:v11 constant:v14];
  [v15 setActive:1];

  [(GKHeaderWithUnderlineView *)self leadingMargin];
  v17 = v16;
  [(GKHeaderWithUnderlineView *)self trailingMargin];
  if (v17 > 0.0 || v18 > 0.0)
  {
    [MEMORY[0x277D75298] _gkAdjustConstraintMargins:v6 leading:v17 trailing:v18];
  }

  [(GKSectionHeaderView *)self addConstraints:v6];
  v19 = [(GKHeaderWithUnderlineView *)self gutterConstraints];
  v20 = [v19 arrayByAddingObjectsFromArray:v6];
  [(GKHeaderWithUnderlineView *)self setGutterConstraints:v20];
}

- (void)establishConstraints
{
  v8.receiver = self;
  v8.super_class = GKSectionHeaderView;
  [(GKHeaderWithUnderlineView *)&v8 establishConstraints];
  v3 = [(GKHeaderWithUnderlineView *)self underlineView];
  v4 = [(GKSectionHeaderView *)self leftLabel];
  v5 = [(GKSectionHeaderView *)self rightButton];
  v6 = [MEMORY[0x277CCAAD0] _gkConstraintWithItem:v3 attribute:3 relatedBy:0 toItem:v4 attribute:11 multiplier:*MEMORY[0x277D769D0] leading:1.0 fontTextStyle:8.0];
  v7 = [MEMORY[0x277CCAAD0] constraintWithItem:v5 attribute:11 relatedBy:0 toItem:v4 attribute:11 multiplier:1.0 constant:0.0];
  [(GKSectionHeaderView *)self addConstraint:v6];
  [(GKSectionHeaderView *)self addConstraint:v7];
}

- (void)setLeftText:(id)a3
{
  [(GKLabel *)self->_leftLabel setText:a3];
  v4 = [(GKSectionHeaderView *)self backgroundViewHeightConstraint];
  [v4 setActive:0];

  v5 = [(UIView *)self->_backgroundView heightAnchor];
  v6 = [MEMORY[0x277D75520] defaultMetrics];
  [v6 scaledValueForValue:30.0];
  v7 = [v5 constraintEqualToConstant:?];
  [(GKSectionHeaderView *)self setBackgroundViewHeightConstraint:v7];

  v8 = [(GKSectionHeaderView *)self backgroundViewHeightConstraint];
  [v8 setActive:1];

  v9 = [(GKSectionHeaderView *)self backgroundView];
  [v9 setNeedsLayout];
}

- (void)setRightText:(id)a3
{
  v4 = MEMORY[0x277D0C8B0];
  v5 = a3;
  v6 = [v4 textStyle];
  v10 = [v6 sectionHeader];

  [(GKButton *)self->_rightButton applyTextStyle:v10];
  rightButton = self->_rightButton;
  v8 = [MEMORY[0x277D0C868] sharedPalette];
  v9 = [v8 emphasizedTextColor];
  [(GKButton *)rightButton setTitleColor:v9 forState:0];

  [(GKButton *)self->_rightButton setTitle:v5 forState:0];
  [(GKSectionHeaderView *)self updateLabel];
}

- (NSString)rightText
{
  rightButton = self->_rightButton;
  v3 = [(GKButton *)rightButton state];

  return [(GKButton *)rightButton titleForState:v3];
}

- (CGRect)rightButtonFrame
{
  [(GKButton *)self->_rightButton frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GKSectionHeaderView;
  [(GKHeaderWithUnderlineView *)&v12 applyLayoutAttributes:v4];
  v5 = [v4 indexPath];
  -[GKSectionHeaderView setSectionIndex:](self, "setSectionIndex:", [v5 section]);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = v6;
    if (self->_manualItemCount)
    {
      if (self->_maxRange && (v8 = [v6 currentTotalItemCount], v8 >= objc_msgSend(v7, "maxTotalItemCount")))
      {
        maxRange = self->_maxRange;
      }

      else
      {
        v9 = [v7 currentVisibleItemCount];
        v10 = [v7 currentTotalItemCount];
        if (v9 >= v10)
        {
          maxRange = v10;
        }

        else
        {
          maxRange = v9;
        }
      }

      [(GKSectionHeaderView *)self setItemCount:maxRange];
    }

    else
    {
      self->_itemCount = [v6 currentTotalItemCount];
    }

    self->_maxItemCount = [v7 maxTotalItemCount];
    self->_allSectionItemsVisible = [v7 allSectionItemsVisible];
    [(GKSectionHeaderView *)self updateLabel];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = GKSectionHeaderView;
  [(GKSectionHeaderView *)&v3 prepareForReuse];
  self->_manualItemCount = 0;
  self->_itemCountFormatter = 0;
  self->_maxRange = 0;
  [(GKSectionHeaderView *)self setRightText:0];
}

- (void)updateLabel
{
  itemCountFormatter = self->_itemCountFormatter;
  if (itemCountFormatter)
  {
    v4 = itemCountFormatter(self->_itemCount, a2);
    [(GKSectionHeaderView *)self setLeftText:v4];
  }

  if (self->_showAllAction && (!self->_allSectionItemsVisible || self->_itemCount < self->_maxItemCount))
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = GKGameCenterUIFrameworkBundle();
    v7 = GKGetLocalizedStringFromTableInBundle();
    [(GKSectionHeaderView *)self maxItemCount];
    v8 = GKFormattedStringWithGroupingFromInteger();
    v9 = [v5 stringWithFormat:v7, v8];

    [(GKSectionHeaderView *)self setRightText:v9];
    v10 = [(GKSectionHeaderView *)self rightButton];
    [v10 setTitleColor:0 forState:0];

    v11 = [(GKSectionHeaderView *)self rightButton];
    v12 = [MEMORY[0x277D0C8B0] textStyle];
    v13 = [v12 sectionHeader];
    v14 = [v13 buttonTitle];
    [v11 applyTextStyle:v14];

LABEL_10:
    goto LABEL_11;
  }

  if (self->_rightTarget && self->_rightAction)
  {
    v9 = [(GKSectionHeaderView *)self rightButton];
    v11 = [MEMORY[0x277D0C868] sharedPalette];
    v12 = [v11 systemInteractionColor];
    [v9 setTitleColor:v12 forState:0];
    goto LABEL_10;
  }

LABEL_11:
  v15 = [(GKSectionHeaderView *)self rightText];
  v16 = [v15 length];
  v17 = v16 == 0;
  v18 = v16 != 0;

  v19 = [(GKSectionHeaderView *)self rightButton];
  [v19 setEnabled:v18];

  v20 = [(GKSectionHeaderView *)self rightButton];
  [v20 setHidden:v17];
}

- (void)setItemCountFormatter:(void *)a3
{
  if (self->_itemCountFormatter != a3)
  {
    self->_itemCountFormatter = a3;
    [(GKSectionHeaderView *)self updateLabel];
  }
}

- (void)setShowAllAction:(SEL)a3
{
  if (self->_showAllAction != a3)
  {
    if (a3)
    {
      v3 = a3;
    }

    else
    {
      v3 = 0;
    }

    self->_showAllAction = v3;
    [(GKSectionHeaderView *)self updateLabel];
  }
}

- (void)rightButtonTouched:(id)a3
{
  a3;
  if (self->_showAllAction)
  {
    v4 = [MEMORY[0x277D75128] sharedApplication];
    v5 = v4;
    if (self->_showAllAction)
    {
      showAllAction = self->_showAllAction;
    }

    else
    {
      showAllAction = 0;
    }

    v9 = [v4 _gkTargetForAction:showAllAction viaResponder:self];

    v10 = self->_showAllAction;
    if (v10)
    {
      [v9 v10];
    }

    else
    {
      [v9 0];
    }
  }

  else
  {
    rightTarget = self->_rightTarget;
    if (rightTarget)
    {
      rightAction = self->_rightAction;
      if (rightAction)
      {
        [rightTarget _gkPerformSelector:rightAction withObject:self];
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (SEL)showAllAction
{
  if (self->_showAllAction)
  {
    return self->_showAllAction;
  }

  else
  {
    return 0;
  }
}

- (SEL)rightAction
{
  if (self->_rightAction)
  {
    return self->_rightAction;
  }

  else
  {
    return 0;
  }
}

- (void)setRightAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_rightAction = v3;
}

@end