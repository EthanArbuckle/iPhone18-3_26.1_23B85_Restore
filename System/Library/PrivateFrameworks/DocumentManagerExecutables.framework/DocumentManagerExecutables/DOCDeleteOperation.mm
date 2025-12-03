@interface DOCDeleteOperation
- (_TtC26DocumentManagerExecutables18DOCDeleteOperation)initWithItems:(id)items;
- (id)operationForRedoing;
@end

@implementation DOCDeleteOperation

- (id)operationForRedoing
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_items);
  if (v2 >> 62)
  {
    selfCopy = self;
    v9 = __CocoaSet.count.getter();
    self = selfCopy;
    if (v9 >= 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_3:
    v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_originalOperation);
    v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_undoManager);
    objc_allocWithZone(type metadata accessor for DOCDeleteOperation());
    swift_unknownObjectRetain();
    v5 = v4;

    v7 = DOCDeleteOperation.init(items:originalOperation:undoManager:)(v6, v3, v5);
    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (_TtC26DocumentManagerExecutables18DOCDeleteOperation)initWithItems:(id)items
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end