@interface DBInCallWidgetMultiwayTitleButton
- (DBInCallWidgetMultiwayTitleButton)initWithFrame:(CGRect)frame;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setupConstraints;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DBInCallWidgetMultiwayTitleButton

- (DBInCallWidgetMultiwayTitleButton)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = DBInCallWidgetMultiwayTitleButton;
  v3 = [(DBInCallWidgetMultiwayTitleButton *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    labelColor = [MEMORY[0x277D75348] labelColor];
    [v8 setTextColor:labelColor];

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

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = DBInCallWidgetMultiwayTitleButton;
  [(DBInCallWidgetMultiwayTitleButton *)&v5 setHighlighted:?];
  [(CPUIFocusEffectView *)self->_focusEffectView setPressed:highlightedCopy];
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = DBInCallWidgetMultiwayTitleButton;
  [(DBInCallWidgetMultiwayTitleButton *)&v6 traitCollectionDidChange:change];
  v4 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] variant:1280];
  multilineTitleLabel = [(DBInCallWidgetMultiwayTitleButton *)self multilineTitleLabel];
  [multilineTitleLabel setFont:v4];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v14.receiver = self;
  v14.super_class = DBInCallWidgetMultiwayTitleButton;
  contextCopy = context;
  [(DBInCallWidgetMultiwayTitleButton *)&v14 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedItem = [contextCopy nextFocusedItem];

  focusEffectView = [(DBInCallWidgetMultiwayTitleButton *)self focusEffectView];
  v9 = focusEffectView;
  if (focusEffectView)
  {
    focusView = focusEffectView;
  }

  else
  {
    focusView = [(DBInCallWidgetMultiwayTitleButton *)self focusView];
  }

  v11 = focusView;

  [v11 setHidden:nextFocusedItem != self];
  if (nextFocusedItem == self)
  {
    [MEMORY[0x277D75348] _carSystemFocusLabelColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v12 = ;
  multilineTitleLabel = [(DBInCallWidgetMultiwayTitleButton *)self multilineTitleLabel];
  [multilineTitleLabel setTextColor:v12];
}

- (void)setupConstraints
{
  v43[8] = *MEMORY[0x277D85DE8];
  multilineTitleLabel = [(DBInCallWidgetMultiwayTitleButton *)self multilineTitleLabel];
  textLayoutGuide = [multilineTitleLabel textLayoutGuide];

  focusEffectView = [(DBInCallWidgetMultiwayTitleButton *)self focusEffectView];
  v6 = focusEffectView;
  if (focusEffectView)
  {
    focusView = focusEffectView;
  }

  else
  {
    focusView = [(DBInCallWidgetMultiwayTitleButton *)self focusView];
  }

  v8 = focusView;
  v24 = focusView;

  v30 = MEMORY[0x277CCAAD0];
  multilineTitleLabel2 = [(DBInCallWidgetMultiwayTitleButton *)self multilineTitleLabel];
  leadingAnchor = [multilineTitleLabel2 leadingAnchor];
  leadingAnchor2 = [(DBInCallWidgetMultiwayTitleButton *)self leadingAnchor];
  v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v43[0] = v39;
  multilineTitleLabel3 = [(DBInCallWidgetMultiwayTitleButton *)self multilineTitleLabel];
  trailingAnchor = [multilineTitleLabel3 trailingAnchor];
  trailingAnchor2 = [(DBInCallWidgetMultiwayTitleButton *)self trailingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v43[1] = v35;
  multilineTitleLabel4 = [(DBInCallWidgetMultiwayTitleButton *)self multilineTitleLabel];
  topAnchor = [multilineTitleLabel4 topAnchor];
  topAnchor2 = [(DBInCallWidgetMultiwayTitleButton *)self topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v43[2] = v31;
  multilineTitleLabel5 = [(DBInCallWidgetMultiwayTitleButton *)self multilineTitleLabel];
  bottomAnchor = [multilineTitleLabel5 bottomAnchor];
  bottomAnchor2 = [(DBInCallWidgetMultiwayTitleButton *)self bottomAnchor];
  v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v43[3] = v25;
  leadingAnchor3 = [v8 leadingAnchor];
  leadingAnchor4 = [textLayoutGuide leadingAnchor];
  v21 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:-2.0];
  v43[4] = v21;
  trailingAnchor3 = [v8 trailingAnchor];
  trailingAnchor4 = [textLayoutGuide trailingAnchor];
  v11 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:2.0];
  v43[5] = v11;
  topAnchor3 = [v8 topAnchor];
  topAnchor4 = [textLayoutGuide topAnchor];
  v14 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v43[6] = v14;
  bottomAnchor3 = [v8 bottomAnchor];
  v16 = textLayoutGuide;
  v26 = textLayoutGuide;
  v17 = bottomAnchor3;
  bottomAnchor4 = [v16 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:bottomAnchor4];
  v43[7] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:8];
  [v30 activateConstraints:v20];
}

@end