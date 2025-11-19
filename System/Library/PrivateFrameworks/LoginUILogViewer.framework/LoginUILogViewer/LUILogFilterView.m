@interface LUILogFilterView
- (LUILogFilterView)initWithFrame:(CGRect)a3;
- (id)_createButtonWithTitle:(id)a3;
- (id)_createCollectionView;
- (id)_createCurrentPredicateLabel;
- (id)_createEnterLabel;
- (id)_createEnterPredicateStackViewWithSubViews:(id)a3;
- (id)_createPredicateTextField;
- (id)_createSeparatorLine;
- (id)_createTableView;
- (void)_setup;
- (void)layoutSubviews;
@end

@implementation LUILogFilterView

- (LUILogFilterView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = LUILogFilterView;
  v3 = [(LUILogFilterView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(LUILogFilterView *)self _createTableView];
  existingPredicatesTableView = self->_existingPredicatesTableView;
  self->_existingPredicatesTableView = v3;

  v5 = [(LUILogFilterView *)self _createCollectionView];
  predicatesKeyCandidateCollectionView = self->_predicatesKeyCandidateCollectionView;
  self->_predicatesKeyCandidateCollectionView = v5;

  v7 = [(LUILogFilterView *)self _createCollectionView];
  predicatesComparisonCandidateCollectionView = self->_predicatesComparisonCandidateCollectionView;
  self->_predicatesComparisonCandidateCollectionView = v7;

  v9 = [(LUILogFilterView *)self _createCollectionView];
  predicatesValueCandidateCollectionView = self->_predicatesValueCandidateCollectionView;
  self->_predicatesValueCandidateCollectionView = v9;

  v11 = [(LUILogFilterView *)self _createSeparatorLine];
  horizontalSeparatorLine = self->_horizontalSeparatorLine;
  self->_horizontalSeparatorLine = v11;

  v13 = [(LUILogFilterView *)self _createSeparatorLine];
  veriticalSeparatorLineFirst = self->_veriticalSeparatorLineFirst;
  self->_veriticalSeparatorLineFirst = v13;

  v15 = [(LUILogFilterView *)self _createSeparatorLine];
  veriticalSeparatorLineSecond = self->_veriticalSeparatorLineSecond;
  self->_veriticalSeparatorLineSecond = v15;

  v17 = [(LUILogFilterView *)self _createButtonWithTitle:@"Add"];
  addButton = self->_addButton;
  self->_addButton = v17;

  v19 = [(LUILogFilterView *)self _createPredicateTextField];
  predicateTextField = self->_predicateTextField;
  self->_predicateTextField = v19;

  v21 = self->_addButton;
  v34[0] = self->_predicateTextField;
  v34[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v23 = [(LUILogFilterView *)self _createEnterPredicateStackViewWithSubViews:v22];
  enterPredicateStackView = self->_enterPredicateStackView;
  self->_enterPredicateStackView = v23;

  v25 = [(LUILogFilterView *)self _createCurrentPredicateLabel];
  currentPredicateLabel = self->_currentPredicateLabel;
  self->_currentPredicateLabel = v25;

  v27 = [(LUILogFilterView *)self _createButtonWithTitle:@"Apply"];
  applyButton = self->_applyButton;
  self->_applyButton = v27;

  v29 = [MEMORY[0x277D75348] whiteColor];
  v30 = [v29 CGColor];
  v31 = [(UIButton *)self->_applyButton layer];
  [v31 setBorderColor:v30];

  v32 = [(UIButton *)self->_applyButton layer];
  [v32 setBorderWidth:1.5];

  v33 = [(UIButton *)self->_applyButton layer];
  [v33 setCornerRadius:5.0];

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
  v4 = [(LUILogFilterView *)self currentPredicateLabel];
  [v4 setFrame:{10.0, 0.0, v3, 30.0}];

  [(LUILogFilterView *)self frame];
  v5 = CGRectGetWidth(v40) + -30.0 + -100.0;
  [(LUILogFilterView *)self frame];
  v6 = CGRectGetHeight(v41) + -30.0 + -300.0 + -10.0;
  v7 = [(LUILogFilterView *)self existingPredicatesTableView];
  [v7 setFrame:{10.0, 30.0, v5, v6}];

  v8 = [(LUILogFilterView *)self existingPredicatesTableView];
  [v8 frame];
  v9 = CGRectGetMaxX(v42) + 10.0;
  [(LUILogFilterView *)self frame];
  v10 = CGRectGetHeight(v43) + -30.0 + -300.0 + -10.0;
  v11 = [(LUILogFilterView *)self applyButton];
  [v11 setFrame:{v9, 30.0, 100.0, v10}];

  v12 = [(LUILogFilterView *)self existingPredicatesTableView];
  [v12 frame];
  v13 = CGRectGetMaxY(v44) + 10.0;
  [(LUILogFilterView *)self frame];
  v14 = CGRectGetWidth(v45) + -20.0;
  v15 = [(LUILogFilterView *)self horizontalSeparatorLine];
  [v15 setFrame:{10.0, v13, v14, 1.5}];

  v16 = [(LUILogFilterView *)self horizontalSeparatorLine];
  [v16 frame];
  v17 = CGRectGetMaxY(v46) + 10.0;
  [(LUILogFilterView *)self frame];
  v18 = CGRectGetWidth(v47) + -20.0;
  v19 = [(LUILogFilterView *)self enterPredicateStackView];
  [v19 setFrame:{10.0, v17, v18, 30.0}];

  [(LUILogFilterView *)self frame];
  v20 = (CGRectGetWidth(v48) * 0.5 + -40.0) * 0.5;
  v21 = [(LUILogFilterView *)self enterPredicateStackView];
  [v21 frame];
  v22 = CGRectGetMaxY(v49) + 10.0;

  [(LUILogFilterView *)self frame];
  v23 = CGRectGetHeight(v50) - v22 + -10.0;
  v24 = [(LUILogFilterView *)self predicatesKeyCandidateCollectionView];
  [v24 setFrame:{10.0, v22, v20, v23}];

  v25 = [(LUILogFilterView *)self predicatesKeyCandidateCollectionView];
  [v25 frame];
  v26 = CGRectGetMaxX(v51) + 10.0;
  v27 = [(LUILogFilterView *)self veriticalSeparatorLineFirst];
  [v27 setFrame:{v26, v22, 1.5, v23}];

  v28 = [(LUILogFilterView *)self predicatesKeyCandidateCollectionView];
  [v28 frame];
  v29 = CGRectGetMaxX(v52) + 20.0;

  v30 = [(LUILogFilterView *)self predicatesComparisonCandidateCollectionView];
  [v30 setFrame:{v29, v22, v20, v23}];

  v31 = [(LUILogFilterView *)self predicatesComparisonCandidateCollectionView];
  [v31 frame];
  v32 = CGRectGetMaxX(v53) + 10.0;
  v33 = [(LUILogFilterView *)self veriticalSeparatorLineSecond];
  [v33 setFrame:{v32, v22, 1.5, v23}];

  v34 = [(LUILogFilterView *)self predicatesComparisonCandidateCollectionView];
  [v34 frame];
  v35 = CGRectGetMaxX(v54) + 20.0;

  [(LUILogFilterView *)self frame];
  v36 = CGRectGetWidth(v55) - v35 + -10.0;
  v37 = [(LUILogFilterView *)self predicatesValueCandidateCollectionView];
  [v37 setFrame:{v35, v22, v36, v23}];
}

- (id)_createEnterPredicateStackViewWithSubViews:(id)a3
{
  v3 = MEMORY[0x277D75A68];
  v4 = a3;
  v5 = [[v3 alloc] initWithArrangedSubviews:v4];

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
  v4 = [MEMORY[0x277D75348] whiteColor];
  [v2 setTextColor:v4];

  [v2 sizeToFit];

  return v2;
}

- (id)_createEnterLabel
{
  v2 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, 0.0, 30.0}];
  v3 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
  [v2 setFont:v3];

  [v2 setText:@"   Enter Predicate: "];
  v4 = [MEMORY[0x277D75348] whiteColor];
  [v2 setTextColor:v4];

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
  v4 = [v3 layer];
  [v4 setCornerRadius:15.0];

  v5 = [MEMORY[0x277D75348] whiteColor];
  v6 = [v5 CGColor];
  v7 = [v3 layer];
  [v7 setBorderColor:v6];

  v8 = [v3 layer];
  [v8 setBorderWidth:1.5];

  LODWORD(v9) = 1132068864;
  [v3 setContentHuggingPriority:0 forAxis:v9];
  LODWORD(v10) = 1132068864;
  [v3 setContentCompressionResistancePriority:0 forAxis:v10];
  [v3 setClearButtonMode:3];
  v11 = [MEMORY[0x277D75348] whiteColor];
  [v3 setTextColor:v11];

  v12 = [MEMORY[0x277D75348] whiteColor];
  v13 = [v3 _clearButton];
  [v13 setTintColor:v12];

  [v3 _setForcesClearButtonHighContrastAppearance:1];
  [v3 setAutocorrectionType:1];
  [v3 setAutocapitalizationType:0];
  [v3 setSmartQuotesType:1];
  [v3 setSpellCheckingType:1];
  [v3 setPlaceholder:@"e.g: process == 'LoginUI'"];
  v14 = [MEMORY[0x277D75348] lightGrayColor];
  v15 = [v3 _placeholderLabel];
  [v15 setTextColor:v14];

  v16 = [(LUILogFilterView *)self _createEnterLabel];
  [v3 setLeftView:v16];
  [v3 setLeftViewMode:3];

  return v3;
}

- (id)_createButtonWithTitle:(id)a3
{
  v3 = MEMORY[0x277D75220];
  v4 = a3;
  v5 = [[v3 alloc] initWithFrame:{0.0, 0.0, 80.0, 30.0}];
  [v5 setTitle:v4 forState:0];

  v6 = [MEMORY[0x277D75348] whiteColor];
  [v5 setTitleColor:v6 forState:0];

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
  v5 = [MEMORY[0x277D75348] clearColor];
  [v4 setBackgroundColor:v5];

  return v4;
}

- (id)_createTableView
{
  v2 = objc_alloc(MEMORY[0x277D75B40]);
  v3 = [v2 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v4 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setAllowsSelection:0];

  return v3;
}

- (id)_createSeparatorLine
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277D75348] whiteColor];
  [v2 setBackgroundColor:v3];

  return v2;
}

@end