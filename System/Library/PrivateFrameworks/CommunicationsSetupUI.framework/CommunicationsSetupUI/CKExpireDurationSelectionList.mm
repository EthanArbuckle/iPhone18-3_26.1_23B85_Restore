@interface CKExpireDurationSelectionList
- (id)specifiers;
- (void)_updateFooterText;
- (void)listItemSelected:(id)a3;
@end

@implementation CKExpireDurationSelectionList

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = MEMORY[0x277CBEB18];
    v14.receiver = self;
    v14.super_class = CKExpireDurationSelectionList;
    v6 = [(PSListItemsController *)&v14 specifiers];
    v7 = [v5 arrayWithArray:v6];

    v8 = +[CKSettingsMessagesController currentKeepMessages];
    if ([v8 integerValue] == 30)
    {
      v9 = 3;
      v10 = 4;
    }

    else
    {
      if ([v8 integerValue] == 365)
      {
        v10 = 4;
      }

      else
      {
        v10 = 3;
      }

      v9 = 2;
    }

    [v7 removeObjectAtIndex:v10];
    [v7 removeObjectAtIndex:v9];
    v11 = [MEMORY[0x277CBEA60] arrayWithArray:v7];
    v12 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v11;

    [(CKExpireDurationSelectionList *)self _updateFooterText];
    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)listItemSelected:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKExpireDurationSelectionList;
  [(PSListItemsController *)&v4 listItemSelected:a3];
  [(CKExpireDurationSelectionList *)self _updateFooterText];
}

- (void)_updateFooterText
{
  v4 = [(CKExpireDurationSelectionList *)self expireDescription];
  v3 = [(CKExpireDurationSelectionList *)self _groupSpecifier];
  [v3 setProperty:v4 forKey:*MEMORY[0x277D3FF88]];
  [(CKExpireDurationSelectionList *)self reloadSpecifier:v3];
}

@end