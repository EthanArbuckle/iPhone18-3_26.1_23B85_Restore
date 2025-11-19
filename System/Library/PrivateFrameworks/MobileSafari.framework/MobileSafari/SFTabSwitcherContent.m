@interface SFTabSwitcherContent
- (SFTabSwitcherItem)selectedItem;
- (SFTabSwitcherProfile)profileForInsertedPages;
- (void)setProfileForInsertedPages:(id)a3;
- (void)setSelectedItem:(id)a3;
@end

@implementation SFTabSwitcherContent

- (void)setProfileForInsertedPages:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18B830E70(a3);
}

- (void)setSelectedItem:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18B83120C(a3);
}

- (SFTabSwitcherProfile)profileForInsertedPages
{
  v2 = self;
  v3 = sub_18BA89B44();

  return v3;
}

- (SFTabSwitcherItem)selectedItem
{
  v2 = self;
  v3 = sub_18BA89C4C();

  return v3;
}

@end