@interface SFSearchBarWithSeparator
- (SFSearchBarWithSeparator)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SFSearchBarWithSeparator

- (SFSearchBarWithSeparator)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = SFSearchBarWithSeparator;
  v3 = [(SFSearchBarWithSeparator *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    separatorView = v3->_separatorView;
    v3->_separatorView = v4;

    tableSeparatorDarkColor = [MEMORY[0x1E69DC888] tableSeparatorDarkColor];
    [(UIView *)v3->_separatorView setBackgroundColor:tableSeparatorDarkColor];

    [(SFSearchBarWithSeparator *)v3 addSubview:v3->_separatorView];
    v7 = v3;
  }

  return v3;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = SFSearchBarWithSeparator;
  [(SFSearchBarWithSeparator *)&v13 layoutSubviews];
  [(SFSearchBarWithSeparator *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = _SFOnePixel();
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  v12 = CGRectGetMaxY(v14) - v11;
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  [(UIView *)self->_separatorView setFrame:0.0, v12, CGRectGetWidth(v15), v11];
}

@end