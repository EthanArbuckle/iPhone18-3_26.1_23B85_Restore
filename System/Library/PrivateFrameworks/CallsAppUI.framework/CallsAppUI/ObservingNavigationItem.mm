@interface ObservingNavigationItem
- (NSArray)rightBarButtonItems;
- (_TtC10CallsAppUI23ObservingNavigationItem)initWithCoder:(id)coder;
- (_TtC10CallsAppUI23ObservingNavigationItem)initWithTitle:(id)title;
- (void)setRightBarButtonItems:(id)items;
- (void)setRightBarButtonItems:(id)items animated:(BOOL)animated;
@end

@implementation ObservingNavigationItem

- (NSArray)rightBarButtonItems
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ObservingNavigationItem();
  v2 = v7.receiver;
  rightBarButtonItems = [(ObservingNavigationItem *)&v7 rightBarButtonItems];
  if (rightBarButtonItems)
  {
    v4 = rightBarButtonItems;
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    sub_1CFC9F8A8();

    v5 = sub_1CFC9F898();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setRightBarButtonItems:(id)items
{
  itemsCopy = items;
  if (items)
  {
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    itemsCopy = sub_1CFC9F8A8();
  }

  selfCopy = self;
  sub_1CFC68864(itemsCopy);
}

- (void)setRightBarButtonItems:(id)items animated:(BOOL)animated
{
  itemsCopy = items;
  if (items)
  {
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    itemsCopy = sub_1CFC9F8A8();
  }

  selfCopy = self;
  sub_1CFC68A3C(itemsCopy, animated);
}

- (_TtC10CallsAppUI23ObservingNavigationItem)initWithTitle:(id)title
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ObservingNavigationItem();
  return [(ObservingNavigationItem *)&v5 initWithTitle:title];
}

- (_TtC10CallsAppUI23ObservingNavigationItem)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ObservingNavigationItem();
  coderCopy = coder;
  v5 = [(ObservingNavigationItem *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end