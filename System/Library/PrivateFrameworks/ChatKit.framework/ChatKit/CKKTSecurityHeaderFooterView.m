@interface CKKTSecurityHeaderFooterView
- (CKKTSecurityHeaderFooterView)initWithReuseIdentifier:(id)a3;
- (void)layoutSubviews;
- (void)setKtSecurityTextView:(id)a3;
@end

@implementation CKKTSecurityHeaderFooterView

- (CKKTSecurityHeaderFooterView)initWithReuseIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKKTSecurityHeaderFooterView;
  return [(CKKTSecurityHeaderFooterView *)&v4 initWithReuseIdentifier:a3];
}

- (void)setKtSecurityTextView:(id)a3
{
  v5 = a3;
  ktSecurityTextView = self->_ktSecurityTextView;
  if (ktSecurityTextView != v5)
  {
    v9 = v5;
    if (!ktSecurityTextView || ([(UITextView *)ktSecurityTextView removeFromSuperview], v7 = self->_ktSecurityTextView, self->_ktSecurityTextView = 0, v7, v5 = v9, !self->_ktSecurityTextView))
    {
      objc_storeStrong(&self->_ktSecurityTextView, a3);
      v8 = [(CKKTSecurityHeaderFooterView *)self contentView];
      [v8 addSubview:self->_ktSecurityTextView];
      [(CKKTSecurityHeaderFooterView *)self setNeedsLayout];

      v5 = v9;
    }
  }
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = CKKTSecurityHeaderFooterView;
  [(CKKTSecurityHeaderFooterView *)&v23 layoutSubviews];
  v3 = [(CKKTSecurityHeaderFooterView *)self contentView];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 theme];
  v6 = [v5 detailsHeaderFooterContentViewBackgroundColor];
  [v3 setBackgroundColor:v6];

  v7 = [(CKKTSecurityHeaderFooterView *)self backgroundView];
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 theme];
  v10 = [v9 detailsHeaderFooterContentViewBackgroundColor];
  [v7 setBackgroundColor:v10];

  v11 = [(CKKTSecurityHeaderFooterView *)self contentView];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [(CKKTSecurityHeaderFooterView *)self ktSecurityTextView];
  +[CKKTSecurityHeaderFooterView footerVerticalPadding];
  v22 = v21;
  v24.origin.x = v13;
  v24.origin.y = v15;
  v24.size.width = v17;
  v24.size.height = v19;
  v25 = CGRectInset(v24, 0.0, v22);
  [v20 setFrame:{v25.origin.x, v25.origin.y, v25.size.width, v25.size.height}];
}

@end