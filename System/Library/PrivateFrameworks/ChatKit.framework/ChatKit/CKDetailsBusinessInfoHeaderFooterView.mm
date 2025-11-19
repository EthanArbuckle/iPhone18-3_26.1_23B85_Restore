@interface CKDetailsBusinessInfoHeaderFooterView
- (CKDetailsBusinessInfoHeaderFooterView)initWithReuseIdentifier:(id)a3;
- (void)layoutSubviews;
- (void)setBusinessInfoView:(id)a3;
@end

@implementation CKDetailsBusinessInfoHeaderFooterView

- (CKDetailsBusinessInfoHeaderFooterView)initWithReuseIdentifier:(id)a3
{
  v9.receiver = self;
  v9.super_class = CKDetailsBusinessInfoHeaderFooterView;
  v3 = [(CKDetailsBusinessInfoHeaderFooterView *)&v9 initWithReuseIdentifier:a3];
  if (v3)
  {
    if (CKIsRunningInMacCatalyst())
    {
      v4 = [MEMORY[0x1E69DC6E8] clearConfiguration];
      [(CKDetailsBusinessInfoHeaderFooterView *)v3 setBackgroundConfiguration:v4];
    }

    else
    {
      v4 = [(CKDetailsBusinessInfoHeaderFooterView *)v3 contentView];
      v5 = +[CKUIBehavior sharedBehaviors];
      v6 = [v5 theme];
      v7 = [v6 detailsHeaderFooterContentViewBackgroundColor];
      [v4 setBackgroundColor:v7];
    }
  }

  return v3;
}

- (void)setBusinessInfoView:(id)a3
{
  v5 = a3;
  if (self->_businessInfoView != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_businessInfoView, a3);
    v6 = [(CKDetailsBusinessInfoHeaderFooterView *)self contentView];
    [v6 addSubview:self->_businessInfoView];

    [(CKDetailsBusinessInfoHeaderFooterView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CKDetailsBusinessInfoHeaderFooterView;
  [(CKDetailsBusinessInfoHeaderFooterView *)&v14 layoutSubviews];
  v3 = [(CKDetailsBusinessInfoHeaderFooterView *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CKDetailsBusinessInfoHeaderFooterView *)self businessInfoView];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(CKDetailsBusinessInfoHeaderFooterView *)self businessInfoView];
  [v13 setNeedsLayout];
}

@end