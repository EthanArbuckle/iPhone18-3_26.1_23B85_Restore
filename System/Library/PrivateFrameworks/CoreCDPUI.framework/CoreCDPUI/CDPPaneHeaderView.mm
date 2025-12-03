@interface CDPPaneHeaderView
- (CDPPaneHeaderView)initWithFrame:(CGRect)frame;
- (double)innerHeaderMaxY;
- (void)layoutSubviews;
- (void)makeAllTheTextFits;
@end

@implementation CDPPaneHeaderView

- (CDPPaneHeaderView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = CDPPaneHeaderView;
  v3 = [(CDPPaneHeaderView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v4 = getBFFPaneHeaderViewClass_softClass;
    v15 = getBFFPaneHeaderViewClass_softClass;
    if (!getBFFPaneHeaderViewClass_softClass)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __getBFFPaneHeaderViewClass_block_invoke;
      v11[3] = &unk_278E2BA40;
      v11[4] = &v12;
      __getBFFPaneHeaderViewClass_block_invoke(v11);
      v4 = v13[3];
    }

    v5 = v4;
    _Block_object_dispose(&v12, 8);
    v6 = [v4 alloc];
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    header = v3->_header;
    v3->_header = v7;

    [(CDPPaneHeaderView *)v3 addSubview:v3->_header];
  }

  return v3;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = CDPPaneHeaderView;
  [(CDPPaneHeaderView *)&v20 layoutSubviews];
  isNaturalUIEnabled = [MEMORY[0x277CFD560] isNaturalUIEnabled];
  header = self->_header;
  if (isNaturalUIEnabled)
  {
    [(BFFPaneHeaderView *)self->_header setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor = [(BFFPaneHeaderView *)self->_header topAnchor];
    topAnchor2 = [(CDPPaneHeaderView *)self topAnchor];
    v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v7 setActive:1];

    leadingAnchor = [(BFFPaneHeaderView *)self->_header leadingAnchor];
    leadingAnchor2 = [(CDPPaneHeaderView *)self leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:18.0];
    [v10 setActive:1];

    trailingAnchor = [(BFFPaneHeaderView *)self->_header trailingAnchor];
    trailingAnchor2 = [(CDPPaneHeaderView *)self trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-18.0];
    [v13 setActive:1];

    bottomAnchor = [(BFFPaneHeaderView *)self->_header bottomAnchor];
    bottomAnchor2 = [(CDPPaneHeaderView *)self bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v16 setActive:1];

    [(BFFPaneHeaderView *)self->_header sizeToFit];
  }

  else
  {
    [(CDPPaneHeaderView *)self bounds];
    [(BFFPaneHeaderView *)header setFrame:?];
    v17 = self->_header;
    [(CDPPaneHeaderView *)self bounds];
    [(BFFPaneHeaderView *)v17 sizeThatFits:v18, v19];
  }

  [(BFFPaneHeaderView *)self->_header layoutSubviews];
}

- (double)innerHeaderMaxY
{
  subLabel = [(BFFPaneHeaderView *)self->_header subLabel];
  text = [subLabel text];

  superview = [(CDPPaneHeaderView *)self superview];
  header = self->_header;
  if (text)
  {
    subLabel2 = [(BFFPaneHeaderView *)header subLabel];
    [subLabel2 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(BFFPaneHeaderView *)self->_header subLabel];
  }

  else
  {
    subLabel2 = [(BFFPaneHeaderView *)header detailTextLabel];
    [subLabel2 bounds];
    v9 = v16;
    v11 = v17;
    v13 = v18;
    v15 = v19;
    [(BFFPaneHeaderView *)self->_header detailTextLabel];
  }
  v20 = ;
  [superview convertRect:v20 fromView:{v9, v11, v13, v15}];
  MaxY = CGRectGetMaxY(v23);

  return MaxY;
}

- (void)makeAllTheTextFits
{
  textLabel = [(CDPPaneHeaderView *)self textLabel];
  [textLabel setNumberOfLines:2];

  textLabel2 = [(CDPPaneHeaderView *)self textLabel];
  [textLabel2 setAdjustsFontSizeToFitWidth:1];

  textLabel3 = [(CDPPaneHeaderView *)self textLabel];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v6 = getBFFStyleClass_softClass_1;
  v34 = getBFFStyleClass_softClass_1;
  if (!getBFFStyleClass_softClass_1)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __getBFFStyleClass_block_invoke_1;
    v30[3] = &unk_278E2BA40;
    v30[4] = &v31;
    __getBFFStyleClass_block_invoke_1(v30);
    v6 = v32[3];
  }

  v7 = v6;
  _Block_object_dispose(&v31, 8);
  sharedStyle = [v6 sharedStyle];
  headerTitleFont = [sharedStyle headerTitleFont];
  [textLabel3 setFont:headerTitleFont];

  detailTextLabel = [(CDPPaneHeaderView *)self detailTextLabel];
  v11 = MEMORY[0x277D74300];
  v12 = *MEMORY[0x277D76918];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  v15 = [v11 preferredFontForTextStyle:v12 compatibleWithTraitCollection:traitCollection];
  [detailTextLabel setFont:v15];

  if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
  {
    textLabel4 = [(CDPPaneHeaderView *)self textLabel];
    [textLabel4 setTextAlignment:4];

    v17 = MEMORY[0x277D74310];
    v18 = *MEMORY[0x277D76A20];
    traitCollection2 = [(CDPPaneHeaderView *)self traitCollection];
    v20 = [v17 preferredFontDescriptorWithTextStyle:v18 compatibleWithTraitCollection:traitCollection2];

    v21 = MEMORY[0x277D74300];
    v22 = [v20 fontDescriptorWithSymbolicTraits:2];
    v23 = [v21 fontWithDescriptor:v22 size:0.0];
    textLabel5 = [(CDPPaneHeaderView *)self textLabel];
    [textLabel5 setFont:v23];

    detailTextLabel2 = [(CDPPaneHeaderView *)self detailTextLabel];
    [detailTextLabel2 setTextAlignment:4];

    v26 = [MEMORY[0x277D74300] fontWithDescriptor:v20 size:0.0];
    detailTextLabel3 = [(CDPPaneHeaderView *)self detailTextLabel];
    [detailTextLabel3 setFont:v26];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    detailTextLabel4 = [(CDPPaneHeaderView *)self detailTextLabel];
    [detailTextLabel4 setTextColor:secondaryLabelColor];
  }
}

@end