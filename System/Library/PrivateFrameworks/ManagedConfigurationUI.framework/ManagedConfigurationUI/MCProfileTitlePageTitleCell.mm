@interface MCProfileTitlePageTitleCell
- (MCProfileTitlePageTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation MCProfileTitlePageTitleCell

- (MCProfileTitlePageTitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v14.receiver = self;
  v14.super_class = MCProfileTitlePageTitleCell;
  v4 = [(MCProfileTitlePageTitleCell *)&v14 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MCProfileTitlePageTitleCell *)v4 setUserInteractionEnabled:0];
    contentView = [(MCProfileTitlePageTitleCell *)v5 contentView];
    [contentView setClipsToBounds:0];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(MCProfileTitlePageTitleCell *)v5 setBackgroundColor:clearColor];

    v8 = objc_opt_new();
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v8;

    v10 = v5->_titleLabel;
    v11 = [MEMORY[0x277D74300] MCUIBoldTitleFontWithSize:34.0];
    [(UILabel *)v10 setFont:v11];

    [(UILabel *)v5->_titleLabel setTextAlignment:1];
    contentView2 = [(MCProfileTitlePageTitleCell *)v5 contentView];
    [contentView2 addSubview:v5->_titleLabel];
  }

  return v5;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = MCProfileTitlePageTitleCell;
  [(MCProfileTitlePageTitleCell *)&v12 layoutSubviews];
  titleLabel = [(MCProfileTitlePageTitleCell *)self titleLabel];
  superview = [titleLabel superview];
  contentView = [(MCProfileTitlePageTitleCell *)self contentView];

  if (superview == contentView)
  {
    titleLabel2 = [(MCProfileTitlePageTitleCell *)self titleLabel];
    [(MCProfileTitlePageTitleCell *)self bounds];
    [titleLabel2 sizeThatFits:{CGRectGetWidth(v13), 1.79769313e308}];
    v8 = v7;

    [(MCProfileTitlePageTitleCell *)self bounds];
    v9 = CGRectGetHeight(v14) - v8;
    [(MCProfileTitlePageTitleCell *)self bounds];
    Width = CGRectGetWidth(v15);
    titleLabel3 = [(MCProfileTitlePageTitleCell *)self titleLabel];
    [titleLabel3 setFrame:{0.0, v9, Width, v8}];
  }
}

@end