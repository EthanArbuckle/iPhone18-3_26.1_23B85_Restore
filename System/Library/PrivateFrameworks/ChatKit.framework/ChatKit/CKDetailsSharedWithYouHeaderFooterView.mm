@interface CKDetailsSharedWithYouHeaderFooterView
+ (double)bottomPadding;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setSharedWithYouTextView:(id)view;
@end

@implementation CKDetailsSharedWithYouHeaderFooterView

- (void)setSharedWithYouTextView:(id)view
{
  viewCopy = view;
  if (!self->_sharedWithYouTextView)
  {
    v7 = viewCopy;
    objc_storeStrong(&self->_sharedWithYouTextView, view);
    contentView = [(CKDetailsSharedWithYouHeaderFooterView *)self contentView];
    [contentView addSubview:self->_sharedWithYouTextView];

    [(CKDetailsSharedWithYouHeaderFooterView *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)layoutSubviews
{
  *&rect.size.width = self;
  *&rect.size.height = CKDetailsSharedWithYouHeaderFooterView;
  [(CGSize *)&rect.size layoutSubviews];
  contentView = [(CKDetailsSharedWithYouHeaderFooterView *)self contentView];
  v4 = +[CKUIBehavior sharedBehaviors];
  theme = [v4 theme];
  detailsHeaderFooterContentViewBackgroundColor = [theme detailsHeaderFooterContentViewBackgroundColor];
  [contentView setBackgroundColor:detailsHeaderFooterContentViewBackgroundColor];

  backgroundView = [(CKDetailsSharedWithYouHeaderFooterView *)self backgroundView];
  v8 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v8 theme];
  detailsHeaderFooterContentViewBackgroundColor2 = [theme2 detailsHeaderFooterContentViewBackgroundColor];
  [backgroundView setBackgroundColor:detailsHeaderFooterContentViewBackgroundColor2];

  contentView2 = [(CKDetailsSharedWithYouHeaderFooterView *)self contentView];
  [contentView2 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sharedWithYouTextView = [(CKDetailsSharedWithYouHeaderFooterView *)self sharedWithYouTextView];
  contentView3 = [(CKDetailsSharedWithYouHeaderFooterView *)self contentView];
  [contentView3 layoutMargins];
  v23 = v22;
  v25 = v24;

  v32.origin.x = v13;
  v32.origin.y = v15;
  v32.size.width = v17;
  v32.size.height = v19;
  [sharedWithYouTextView sizeThatFits:{CGRectGetWidth(v32) - (v23 + v25), 1.79769313e308}];
  v27 = v26;
  rect.origin.y = v28;
  [objc_opt_class() topPadding];
  v30 = v29;
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection])
  {
    v33.origin.x = v13;
    v33.origin.y = v15;
    v33.size.width = v17;
    v33.size.height = v19;
    v27 = CGRectGetWidth(v33) - (v23 + v25);
    v23 = v25;
  }

  [sharedWithYouTextView setFrame:{v23, v30, v27, rect.origin.y, *&v13}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  sharedWithYouTextView = [(CKDetailsSharedWithYouHeaderFooterView *)self sharedWithYouTextView];
  [sharedWithYouTextView sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  [objc_opt_class() topPadding];
  v11 = v10;
  [objc_opt_class() bottomPadding];
  v13 = v9 + v11 + v12;
  v14 = v7;
  result.height = v13;
  result.width = v14;
  return result;
}

+ (double)bottomPadding
{
  v2 = +[CKUIBehavior sharedBehaviors];
  if ([v2 isAccessibilityPreferredContentSizeCategory])
  {
    v3 = 16.0;
  }

  else
  {
    v3 = 8.0;
  }

  return v3;
}

@end