@interface DOCBlockOperation
- (_TtC26DocumentManagerExecutables17DOCBlockOperation)init;
- (void)main;
@end

@implementation DOCBlockOperation

- (void)main
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCBlockOperation_block);
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  selfCopy = self;
  v3(closure #1 in DOCBlockOperation.main()partial apply, v4);
}

- (_TtC26DocumentManagerExecutables17DOCBlockOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end