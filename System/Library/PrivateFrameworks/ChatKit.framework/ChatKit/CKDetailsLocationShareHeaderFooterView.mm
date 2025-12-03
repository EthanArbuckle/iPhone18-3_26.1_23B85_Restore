@interface CKDetailsLocationShareHeaderFooterView
- (void)layoutSubviews;
- (void)setLocationSharingTextView:(id)view;
@end

@implementation CKDetailsLocationShareHeaderFooterView

- (void)setLocationSharingTextView:(id)view
{
  viewCopy = view;
  if (self->_locationSharingTextView)
  {
    locationSharingTextView = [(CKDetailsLocationShareHeaderFooterView *)self locationSharingTextView];
    [locationSharingTextView removeFromSuperview];
  }

  objc_storeStrong(&self->_locationSharingTextView, view);
  contentView = [(CKDetailsLocationShareHeaderFooterView *)self contentView];
  [contentView addSubview:self->_locationSharingTextView];

  [(CKDetailsLocationShareHeaderFooterView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = CKDetailsLocationShareHeaderFooterView;
  [(CKDetailsLocationShareHeaderFooterView *)&v30 layoutSubviews];
  contentView = [(CKDetailsLocationShareHeaderFooterView *)self contentView];
  v4 = +[CKUIBehavior sharedBehaviors];
  theme = [v4 theme];
  detailsHeaderFooterContentViewBackgroundColor = [theme detailsHeaderFooterContentViewBackgroundColor];
  [contentView setBackgroundColor:detailsHeaderFooterContentViewBackgroundColor];

  backgroundView = [(CKDetailsLocationShareHeaderFooterView *)self backgroundView];
  v8 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v8 theme];
  detailsHeaderFooterContentViewBackgroundColor2 = [theme2 detailsHeaderFooterContentViewBackgroundColor];
  [backgroundView setBackgroundColor:detailsHeaderFooterContentViewBackgroundColor2];

  contentView2 = [(CKDetailsLocationShareHeaderFooterView *)self contentView];
  [contentView2 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  locationSharingTextView = [(CKDetailsLocationShareHeaderFooterView *)self locationSharingTextView];
  contentView3 = [(CKDetailsLocationShareHeaderFooterView *)self contentView];
  [contentView3 layoutMargins];
  v23 = v22;
  v25 = v24;

  v31.origin.x = v13;
  v31.origin.y = v15;
  v31.size.width = v17;
  v31.size.height = v19;
  [locationSharingTextView sizeThatFits:{CGRectGetWidth(v31) - (v23 + v25), 1.79769313e308}];
  v27 = v26;
  v29 = v28;
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection])
  {
    v32.origin.x = v13;
    v32.origin.y = v15;
    v32.size.width = v17;
    v32.size.height = v19;
    v27 = CGRectGetWidth(v32) - (v23 + v25);
    v23 = v25;
  }

  [locationSharingTextView setFrame:{v23, 8.0, v27, v29}];
}

@end