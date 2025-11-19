@interface CKDetailsExpanseActivityHeaderView
- (void)layoutSubviews;
- (void)setExpanseActivityTextView:(id)a3;
@end

@implementation CKDetailsExpanseActivityHeaderView

- (void)setExpanseActivityTextView:(id)a3
{
  v5 = a3;
  if (self->_expanseActivityTextView != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_expanseActivityTextView, a3);
    v6 = [(CKDetailsExpanseActivityHeaderView *)self contentView];
    [v6 addSubview:self->_expanseActivityTextView];

    [(CKDetailsExpanseActivityHeaderView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = CKDetailsExpanseActivityHeaderView;
  [(CKDetailsExpanseActivityHeaderView *)&v36 layoutSubviews];
  v3 = [(CKDetailsExpanseActivityHeaderView *)self contentView];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 theme];
  v6 = [v5 detailsHeaderFooterContentViewBackgroundColor];
  [v3 setBackgroundColor:v6];

  v7 = [(CKDetailsExpanseActivityHeaderView *)self backgroundView];
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 theme];
  v10 = [v9 detailsHeaderFooterContentViewBackgroundColor];
  [v7 setBackgroundColor:v10];

  v11 = [(CKDetailsExpanseActivityHeaderView *)self contentView];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [(CKDetailsExpanseActivityHeaderView *)self expanseActivityTextView];
  v35 = *(MEMORY[0x1E695F058] + 8);
  v21 = [(CKDetailsExpanseActivityHeaderView *)self contentView];
  [v21 layoutMargins];
  v23 = v22;
  v25 = v24;

  v33 = v15;
  v34 = v13;
  v37.origin.x = v13;
  v37.origin.y = v15;
  v37.size.width = v17;
  v37.size.height = v19;
  [v20 sizeThatFits:{CGRectGetWidth(v37) - (v23 + v25), 1.79769313e308}];
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

  [v20 setFrame:{v23, v35, v27, v29 + v32}];
}

@end