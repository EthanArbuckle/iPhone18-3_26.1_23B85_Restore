@interface DOCItemCollectionViewPool
- (_TtC26DocumentManagerExecutables25DOCItemCollectionViewPool)init;
- (_TtC26DocumentManagerExecutables25DOCItemCollectionViewPool)initWithConfiguration:(id)configuration;
@end

@implementation DOCItemCollectionViewPool

- (_TtC26DocumentManagerExecutables25DOCItemCollectionViewPool)initWithConfiguration:(id)configuration
{
  *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionViewPool_configuration) = configuration;
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCItemCollectionViewPool();
  configurationCopy = configuration;
  return [(DOCItemCollectionViewPool *)&v6 init];
}

- (_TtC26DocumentManagerExecutables25DOCItemCollectionViewPool)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end