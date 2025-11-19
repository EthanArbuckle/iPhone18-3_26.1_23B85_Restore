@interface CKDetailsLocationShareHeaderFooterView
- (void)layoutSubviews;
- (void)setLocationSharingTextView:(id)a3;
@end

@implementation CKDetailsLocationShareHeaderFooterView

- (void)setLocationSharingTextView:(id)a3
{
  v7 = a3;
  if (self->_locationSharingTextView)
  {
    v5 = [(CKDetailsLocationShareHeaderFooterView *)self locationSharingTextView];
    [v5 removeFromSuperview];
  }

  objc_storeStrong(&self->_locationSharingTextView, a3);
  v6 = [(CKDetailsLocationShareHeaderFooterView *)self contentView];
  [v6 addSubview:self->_locationSharingTextView];

  [(CKDetailsLocationShareHeaderFooterView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = CKDetailsLocationShareHeaderFooterView;
  [(CKDetailsLocationShareHeaderFooterView *)&v30 layoutSubviews];
  v3 = [(CKDetailsLocationShareHeaderFooterView *)self contentView];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 theme];
  v6 = [v5 detailsHeaderFooterContentViewBackgroundColor];
  [v3 setBackgroundColor:v6];

  v7 = [(CKDetailsLocationShareHeaderFooterView *)self backgroundView];
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 theme];
  v10 = [v9 detailsHeaderFooterContentViewBackgroundColor];
  [v7 setBackgroundColor:v10];

  v11 = [(CKDetailsLocationShareHeaderFooterView *)self contentView];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [(CKDetailsLocationShareHeaderFooterView *)self locationSharingTextView];
  v21 = [(CKDetailsLocationShareHeaderFooterView *)self contentView];
  [v21 layoutMargins];
  v23 = v22;
  v25 = v24;

  v31.origin.x = v13;
  v31.origin.y = v15;
  v31.size.width = v17;
  v31.size.height = v19;
  [v20 sizeThatFits:{CGRectGetWidth(v31) - (v23 + v25), 1.79769313e308}];
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

  [v20 setFrame:{v23, 8.0, v27, v29}];
}

@end