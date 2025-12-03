@interface GKSectionHeaderView
+ (id)padMetrics;
+ (id)phoneMetrics;
- (CGRect)rightButtonFrame;
- (GKSectionHeaderView)initWithFrame:(CGRect)frame;
- (NSString)rightText;
- (SEL)rightAction;
- (SEL)showAllAction;
- (void)applyLayoutAttributes:(id)attributes;
- (void)establishConstraints;
- (void)prepareForReuse;
- (void)rightButtonTouched:(id)touched;
- (void)setItemCountFormatter:(void *)formatter;
- (void)setLeftText:(id)text;
- (void)setRightAction:(SEL)action;
- (void)setRightText:(id)text;
- (void)setShowAllAction:(SEL)action;
- (void)updateGutterConstraints;
- (void)updateLabel;
@end

@implementation GKSectionHeaderView

+ (id)padMetrics
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___GKSectionHeaderView;
  v2 = objc_msgSendSuper2(&v5, sel_padMetrics);
  v3 = [v2 mutableCopy];

  [v3 addEntriesFromDictionary:&unk_286189858];

  return v3;
}

+ (id)phoneMetrics
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___GKSectionHeaderView;
  v2 = objc_msgSendSuper2(&v5, sel_phoneMetrics);
  v3 = [v2 mutableCopy];

  [v3 addEntriesFromDictionary:&unk_286189880];

  return v3;
}

- (GKSectionHeaderView)initWithFrame:(CGRect)frame
{
  v40.receiver = self;
  v40.super_class = GKSectionHeaderView;
  v3 = [(GKHeaderWithUnderlineView *)&v40 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v7 = *MEMORY[0x277D0C258] & (*MEMORY[0x277D0C8F0] ^ 1);
    }

    [(GKLabel *)v3->_leftLabel setShouldInhibitReplay:v7 & 1];
    textStyle = [MEMORY[0x277D0C8B0] textStyle];
    sectionHeader = [textStyle sectionHeader];

    [(GKLabel *)v3->_leftLabel applyTextStyle:sectionHeader];
    [(GKLabel *)v3->_leftLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v14) = 1148846080;
    [(GKButton *)v3->_rightButton setContentHuggingPriority:1 forAxis:v14];
    LODWORD(v15) = 1132068864;
    [(GKButton *)v3->_rightButton setContentCompressionResistancePriority:1 forAxis:v15];
    [(GKButton *)v3->_rightButton setBackgroundColor:0];
    [(GKButton *)v3->_rightButton setOpaque:0];
    [(GKButton *)v3->_rightButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKButton *)v3->_rightButton setEnabled:0];
    [(GKButton *)v3->_rightButton applyTextStyle:sectionHeader];
    [(GKButton *)v3->_rightButton addTarget:v3 action:sel_rightButtonTouched_ forControlEvents:64];
    v16 = objc_alloc_init(MEMORY[0x277D75D18]);
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v16;

    v18 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.200000003];
    [(UIView *)v3->_backgroundView setBackgroundColor:v18];

    [(UIView *)v3->_backgroundView setClipsToBounds:1];
    [(UIView *)v3->_backgroundView setHidden:1];
    layer = [(UIView *)v3->_backgroundView layer];
    [layer setMaskedCorners:3];

    layer2 = [(UIView *)v3->_backgroundView layer];
    [layer2 setCornerRadius:10.0];

    v21 = *MEMORY[0x277CDA138];
    layer3 = [(UIView *)v3->_backgroundView layer];
    [layer3 setCornerCurve:v21];

    [(UIView *)v3->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKSectionHeaderView *)v3 addSubview:v3->_backgroundView];
    bottomAnchor = [(UIView *)v3->_backgroundView bottomAnchor];
    superview = [(UIView *)v3->_backgroundView superview];
    bottomAnchor2 = [superview bottomAnchor];
    v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v26 setActive:1];

    leftAnchor = [(UIView *)v3->_backgroundView leftAnchor];
    superview2 = [(UIView *)v3->_backgroundView superview];
    leftAnchor2 = [superview2 leftAnchor];
    v30 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [v30 setActive:1];

    rightAnchor = [(UIView *)v3->_backgroundView rightAnchor];
    superview3 = [(UIView *)v3->_backgroundView superview];
    rightAnchor2 = [superview3 rightAnchor];
    v34 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    [v34 setActive:1];

    heightAnchor = [(UIView *)v3->_backgroundView heightAnchor];
    defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics scaledValueForValue:30.0];
    v37 = [heightAnchor constraintEqualToConstant:?];
    [(GKSectionHeaderView *)v3 setBackgroundViewHeightConstraint:v37];

    backgroundViewHeightConstraint = [(GKSectionHeaderView *)v3 backgroundViewHeightConstraint];
    [backgroundViewHeightConstraint setActive:1];

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
  metrics = [(GKHeaderWithUnderlineView *)self metrics];
  v4 = MEMORY[0x277CCAAD0];
  v5 = _NSDictionaryOfVariableBindings(&cfstr_LeftlabelRight.isa, self->_leftLabel, self->_rightButton, 0);
  v6 = [v4 constraintsWithVisualFormat:@"|-(gutter)-[_leftLabel]-(>=labelSpacing)-[_rightButton]-(rightGutter)-|" options:0 metrics:metrics views:v5];

  leftLabel = [(GKSectionHeaderView *)self leftLabel];
  leftAnchor = [leftLabel leftAnchor];
  leftLabel2 = [(GKSectionHeaderView *)self leftLabel];
  superview = [leftLabel2 superview];
  leftAnchor2 = [superview leftAnchor];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v14 = 15.0;
  if (userInterfaceIdiom == 1 && *MEMORY[0x277D0C8F0] & 1 | ((*MEMORY[0x277D0C258] & 1) == 0))
  {
    v14 = 25.0;
  }

  v15 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v14];
  [v15 setActive:1];

  [(GKHeaderWithUnderlineView *)self leadingMargin];
  v17 = v16;
  [(GKHeaderWithUnderlineView *)self trailingMargin];
  if (v17 > 0.0 || v18 > 0.0)
  {
    [MEMORY[0x277D75298] _gkAdjustConstraintMargins:v6 leading:v17 trailing:v18];
  }

  [(GKSectionHeaderView *)self addConstraints:v6];
  gutterConstraints = [(GKHeaderWithUnderlineView *)self gutterConstraints];
  v20 = [gutterConstraints arrayByAddingObjectsFromArray:v6];
  [(GKHeaderWithUnderlineView *)self setGutterConstraints:v20];
}

- (void)establishConstraints
{
  v8.receiver = self;
  v8.super_class = GKSectionHeaderView;
  [(GKHeaderWithUnderlineView *)&v8 establishConstraints];
  underlineView = [(GKHeaderWithUnderlineView *)self underlineView];
  leftLabel = [(GKSectionHeaderView *)self leftLabel];
  rightButton = [(GKSectionHeaderView *)self rightButton];
  v6 = [MEMORY[0x277CCAAD0] _gkConstraintWithItem:underlineView attribute:3 relatedBy:0 toItem:leftLabel attribute:11 multiplier:*MEMORY[0x277D769D0] leading:1.0 fontTextStyle:8.0];
  v7 = [MEMORY[0x277CCAAD0] constraintWithItem:rightButton attribute:11 relatedBy:0 toItem:leftLabel attribute:11 multiplier:1.0 constant:0.0];
  [(GKSectionHeaderView *)self addConstraint:v6];
  [(GKSectionHeaderView *)self addConstraint:v7];
}

- (void)setLeftText:(id)text
{
  [(GKLabel *)self->_leftLabel setText:text];
  backgroundViewHeightConstraint = [(GKSectionHeaderView *)self backgroundViewHeightConstraint];
  [backgroundViewHeightConstraint setActive:0];

  heightAnchor = [(UIView *)self->_backgroundView heightAnchor];
  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics scaledValueForValue:30.0];
  v7 = [heightAnchor constraintEqualToConstant:?];
  [(GKSectionHeaderView *)self setBackgroundViewHeightConstraint:v7];

  backgroundViewHeightConstraint2 = [(GKSectionHeaderView *)self backgroundViewHeightConstraint];
  [backgroundViewHeightConstraint2 setActive:1];

  backgroundView = [(GKSectionHeaderView *)self backgroundView];
  [backgroundView setNeedsLayout];
}

- (void)setRightText:(id)text
{
  v4 = MEMORY[0x277D0C8B0];
  textCopy = text;
  textStyle = [v4 textStyle];
  sectionHeader = [textStyle sectionHeader];

  [(GKButton *)self->_rightButton applyTextStyle:sectionHeader];
  rightButton = self->_rightButton;
  mEMORY[0x277D0C868] = [MEMORY[0x277D0C868] sharedPalette];
  emphasizedTextColor = [mEMORY[0x277D0C868] emphasizedTextColor];
  [(GKButton *)rightButton setTitleColor:emphasizedTextColor forState:0];

  [(GKButton *)self->_rightButton setTitle:textCopy forState:0];
  [(GKSectionHeaderView *)self updateLabel];
}

- (NSString)rightText
{
  rightButton = self->_rightButton;
  state = [(GKButton *)rightButton state];

  return [(GKButton *)rightButton titleForState:state];
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

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v12.receiver = self;
  v12.super_class = GKSectionHeaderView;
  [(GKHeaderWithUnderlineView *)&v12 applyLayoutAttributes:attributesCopy];
  indexPath = [attributesCopy indexPath];
  -[GKSectionHeaderView setSectionIndex:](self, "setSectionIndex:", [indexPath section]);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = attributesCopy;
    v7 = v6;
    if (self->_manualItemCount)
    {
      if (self->_maxRange && (v8 = [v6 currentTotalItemCount], v8 >= objc_msgSend(v7, "maxTotalItemCount")))
      {
        maxRange = self->_maxRange;
      }

      else
      {
        currentVisibleItemCount = [v7 currentVisibleItemCount];
        currentTotalItemCount = [v7 currentTotalItemCount];
        if (currentVisibleItemCount >= currentTotalItemCount)
        {
          maxRange = currentTotalItemCount;
        }

        else
        {
          maxRange = currentVisibleItemCount;
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
    rightButton3 = [v5 stringWithFormat:v7, v8];

    [(GKSectionHeaderView *)self setRightText:rightButton3];
    rightButton = [(GKSectionHeaderView *)self rightButton];
    [rightButton setTitleColor:0 forState:0];

    rightButton2 = [(GKSectionHeaderView *)self rightButton];
    textStyle = [MEMORY[0x277D0C8B0] textStyle];
    sectionHeader = [textStyle sectionHeader];
    buttonTitle = [sectionHeader buttonTitle];
    [rightButton2 applyTextStyle:buttonTitle];

LABEL_10:
    goto LABEL_11;
  }

  if (self->_rightTarget && self->_rightAction)
  {
    rightButton3 = [(GKSectionHeaderView *)self rightButton];
    rightButton2 = [MEMORY[0x277D0C868] sharedPalette];
    textStyle = [rightButton2 systemInteractionColor];
    [rightButton3 setTitleColor:textStyle forState:0];
    goto LABEL_10;
  }

LABEL_11:
  rightText = [(GKSectionHeaderView *)self rightText];
  v16 = [rightText length];
  v17 = v16 == 0;
  v18 = v16 != 0;

  rightButton4 = [(GKSectionHeaderView *)self rightButton];
  [rightButton4 setEnabled:v18];

  rightButton5 = [(GKSectionHeaderView *)self rightButton];
  [rightButton5 setHidden:v17];
}

- (void)setItemCountFormatter:(void *)formatter
{
  if (self->_itemCountFormatter != formatter)
  {
    self->_itemCountFormatter = formatter;
    [(GKSectionHeaderView *)self updateLabel];
  }
}

- (void)setShowAllAction:(SEL)action
{
  if (self->_showAllAction != action)
  {
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    self->_showAllAction = actionCopy;
    [(GKSectionHeaderView *)self updateLabel];
  }
}

- (void)rightButtonTouched:(id)touched
{
  touched;
  if (self->_showAllAction)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v5 = mEMORY[0x277D75128];
    if (self->_showAllAction)
    {
      showAllAction = self->_showAllAction;
    }

    else
    {
      showAllAction = 0;
    }

    v9 = [mEMORY[0x277D75128] _gkTargetForAction:showAllAction viaResponder:self];

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

- (void)setRightAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_rightAction = actionCopy;
}

@end