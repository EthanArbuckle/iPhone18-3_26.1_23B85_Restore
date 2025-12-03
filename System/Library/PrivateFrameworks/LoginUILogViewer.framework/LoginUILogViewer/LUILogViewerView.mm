@interface LUILogViewerView
- (LUILogViewerView)initWithFrame:(CGRect)frame;
- (LUILogViewerViewDelegate)delegate;
- (id)_createButtonWithTitle:(id)title action:(SEL)action;
- (id)_createSearchBar;
- (id)_createSearchResultLabel;
- (void)_highlightButton:(id)button highlight:(BOOL)highlight;
- (void)_setup;
- (void)clearButtonTapped:(id)tapped;
- (void)closeButtonTapped:(id)tapped;
- (void)filterButtonTapped:(id)tapped;
- (void)highlightFilterButton:(BOOL)button;
- (void)highlightLogButton:(BOOL)button;
- (void)layoutSubviews;
- (void)leftCaretButtonTapped:(id)tapped;
- (void)logButtonTapped:(id)tapped;
- (void)resetSearchResultLabel;
- (void)rightCaretButtonTapped:(id)tapped;
- (void)switchClearButtonTitle:(BOOL)title;
- (void)updateSearchResultLabelWithTotalResult:(unint64_t)result currentIndex:(unint64_t)index;
@end

@implementation LUILogViewerView

- (LUILogViewerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = LUILogViewerView;
  v3 = [(LUILogViewerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  blackColor = [MEMORY[0x277D75348] blackColor];
  v4 = [blackColor colorWithAlphaComponent:0.8];
  [(LUILogViewerView *)self setBackgroundColor:v4];

  _createCloseButton = [(LUILogViewerView *)self _createCloseButton];
  closeButton = self->_closeButton;
  self->_closeButton = _createCloseButton;

  [(LUILogViewerView *)self addSubview:self->_closeButton];
  v7 = objc_opt_new();
  contentHolderView = self->_contentHolderView;
  self->_contentHolderView = v7;

  [(LUILogViewerView *)self addSubview:self->_contentHolderView];
  _createLogButton = [(LUILogViewerView *)self _createLogButton];
  logButton = self->_logButton;
  self->_logButton = _createLogButton;

  _createClearButton = [(LUILogViewerView *)self _createClearButton];
  clearButton = self->_clearButton;
  self->_clearButton = _createClearButton;

  _createFilterButton = [(LUILogViewerView *)self _createFilterButton];
  filterButton = self->_filterButton;
  self->_filterButton = _createFilterButton;

  _createSearchBar = [(LUILogViewerView *)self _createSearchBar];
  searchBar = self->_searchBar;
  self->_searchBar = _createSearchBar;

  _createSearchResultLabel = [(LUILogViewerView *)self _createSearchResultLabel];
  searchResultLabel = self->_searchResultLabel;
  self->_searchResultLabel = _createSearchResultLabel;

  _createLeftCaretButton = [(LUILogViewerView *)self _createLeftCaretButton];
  leftCaretButton = self->_leftCaretButton;
  self->_leftCaretButton = _createLeftCaretButton;

  _createRightCaretButton = [(LUILogViewerView *)self _createRightCaretButton];
  rightCaretButton = self->_rightCaretButton;
  self->_rightCaretButton = _createRightCaretButton;

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
  closeButton = [(LUILogViewerView *)self closeButton];
  [closeButton setFrame:{v3, 10.0, 80.0, 30.0}];

  [(LUILogViewerView *)self frame];
  v5 = CGRectGetWidth(v12) + -20.0;
  [(LUILogViewerView *)self frame];
  v6 = CGRectGetHeight(v13) + -60.0;
  contentHolderView = [(LUILogViewerView *)self contentHolderView];
  [contentHolderView setFrame:{10.0, 50.0, v5, v6}];

  [(LUILogViewerView *)self frame];
  v8 = CGRectGetWidth(v14) + -110.0;
  buttonStack = [(LUILogViewerView *)self buttonStack];
  [buttonStack setFrame:{10.0, 10.0, v8, 30.0}];
}

- (void)switchClearButtonTitle:(BOOL)title
{
  titleCopy = title;
  clearButton = [(LUILogViewerView *)self clearButton];
  v6 = clearButton;
  if (titleCopy)
  {
    v5 = @"Clear";
  }

  else
  {
    v5 = @"Stop";
  }

  [clearButton setTitle:v5 forState:0];
}

- (void)highlightFilterButton:(BOOL)button
{
  buttonCopy = button;
  filterButton = [(LUILogViewerView *)self filterButton];
  [(LUILogViewerView *)self _highlightButton:filterButton highlight:buttonCopy];
}

- (void)highlightLogButton:(BOOL)button
{
  buttonCopy = button;
  logButton = [(LUILogViewerView *)self logButton];
  [(LUILogViewerView *)self _highlightButton:logButton highlight:buttonCopy];
}

- (void)_highlightButton:(id)button highlight:(BOOL)highlight
{
  if (highlight)
  {
    v5 = MEMORY[0x277D75348];
    buttonCopy = button;
    whiteColor = [v5 whiteColor];
    cGColor = [whiteColor CGColor];
    layer = [buttonCopy layer];
    [layer setBorderColor:cGColor];

    v10 = 1.0;
  }

  else
  {
    buttonCopy2 = button;
    v10 = 0.0;
  }

  layer2 = [button layer];

  [layer2 setBorderWidth:v10];
}

- (void)resetSearchResultLabel
{
  searchResultLabel = [(LUILogViewerView *)self searchResultLabel];
  [searchResultLabel setText:@"0 / 0"];
}

- (void)updateSearchResultLabelWithTotalResult:(unint64_t)result currentIndex:(unint64_t)index
{
  result = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu / %lu", index, result];
  searchResultLabel = [(LUILogViewerView *)self searchResultLabel];
  [searchResultLabel setText:result];
}

- (id)_createButtonWithTitle:(id)title action:(SEL)action
{
  v6 = MEMORY[0x277D75220];
  titleCopy = title;
  v8 = [[v6 alloc] initWithFrame:{0.0, 0.0, 0.0, 30.0}];
  [v8 setTitle:titleCopy forState:0];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v8 setTitleColor:whiteColor forState:0];

  [v8 addTarget:self action:action forControlEvents:64];
  LODWORD(v10) = 1148846080;
  [v8 setContentHuggingPriority:0 forAxis:v10];

  return v8;
}

- (id)_createSearchBar
{
  v2 = [objc_alloc(MEMORY[0x277D759E8]) initWithFrame:{0.0, 0.0, 200.0, 30.0}];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v2 setBarTintColor:whiteColor];

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
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v2 setTextColor:whiteColor];

  [v2 setText:@"0 / 0"];

  return v2;
}

- (void)closeButtonTapped:(id)tapped
{
  delegate = [(LUILogViewerView *)self delegate];
  [delegate logViewerViewCloseButtonTapped:self];
}

- (void)logButtonTapped:(id)tapped
{
  delegate = [(LUILogViewerView *)self delegate];
  [delegate logViewerViewLogButtonTapped:self];
}

- (void)clearButtonTapped:(id)tapped
{
  delegate = [(LUILogViewerView *)self delegate];
  [delegate logViewerViewClearButtontapped:self];
}

- (void)filterButtonTapped:(id)tapped
{
  delegate = [(LUILogViewerView *)self delegate];
  [delegate logViewerFilterButtonTapped:self];
}

- (void)leftCaretButtonTapped:(id)tapped
{
  delegate = [(LUILogViewerView *)self delegate];
  [delegate logViewerLeftCaretButtonTapped:self];
}

- (void)rightCaretButtonTapped:(id)tapped
{
  delegate = [(LUILogViewerView *)self delegate];
  [delegate logViewerRightCaretButtonTapped:self];
}

- (LUILogViewerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end