@interface LUILogViewerView
- (LUILogViewerView)initWithFrame:(CGRect)a3;
- (LUILogViewerViewDelegate)delegate;
- (id)_createButtonWithTitle:(id)a3 action:(SEL)a4;
- (id)_createSearchBar;
- (id)_createSearchResultLabel;
- (void)_highlightButton:(id)a3 highlight:(BOOL)a4;
- (void)_setup;
- (void)clearButtonTapped:(id)a3;
- (void)closeButtonTapped:(id)a3;
- (void)filterButtonTapped:(id)a3;
- (void)highlightFilterButton:(BOOL)a3;
- (void)highlightLogButton:(BOOL)a3;
- (void)layoutSubviews;
- (void)leftCaretButtonTapped:(id)a3;
- (void)logButtonTapped:(id)a3;
- (void)resetSearchResultLabel;
- (void)rightCaretButtonTapped:(id)a3;
- (void)switchClearButtonTitle:(BOOL)a3;
- (void)updateSearchResultLabelWithTotalResult:(unint64_t)a3 currentIndex:(unint64_t)a4;
@end

@implementation LUILogViewerView

- (LUILogViewerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = LUILogViewerView;
  v3 = [(LUILogViewerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(LUILogViewerView *)v3 _setup];
  }

  return v4;
}

- (void)_setup
{
  v30[7] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75348] blackColor];
  v4 = [v3 colorWithAlphaComponent:0.8];
  [(LUILogViewerView *)self setBackgroundColor:v4];

  v5 = [(LUILogViewerView *)self _createCloseButton];
  closeButton = self->_closeButton;
  self->_closeButton = v5;

  [(LUILogViewerView *)self addSubview:self->_closeButton];
  v7 = objc_opt_new();
  contentHolderView = self->_contentHolderView;
  self->_contentHolderView = v7;

  [(LUILogViewerView *)self addSubview:self->_contentHolderView];
  v9 = [(LUILogViewerView *)self _createLogButton];
  logButton = self->_logButton;
  self->_logButton = v9;

  v11 = [(LUILogViewerView *)self _createClearButton];
  clearButton = self->_clearButton;
  self->_clearButton = v11;

  v13 = [(LUILogViewerView *)self _createFilterButton];
  filterButton = self->_filterButton;
  self->_filterButton = v13;

  v15 = [(LUILogViewerView *)self _createSearchBar];
  searchBar = self->_searchBar;
  self->_searchBar = v15;

  v17 = [(LUILogViewerView *)self _createSearchResultLabel];
  searchResultLabel = self->_searchResultLabel;
  self->_searchResultLabel = v17;

  v19 = [(LUILogViewerView *)self _createLeftCaretButton];
  leftCaretButton = self->_leftCaretButton;
  self->_leftCaretButton = v19;

  v21 = [(LUILogViewerView *)self _createRightCaretButton];
  rightCaretButton = self->_rightCaretButton;
  self->_rightCaretButton = v21;

  v23 = objc_alloc(MEMORY[0x277D75A68]);
  v24 = self->_clearButton;
  v30[0] = self->_logButton;
  v30[1] = v24;
  v25 = self->_searchBar;
  v30[2] = self->_filterButton;
  v30[3] = v25;
  v26 = self->_leftCaretButton;
  v30[4] = self->_searchResultLabel;
  v30[5] = v26;
  v30[6] = self->_rightCaretButton;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:7];
  v28 = [v23 initWithArrangedSubviews:v27];
  buttonStack = self->_buttonStack;
  self->_buttonStack = v28;

  [(UIStackView *)self->_buttonStack setAlignment:3];
  [(UIStackView *)self->_buttonStack setAxis:0];
  [(UIStackView *)self->_buttonStack setSpacing:20.0];
  [(LUILogViewerView *)self addSubview:self->_buttonStack];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = LUILogViewerView;
  [(LUILogViewerView *)&v10 layoutSubviews];
  [(LUILogViewerView *)self frame];
  v3 = CGRectGetWidth(v11) + -80.0;
  v4 = [(LUILogViewerView *)self closeButton];
  [v4 setFrame:{v3, 10.0, 80.0, 30.0}];

  [(LUILogViewerView *)self frame];
  v5 = CGRectGetWidth(v12) + -20.0;
  [(LUILogViewerView *)self frame];
  v6 = CGRectGetHeight(v13) + -60.0;
  v7 = [(LUILogViewerView *)self contentHolderView];
  [v7 setFrame:{10.0, 50.0, v5, v6}];

  [(LUILogViewerView *)self frame];
  v8 = CGRectGetWidth(v14) + -110.0;
  v9 = [(LUILogViewerView *)self buttonStack];
  [v9 setFrame:{10.0, 10.0, v8, 30.0}];
}

- (void)switchClearButtonTitle:(BOOL)a3
{
  v3 = a3;
  v4 = [(LUILogViewerView *)self clearButton];
  v6 = v4;
  if (v3)
  {
    v5 = @"Clear";
  }

  else
  {
    v5 = @"Stop";
  }

  [v4 setTitle:v5 forState:0];
}

- (void)highlightFilterButton:(BOOL)a3
{
  v3 = a3;
  v5 = [(LUILogViewerView *)self filterButton];
  [(LUILogViewerView *)self _highlightButton:v5 highlight:v3];
}

- (void)highlightLogButton:(BOOL)a3
{
  v3 = a3;
  v5 = [(LUILogViewerView *)self logButton];
  [(LUILogViewerView *)self _highlightButton:v5 highlight:v3];
}

- (void)_highlightButton:(id)a3 highlight:(BOOL)a4
{
  if (a4)
  {
    v5 = MEMORY[0x277D75348];
    v6 = a3;
    v7 = [v5 whiteColor];
    v8 = [v7 CGColor];
    v9 = [v6 layer];
    [v9 setBorderColor:v8];

    v10 = 1.0;
  }

  else
  {
    v11 = a3;
    v10 = 0.0;
  }

  v12 = [a3 layer];

  [v12 setBorderWidth:v10];
}

- (void)resetSearchResultLabel
{
  v2 = [(LUILogViewerView *)self searchResultLabel];
  [v2 setText:@"0 / 0"];
}

- (void)updateSearchResultLabelWithTotalResult:(unint64_t)a3 currentIndex:(unint64_t)a4
{
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu / %lu", a4, a3];
  v5 = [(LUILogViewerView *)self searchResultLabel];
  [v5 setText:v6];
}

- (id)_createButtonWithTitle:(id)a3 action:(SEL)a4
{
  v6 = MEMORY[0x277D75220];
  v7 = a3;
  v8 = [[v6 alloc] initWithFrame:{0.0, 0.0, 0.0, 30.0}];
  [v8 setTitle:v7 forState:0];

  v9 = [MEMORY[0x277D75348] whiteColor];
  [v8 setTitleColor:v9 forState:0];

  [v8 addTarget:self action:a4 forControlEvents:64];
  LODWORD(v10) = 1148846080;
  [v8 setContentHuggingPriority:0 forAxis:v10];

  return v8;
}

- (id)_createSearchBar
{
  v2 = [objc_alloc(MEMORY[0x277D759E8]) initWithFrame:{0.0, 0.0, 200.0, 30.0}];
  v3 = [MEMORY[0x277D75348] whiteColor];
  [v2 setBarTintColor:v3];

  [v2 setPlaceholder:@"Search..."];
  [v2 setAutocapitalizationType:0];
  [v2 setAutocorrectionType:1];
  LODWORD(v4) = 1132068864;
  [v2 setContentHuggingPriority:0 forAxis:v4];

  return v2;
}

- (id)_createSearchResultLabel
{
  v2 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, 0.0, 30.0}];
  [v2 setTextAlignment:1];
  v3 = [MEMORY[0x277D75348] whiteColor];
  [v2 setTextColor:v3];

  [v2 setText:@"0 / 0"];

  return v2;
}

- (void)closeButtonTapped:(id)a3
{
  v4 = [(LUILogViewerView *)self delegate];
  [v4 logViewerViewCloseButtonTapped:self];
}

- (void)logButtonTapped:(id)a3
{
  v4 = [(LUILogViewerView *)self delegate];
  [v4 logViewerViewLogButtonTapped:self];
}

- (void)clearButtonTapped:(id)a3
{
  v4 = [(LUILogViewerView *)self delegate];
  [v4 logViewerViewClearButtontapped:self];
}

- (void)filterButtonTapped:(id)a3
{
  v4 = [(LUILogViewerView *)self delegate];
  [v4 logViewerFilterButtonTapped:self];
}

- (void)leftCaretButtonTapped:(id)a3
{
  v4 = [(LUILogViewerView *)self delegate];
  [v4 logViewerLeftCaretButtonTapped:self];
}

- (void)rightCaretButtonTapped:(id)a3
{
  v4 = [(LUILogViewerView *)self delegate];
  [v4 logViewerRightCaretButtonTapped:self];
}

- (LUILogViewerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end