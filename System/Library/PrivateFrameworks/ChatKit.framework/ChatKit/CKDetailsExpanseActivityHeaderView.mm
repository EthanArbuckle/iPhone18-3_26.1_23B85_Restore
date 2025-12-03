@interface CKDetailsExpanseActivityHeaderView
- (void)layoutSubviews;
- (void)setExpanseActivityTextView:(id)view;
@end

@implementation CKDetailsExpanseActivityHeaderView

- (void)setExpanseActivityTextView:(id)view
{
  viewCopy = view;
  if (self->_expanseActivityTextView != viewCopy)
  {
    v7 = viewCopy;
    objc_storeStrong(&self->_expanseActivityTextView, view);
    contentView = [(CKDetailsExpanseActivityHeaderView *)self contentView];
    [contentView addSubview:self->_expanseActivityTextView];

    [(CKDetailsExpanseActivityHeaderView *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = CKDetailsExpanseActivityHeaderView;
  [(CKDetailsExpanseActivityHeaderView *)&v36 layoutSubviews];
  contentView = [(CKDetailsExpanseActivityHeaderView *)self contentView];
  v4 = +[CKUIBehavior sharedBehaviors];
  theme = [v4 theme];
  detailsHeaderFooterContentViewBackgroundColor = [theme detailsHeaderFooterContentViewBackgroundColor];
  [contentView setBackgroundColor:detailsHeaderFooterContentViewBackgroundColor];

  backgroundView = [(CKDetailsExpanseActivityHeaderView *)self backgroundView];
  v8 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v8 theme];
  detailsHeaderFooterContentViewBackgroundColor2 = [theme2 detailsHeaderFooterContentViewBackgroundColor];
  [backgroundView setBackgroundColor:detailsHeaderFooterContentViewBackgroundColor2];

  contentView2 = [(CKDetailsExpanseActivityHeaderView *)self contentView];
  [contentView2 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  expanseActivityTextView = [(CKDetailsExpanseActivityHeaderView *)self expanseActivityTextView];
  v35 = *(MEMORY[0x1E695F058] + 8);
  contentView3 = [(CKDetailsExpanseActivityHeaderView *)self contentView];
  [contentView3 layoutMargins];
  v23 = v22;
  v25 = v24;

  v33 = v15;
  v34 = v13;
  v37.origin.x = v13;
  v37.origin.y = v15;
  v37.size.width = v17;
  v37.size.height = v19;
  [expanseActivityTextView sizeThatFits:{CGRectGetWidth(v37) - (v23 + v25), 1.79769313e308}];
  v27 = v26;
  v29 = v28;
  v30 = +[CKUIBehavior sharedBehaviors];
  [v30 detailsExpanseActivityDescriptionVerticalPadding];
  v32 = v31;

  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection])
  {
    v38.origin.y = v33;
    v38.origin.x = v34;
    v38.size.width = v17;
    v38.size.height = v19;
    v27 = CGRectGetWidth(v38) - (v23 + v25);
    v23 = v25;
  }

  [expanseActivityTextView setFrame:{v23, v35, v27, v29 + v32}];
}

@end