@interface MCProfileTitlePageSubtitleCell
- (MCProfileTitlePageSubtitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateConstraintsWithLabel:(id)label;
@end

@implementation MCProfileTitlePageSubtitleCell

- (MCProfileTitlePageSubtitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v14.receiver = self;
  v14.super_class = MCProfileTitlePageSubtitleCell;
  v4 = [(MCProfileTitlePageSubtitleCell *)&v14 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MCProfileTitlePageSubtitleCell *)v4 setUserInteractionEnabled:0];
    contentView = [(MCProfileTitlePageSubtitleCell *)v5 contentView];
    [contentView setClipsToBounds:0];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(MCProfileTitlePageSubtitleCell *)v5 setBackgroundColor:clearColor];

    v8 = objc_opt_new();
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v8;

    [(UILabel *)v5->_titleLabel setNumberOfLines:0];
    [(UILabel *)v5->_titleLabel setTextAlignment:1];
    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = v5->_titleLabel;
    v11 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [(UILabel *)v10 setFont:v11];

    contentView2 = [(MCProfileTitlePageSubtitleCell *)v5 contentView];
    [contentView2 addSubview:v5->_titleLabel];

    [(MCProfileTitlePageSubtitleCell *)v5 _updateConstraintsWithLabel:v5->_titleLabel];
  }

  return v5;
}

- (void)_updateConstraintsWithLabel:(id)label
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = @"label";
  v15[0] = label;
  v4 = MEMORY[0x277CBEAC0];
  labelCopy = label;
  v6 = [v4 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v7 = MEMORY[0x277CCAAD0];
  0x402E000000000000 = [MEMORY[0x277CCACA8] stringWithFormat:@"|-%f-[label]-%f-|", 0x402E000000000000, 0x402E000000000000];
  v9 = [v7 constraintsWithVisualFormat:0x402E000000000000 options:0 metrics:0 views:v6];

  v10 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[label]-0-|" options:0 metrics:0 views:v6];

  contentView = [(MCProfileTitlePageSubtitleCell *)self contentView];
  [contentView addConstraints:v9];

  contentView2 = [(MCProfileTitlePageSubtitleCell *)self contentView];
  [contentView2 addConstraints:v10];

  v13 = *MEMORY[0x277D85DE8];
}

@end