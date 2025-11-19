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

    v6 = [(UISegmentedControl *)self->_segmentedControl layer];
    [v6 setCornerRadius:4.0];

    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 theme];
    v9 = [v8 detailsSegmentedControlBackgroundColor];
    [(UISegmentedControl *)self->_segmentedControl setBackgroundColor:v9];

    v10 = [MEMORY[0x1E69DCF38] appearance];
    v17 = *MEMORY[0x1E69DB650];
    v11 = +[CKUIBehavior sharedBehaviors];
    v12 = [v11 theme];
    v13 = [v12 segmentedControlSelectionTintColor];
    v18[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v10 setTitleTextAttributes:v14 forState:4];

    v15 = [(CKDetailsSegmentedControlCell *)self contentView];
    [v15 addSubview:self->_segmentedControl];

    segmentedControl = self->_segmentedControl;
  }

  return segmentedControl;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = CKDetailsSegmentedControlCell;
  [(CKDetailsCell *)&v16 layoutSubviews];
  v3 = [(CKDetailsSegmentedControlCell *)self contentView];
  [v3 layoutMargins];
  v5 = v4;

  v6 = [(CKDetailsSegmentedControlCell *)self contentView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(CKDetailsSegmentedControlCell *)self segmentedControl];
  v17.origin.x = v8;
  v17.origin.y = v10;
  v17.size.width = v12;
  v17.size.height = v14;
  v18 = CGRectInset(v17, v5, 12.0);
  [v15 setFrame:{v18.origin.x, v18.origin.y, v18.size.width, v18.size.height}];
}

@end