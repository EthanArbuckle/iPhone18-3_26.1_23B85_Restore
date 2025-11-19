@interface CDPPaneHeaderView
- (CDPPaneHeaderView)initWithFrame:(CGRect)a3;
- (double)innerHeaderMaxY;
- (void)layoutSubviews;
- (void)makeAllTheTextFits;
@end

@implementation CDPPaneHeaderView

- (CDPPaneHeaderView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = CDPPaneHeaderView;
  v3 = [(CDPPaneHeaderView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [MEMORY[0x277CFD560] isNaturalUIEnabled];
  header = self->_header;
  if (v3)
  {
    [(BFFPaneHeaderView *)self->_header setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(BFFPaneHeaderView *)self->_header topAnchor];
    v6 = [(CDPPaneHeaderView *)self topAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];
    [v7 setActive:1];

    v8 = [(BFFPaneHeaderView *)self->_header leadingAnchor];
    v9 = [(CDPPaneHeaderView *)self leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:18.0];
    [v10 setActive:1];

    v11 = [(BFFPaneHeaderView *)self->_header trailingAnchor];
    v12 = [(CDPPaneHeaderView *)self trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:-18.0];
    [v13 setActive:1];

    v14 = [(BFFPaneHeaderView *)self->_header bottomAnchor];
    v15 = [(CDPPaneHeaderView *)self bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
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
  v3 = [(BFFPaneHeaderView *)self->_header subLabel];
  v4 = [v3 text];

  v5 = [(CDPPaneHeaderView *)self superview];
  header = self->_header;
  if (v4)
  {
    v7 = [(BFFPaneHeaderView *)header subLabel];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(BFFPaneHeaderView *)self->_header subLabel];
  }

  else
  {
    v7 = [(BFFPaneHeaderView *)header detailTextLabel];
    [v7 bounds];
    v9 = v16;
    v11 = v17;
    v13 = v18;
    v15 = v19;
    [(BFFPaneHeaderView *)self->_header detailTextLabel];
  }
  v20 = ;
  [v5 convertRect:v20 fromView:{v9, v11, v13, v15}];
  MaxY = CGRectGetMaxY(v23);

  return MaxY;
}

- (void)makeAllTheTextFits
{
  v3 = [(CDPPaneHeaderView *)self textLabel];
  [v3 setNumberOfLines:2];

  v4 = [(CDPPaneHeaderView *)self textLabel];
  [v4 setAdjustsFontSizeToFitWidth:1];

  v5 = [(CDPPaneHeaderView *)self textLabel];
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
  v8 = [v6 sharedStyle];
  v9 = [v8 headerTitleFont];
  [v5 setFont:v9];

  v10 = [(CDPPaneHeaderView *)self detailTextLabel];
  v11 = MEMORY[0x277D74300];
  v12 = *MEMORY[0x277D76918];
  v13 = [MEMORY[0x277D759A0] mainScreen];
  v14 = [v13 traitCollection];
  v15 = [v11 preferredFontForTextStyle:v12 compatibleWithTraitCollection:v14];
  [v10 setFont:v15];

  if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
  {
    v16 = [(CDPPaneHeaderView *)self textLabel];
    [v16 setTextAlignment:4];

    v17 = MEMORY[0x277D74310];
    v18 = *MEMORY[0x277D76A20];
    v19 = [(CDPPaneHeaderView *)self traitCollection];
    v20 = [v17 preferredFontDescriptorWithTextStyle:v18 compatibleWithTraitCollection:v19];

    v21 = MEMORY[0x277D74300];
    v22 = [v20 fontDescriptorWithSymbolicTraits:2];
    v23 = [v21 fontWithDescriptor:v22 size:0.0];
    v24 = [(CDPPaneHeaderView *)self textLabel];
    [v24 setFont:v23];

    v25 = [(CDPPaneHeaderView *)self detailTextLabel];
    [v25 setTextAlignment:4];

    v26 = [MEMORY[0x277D74300] fontWithDescriptor:v20 size:0.0];
    v27 = [(CDPPaneHeaderView *)self detailTextLabel];
    [v27 setFont:v26];

    v28 = [MEMORY[0x277D75348] secondaryLabelColor];
    v29 = [(CDPPaneHeaderView *)self detailTextLabel];
    [v29 setTextColor:v28];
  }
}

@end