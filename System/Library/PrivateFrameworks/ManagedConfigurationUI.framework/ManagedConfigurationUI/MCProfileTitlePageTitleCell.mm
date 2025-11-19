@interface MCProfileTitlePageTitleCell
- (MCProfileTitlePageTitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation MCProfileTitlePageTitleCell

- (MCProfileTitlePageTitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v14.receiver = self;
  v14.super_class = MCProfileTitlePageTitleCell;
  v4 = [(MCProfileTitlePageTitleCell *)&v14 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(MCProfileTitlePageTitleCell *)v4 setUserInteractionEnabled:0];
    v6 = [(MCProfileTitlePageTitleCell *)v5 contentView];
    [v6 setClipsToBounds:0];

    v7 = [MEMORY[0x277D75348] clearColor];
    [(MCProfileTitlePageTitleCell *)v5 setBackgroundColor:v7];

    v8 = objc_opt_new();
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v8;

    v10 = v5->_titleLabel;
    v11 = [MEMORY[0x277D74300] MCUIBoldTitleFontWithSize:34.0];
    [(UILabel *)v10 setFont:v11];

    [(UILabel *)v5->_titleLabel setTextAlignment:1];
    v12 = [(MCProfileTitlePageTitleCell *)v5 contentView];
    [v12 addSubview:v5->_titleLabel];
  }

  return v5;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = MCProfileTitlePageTitleCell;
  [(MCProfileTitlePageTitleCell *)&v12 layoutSubviews];
  v3 = [(MCProfileTitlePageTitleCell *)self titleLabel];
  v4 = [v3 superview];
  v5 = [(MCProfileTitlePageTitleCell *)self contentView];

  if (v4 == v5)
  {
    v6 = [(MCProfileTitlePageTitleCell *)self titleLabel];
    [(MCProfileTitlePageTitleCell *)self bounds];
    [v6 sizeThatFits:{CGRectGetWidth(v13), 1.79769313e308}];
    v8 = v7;

    [(MCProfileTitlePageTitleCell *)self bounds];
    v9 = CGRectGetHeight(v14) - v8;
    [(MCProfileTitlePageTitleCell *)self bounds];
    Width = CGRectGetWidth(v15);
    v11 = [(MCProfileTitlePageTitleCell *)self titleLabel];
    [v11 setFrame:{0.0, v9, Width, v8}];
  }
}

@end