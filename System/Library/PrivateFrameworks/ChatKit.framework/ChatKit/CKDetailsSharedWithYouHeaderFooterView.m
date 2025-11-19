@interface CKDetailsSharedWithYouHeaderFooterView
+ (double)bottomPadding;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)setSharedWithYouTextView:(id)a3;
@end

@implementation CKDetailsSharedWithYouHeaderFooterView

- (void)setSharedWithYouTextView:(id)a3
{
  v5 = a3;
  if (!self->_sharedWithYouTextView)
  {
    v7 = v5;
    objc_storeStrong(&self->_sharedWithYouTextView, a3);
    v6 = [(CKDetailsSharedWithYouHeaderFooterView *)self contentView];
    [v6 addSubview:self->_sharedWithYouTextView];

    [(CKDetailsSharedWithYouHeaderFooterView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)layoutSubviews
{
  *&rect.size.width = self;
  *&rect.size.height = CKDetailsSharedWithYouHeaderFooterView;
  [(CGSize *)&rect.size layoutSubviews];
  v3 = [(CKDetailsSharedWithYouHeaderFooterView *)self contentView];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 theme];
  v6 = [v5 detailsHeaderFooterContentViewBackgroundColor];
  [v3 setBackgroundColor:v6];

  v7 = [(CKDetailsSharedWithYouHeaderFooterView *)self backgroundView];
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 theme];
  v10 = [v9 detailsHeaderFooterContentViewBackgroundColor];
  [v7 setBackgroundColor:v10];

  v11 = [(CKDetailsSharedWithYouHeaderFooterView *)self contentView];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [(CKDetailsSharedWithYouHeaderFooterView *)self sharedWithYouTextView];
  v21 = [(CKDetailsSharedWithYouHeaderFooterView *)self contentView];
  [v21 layoutMargins];
  v23 = v22;
  v25 = v24;

  v32.origin.x = v13;
  v32.origin.y = v15;
  v32.size.width = v17;
  v32.size.height = v19;
  [v20 sizeThatFits:{CGRectGetWidth(v32) - (v23 + v25), 1.79769313e308}];
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

  [v20 setFrame:{v23, v30, v27, rect.origin.y, *&v13}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(CKDetailsSharedWithYouHeaderFooterView *)self sharedWithYouTextView];
  [v5 sizeThatFits:{width, height}];
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