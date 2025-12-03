@interface LUILogFilterView
- (LUILogFilterView)initWithFrame:(CGRect)frame;
- (id)_createButtonWithTitle:(id)title;
- (id)_createCollectionView;
- (id)_createCurrentPredicateLabel;
- (id)_createEnterLabel;
- (id)_createEnterPredicateStackViewWithSubViews:(id)views;
- (id)_createPredicateTextField;
- (id)_createSeparatorLine;
- (id)_createTableView;
- (void)_setup;
- (void)layoutSubviews;
@end

@implementation LUILogFilterView

- (LUILogFilterView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = LUILogFilterView;
  v3 = [(LUILogFilterView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(LUILogFilterView *)v3 _setup];
  }

  return v4;
}

- (void)_setup
{
  v34[2] = *MEMORY[0x277D85DE8];
  _createTableView = [(LUILogFilterView *)self _createTableView];
  existingPredicatesTableView = self->_existingPredicatesTableView;
  self->_existingPredicatesTableView = _createTableView;

  _createCollectionView = [(LUILogFilterView *)self _createCollectionView];
  predicatesKeyCandidateCollectionView = self->_predicatesKeyCandidateCollectionView;
  self->_predicatesKeyCandidateCollectionView = _createCollectionView;

  _createCollectionView2 = [(LUILogFilterView *)self _createCollectionView];
  predicatesComparisonCandidateCollectionView = self->_predicatesComparisonCandidateCollectionView;
  self->_predicatesComparisonCandidateCollectionView = _createCollectionView2;

  _createCollectionView3 = [(LUILogFilterView *)self _createCollectionView];
  predicatesValueCandidateCollectionView = self->_predicatesValueCandidateCollectionView;
  self->_predicatesValueCandidateCollectionView = _createCollectionView3;

  _createSeparatorLine = [(LUILogFilterView *)self _createSeparatorLine];
  horizontalSeparatorLine = self->_horizontalSeparatorLine;
  self->_horizontalSeparatorLine = _createSeparatorLine;

  _createSeparatorLine2 = [(LUILogFilterView *)self _createSeparatorLine];
  veriticalSeparatorLineFirst = self->_veriticalSeparatorLineFirst;
  self->_veriticalSeparatorLineFirst = _createSeparatorLine2;

  _createSeparatorLine3 = [(LUILogFilterView *)self _createSeparatorLine];
  veriticalSeparatorLineSecond = self->_veriticalSeparatorLineSecond;
  self->_veriticalSeparatorLineSecond = _createSeparatorLine3;

  v17 = [(LUILogFilterView *)self _createButtonWithTitle:@"Add"];
  addButton = self->_addButton;
  self->_addButton = v17;

  _createPredicateTextField = [(LUILogFilterView *)self _createPredicateTextField];
  predicateTextField = self->_predicateTextField;
  self->_predicateTextField = _createPredicateTextField;

  v21 = self->_addButton;
  v34[0] = self->_predicateTextField;
  v34[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v23 = [(LUILogFilterView *)self _createEnterPredicateStackViewWithSubViews:v22];
  enterPredicateStackView = self->_enterPredicateStackView;
  self->_enterPredicateStackView = v23;

  _createCurrentPredicateLabel = [(LUILogFilterView *)self _createCurrentPredicateLabel];
  currentPredicateLabel = self->_currentPredicateLabel;
  self->_currentPredicateLabel = _createCurrentPredicateLabel;

  v27 = [(LUILogFilterView *)self _createButtonWithTitle:@"Apply"];
  applyButton = self->_applyButton;
  self->_applyButton = v27;

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  cGColor = [whiteColor CGColor];
  layer = [(UIButton *)self->_applyButton layer];
  [layer setBorderColor:cGColor];

  layer2 = [(UIButton *)self->_applyButton layer];
  [layer2 setBorderWidth:1.5];

  layer3 = [(UIButton *)self->_applyButton layer];
  [layer3 setCornerRadius:5.0];

  [(LUILogFilterView *)self addSubview:self->_existingPredicatesTableView];
  [(LUILogFilterView *)self addSubview:self->_predicatesKeyCandidateCollectionView];
  [(LUILogFilterView *)self addSubview:self->_predicatesComparisonCandidateCollectionView];
  [(LUILogFilterView *)self addSubview:self->_predicatesValueCandidateCollectionView];
  [(LUILogFilterView *)self addSubview:self->_horizontalSeparatorLine];
  [(LUILogFilterView *)self addSubview:self->_veriticalSeparatorLineFirst];
  [(LUILogFilterView *)self addSubview:self->_veriticalSeparatorLineSecond];
  [(LUILogFilterView *)self addSubview:self->_enterPredicateStackView];
  [(LUILogFilterView *)self addSubview:self->_currentPredicateLabel];
  [(LUILogFilterView *)self addSubview:self->_applyButton];
}

- (void)layoutSubviews
{
  [(LUILogFilterView *)self frame];
  v3 = CGRectGetWidth(v39) + -20.0;
  currentPredicateLabel = [(LUILogFilterView *)self currentPredicateLabel];
  [currentPredicateLabel setFrame:{10.0, 0.0, v3, 30.0}];

  [(LUILogFilterView *)self frame];
  v5 = CGRectGetWidth(v40) + -30.0 + -100.0;
  [(LUILogFilterView *)self frame];
  v6 = CGRectGetHeight(v41) + -30.0 + -300.0 + -10.0;
  existingPredicatesTableView = [(LUILogFilterView *)self existingPredicatesTableView];
  [existingPredicatesTableView setFrame:{10.0, 30.0, v5, v6}];

  existingPredicatesTableView2 = [(LUILogFilterView *)self existingPredicatesTableView];
  [existingPredicatesTableView2 frame];
  v9 = CGRectGetMaxX(v42) + 10.0;
  [(LUILogFilterView *)self frame];
  v10 = CGRectGetHeight(v43) + -30.0 + -300.0 + -10.0;
  applyButton = [(LUILogFilterView *)self applyButton];
  [applyButton setFrame:{v9, 30.0, 100.0, v10}];

  existingPredicatesTableView3 = [(LUILogFilterView *)self existingPredicatesTableView];
  [existingPredicatesTableView3 frame];
  v13 = CGRectGetMaxY(v44) + 10.0;
  [(LUILogFilterView *)self frame];
  v14 = CGRectGetWidth(v45) + -20.0;
  horizontalSeparatorLine = [(LUILogFilterView *)self horizontalSeparatorLine];
  [horizontalSeparatorLine setFrame:{10.0, v13, v14, 1.5}];

  horizontalSeparatorLine2 = [(LUILogFilterView *)self horizontalSeparatorLine];
  [horizontalSeparatorLine2 frame];
  v17 = CGRectGetMaxY(v46) + 10.0;
  [(LUILogFilterView *)self frame];
  v18 = CGRectGetWidth(v47) + -20.0;
  enterPredicateStackView = [(LUILogFilterView *)self enterPredicateStackView];
  [enterPredicateStackView setFrame:{10.0, v17, v18, 30.0}];

  [(LUILogFilterView *)self frame];
  v20 = (CGRectGetWidth(v48) * 0.5 + -40.0) * 0.5;
  enterPredicateStackView2 = [(LUILogFilterView *)self enterPredicateStackView];
  [enterPredicateStackView2 frame];
  v22 = CGRectGetMaxY(v49) + 10.0;

  [(LUILogFilterView *)self frame];
  v23 = CGRectGetHeight(v50) - v22 + -10.0;
  predicatesKeyCandidateCollectionView = [(LUILogFilterView *)self predicatesKeyCandidateCollectionView];
  [predicatesKeyCandidateCollectionView setFrame:{10.0, v22, v20, v23}];

  predicatesKeyCandidateCollectionView2 = [(LUILogFilterView *)self predicatesKeyCandidateCollectionView];
  [predicatesKeyCandidateCollectionView2 frame];
  v26 = CGRectGetMaxX(v51) + 10.0;
  veriticalSeparatorLineFirst = [(LUILogFilterView *)self veriticalSeparatorLineFirst];
  [veriticalSeparatorLineFirst setFrame:{v26, v22, 1.5, v23}];

  predicatesKeyCandidateCollectionView3 = [(LUILogFilterView *)self predicatesKeyCandidateCollectionView];
  [predicatesKeyCandidateCollectionView3 frame];
  v29 = CGRectGetMaxX(v52) + 20.0;

  predicatesComparisonCandidateCollectionView = [(LUILogFilterView *)self predicatesComparisonCandidateCollectionView];
  [predicatesComparisonCandidateCollectionView setFrame:{v29, v22, v20, v23}];

  predicatesComparisonCandidateCollectionView2 = [(LUILogFilterView *)self predicatesComparisonCandidateCollectionView];
  [predicatesComparisonCandidateCollectionView2 frame];
  v32 = CGRectGetMaxX(v53) + 10.0;
  veriticalSeparatorLineSecond = [(LUILogFilterView *)self veriticalSeparatorLineSecond];
  [veriticalSeparatorLineSecond setFrame:{v32, v22, 1.5, v23}];

  predicatesComparisonCandidateCollectionView3 = [(LUILogFilterView *)self predicatesComparisonCandidateCollectionView];
  [predicatesComparisonCandidateCollectionView3 frame];
  v35 = CGRectGetMaxX(v54) + 20.0;

  [(LUILogFilterView *)self frame];
  v36 = CGRectGetWidth(v55) - v35 + -10.0;
  predicatesValueCandidateCollectionView = [(LUILogFilterView *)self predicatesValueCandidateCollectionView];
  [predicatesValueCandidateCollectionView setFrame:{v35, v22, v36, v23}];
}

- (id)_createEnterPredicateStackViewWithSubViews:(id)views
{
  v3 = MEMORY[0x277D75A68];
  viewsCopy = views;
  v5 = [[v3 alloc] initWithArrangedSubviews:viewsCopy];

  [v5 setAxis:0];
  [v5 setDistribution:0];
  [v5 setSpacing:10.0];

  return v5;
}

- (id)_createCurrentPredicateLabel
{
  v2 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, 0.0, 30.0}];
  v3 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
  [v2 setFont:v3];

  [v2 setText:@"Current Predicate: "];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v2 setTextColor:whiteColor];

  [v2 sizeToFit];

  return v2;
}

- (id)_createEnterLabel
{
  v2 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, 0.0, 30.0}];
  v3 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
  [v2 setFont:v3];

  [v2 setText:@"   Enter Predicate: "];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v2 setTextColor:whiteColor];

  [v2 sizeToFit];
  LODWORD(v5) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v6];

  return v2;
}

- (id)_createPredicateTextField
{
  v3 = [objc_alloc(MEMORY[0x277D75BB8]) initWithFrame:{0.0, 0.0, 1000.0, 30.0}];
  layer = [v3 layer];
  [layer setCornerRadius:15.0];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  cGColor = [whiteColor CGColor];
  layer2 = [v3 layer];
  [layer2 setBorderColor:cGColor];

  layer3 = [v3 layer];
  [layer3 setBorderWidth:1.5];

  LODWORD(v9) = 1132068864;
  [v3 setContentHuggingPriority:0 forAxis:v9];
  LODWORD(v10) = 1132068864;
  [v3 setContentCompressionResistancePriority:0 forAxis:v10];
  [v3 setClearButtonMode:3];
  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  [v3 setTextColor:whiteColor2];

  whiteColor3 = [MEMORY[0x277D75348] whiteColor];
  _clearButton = [v3 _clearButton];
  [_clearButton setTintColor:whiteColor3];

  [v3 _setForcesClearButtonHighContrastAppearance:1];
  [v3 setAutocorrectionType:1];
  [v3 setAutocapitalizationType:0];
  [v3 setSmartQuotesType:1];
  [v3 setSpellCheckingType:1];
  [v3 setPlaceholder:@"e.g: process == 'LoginUI'"];
  lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
  _placeholderLabel = [v3 _placeholderLabel];
  [_placeholderLabel setTextColor:lightGrayColor];

  _createEnterLabel = [(LUILogFilterView *)self _createEnterLabel];
  [v3 setLeftView:_createEnterLabel];
  [v3 setLeftViewMode:3];

  return v3;
}

- (id)_createButtonWithTitle:(id)title
{
  v3 = MEMORY[0x277D75220];
  titleCopy = title;
  v5 = [[v3 alloc] initWithFrame:{0.0, 0.0, 80.0, 30.0}];
  [v5 setTitle:titleCopy forState:0];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v5 setTitleColor:whiteColor forState:0];

  LODWORD(v7) = 1148846080;
  [v5 setContentHuggingPriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v5 setContentCompressionResistancePriority:0 forAxis:v8];

  return v5;
}

- (id)_createCollectionView
{
  v2 = objc_alloc_init(MEMORY[0x277D752F0]);
  v3 = objc_alloc(MEMORY[0x277D752A0]);
  v4 = [v3 initWithFrame:v2 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v4 setBackgroundColor:clearColor];

  return v4;
}

- (id)_createTableView
{
  v2 = objc_alloc(MEMORY[0x277D75B40]);
  v3 = [v2 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:clearColor];

  [v3 setAllowsSelection:0];

  return v3;
}

- (id)_createSeparatorLine
{
  v2 = objc_opt_new();
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v2 setBackgroundColor:whiteColor];

  return v2;
}

@end