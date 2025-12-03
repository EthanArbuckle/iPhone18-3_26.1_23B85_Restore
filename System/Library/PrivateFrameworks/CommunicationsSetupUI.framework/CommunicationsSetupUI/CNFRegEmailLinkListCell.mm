@interface CNFRegEmailLinkListCell
- (CNFRegEmailLinkListCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)layoutSubviews;
@end

@implementation CNFRegEmailLinkListCell

- (CNFRegEmailLinkListCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v11.receiver = self;
  v11.super_class = CNFRegEmailLinkListCell;
  v5 = [(PSTableCell *)&v11 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    detailTextLabel = [(CNFRegEmailLinkListCell *)v5 detailTextLabel];
    [detailTextLabel setTextAlignment:2];

    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    detailTextLabel2 = [(CNFRegEmailLinkListCell *)v6 detailTextLabel];
    [detailTextLabel2 setTextColor:v8];
  }

  return v6;
}

- (void)layoutSubviews
{
  v17[1] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = CNFRegEmailLinkListCell;
  [(PSTableCell *)&v15 layoutSubviews];
  textLabel = [(CNFRegEmailLinkListCell *)self textLabel];
  detailTextLabel = [(CNFRegEmailLinkListCell *)self detailTextLabel];
  text = [textLabel text];
  if (![text length])
  {
LABEL_6:

    goto LABEL_7;
  }

  text2 = [detailTextLabel text];
  v7 = [text2 length];

  if (v7)
  {
    v16 = *MEMORY[0x277D740A8];
    font = [detailTextLabel font];
    v17[0] = font;
    text = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

    text3 = [detailTextLabel text];
    if ([text3 length])
    {
      text4 = [detailTextLabel text];
      [(CNFRegEmailLinkListCell *)self bounds];
      [text4 boundingRectWithSize:0 options:text attributes:0 context:{v11, v12}];
    }

    contentView = [(CNFRegEmailLinkListCell *)self contentView];
    [contentView bounds];
    CGRectGetWidth(v18);

    [textLabel frame];
    [textLabel setFrame:?];
    goto LABEL_6;
  }

LABEL_7:

  v14 = *MEMORY[0x277D85DE8];
}

@end