@interface SFTabSwitcherContent
- (SFTabSwitcherItem)selectedItem;
- (SFTabSwitcherProfile)profileForInsertedPages;
- (void)setProfileForInsertedPages:(id)pages;
- (void)setSelectedItem:(id)item;
@end

@implementation SFTabSwitcherContent

- (void)setProfileForInsertedPages:(id)pages
{
  pagesCopy = pages;
  selfCopy = self;
  sub_18B830E70(pages);
}

- (void)setSelectedItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_18B83120C(item);
}

- (SFTabSwitcherProfile)profileForInsertedPages
{
  selfCopy = self;
  v3 = sub_18BA89B44();

  return v3;
}

- (SFTabSwitcherItem)selectedItem
{
  selfCopy = self;
  v3 = sub_18BA89C4C();

  return v3;
}

@end