@interface DOCSymbolImageBarButtonItem
- (BOOL)isEqual:(id)a3;
- (_TtC26DocumentManagerExecutables27DOCSymbolImageBarButtonItem)init;
- (_TtC26DocumentManagerExecutables27DOCSymbolImageBarButtonItem)initWithCoder:(id)a3;
@end

@implementation DOCSymbolImageBarButtonItem

- (_TtC26DocumentManagerExecutables27DOCSymbolImageBarButtonItem)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = DOCSymbolImageBarButtonItem.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6 & 1;
}

- (_TtC26DocumentManagerExecutables27DOCSymbolImageBarButtonItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end