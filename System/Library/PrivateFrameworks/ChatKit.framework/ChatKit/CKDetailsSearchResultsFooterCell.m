@interface CKDetailsSearchResultsFooterCell
- (CKDetailsSearchResultsFooterCell)initWithFrame:(CGRect)a3;
- (CKDetailsSearchResultsFooterCellDelegate)delegate;
- (UIEdgeInsets)marginInsets;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)layoutSubviews;
- (void)setTitle:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation CKDetailsSearchResultsFooterCell

- (CKDetailsSearchResultsFooterCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v22.receiver = self;
  v22.super_class = CKDetailsSearchResultsFooterCell;
  v7 = [(CKDetailsSearchResultsFooterCell *)&v22 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DD020]) initWithFrame:0 style:{x, y, width, height}];
    [v8 setDataSource:v7];
    [v8 setDelegate:v7];
    [v8 setAlwaysBounceVertical:0];
    [v8 setAlwaysBounceHorizontal:0];
    [v8 setScrollEnabled:0];
    [v8 registerClass:objc_opt_class() forCellReuseIdentifier:@"DetailsFooter"];
    [v8 setSeparatorStyle:0];
    [(CKDetailsSearchResultsFooterCell *)v7 setTableView:v8];
    v9 = [(CKDetailsSearchResultsFooterCell *)v7 contentView];
    [v9 addSubview:v8];

    if (CKIsRunningInMacCatalyst())
    {
      v10 = +[CKUIBehavior sharedBehaviors];
      v11 = [v10 theme];
      v12 = [v11 detailsHeaderFooterContentViewBackgroundColor];
      [v8 setBackgroundColor:v12];

      v13 = [(CKDetailsSearchResultsFooterCell *)v7 contentView];
      v14 = +[CKUIBehavior sharedBehaviors];
      v15 = [v14 theme];
      v16 = [v15 detailsHeaderFooterContentViewBackgroundColor];
      [v13 setBackgroundColor:v16];

      v17 = [(CKDetailsSearchResultsFooterCell *)v7 backgroundView];
      v18 = +[CKUIBehavior sharedBehaviors];
      v19 = [v18 theme];
      v20 = [v19 detailsHeaderFooterContentViewBackgroundColor];
      [v17 setBackgroundColor:v20];
    }
  }

  return v7;
}

- (void)setTitle:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    v4 = [v7 copy];
    title = self->_title;
    self->_title = v4;

    v6 = [(CKDetailsSearchResultsFooterCell *)self tableView];
    [v6 reloadData];
  }
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CKDetailsSearchResultsFooterCell;
  [(CKDetailsSearchResultsFooterCell *)&v14 layoutSubviews];
  [(CKDetailsSearchResultsFooterCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CKDetailsSearchResultsFooterCell *)self tableView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(CKDetailsSearchResultsFooterCell *)self contentView];
  v13 = [v12 layer];
  [v13 setCornerRadius:10.0];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(CKDetailsSearchResultsFooterCell *)self tableView];
  v21.origin.x = v6;
  v21.origin.y = v8;
  v21.size.width = v10;
  v21.size.height = v12;
  [v13 sizeThatFits:{CGRectGetWidth(v21), 1.79769313e308}];
  v15 = v14;

  v16 = +[CKUIBehavior sharedBehaviors];
  [v16 searchResultsTitleHeaderDetailsTopPadding];
  v18 = v15 + v17;

  [v4 setFrame:{v6, v8, v10, v18}];

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:{@"DetailsFooter", a4}];
  v6 = [v5 textLabel];
  v7 = [(CKDetailsSearchResultsFooterCell *)self title];
  [v6 setText:v7];

  v8 = [v5 textLabel];
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 theme];
  v11 = [v10 appTintColor];
  [v8 setTextColor:v11];

  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = [v12 theme];
  v14 = [v13 detailsHeaderFooterContentViewBackgroundColor];
  [v5 setBackgroundColor:v14];

  v15 = [v5 contentView];
  v16 = +[CKUIBehavior sharedBehaviors];
  v17 = [v16 theme];
  v18 = [v17 detailsHeaderFooterContentViewBackgroundColor];
  [v15 setBackgroundColor:v18];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [(CKDetailsSearchResultsFooterCell *)self delegate];
  [v7 searchDetailsFooterCellShowAllTapped:self];

  [v8 deselectRowAtIndexPath:v6 animated:1];
}

- (UIEdgeInsets)marginInsets
{
  top = self->marginInsets.top;
  left = self->marginInsets.left;
  bottom = self->marginInsets.bottom;
  right = self->marginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CKDetailsSearchResultsFooterCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end