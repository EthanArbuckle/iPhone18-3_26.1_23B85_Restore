@interface MCProfileTitlePageWarningCell
- (MCProfileTitlePageWarningCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateConstraintsWithLabel:(id)a3;
- (void)layoutSubviews;
@end

@implementation MCProfileTitlePageWarningCell

- (MCProfileTitlePageWarningCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v16.receiver = self;
  v16.super_class = MCProfileTitlePageWarningCell;
  v4 = [(MCProfileTitlePageWarningCell *)&v16 initWithStyle:a3 reuseIdentifier:a4];
  [(MCProfileTitlePageWarningCell *)v4 setUserInteractionEnabled:0];
  v5 = [MEMORY[0x277D75348] clearColor];
  [(MCProfileTitlePageWarningCell *)v4 setBackgroundColor:v5];

  v6 = objc_alloc(MEMORY[0x277D756B8]);
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  label = v4->_label;
  v4->_label = v7;

  v9 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
  [(UILabel *)v4->_label setFont:v9];

  [(UILabel *)v4->_label setNumberOfLines:0];
  [(UILabel *)v4->_label setLineBreakMode:0];
  [(UILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = objc_opt_new();
  separatorLine = v4->_separatorLine;
  v4->_separatorLine = v10;

  v12 = [MEMORY[0x277D75348] tertiaryLabelColor];
  [(UIView *)v4->_separatorLine setBackgroundColor:v12];

  v13 = [(MCProfileTitlePageWarningCell *)v4 contentView];
  [v13 addSubview:v4->_label];

  v14 = [(MCProfileTitlePageWarningCell *)v4 contentView];
  [v14 addSubview:v4->_separatorLine];

  [(MCProfileTitlePageWarningCell *)v4 _updateConstraintsWithLabel:v4->_label];
  return v4;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = MCProfileTitlePageWarningCell;
  [(MCProfileTitlePageWarningCell *)&v5 layoutSubviews];
  [(MCProfileTitlePageWarningCell *)self bounds];
  Width = CGRectGetWidth(v6);
  v4 = [(MCProfileTitlePageWarningCell *)self separatorLine];
  [v4 setFrame:{17.0, 0.0, Width, 0.5}];
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
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"|-%f-[label]-%f-|", 0x4031000000000000, 0x4031000000000000];
  v9 = [v7 constraintsWithVisualFormat:v8 options:0 metrics:0 views:v6];

  v10 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[label]-0-|" options:0 metrics:0 views:v6];

  v11 = [(MCProfileTitlePageWarningCell *)self contentView];
  [v11 addConstraints:v9];

  v12 = [(MCProfileTitlePageWarningCell *)self contentView];
  [v12 addConstraints:v10];

  v13 = *MEMORY[0x277D85DE8];
}

@end