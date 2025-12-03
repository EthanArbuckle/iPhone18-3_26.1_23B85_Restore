@interface CKConversationSearchResultCell
+ (Class)conversationListCellClass;
+ (id)reuseIdentifier;
- (CKConversationSearchResultCell)initWithFrame:(CGRect)frame;
- (CKConversationSearchResultCellDelegate)delegate;
- (NSString)resultIdentifier;
- (UIEdgeInsets)marginInsets;
- (double)widthForDeterminingAvatarVisibility;
- (id)configurationState;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)configureWithQueryResult:(id)result searchText:(id)text mode:(unint64_t)mode;
- (void)forwardStateToEmbeddedCell:(id)cell;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshForSearchTextIfNeeded:(id)needed;
- (void)setCellLayout:(id)layout;
- (void)setMarginInsets:(UIEdgeInsets)insets;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation CKConversationSearchResultCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (Class)conversationListCellClass
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 isAccessibilityPreferredContentSizeCategory];

  v3 = objc_opt_class();

  return v3;
}

- (NSString)resultIdentifier
{
  result = [(CKConversationSearchResultCell *)self result];
  identifier = [result identifier];

  return identifier;
}

- (void)configureWithQueryResult:(id)result searchText:(id)text mode:(unint64_t)mode
{
  textCopy = text;
  resultCopy = result;
  [(CKConversationSearchResultCell *)self setSearchText:textCopy];
  [(CKConversationSearchResultCell *)self setResult:resultCopy];
  searchCell = [(CKConversationSearchResultCell *)self searchCell];
  [searchCell configureWithQueryResult:resultCopy searchText:textCopy];
}

- (void)refreshForSearchTextIfNeeded:(id)needed
{
  neededCopy = needed;
  searchText = [(CKConversationSearchResultCell *)self searchText];
  v5 = [searchText isEqualToString:neededCopy];

  v6 = neededCopy;
  if ((v5 & 1) == 0)
  {
    [(CKConversationSearchResultCell *)self setSearchText:neededCopy];
    searchText2 = [(CKConversationSearchResultCell *)self searchText];
    if ([searchText2 length])
    {
      result = [(CKConversationSearchResultCell *)self result];

      v6 = neededCopy;
      if (!result)
      {
        goto LABEL_6;
      }

      searchText2 = [(CKConversationSearchResultCell *)self searchCell];
      result2 = [(CKConversationSearchResultCell *)self result];
      searchText3 = [(CKConversationSearchResultCell *)self searchText];
      [searchText2 configureWithQueryResult:result2 searchText:searchText3];
    }

    v6 = neededCopy;
  }

LABEL_6:
}

- (void)setCellLayout:(id)layout
{
  layoutCopy = layout;
  objc_storeStrong(&self->_cellLayout, layout);
  searchCell = [(CKConversationSearchResultCell *)self searchCell];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    cellLayout = [(CKConversationSearchResultCell *)self cellLayout];

    if (!cellLayout)
    {
      [(CKConversationSearchResultCell *)self setCellLayout:a2];
    }

    cellLayout2 = [(CKConversationSearchResultCell *)self cellLayout];
    searchCell2 = [(CKConversationSearchResultCell *)self searchCell];
    [searchCell2 setCellLayout:cellLayout2];
  }
}

- (double)widthForDeterminingAvatarVisibility
{
  delegate = [(CKConversationSearchResultCell *)self delegate];
  [delegate widthForDeterminingAvatarVisibility];
  v4 = v3;

  return v4;
}

- (CKConversationSearchResultCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = CKConversationSearchResultCell;
  v7 = [(CKConversationSearchResultCell *)&v11 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(objc_msgSend(objc_opt_class() "conversationListCellClass"))];
    [v8 setDelegate:v7];
    [(CKConversationSearchResultCell *)v7 setSearchCell:v8];
    contentView = [(CKConversationSearchResultCell *)v7 contentView];
    [contentView addSubview:v8];
  }

  return v7;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKConversationSearchResultCell;
  [(CKConversationSearchResultCell *)&v4 prepareForReuse];
  searchCell = [(CKConversationSearchResultCell *)self searchCell];
  [searchCell prepareForReuse];

  [(CKConversationSearchResultCell *)self setSearchText:0];
  [(CKConversationSearchResultCell *)self setResult:0];
}

- (void)setMarginInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  [(CKConversationSearchResultCell *)self marginInsets];
  if (left != v11 || top != v8 || right != v10 || bottom != v9)
  {
    self->_marginInsets.top = top;
    self->_marginInsets.left = left;
    self->_marginInsets.bottom = bottom;
    self->_marginInsets.right = right;

    [(CKConversationSearchResultCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = CKConversationSearchResultCell;
  [(CKConversationSearchResultCell *)&v15 layoutSubviews];
  contentView = [(CKConversationSearchResultCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  searchCell = [(CKConversationSearchResultCell *)self searchCell];
  [(CKConversationSearchResultCell *)self marginInsets];
  [searchCell setMarginInsets:?];

  searchCell2 = [(CKConversationSearchResultCell *)self searchCell];
  [searchCell2 setFrame:{v5, v7, v9, v11}];

  searchCell3 = [(CKConversationSearchResultCell *)self searchCell];
  [searchCell3 layoutIfNeeded];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  [attributesCopy frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v11 isAccessibilityPreferredContentSizeCategory];

  if (isAccessibilityPreferredContentSizeCategory)
  {
    searchCell = [(CKConversationSearchResultCell *)self searchCell];
    [searchCell layoutIfNeeded];

    searchCell2 = [(CKConversationSearchResultCell *)self searchCell];
    [searchCell2 sizeThatFits:{v10, 1.79769313e308}];
    v16 = v15;
  }

  else
  {
    v17 = +[CKUIBehavior sharedBehaviors];
    traitCollection = [(CKConversationSearchResultCell *)self traitCollection];
    [traitCollection displayScale];
    [v17 searchMessageCellHeightForDisplayScale:?];
    v16 = v19;
  }

  [attributesCopy setFrame:{v6, v8, v10, v16}];

  return attributesCopy;
}

- (void)forwardStateToEmbeddedCell:(id)cell
{
  cellCopy = cell;
  searchCell = [(CKConversationSearchResultCell *)self searchCell];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    searchCell2 = [(CKConversationSearchResultCell *)self searchCell];
    [searchCell2 updateWithForwardedConfigurationState:cellCopy];
  }
}

- (id)configurationState
{
  v4.receiver = self;
  v4.super_class = CKConversationSearchResultCell;
  configurationState = [(CKConversationSearchResultCell *)&v4 configurationState];
  if (CKIsRunningInMacCatalyst() && [configurationState isSelected])
  {
    [configurationState setFocused:1];
  }

  return configurationState;
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  [(CKConversationSearchResultCell *)self forwardStateToEmbeddedCell:?];
  if ([(CKConversationSearchResultCell *)self shouldInsetResults])
  {
    [MEMORY[0x1E69DC6E8] listPlainCellConfiguration];
  }

  else
  {
    [MEMORY[0x1E69DC6E8] listSidebarCellConfiguration];
  }
  v4 = ;
  v5 = +[CKUIBehavior sharedBehaviors];
  traitCollection = [(CKConversationSearchResultCell *)self traitCollection];
  v7 = [v5 useSelectedAppearanceForConversationCellState:stateCopy traitCollection:traitCollection];

  if (CKIsRunningInMacCatalyst() && [stateCopy isSelected])
  {
    [stateCopy setFocused:1];
  }

  v8 = [v4 updatedConfigurationForState:stateCopy];

  if (v7)
  {
    v9 = +[CKUIBehavior sharedBehaviors];
    theme = [v9 theme];
    conversationListSelectedCellColor = [theme conversationListSelectedCellColor];

    if (conversationListSelectedCellColor)
    {
      v12 = +[CKUIBehavior sharedBehaviors];
      theme2 = [v12 theme];
      conversationListSelectedCellColor2 = [theme2 conversationListSelectedCellColor];
      [v8 setBackgroundColor:conversationListSelectedCellColor2];
    }
  }

  [(CKConversationSearchResultCell *)self setBackgroundConfiguration:v8];
}

- (UIEdgeInsets)marginInsets
{
  top = self->_marginInsets.top;
  left = self->_marginInsets.left;
  bottom = self->_marginInsets.bottom;
  right = self->_marginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CKConversationSearchResultCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setCellLayout:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:a2 object:a1 file:@"CKConversationSearchResultCell.m" lineNumber:73 description:{@"%@ needs a cell layout.", v5}];
}

@end