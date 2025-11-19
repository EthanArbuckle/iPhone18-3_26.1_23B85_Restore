@interface CNFRegSelectableAliasTableCell
- (CNFRegSelectableAliasTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation CNFRegSelectableAliasTableCell

- (CNFRegSelectableAliasTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v11.receiver = self;
  v11.super_class = CNFRegSelectableAliasTableCell;
  v5 = [(PSTableCell *)&v11 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  if (v5)
  {
    v6 = +[CNFRegAppearanceController globalAppearanceController];
    v7 = objc_alloc(MEMORY[0x277D755E8]);
    v8 = [v6 tableCellCheckmarkImage];
    v9 = [v7 initWithImage:v8];

    [(CNFRegSelectableAliasTableCell *)v5 setAccessoryView:v9];
  }

  return v5;
}

@end