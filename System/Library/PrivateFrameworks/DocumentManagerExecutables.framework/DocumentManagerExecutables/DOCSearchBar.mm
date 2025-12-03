@interface DOCSearchBar
- (_TtC26DocumentManagerExecutables12DOCSearchBar)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutables12DOCSearchBar)initWithFrame:(CGRect)frame;
- (void)buildMenuWithBuilder:(id)builder;
@end

@implementation DOCSearchBar

- (_TtC26DocumentManagerExecutables12DOCSearchBar)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)buildMenuWithBuilder:(id)builder
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCSearchBar();
  swift_unknownObjectRetain();
  v4 = v5.receiver;
  [(DOCSearchBar *)&v5 buildMenuWithBuilder:builder];
  [builder removeMenuForIdentifier_];
  swift_unknownObjectRelease();
}

- (_TtC26DocumentManagerExecutables12DOCSearchBar)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end