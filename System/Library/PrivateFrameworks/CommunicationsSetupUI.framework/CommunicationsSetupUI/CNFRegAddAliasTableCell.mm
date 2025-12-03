@interface CNFRegAddAliasTableCell
- (void)layoutSubviews;
@end

@implementation CNFRegAddAliasTableCell

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = CNFRegAddAliasTableCell;
  [(PSTableCell *)&v21 layoutSubviews];
  textLabel = [(CNFRegAddAliasTableCell *)self textLabel];
  [textLabel frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = 39.0;
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection])
  {
    [(CNFRegAddAliasTableCell *)self bounds];
    v12 = v11;
    textLabel2 = [(CNFRegAddAliasTableCell *)self textLabel];
    [textLabel2 frame];
    v10 = v12 - v14 + -39.0;
  }

  contentView = [(CNFRegAddAliasTableCell *)self contentView];
  [contentView size];
  v17 = v16;

  if (v7 + 39.0 + 4.0 > v17)
  {
    contentView2 = [(CNFRegAddAliasTableCell *)self contentView];
    [contentView2 size];
    v7 = v19 + -39.0 + -4.0;
  }

  textLabel3 = [(CNFRegAddAliasTableCell *)self textLabel];
  [textLabel3 setFrame:{v10, v5, v7, v9}];
}

@end