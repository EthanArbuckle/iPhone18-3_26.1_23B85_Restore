@interface DOCBarButtonItemGroup
- (BOOL)isHidden;
- (NSArray)barButtonItems;
- (_TtC26DocumentManagerExecutables21DOCBarButtonItemGroup)initWithBarButtonItems:(id)items representativeItem:(id)item;
- (_TtC26DocumentManagerExecutables21DOCBarButtonItemGroup)initWithCoder:(id)coder;
- (void)setBarButtonItems:(id)items;
- (void)setHidden:(BOOL)hidden;
@end

@implementation DOCBarButtonItemGroup

- (_TtC26DocumentManagerExecutables21DOCBarButtonItemGroup)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_autoHideIfItemsHidden) = 1;
  *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup__isHiddenExternalClientSetting) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_itemObservances) = MEMORY[0x277D84F90];
  *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_hasVisibleItems) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables21DOCBarButtonItemGroup)initWithBarButtonItems:(id)items representativeItem:(id)item
{
  type metadata accessor for UIBarButtonItem();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  itemCopy = item;
  return DOCBarButtonItemGroup.init(barButtonItems:representativeItem:)(v5, item);
}

- (NSArray)barButtonItems
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCBarButtonItemGroup();
  v2 = v5.receiver;
  isa = [(UIBarButtonItemGroup *)&v5 barButtonItems];
  if (!isa)
  {
    type metadata accessor for UIBarButtonItem();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  return isa;
}

- (void)setBarButtonItems:(id)items
{
  type metadata accessor for UIBarButtonItem();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  DOCBarButtonItemGroup.barButtonItems.setter();
}

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCBarButtonItemGroup();
  return [(UIBarButtonItemGroup *)&v3 isHidden];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v5 = type metadata accessor for DOCBarButtonItemGroup();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isHidden = [(UIBarButtonItemGroup *)&v9 isHidden];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(UIBarButtonItemGroup *)&v8 setHidden:hiddenCopy];
  DOCBarButtonItemGroup.isHidden.didset(isHidden);
}

@end