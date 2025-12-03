@interface CKKTSecurityHeaderFooterView
- (CKKTSecurityHeaderFooterView)initWithReuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setKtSecurityTextView:(id)view;
@end

@implementation CKKTSecurityHeaderFooterView

- (CKKTSecurityHeaderFooterView)initWithReuseIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = CKKTSecurityHeaderFooterView;
  return [(CKKTSecurityHeaderFooterView *)&v4 initWithReuseIdentifier:identifier];
}

- (void)setKtSecurityTextView:(id)view
{
  viewCopy = view;
  ktSecurityTextView = self->_ktSecurityTextView;
  if (ktSecurityTextView != viewCopy)
  {
    v9 = viewCopy;
    if (!ktSecurityTextView || ([(UITextView *)ktSecurityTextView removeFromSuperview], v7 = self->_ktSecurityTextView, self->_ktSecurityTextView = 0, v7, viewCopy = v9, !self->_ktSecurityTextView))
    {
      objc_storeStrong(&self->_ktSecurityTextView, view);
      contentView = [(CKKTSecurityHeaderFooterView *)self contentView];
      [contentView addSubview:self->_ktSecurityTextView];
      [(CKKTSecurityHeaderFooterView *)self setNeedsLayout];

      viewCopy = v9;
    }
  }
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = CKKTSecurityHeaderFooterView;
  [(CKKTSecurityHeaderFooterView *)&v23 layoutSubviews];
  contentView = [(CKKTSecurityHeaderFooterView *)self contentView];
  v4 = +[CKUIBehavior sharedBehaviors];
  theme = [v4 theme];
  detailsHeaderFooterContentViewBackgroundColor = [theme detailsHeaderFooterContentViewBackgroundColor];
  [contentView setBackgroundColor:detailsHeaderFooterContentViewBackgroundColor];

  backgroundView = [(CKKTSecurityHeaderFooterView *)self backgroundView];
  v8 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v8 theme];
  detailsHeaderFooterContentViewBackgroundColor2 = [theme2 detailsHeaderFooterContentViewBackgroundColor];
  [backgroundView setBackgroundColor:detailsHeaderFooterContentViewBackgroundColor2];

  contentView2 = [(CKKTSecurityHeaderFooterView *)self contentView];
  [contentView2 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  ktSecurityTextView = [(CKKTSecurityHeaderFooterView *)self ktSecurityTextView];
  +[CKKTSecurityHeaderFooterView footerVerticalPadding];
  v22 = v21;
  v24.origin.x = v13;
  v24.origin.y = v15;
  v24.size.width = v17;
  v24.size.height = v19;
  v25 = CGRectInset(v24, 0.0, v22);
  [ktSecurityTextView setFrame:{v25.origin.x, v25.origin.y, v25.size.width, v25.size.height}];
}

@end