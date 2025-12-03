@interface DOCTabBarItem
+ (id)itemWithTab:(unint64_t)tab;
+ (id)tabIdentifierForTab:(unint64_t)tab;
- (NSString)description;
- (NSString)displayTitle;
- (NSString)tabIdentifier;
- (_TtC26DocumentManagerExecutables13DOCTabBarItem)init;
- (_TtC26DocumentManagerExecutables13DOCTabBarItem)initWithCoder:(id)coder;
- (id)floatingSwitcherActionRepresentationWithHandler:(id)handler;
- (unint64_t)tab;
- (void)setTab:(unint64_t)tab;
@end

@implementation DOCTabBarItem

- (unint64_t)tab
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables13DOCTabBarItem_tab;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setTab:(unint64_t)tab
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables13DOCTabBarItem_tab;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = tab;
}

- (NSString)tabIdentifier
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x58);
  selfCopy = self;
  v4 = v2();
  if (v4)
  {
    if (v4 == 2)
    {
      v5 = 0xE600000000000000;
      v6 = 0x6573776F7262;
    }

    else
    {
      if (v4 != 1)
      {
        type metadata accessor for DOCTab(0);
        result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return result;
      }

      v5 = 0xE600000000000000;
      v6 = 0x646572616873;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x73746E65636572;
  }

  v7 = MEMORY[0x24C1FAD20](v6, v5);

  return v7;
}

+ (id)tabIdentifierForTab:(unint64_t)tab
{
  if (tab)
  {
    if (tab == 2)
    {
      v3 = 0xE600000000000000;
      v4 = 0x6573776F7262;
    }

    else
    {
      if (tab != 1)
      {
        type metadata accessor for DOCTab(0);
        result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return result;
      }

      v3 = 0xE600000000000000;
      v4 = 0x646572616873;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x73746E65636572;
  }

  v5 = MEMORY[0x24C1FAD20](v4, v3);

  return v5;
}

+ (id)itemWithTab:(unint64_t)tab
{
  v3 = specialized static DOCTabBarItem._item(tab:)(tab);

  return v3;
}

- (id)floatingSwitcherActionRepresentationWithHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  result = [(DOCTabBarItem *)selfCopy _internalTitle];
  if (result)
  {
    v8 = result;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = swift_allocObject();
    *(v9 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
    *(v9 + 24) = v5;
    v10 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSString)description
{
  selfCopy = self;
  v3 = DOCTabBarItem.description.getter();
  v5 = v4;

  v6 = MEMORY[0x24C1FAD20](v3, v5);

  return v6;
}

- (NSString)displayTitle
{
  selfCopy = self;
  _internalTitle = [(DOCTabBarItem *)selfCopy _internalTitle];
  if (_internalTitle)
  {
    v4 = _internalTitle;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = MEMORY[0x24C1FAD20](v5, v7);
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (_TtC26DocumentManagerExecutables13DOCTabBarItem)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables13DOCTabBarItem_tab) = 2;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCTabBarItem();
  return [(DOCTabBarItem *)&v3 init];
}

- (_TtC26DocumentManagerExecutables13DOCTabBarItem)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end