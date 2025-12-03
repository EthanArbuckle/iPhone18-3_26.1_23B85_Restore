@interface CNFRegSpinnerCell
- (CNFRegSpinnerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation CNFRegSpinnerCell

- (CNFRegSpinnerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = CNFRegSpinnerCell;
  v4 = [(PSTableCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
    activityIndicator = v4->_activityIndicator;
    v4->_activityIndicator = v5;

    [(UIActivityIndicatorView *)v4->_activityIndicator startAnimating];
    contentView = [(CNFRegSpinnerCell *)v4 contentView];
    [contentView addSubview:v4->_activityIndicator];

    [(CNFRegSpinnerCell *)v4 setNeedsLayout];
  }

  return v4;
}

- (void)layoutSubviews
{
  *&rect.origin.y = self;
  *&rect.size.width = CNFRegSpinnerCell;
  [(CGFloat *)&rect.origin.y layoutSubviews];
  contentView = [(CNFRegSpinnerCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  rect.origin.x = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIActivityIndicatorView *)self->_activityIndicator frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  MidX = CGRectGetMidX(v24);
  v25.origin.x = v13;
  v25.origin.y = v15;
  v25.size.width = v17;
  v25.size.height = v19;
  v21 = MidX - CGRectGetWidth(v25) * 0.5;
  v26.origin.x = rect.origin.x;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  MidY = CGRectGetMidY(v26);
  v27.origin.x = v21;
  v27.origin.y = v15;
  v27.size.width = v17;
  v27.size.height = v19;
  [(UIActivityIndicatorView *)self->_activityIndicator setFrame:v21, MidY - CGRectGetHeight(v27) * 0.5, v17, v19];
}

@end