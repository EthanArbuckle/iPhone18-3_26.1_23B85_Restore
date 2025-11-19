@interface BookmarksTableViewCellLayoutManager
+ (id)sharedManager;
- (CGRect)accessoryEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5;
- (CGRect)accessoryStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5;
- (CGRect)textRectForCell:(id)a3 rowWidth:(double)a4 forSizing:(BOOL)a5;
- (int64_t)_numberOfLinesForCurrentContentSize;
- (void)layoutSubviewsOfCell:(id)a3;
@end

@implementation BookmarksTableViewCellLayoutManager

+ (id)sharedManager
{
  v3 = sharedManager_sharedManager;
  if (!sharedManager_sharedManager)
  {
    v4 = objc_alloc_init(a1);
    v5 = sharedManager_sharedManager;
    sharedManager_sharedManager = v4;

    v3 = sharedManager_sharedManager;
  }

  return v3;
}

- (CGRect)textRectForCell:(id)a3 rowWidth:(double)a4 forSizing:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v22.receiver = self;
  v22.super_class = BookmarksTableViewCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v22 textRectForCell:v8 rowWidth:v5 forSizing:a4];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (![(UITableViewCellLayoutManager *)self accessoryShouldAppearForCell:v8])
  {
    [v8 separatorInset];
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

- (CGRect)accessoryStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v18.receiver = self;
  v18.super_class = BookmarksTableViewCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v18 accessoryStartingRectForCell:v8 forNewEditingState:v6 showingDeleteConfirmation:v5];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  if (!CGRectIsEmpty(v19))
  {
    [v8 separatorInset];
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

- (CGRect)accessoryEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v18.receiver = self;
  v18.super_class = BookmarksTableViewCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v18 accessoryEndingRectForCell:v8 forNewEditingState:v6 showingDeleteConfirmation:v5];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  if (!CGRectIsEmpty(v19))
  {
    [v8 separatorInset];
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
  v2 = [(BookmarksTableViewCellLayoutManager *)self currentContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v2);

  if (IsAccessibilityCategory)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)layoutSubviewsOfCell:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = BookmarksTableViewCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v32 layoutSubviewsOfCell:v4];
  v5 = [v4 _shouldReverseLayoutDirection];
  [v4 separatorInset];
  v7 = v6;
  v8 = [(BookmarksTableViewCellLayoutManager *)self currentContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v8);

  if (IsAccessibilityCategory)
  {
    v7 = 20.0;
  }

  v10 = [v4 imageView];
  [v10 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (v5)
  {
    v17 = [v4 contentView];
    [v17 bounds];
    MaxX = CGRectGetMaxX(v33);

    _SFRoundFloatToPixels();
    v20 = fmin(MaxX - (v7 - v19 - v14) - v14, MaxX + -8.0);
  }

  else
  {
    _SFRoundFloatToPixels();
    v20 = fmax(v7 - v21 - v14, 8.0);
  }

  [v10 setFrame:{v20, v12, v14, v16}];
  v22 = [v4 textLabel];
  [v22 setNumberOfLines:{-[BookmarksTableViewCellLayoutManager _numberOfLinesForCurrentContentSize](self, "_numberOfLinesForCurrentContentSize")}];
  [v22 frame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  if (v5)
  {
    v29 = [v4 contentView];
    [v29 bounds];
    v30 = CGRectGetMaxX(v34) - v7 - v26;

    [v4 frame];
    [(BookmarksTableViewCellLayoutManager *)self textRectForCell:v4 rowWidth:0 forSizing:CGRectGetWidth(v35)];
    v31 = fmin(v26, CGRectGetMaxX(v36) - v30);
    v7 = v30 + v26 - v31;
  }

  else
  {
    [v4 frame];
    [(BookmarksTableViewCellLayoutManager *)self textRectForCell:v4 rowWidth:0 forSizing:CGRectGetWidth(v37)];
    v31 = fmin(v26, CGRectGetMaxX(v38) - v7);
  }

  [v22 setFrame:{v7, v24, v31, v28}];
}

@end