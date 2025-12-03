@interface MCProfileTitlePageSettingsIconCell
- (MCProfileTitlePageSettingsIconCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation MCProfileTitlePageSettingsIconCell

- (MCProfileTitlePageSettingsIconCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = MCProfileTitlePageSettingsIconCell;
  v4 = [(MCProfileTitlePageSettingsIconCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MCProfileTitlePageSettingsIconCell *)v4 setUserInteractionEnabled:0];
    contentView = [(MCProfileTitlePageSettingsIconCell *)v5 contentView];
    [contentView setClipsToBounds:0];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(MCProfileTitlePageSettingsIconCell *)v5 setBackgroundColor:clearColor];

    v8 = objc_opt_new();
    iconImageView = v5->_iconImageView;
    v5->_iconImageView = v8;

    contentView2 = [(MCProfileTitlePageSettingsIconCell *)v5 contentView];
    [contentView2 addSubview:v5->_iconImageView];
  }

  return v5;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = MCProfileTitlePageSettingsIconCell;
  [(MCProfileTitlePageSettingsIconCell *)&v9 layoutSubviews];
  iconImageView = [(MCProfileTitlePageSettingsIconCell *)self iconImageView];
  superview = [iconImageView superview];
  contentView = [(MCProfileTitlePageSettingsIconCell *)self contentView];

  if (superview == contentView)
  {
    [(MCProfileTitlePageSettingsIconCell *)self bounds];
    Height = CGRectGetHeight(v10);
    [(MCProfileTitlePageSettingsIconCell *)self bounds];
    v7 = (CGRectGetWidth(v11) - Height) * 0.5;
    iconImageView2 = [(MCProfileTitlePageSettingsIconCell *)self iconImageView];
    [iconImageView2 setFrame:{v7, 0.0, Height, Height}];
  }
}

@end