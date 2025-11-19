@interface DOCItemCollectionViewPool
- (_TtC26DocumentManagerExecutables25DOCItemCollectionViewPool)init;
- (_TtC26DocumentManagerExecutables25DOCItemCollectionViewPool)initWithConfiguration:(id)a3;
@end

@implementation DOCItemCollectionViewPool

- (_TtC26DocumentManagerExecutables25DOCItemCollectionViewPool)initWithConfiguration:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionViewPool_configuration) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCItemCollectionViewPool();
  v4 = a3;
  return [(DOCItemCollectionViewPool *)&v6 init];
}

- (_TtC26DocumentManagerExecutables25DOCItemCollectionViewPool)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end