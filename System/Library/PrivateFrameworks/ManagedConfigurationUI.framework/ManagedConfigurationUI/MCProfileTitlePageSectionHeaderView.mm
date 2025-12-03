@interface MCProfileTitlePageSectionHeaderView
- (MCProfileTitlePageSectionHeaderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setText:(id)text;
@end

@implementation MCProfileTitlePageSectionHeaderView

- (MCProfileTitlePageSectionHeaderView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = MCProfileTitlePageSectionHeaderView;
  v3 = [(MCProfileTitlePageSectionHeaderView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    label = v3->_label;
    v3->_label = v4;

    v6 = objc_opt_new();
    separatorLine = v3->_separatorLine;
    v3->_separatorLine = v6;

    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v3->_separatorLine setBackgroundColor:blackColor];

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
  label = [(MCProfileTitlePageSectionHeaderView *)self label];
  [label setFrame:{v4, v6, v8, v10}];

  [(MCProfileTitlePageSectionHeaderView *)self bounds];
  v12 = CGRectGetHeight(v16) + -1.0;
  [(MCProfileTitlePageSectionHeaderView *)self bounds];
  Width = CGRectGetWidth(v17);
  separatorLine = [(MCProfileTitlePageSectionHeaderView *)self separatorLine];
  [separatorLine setFrame:{0.0, v12, Width, 1.0}];
}

- (void)setText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    v4 = [textCopy copy];
    text = self->_text;
    self->_text = v4;

    v6 = self->_text;
    label = [(MCProfileTitlePageSectionHeaderView *)self label];
    [label setText:v6];
  }
}

@end