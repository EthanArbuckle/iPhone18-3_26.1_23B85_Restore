@interface CompletionListTableHeaderView
- (CompletionListTableHeaderView)initWithReuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setShowsSeparator:(BOOL)separator;
@end

@implementation CompletionListTableHeaderView

- (CompletionListTableHeaderView)initWithReuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = CompletionListTableHeaderView;
  v3 = [(CompletionListTableHeaderView *)&v10 initWithReuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    v3->_showsSeparator = 1;
    v5 = objc_alloc_init(MEMORY[0x277D75D18]);
    separator = v4->_separator;
    v4->_separator = v5;

    separatorColor = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v4->_separator setBackgroundColor:separatorColor];

    [(CompletionListTableHeaderView *)v4 addSubview:v4->_separator];
    v8 = v4;
  }

  return v4;
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = CompletionListTableHeaderView;
  [(CompletionListTableHeaderView *)&v31 layoutSubviews];
  contentConfiguration = [(CompletionListTableHeaderView *)self contentConfiguration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _sf_usesLeftToRightLayout = [(CompletionListTableHeaderView *)self _sf_usesLeftToRightLayout];
    [(CompletionListTableHeaderView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [contentConfiguration directionalLayoutMargins];
    v14 = v13;
    v16 = v15;
    contentView = [(CompletionListTableHeaderView *)self contentView];
    [contentView frame];
    MinX = CGRectGetMinX(v32);

    v33.origin.x = v6;
    v33.origin.y = v8;
    v33.size.width = v10;
    v33.size.height = v12;
    Width = CGRectGetWidth(v33);
    contentView2 = [(CompletionListTableHeaderView *)self contentView];
    [contentView2 frame];
    MaxX = CGRectGetMaxX(v34);
    if (_sf_usesLeftToRightLayout)
    {
      v22 = v14;
    }

    else
    {
      v22 = v16;
    }

    v23 = v22 + MinX;
    v24 = Width - MaxX;
    if (_sf_usesLeftToRightLayout)
    {
      v25 = v16;
    }

    else
    {
      v25 = v14;
    }

    v26 = v25 + v24;

    _SFOnePixel();
    v28 = v27;
    v35.origin.x = v6;
    v35.origin.y = v8;
    v35.size.width = v10;
    v35.size.height = v12;
    v29 = CGRectGetHeight(v35) - v28;
    v36.origin.x = v6;
    v36.origin.y = v8;
    v36.size.width = v10;
    v36.size.height = v12;
    [(UIView *)self->_separator setFrame:v23, v29, CGRectGetWidth(v36) - v23 - v26, v28];
    LOBYTE(v30) = self->_showsSeparator;
    [(UIView *)self->_separator setAlpha:v30];
  }
}

- (void)setShowsSeparator:(BOOL)separator
{
  if (self->_showsSeparator != separator)
  {
    self->_showsSeparator = separator;
    [(CompletionListTableHeaderView *)self setNeedsLayout];
  }
}

@end