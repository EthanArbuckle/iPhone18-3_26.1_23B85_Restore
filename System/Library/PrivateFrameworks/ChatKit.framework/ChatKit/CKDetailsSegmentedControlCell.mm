@interface CKDetailsSegmentedControlCell
- (UISegmentedControl)segmentedControl;
- (void)layoutSubviews;
@end

@implementation CKDetailsSegmentedControlCell

- (UISegmentedControl)segmentedControl
{
  v18[1] = *MEMORY[0x1E69E9840];
  segmentedControl = self->_segmentedControl;
  if (!segmentedControl)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCF38]);
    v5 = self->_segmentedControl;
    self->_segmentedControl = v4;

    layer = [(UISegmentedControl *)self->_segmentedControl layer];
    [layer setCornerRadius:4.0];

    v7 = +[CKUIBehavior sharedBehaviors];
    theme = [v7 theme];
    detailsSegmentedControlBackgroundColor = [theme detailsSegmentedControlBackgroundColor];
    [(UISegmentedControl *)self->_segmentedControl setBackgroundColor:detailsSegmentedControlBackgroundColor];

    appearance = [MEMORY[0x1E69DCF38] appearance];
    v17 = *MEMORY[0x1E69DB650];
    v11 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v11 theme];
    segmentedControlSelectionTintColor = [theme2 segmentedControlSelectionTintColor];
    v18[0] = segmentedControlSelectionTintColor;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [appearance setTitleTextAttributes:v14 forState:4];

    contentView = [(CKDetailsSegmentedControlCell *)self contentView];
    [contentView addSubview:self->_segmentedControl];

    segmentedControl = self->_segmentedControl;
  }

  return segmentedControl;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = CKDetailsSegmentedControlCell;
  [(CKDetailsCell *)&v16 layoutSubviews];
  contentView = [(CKDetailsSegmentedControlCell *)self contentView];
  [contentView layoutMargins];
  v5 = v4;

  contentView2 = [(CKDetailsSegmentedControlCell *)self contentView];
  [contentView2 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  segmentedControl = [(CKDetailsSegmentedControlCell *)self segmentedControl];
  v17.origin.x = v8;
  v17.origin.y = v10;
  v17.size.width = v12;
  v17.size.height = v14;
  v18 = CGRectInset(v17, v5, 12.0);
  [segmentedControl setFrame:{v18.origin.x, v18.origin.y, v18.size.width, v18.size.height}];
}

@end