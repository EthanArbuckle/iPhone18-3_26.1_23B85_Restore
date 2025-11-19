@interface MCProfileTitlePageSectionHeaderView
- (MCProfileTitlePageSectionHeaderView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setText:(id)a3;
@end

@implementation MCProfileTitlePageSectionHeaderView

- (MCProfileTitlePageSectionHeaderView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = MCProfileTitlePageSectionHeaderView;
  v3 = [(MCProfileTitlePageSectionHeaderView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    label = v3->_label;
    v3->_label = v4;

    v6 = objc_opt_new();
    separatorLine = v3->_separatorLine;
    v3->_separatorLine = v6;

    v8 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v3->_separatorLine setBackgroundColor:v8];

    [(MCProfileTitlePageSectionHeaderView *)v3 addSubview:v3->_label];
    [(MCProfileTitlePageSectionHeaderView *)v3 addSubview:v3->_separatorLine];
  }

  return v3;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = MCProfileTitlePageSectionHeaderView;
  [(MCProfileTitlePageSectionHeaderView *)&v15 layoutSubviews];
  [(MCProfileTitlePageSectionHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(MCProfileTitlePageSectionHeaderView *)self label];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(MCProfileTitlePageSectionHeaderView *)self bounds];
  v12 = CGRectGetHeight(v16) + -1.0;
  [(MCProfileTitlePageSectionHeaderView *)self bounds];
  Width = CGRectGetWidth(v17);
  v14 = [(MCProfileTitlePageSectionHeaderView *)self separatorLine];
  [v14 setFrame:{0.0, v12, Width, 1.0}];
}

- (void)setText:(id)a3
{
  v8 = a3;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    v4 = [v8 copy];
    text = self->_text;
    self->_text = v4;

    v6 = self->_text;
    v7 = [(MCProfileTitlePageSectionHeaderView *)self label];
    [v7 setText:v6];
  }
}

@end