@interface CKDetailsSearchResultsFooterCell
- (CKDetailsSearchResultsFooterCell)initWithFrame:(CGRect)frame;
- (CKDetailsSearchResultsFooterCellDelegate)delegate;
- (UIEdgeInsets)marginInsets;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)layoutSubviews;
- (void)setTitle:(id)title;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation CKDetailsSearchResultsFooterCell

- (CKDetailsSearchResultsFooterCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
    contentView = [(CKDetailsSearchResultsFooterCell *)v7 contentView];
    [contentView addSubview:v8];

    if (CKIsRunningInMacCatalyst())
    {
      v10 = +[CKUIBehavior sharedBehaviors];
      theme = [v10 theme];
      detailsHeaderFooterContentViewBackgroundColor = [theme detailsHeaderFooterContentViewBackgroundColor];
      [v8 setBackgroundColor:detailsHeaderFooterContentViewBackgroundColor];

      contentView2 = [(CKDetailsSearchResultsFooterCell *)v7 contentView];
      v14 = +[CKUIBehavior sharedBehaviors];
      theme2 = [v14 theme];
      detailsHeaderFooterContentViewBackgroundColor2 = [theme2 detailsHeaderFooterContentViewBackgroundColor];
      [contentView2 setBackgroundColor:detailsHeaderFooterContentViewBackgroundColor2];

      backgroundView = [(CKDetailsSearchResultsFooterCell *)v7 backgroundView];
      v18 = +[CKUIBehavior sharedBehaviors];
      theme3 = [v18 theme];
      detailsHeaderFooterContentViewBackgroundColor3 = [theme3 detailsHeaderFooterContentViewBackgroundColor];
      [backgroundView setBackgroundColor:detailsHeaderFooterContentViewBackgroundColor3];
    }
  }

  return v7;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    v4 = [titleCopy copy];
    title = self->_title;
    self->_title = v4;

    tableView = [(CKDetailsSearchResultsFooterCell *)self tableView];
    [tableView reloadData];
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
  tableView = [(CKDetailsSearchResultsFooterCell *)self tableView];
  [tableView setFrame:{v4, v6, v8, v10}];

  contentView = [(CKDetailsSearchResultsFooterCell *)self contentView];
  layer = [contentView layer];
  [layer setCornerRadius:10.0];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  [attributesCopy frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  tableView = [(CKDetailsSearchResultsFooterCell *)self tableView];
  v21.origin.x = v6;
  v21.origin.y = v8;
  v21.size.width = v10;
  v21.size.height = v12;
  [tableView sizeThatFits:{CGRectGetWidth(v21), 1.79769313e308}];
  v15 = v14;

  v16 = +[CKUIBehavior sharedBehaviors];
  [v16 searchResultsTitleHeaderDetailsTopPadding];
  v18 = v15 + v17;

  [attributesCopy setFrame:{v6, v8, v10, v18}];

  return attributesCopy;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:{@"DetailsFooter", path}];
  textLabel = [v5 textLabel];
  title = [(CKDetailsSearchResultsFooterCell *)self title];
  [textLabel setText:title];

  textLabel2 = [v5 textLabel];
  v9 = +[CKUIBehavior sharedBehaviors];
  theme = [v9 theme];
  appTintColor = [theme appTintColor];
  [textLabel2 setTextColor:appTintColor];

  v12 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v12 theme];
  detailsHeaderFooterContentViewBackgroundColor = [theme2 detailsHeaderFooterContentViewBackgroundColor];
  [v5 setBackgroundColor:detailsHeaderFooterContentViewBackgroundColor];

  contentView = [v5 contentView];
  v16 = +[CKUIBehavior sharedBehaviors];
  theme3 = [v16 theme];
  detailsHeaderFooterContentViewBackgroundColor2 = [theme3 detailsHeaderFooterContentViewBackgroundColor];
  [contentView setBackgroundColor:detailsHeaderFooterContentViewBackgroundColor2];

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  delegate = [(CKDetailsSearchResultsFooterCell *)self delegate];
  [delegate searchDetailsFooterCellShowAllTapped:self];

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
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