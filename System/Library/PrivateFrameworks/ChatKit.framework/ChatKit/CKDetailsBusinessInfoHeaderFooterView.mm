@interface CKDetailsBusinessInfoHeaderFooterView
- (CKDetailsBusinessInfoHeaderFooterView)initWithReuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setBusinessInfoView:(id)view;
@end

@implementation CKDetailsBusinessInfoHeaderFooterView

- (CKDetailsBusinessInfoHeaderFooterView)initWithReuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = CKDetailsBusinessInfoHeaderFooterView;
  v3 = [(CKDetailsBusinessInfoHeaderFooterView *)&v9 initWithReuseIdentifier:identifier];
  if (v3)
  {
    if (CKIsRunningInMacCatalyst())
    {
      clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
      [(CKDetailsBusinessInfoHeaderFooterView *)v3 setBackgroundConfiguration:clearConfiguration];
    }

    else
    {
      clearConfiguration = [(CKDetailsBusinessInfoHeaderFooterView *)v3 contentView];
      v5 = +[CKUIBehavior sharedBehaviors];
      theme = [v5 theme];
      detailsHeaderFooterContentViewBackgroundColor = [theme detailsHeaderFooterContentViewBackgroundColor];
      [clearConfiguration setBackgroundColor:detailsHeaderFooterContentViewBackgroundColor];
    }
  }

  return v3;
}

- (void)setBusinessInfoView:(id)view
{
  viewCopy = view;
  if (self->_businessInfoView != viewCopy)
  {
    v7 = viewCopy;
    objc_storeStrong(&self->_businessInfoView, view);
    contentView = [(CKDetailsBusinessInfoHeaderFooterView *)self contentView];
    [contentView addSubview:self->_businessInfoView];

    [(CKDetailsBusinessInfoHeaderFooterView *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CKDetailsBusinessInfoHeaderFooterView;
  [(CKDetailsBusinessInfoHeaderFooterView *)&v14 layoutSubviews];
  contentView = [(CKDetailsBusinessInfoHeaderFooterView *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  businessInfoView = [(CKDetailsBusinessInfoHeaderFooterView *)self businessInfoView];
  [businessInfoView setFrame:{v5, v7, v9, v11}];

  businessInfoView2 = [(CKDetailsBusinessInfoHeaderFooterView *)self businessInfoView];
  [businessInfoView2 setNeedsLayout];
}

@end