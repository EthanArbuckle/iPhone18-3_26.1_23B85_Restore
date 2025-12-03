@interface KGWrapperMutableDirectedBinaryAdjacency
- (_TtC17KnowledgeGraphKit39KGWrapperMutableDirectedBinaryAdjacency)init;
- (void)formUnionWith:(id)with;
- (void)insertSource:(unint64_t)source target:(unint64_t)target;
- (void)removeSource:(unint64_t)source target:(unint64_t)target;
- (void)removeTargetsForSource:(unint64_t)source;
- (void)setTargets:(id)targets forSource:(unint64_t)source;
- (void)subtract:(id)subtract;
@end

@implementation KGWrapperMutableDirectedBinaryAdjacency

- (void)insertSource:(unint64_t)source target:(unint64_t)target
{
  targetCopy = target;
  sourceCopy = source;
  ElementIdentifierTupleSet.insert(_:)(&v7, &v6, &sourceCopy, &targetCopy);
}

- (void)removeSource:(unint64_t)source target:(unint64_t)target
{
  targetCopy = target;
  sourceCopy = source;
  v4._0.rawValue = &sourceCopy;
  v4._1.rawValue = &targetCopy;
  ElementIdentifierTupleSet.remove(_:)(v4);
}

- (void)formUnionWith:(id)with
{
  v3 = *(with + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);

  ElementIdentifierTupleSet.formUnion(_:)(&v3);
}

- (void)subtract:(id)subtract
{
  v3 = *(subtract + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);

  ElementIdentifierTupleSet.subtract(_:)(&v3);
}

- (void)setTargets:(id)targets forSource:(unint64_t)source
{
  targetsCopy = targets;
  selfCopy = self;
  sub_255889AD0(targetsCopy, source);
}

- (void)removeTargetsForSource:(unint64_t)source
{
  selfCopy = self;
  sub_255897064(source, &v5);
}

- (_TtC17KnowledgeGraphKit39KGWrapperMutableDirectedBinaryAdjacency)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(KGWrapperDirectedBinaryAdjacency *)&v3 init];
}

@end