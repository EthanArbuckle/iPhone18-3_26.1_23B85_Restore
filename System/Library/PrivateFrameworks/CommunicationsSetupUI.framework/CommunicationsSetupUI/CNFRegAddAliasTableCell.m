@interface CNFRegAddAliasTableCell
- (void)layoutSubviews;
@end

@implementation CNFRegAddAliasTableCell

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = CNFRegAddAliasTableCell;
  [(PSTableCell *)&v21 layoutSubviews];
  v3 = [(CNFRegAddAliasTableCell *)self textLabel];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = 39.0;
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection])
  {
    [(CNFRegAddAliasTableCell *)self bounds];
    v12 = v11;
    v13 = [(CNFRegAddAliasTableCell *)self textLabel];
    [v13 frame];
    v10 = v12 - v14 + -39.0;
  }

  v15 = [(CNFRegAddAliasTableCell *)self contentView];
  [v15 size];
  v17 = v16;

  if (v7 + 39.0 + 4.0 > v17)
  {
    v18 = [(CNFRegAddAliasTableCell *)self contentView];
    [v18 size];
    v7 = v19 + -39.0 + -4.0;
  }

  v20 = [(CNFRegAddAliasTableCell *)self textLabel];
  [v20 setFrame:{v10, v5, v7, v9}];
}

@end