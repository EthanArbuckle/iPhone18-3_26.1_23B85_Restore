@interface CKConversationSearchResultCell
+ (Class)conversationListCellClass;
+ (id)reuseIdentifier;
- (CKConversationSearchResultCell)initWithFrame:(CGRect)a3;
- (CKConversationSearchResultCellDelegate)delegate;
- (NSString)resultIdentifier;
- (UIEdgeInsets)marginInsets;
- (double)widthForDeterminingAvatarVisibility;
- (id)configurationState;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)configureWithQueryResult:(id)a3 searchText:(id)a4 mode:(unint64_t)a5;
- (void)forwardStateToEmbeddedCell:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshForSearchTextIfNeeded:(id)a3;
- (void)setCellLayout:(id)a3;
- (void)setMarginInsets:(UIEdgeInsets)a3;
- (void)updateConfigurationUsingState:(id)a3;
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
  v2 = [(CKConversationSearchResultCell *)self result];
  v3 = [v2 identifier];

  return v3;
}

- (void)configureWithQueryResult:(id)a3 searchText:(id)a4 mode:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  [(CKConversationSearchResultCell *)self setSearchText:v7];
  [(CKConversationSearchResultCell *)self setResult:v8];
  v9 = [(CKConversationSearchResultCell *)self searchCell];
  [v9 configureWithQueryResult:v8 searchText:v7];
}

- (void)refreshForSearchTextIfNeeded:(id)a3
{
  v11 = a3;
  v4 = [(CKConversationSearchResultCell *)self searchText];
  v5 = [v4 isEqualToString:v11];

  v6 = v11;
  if ((v5 & 1) == 0)
  {
    [(CKConversationSearchResultCell *)self setSearchText:v11];
    v7 = [(CKConversationSearchResultCell *)self searchText];
    if ([v7 length])
    {
      v8 = [(CKConversationSearchResultCell *)self result];

      v6 = v11;
      if (!v8)
      {
        goto LABEL_6;
      }

      v7 = [(CKConversationSearchResultCell *)self searchCell];
      v9 = [(CKConversationSearchResultCell *)self result];
      v10 = [(CKConversationSearchResultCell *)self searchText];
      [v7 configureWithQueryResult:v9 searchText:v10];
    }

    v6 = v11;
  }

LABEL_6:
}

- (void)setCellLayout:(id)a3
{
  v11 = a3;
  objc_storeStrong(&self->_cellLayout, a3);
  v6 = [(CKConversationSearchResultCell *)self searchCell];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CKConversationSearchResultCell *)self cellLayout];

    if (!v8)
    {
      [(CKConversationSearchResultCell *)self setCellLayout:a2];
    }

    v9 = [(CKConversationSearchResultCell *)self cellLayout];
    v10 = [(CKConversationSearchResultCell *)self searchCell];
    [v10 setCellLayout:v9];
  }
}

- (double)widthForDeterminingAvatarVisibility
{
  v2 = [(CKConversationSearchResultCell *)self delegate];
  [v2 widthForDeterminingAvatarVisibility];
  v4 = v3;

  return v4;
}

- (CKConversationSearchResultCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = CKConversationSearchResultCell;
  v7 = [(CKConversationSearchResultCell *)&v11 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(objc_msgSend(objc_opt_class() "conversationListCellClass"))];
    [v8 setDelegate:v7];
    [(CKConversationSearchResultCell *)v7 setSearchCell:v8];
    v9 = [(CKConversationSearchResultCell *)v7 contentView];
    [v9 addSubview:v8];
  }

  return v7;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKConversationSearchResultCell;
  [(CKConversationSearchResultCell *)&v4 prepareForReuse];
  v3 = [(CKConversationSearchResultCell *)self searchCell];
  [v3 prepareForReuse];

  [(CKConversationSearchResultCell *)self setSearchText:0];
  [(CKConversationSearchResultCell *)self setResult:0];
}

- (void)setMarginInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
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
  v3 = [(CKConversationSearchResultCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKConversationSearchResultCell *)self searchCell];
  [(CKConversationSearchResultCell *)self marginInsets];
  [v12 setMarginInsets:?];

  v13 = [(CKConversationSearchResultCell *)self searchCell];
  [v13 setFrame:{v5, v7, v9, v11}];

  v14 = [(CKConversationSearchResultCell *)self searchCell];
  [v14 layoutIfNeeded];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = +[CKUIBehavior sharedBehaviors];
  v12 = [v11 isAccessibilityPreferredContentSizeCategory];

  if (v12)
  {
    v13 = [(CKConversationSearchResultCell *)self searchCell];
    [v13 layoutIfNeeded];

    v14 = [(CKConversationSearchResultCell *)self searchCell];
    [v14 sizeThatFits:{v10, 1.79769313e308}];
    v16 = v15;
  }

  else
  {
    v17 = +[CKUIBehavior sharedBehaviors];
    v18 = [(CKConversationSearchResultCell *)self traitCollection];
    [v18 displayScale];
    [v17 searchMessageCellHeightForDisplayScale:?];
    v16 = v19;
  }

  [v4 setFrame:{v6, v8, v10, v16}];

  return v4;
}

- (void)forwardStateToEmbeddedCell:(id)a3
{
  v7 = a3;
  v4 = [(CKConversationSearchResultCell *)self searchCell];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKConversationSearchResultCell *)self searchCell];
    [v6 updateWithForwardedConfigurationState:v7];
  }
}

- (id)configurationState
{
  v4.receiver = self;
  v4.super_class = CKConversationSearchResultCell;
  v2 = [(CKConversationSearchResultCell *)&v4 configurationState];
  if (CKIsRunningInMacCatalyst() && [v2 isSelected])
  {
    [v2 setFocused:1];
  }

  return v2;
}

- (void)updateConfigurationUsingState:(id)a3
{
  v15 = a3;
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
  v6 = [(CKConversationSearchResultCell *)self traitCollection];
  v7 = [v5 useSelectedAppearanceForConversationCellState:v15 traitCollection:v6];

  if (CKIsRunningInMacCatalyst() && [v15 isSelected])
  {
    [v15 setFocused:1];
  }

  v8 = [v4 updatedConfigurationForState:v15];

  if (v7)
  {
    v9 = +[CKUIBehavior sharedBehaviors];
    v10 = [v9 theme];
    v11 = [v10 conversationListSelectedCellColor];

    if (v11)
    {
      v12 = +[CKUIBehavior sharedBehaviors];
      v13 = [v12 theme];
      v14 = [v13 conversationListSelectedCellColor];
      [v8 setBackgroundColor:v14];
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