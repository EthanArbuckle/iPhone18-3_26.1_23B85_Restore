@interface BookmarksTableViewCellLayoutManager
+ (id)sharedManager;
- (CGRect)accessoryEndingRectForCell:(id)cell forNewEditingState:(BOOL)state showingDeleteConfirmation:(BOOL)confirmation;
- (CGRect)accessoryStartingRectForCell:(id)cell forNewEditingState:(BOOL)state showingDeleteConfirmation:(BOOL)confirmation;
- (CGRect)textRectForCell:(id)cell rowWidth:(double)width forSizing:(BOOL)sizing;
- (int64_t)_numberOfLinesForCurrentContentSize;
- (void)layoutSubviewsOfCell:(id)cell;
@end

@implementation BookmarksTableViewCellLayoutManager

+ (id)sharedManager
{
  v3 = sharedManager_sharedManager;
  if (!sharedManager_sharedManager)
  {
    v4 = objc_alloc_init(self);
    v5 = sharedManager_sharedManager;
    sharedManager_sharedManager = v4;

    v3 = sharedManager_sharedManager;
  }

  return v3;
}

- (CGRect)textRectForCell:(id)cell rowWidth:(double)width forSizing:(BOOL)sizing
{
  sizingCopy = sizing;
  cellCopy = cell;
  v22.receiver = self;
  v22.super_class = BookmarksTableViewCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v22 textRectForCell:cellCopy rowWidth:sizingCopy forSizing:width];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (![(UITableViewCellLayoutManager *)self accessoryShouldAppearForCell:cellCopy])
  {
    [cellCopy separatorInset];
    v14 = v14 - v17;
  }

  v18 = v10;
  v19 = v12;
  v20 = v14;
  v21 = v16;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)accessoryStartingRectForCell:(id)cell forNewEditingState:(BOOL)state showingDeleteConfirmation:(BOOL)confirmation
{
  confirmationCopy = confirmation;
  stateCopy = state;
  cellCopy = cell;
  v18.receiver = self;
  v18.super_class = BookmarksTableViewCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v18 accessoryStartingRectForCell:cellCopy forNewEditingState:stateCopy showingDeleteConfirmation:confirmationCopy];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  if (!CGRectIsEmpty(v19))
  {
    [cellCopy separatorInset];
    x = x - v13;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)accessoryEndingRectForCell:(id)cell forNewEditingState:(BOOL)state showingDeleteConfirmation:(BOOL)confirmation
{
  confirmationCopy = confirmation;
  stateCopy = state;
  cellCopy = cell;
  v18.receiver = self;
  v18.super_class = BookmarksTableViewCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v18 accessoryEndingRectForCell:cellCopy forNewEditingState:stateCopy showingDeleteConfirmation:confirmationCopy];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  if (!CGRectIsEmpty(v19))
  {
    [cellCopy separatorInset];
    x = x - v13;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (int64_t)_numberOfLinesForCurrentContentSize
{
  currentContentSizeCategory = [(BookmarksTableViewCellLayoutManager *)self currentContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(currentContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)layoutSubviewsOfCell:(id)cell
{
  cellCopy = cell;
  v32.receiver = self;
  v32.super_class = BookmarksTableViewCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v32 layoutSubviewsOfCell:cellCopy];
  _shouldReverseLayoutDirection = [cellCopy _shouldReverseLayoutDirection];
  [cellCopy separatorInset];
  v7 = v6;
  currentContentSizeCategory = [(BookmarksTableViewCellLayoutManager *)self currentContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(currentContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v7 = 20.0;
  }

  imageView = [cellCopy imageView];
  [imageView frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (_shouldReverseLayoutDirection)
  {
    contentView = [cellCopy contentView];
    [contentView bounds];
    MaxX = CGRectGetMaxX(v33);

    _SFRoundFloatToPixels();
    v20 = fmin(MaxX - (v7 - v19 - v14) - v14, MaxX + -8.0);
  }

  else
  {
    _SFRoundFloatToPixels();
    v20 = fmax(v7 - v21 - v14, 8.0);
  }

  [imageView setFrame:{v20, v12, v14, v16}];
  textLabel = [cellCopy textLabel];
  [textLabel setNumberOfLines:{-[BookmarksTableViewCellLayoutManager _numberOfLinesForCurrentContentSize](self, "_numberOfLinesForCurrentContentSize")}];
  [textLabel frame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  if (_shouldReverseLayoutDirection)
  {
    contentView2 = [cellCopy contentView];
    [contentView2 bounds];
    v30 = CGRectGetMaxX(v34) - v7 - v26;

    [cellCopy frame];
    [(BookmarksTableViewCellLayoutManager *)self textRectForCell:cellCopy rowWidth:0 forSizing:CGRectGetWidth(v35)];
    v31 = fmin(v26, CGRectGetMaxX(v36) - v30);
    v7 = v30 + v26 - v31;
  }

  else
  {
    [cellCopy frame];
    [(BookmarksTableViewCellLayoutManager *)self textRectForCell:cellCopy rowWidth:0 forSizing:CGRectGetWidth(v37)];
    v31 = fmin(v26, CGRectGetMaxX(v38) - v7);
  }

  [textLabel setFrame:{v7, v24, v31, v28}];
}

@end