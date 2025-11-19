@interface CNFRegEmailLinkListCell
- (CNFRegEmailLinkListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)layoutSubviews;
@end

@implementation CNFRegEmailLinkListCell

- (CNFRegEmailLinkListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v11.receiver = self;
  v11.super_class = CNFRegEmailLinkListCell;
  v5 = [(PSTableCell *)&v11 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(CNFRegEmailLinkListCell *)v5 detailTextLabel];
    [v7 setTextAlignment:2];

    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    v9 = [(CNFRegEmailLinkListCell *)v6 detailTextLabel];
    [v9 setTextColor:v8];
  }

  return v6;
}

- (void)layoutSubviews
{
  v17[1] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = CNFRegEmailLinkListCell;
  [(PSTableCell *)&v15 layoutSubviews];
  v3 = [(CNFRegEmailLinkListCell *)self textLabel];
  v4 = [(CNFRegEmailLinkListCell *)self detailTextLabel];
  v5 = [v3 text];
  if (![v5 length])
  {
LABEL_6:

    goto LABEL_7;
  }

  v6 = [v4 text];
  v7 = [v6 length];

  if (v7)
  {
    v16 = *MEMORY[0x277D740A8];
    v8 = [v4 font];
    v17[0] = v8;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

    v9 = [v4 text];
    if ([v9 length])
    {
      v10 = [v4 text];
      [(CNFRegEmailLinkListCell *)self bounds];
      [v10 boundingRectWithSize:0 options:v5 attributes:0 context:{v11, v12}];
    }

    v13 = [(CNFRegEmailLinkListCell *)self contentView];
    [v13 bounds];
    CGRectGetWidth(v18);

    [v3 frame];
    [v3 setFrame:?];
    goto LABEL_6;
  }

LABEL_7:

  v14 = *MEMORY[0x277D85DE8];
}

@end