@interface DOCBarButtonItemGroup
- (BOOL)isHidden;
- (NSArray)barButtonItems;
- (_TtC26DocumentManagerExecutables21DOCBarButtonItemGroup)initWithBarButtonItems:(id)a3 representativeItem:(id)a4;
- (_TtC26DocumentManagerExecutables21DOCBarButtonItemGroup)initWithCoder:(id)a3;
- (void)setBarButtonItems:(id)a3;
- (void)setHidden:(BOOL)a3;
@end

@implementation DOCBarButtonItemGroup

- (_TtC26DocumentManagerExecutables21DOCBarButtonItemGroup)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_autoHideIfItemsHidden) = 1;
  *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup__isHiddenExternalClientSetting) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_itemObservances) = MEMORY[0x277D84F90];
  *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_hasVisibleItems) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables21DOCBarButtonItemGroup)initWithBarButtonItems:(id)a3 representativeItem:(id)a4
{
  type metadata accessor for UIBarButtonItem();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;
  return DOCBarButtonItemGroup.init(barButtonItems:representativeItem:)(v5, a4);
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

- (void)setBarButtonItems:(id)a3
{
  type metadata accessor for UIBarButtonItem();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  DOCBarButtonItemGroup.barButtonItems.setter();
}

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCBarButtonItemGroup();
  return [(UIBarButtonItemGroup *)&v3 isHidden];
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for DOCBarButtonItemGroup();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(UIBarButtonItemGroup *)&v9 isHidden];
  v8.receiver = v6;
  v8.super_class = v5;
  [(UIBarButtonItemGroup *)&v8 setHidden:v3];
  DOCBarButtonItemGroup.isHidden.didset(v7);
}

@end