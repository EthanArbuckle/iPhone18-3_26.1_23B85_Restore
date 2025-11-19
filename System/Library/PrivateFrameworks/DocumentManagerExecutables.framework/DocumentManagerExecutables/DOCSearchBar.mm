@interface DOCSearchBar
- (_TtC26DocumentManagerExecutables12DOCSearchBar)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables12DOCSearchBar)initWithFrame:(CGRect)a3;
- (void)buildMenuWithBuilder:(id)a3;
@end

@implementation DOCSearchBar

- (_TtC26DocumentManagerExecutables12DOCSearchBar)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)buildMenuWithBuilder:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCSearchBar();
  swift_unknownObjectRetain();
  v4 = v5.receiver;
  [(DOCSearchBar *)&v5 buildMenuWithBuilder:a3];
  [a3 removeMenuForIdentifier_];
  swift_unknownObjectRelease();
}

- (_TtC26DocumentManagerExecutables12DOCSearchBar)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end