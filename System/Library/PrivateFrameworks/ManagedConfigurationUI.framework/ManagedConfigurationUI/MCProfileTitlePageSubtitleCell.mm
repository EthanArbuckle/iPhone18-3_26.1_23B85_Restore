@interface MCProfileTitlePageSubtitleCell
- (MCProfileTitlePageSubtitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateConstraintsWithLabel:(id)a3;
@end

@implementation MCProfileTitlePageSubtitleCell

- (MCProfileTitlePageSubtitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v14.receiver = self;
  v14.super_class = MCProfileTitlePageSubtitleCell;
  v4 = [(MCProfileTitlePageSubtitleCell *)&v14 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(MCProfileTitlePageSubtitleCell *)v4 setUserInteractionEnabled:0];
    v6 = [(MCProfileTitlePageSubtitleCell *)v5 contentView];
    [v6 setClipsToBounds:0];

    v7 = [MEMORY[0x277D75348] clearColor];
    [(MCProfileTitlePageSubtitleCell *)v5 setBackgroundColor:v7];

    v8 = objc_opt_new();
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v8;

    [(UILabel *)v5->_titleLabel setNumberOfLines:0];
    [(UILabel *)v5->_titleLabel setTextAlignment:1];
    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = v5->_titleLabel;
    v11 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [(UILabel *)v10 setFont:v11];

    v12 = [(MCProfileTitlePageSubtitleCell *)v5 contentView];
    [v12 addSubview:v5->_titleLabel];

    [(MCProfileTitlePageSubtitleCell *)v5 _updateConstraintsWithLabel:v5->_titleLabel];
  }

  return v5;
}

- (void)_updateConstraintsWithLabel:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = @"label";
  v15[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v7 = MEMORY[0x277CCAAD0];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"|-%f-[label]-%f-|", 0x402E000000000000, 0x402E000000000000];
  v9 = [v7 constraintsWithVisualFormat:v8 options:0 metrics:0 views:v6];

  v10 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[label]-0-|" options:0 metrics:0 views:v6];

  v11 = [(MCProfileTitlePageSubtitleCell *)self contentView];
  [v11 addConstraints:v9];

  v12 = [(MCProfileTitlePageSubtitleCell *)self contentView];
  [v12 addConstraints:v10];

  v13 = *MEMORY[0x277D85DE8];
}

@end