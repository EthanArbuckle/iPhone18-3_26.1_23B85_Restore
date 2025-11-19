@interface KGWrapperMutableDirectedBinaryAdjacency
- (_TtC17KnowledgeGraphKit39KGWrapperMutableDirectedBinaryAdjacency)init;
- (void)formUnionWith:(id)a3;
- (void)insertSource:(unint64_t)a3 target:(unint64_t)a4;
- (void)removeSource:(unint64_t)a3 target:(unint64_t)a4;
- (void)removeTargetsForSource:(unint64_t)a3;
- (void)setTargets:(id)a3 forSource:(unint64_t)a4;
- (void)subtract:(id)a3;
@end

@implementation KGWrapperMutableDirectedBinaryAdjacency

- (void)insertSource:(unint64_t)a3 target:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  ElementIdentifierTupleSet.insert(_:)(&v7, &v6, &v5, &v4);
}

- (void)removeSource:(unint64_t)a3 target:(unint64_t)a4
{
  v5 = a4;
  v6 = a3;
  v4._0.rawValue = &v6;
  v4._1.rawValue = &v5;
  ElementIdentifierTupleSet.remove(_:)(v4);
}

- (void)formUnionWith:(id)a3
{
  v3 = *(a3 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);

  ElementIdentifierTupleSet.formUnion(_:)(&v3);
}

- (void)subtract:(id)a3
{
  v3 = *(a3 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);

  ElementIdentifierTupleSet.subtract(_:)(&v3);
}

- (void)setTargets:(id)a3 forSource:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_255889AD0(v6, a4);
}

- (void)removeTargetsForSource:(unint64_t)a3
{
  v4 = self;
  sub_255897064(a3, &v5);
}

- (_TtC17KnowledgeGraphKit39KGWrapperMutableDirectedBinaryAdjacency)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(KGWrapperDirectedBinaryAdjacency *)&v3 init];
}

@end