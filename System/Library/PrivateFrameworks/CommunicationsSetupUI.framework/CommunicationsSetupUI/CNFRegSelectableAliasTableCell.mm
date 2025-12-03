@interface CNFRegSelectableAliasTableCell
- (CNFRegSelectableAliasTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation CNFRegSelectableAliasTableCell

- (CNFRegSelectableAliasTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v11.receiver = self;
  v11.super_class = CNFRegSelectableAliasTableCell;
  v5 = [(PSTableCell *)&v11 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = +[CNFRegAppearanceController globalAppearanceController];
    v7 = objc_alloc(MEMORY[0x277D755E8]);
    tableCellCheckmarkImage = [v6 tableCellCheckmarkImage];
    v9 = [v7 initWithImage:tableCellCheckmarkImage];

    [(CNFRegSelectableAliasTableCell *)v5 setAccessoryView:v9];
  }

  return v5;
}

@end