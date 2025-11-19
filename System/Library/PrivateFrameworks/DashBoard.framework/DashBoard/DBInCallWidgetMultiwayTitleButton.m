@interface DBInCallWidgetMultiwayTitleButton
- (DBInCallWidgetMultiwayTitleButton)initWithFrame:(CGRect)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setHighlighted:(BOOL)a3;
- (void)setupConstraints;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DBInCallWidgetMultiwayTitleButton

- (DBInCallWidgetMultiwayTitleButton)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = DBInCallWidgetMultiwayTitleButton;
  v3 = [(DBInCallWidgetMultiwayTitleButton *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CF90E8]);
    v5 = [v4 initWithCornerRadius:*MEMORY[0x277CDA130] cornerCurve:8.0];
    focusEffectView = v3->_focusEffectView;
    v3->_focusEffectView = v5;

    [(CPUIFocusEffectView *)v3->_focusEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUIFocusEffectView *)v3->_focusEffectView setHidden:1];
    [(DBInCallWidgetMultiwayTitleButton *)v3 addSubview:v3->_focusEffectView];
    v7 = objc_alloc(MEMORY[0x277CF9078]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setUserInteractionEnabled:0];
    v9 = [MEMORY[0x277D75348] labelColor];
    [v8 setTextColor:v9];

    [v8 setTextAlignment:1];
    v10 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] variant:1280];
    [v8 setFont:v10];

    [v8 setNumberOfLines:3];
    [(DBInCallWidgetMultiwayTitleButton *)v3 addSubview:v8];
    multilineTitleLabel = v3->_multilineTitleLabel;
    v3->_multilineTitleLabel = v8;

    [(DBInCallWidgetMultiwayTitleButton *)v3 setupConstraints];
  }

  return v3;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = DBInCallWidgetMultiwayTitleButton;
  [(DBInCallWidgetMultiwayTitleButton *)&v5 setHighlighted:?];
  [(CPUIFocusEffectView *)self->_focusEffectView setPressed:v3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = DBInCallWidgetMultiwayTitleButton;
  [(DBInCallWidgetMultiwayTitleButton *)&v6 traitCollectionDidChange:a3];
  v4 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] variant:1280];
  v5 = [(DBInCallWidgetMultiwayTitleButton *)self multilineTitleLabel];
  [v5 setFont:v4];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v14.receiver = self;
  v14.super_class = DBInCallWidgetMultiwayTitleButton;
  v6 = a3;
  [(DBInCallWidgetMultiwayTitleButton *)&v14 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedItem];

  v8 = [(DBInCallWidgetMultiwayTitleButton *)self focusEffectView];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(DBInCallWidgetMultiwayTitleButton *)self focusView];
  }

  v11 = v10;

  [v11 setHidden:v7 != self];
  if (v7 == self)
  {
    [MEMORY[0x277D75348] _carSystemFocusLabelColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v12 = ;
  v13 = [(DBInCallWidgetMultiwayTitleButton *)self multilineTitleLabel];
  [v13 setTextColor:v12];
}

- (void)setupConstraints
{
  v43[8] = *MEMORY[0x277D85DE8];
  v3 = [(DBInCallWidgetMultiwayTitleButton *)self multilineTitleLabel];
  v4 = [v3 textLayoutGuide];

  v5 = [(DBInCallWidgetMultiwayTitleButton *)self focusEffectView];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(DBInCallWidgetMultiwayTitleButton *)self focusView];
  }

  v8 = v7;
  v24 = v7;

  v30 = MEMORY[0x277CCAAD0];
  v42 = [(DBInCallWidgetMultiwayTitleButton *)self multilineTitleLabel];
  v41 = [v42 leadingAnchor];
  v40 = [(DBInCallWidgetMultiwayTitleButton *)self leadingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v43[0] = v39;
  v38 = [(DBInCallWidgetMultiwayTitleButton *)self multilineTitleLabel];
  v37 = [v38 trailingAnchor];
  v36 = [(DBInCallWidgetMultiwayTitleButton *)self trailingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v43[1] = v35;
  v34 = [(DBInCallWidgetMultiwayTitleButton *)self multilineTitleLabel];
  v33 = [v34 topAnchor];
  v32 = [(DBInCallWidgetMultiwayTitleButton *)self topAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v43[2] = v31;
  v29 = [(DBInCallWidgetMultiwayTitleButton *)self multilineTitleLabel];
  v28 = [v29 bottomAnchor];
  v27 = [(DBInCallWidgetMultiwayTitleButton *)self bottomAnchor];
  v25 = [v28 constraintEqualToAnchor:v27];
  v43[3] = v25;
  v23 = [v8 leadingAnchor];
  v22 = [v4 leadingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22 constant:-2.0];
  v43[4] = v21;
  v9 = [v8 trailingAnchor];
  v10 = [v4 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:2.0];
  v43[5] = v11;
  v12 = [v8 topAnchor];
  v13 = [v4 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v43[6] = v14;
  v15 = [v8 bottomAnchor];
  v16 = v4;
  v26 = v4;
  v17 = v15;
  v18 = [v16 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v43[7] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:8];
  [v30 activateConstraints:v20];
}

@end