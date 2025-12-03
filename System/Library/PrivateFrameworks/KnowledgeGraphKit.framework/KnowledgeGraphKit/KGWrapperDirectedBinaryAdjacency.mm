@interface KGWrapperDirectedBinaryAdjacency
+ (id)identityWith:(id)with;
- (BOOL)containsSource:(unint64_t)source target:(unint64_t)target;
- (BOOL)isEqual:(id)equal;
- (KGElementIdentifierSet)sources;
- (KGElementIdentifierSet)targets;
- (NSString)description;
- (_TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency)init;
- (id)differenceWith:(id)with;
- (id)intersectingSourcesWith:(id)with;
- (id)intersectingTargetsWith:(id)with;
- (id)joinOnTargetsOfAdjacency:(id)adjacency;
- (id)mutableCopy;
- (id)subtractingSourcesWith:(id)with;
- (id)subtractingTargetsWith:(id)with;
- (id)targetsForSourceIdentifier:(unint64_t)identifier;
- (id)targetsForSources:(id)sources;
- (id)targetsWithMinimumCount:(unint64_t)count;
- (id)transposed;
- (id)unionWith:(id)with;
- (int64_t)hash;
- (void)enumerateTargetsBySourceWith:(id)with;
@end

@implementation KGWrapperDirectedBinaryAdjacency

- (_TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency)init
{
  *(&self->super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue) = sub_255879DA8(MEMORY[0x277D84F90]);
  v4.receiver = self;
  v4.super_class = type metadata accessor for KGWrapperDirectedBinaryAdjacency();
  return [(KGWrapperDirectedBinaryAdjacency *)&v4 init];
}

+ (id)identityWith:(id)with
{
  withCopy = with;
  v4 = sub_255889D6C(withCopy);

  return v4;
}

- (KGElementIdentifierSet)sources
{
  selfCopy = self;
  v3 = sub_255888570();

  return v3;
}

- (KGElementIdentifierSet)targets
{
  selfCopy = self;
  v3 = sub_255888674();

  return v3;
}

- (id)intersectingTargetsWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  v6 = sub_2558888FC(withCopy);

  return v6;
}

- (id)intersectingSourcesWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  v6 = sub_255888974(withCopy);

  return v6;
}

- (id)subtractingTargetsWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  v6 = sub_255888AE8(withCopy);

  return v6;
}

- (id)subtractingSourcesWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  v6 = sub_255888C90(withCopy);

  return v6;
}

- (id)joinOnTargetsOfAdjacency:(id)adjacency
{
  adjacencyCopy = adjacency;
  selfCopy = self;
  v6 = sub_255888E10(adjacencyCopy);

  return v6;
}

- (void)enumerateTargetsBySourceWith:(id)with
{
  v4 = _Block_copy(with);
  _Block_copy(v4);
  selfCopy = self;
  sub_255889E54(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (BOOL)containsSource:(unint64_t)source target:(unint64_t)target
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  v9[0] = source;
  v9[1] = v4;
  targetCopy = target;

  v5._0.rawValue = v9;
  v5._1.rawValue = &targetCopy;
  v6 = ElementIdentifierTupleSet.contains(_:)(v5);

  return v6;
}

- (id)targetsForSources:(id)sources
{
  sourcesCopy = sources;
  selfCopy = self;
  v6 = sub_255888FD4(sourcesCopy);

  return v6;
}

- (id)targetsForSourceIdentifier:(unint64_t)identifier
{
  selfCopy = self;
  v5 = sub_255889190(identifier);

  return v5;
}

- (id)transposed
{
  v8 = *(&self->super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  selfCopy = self;

  DirectedBinaryAdjacency.transposed()();

  v3 = type metadata accessor for KGWrapperDirectedBinaryAdjacency();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue] = v9;
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = [(KGWrapperDirectedBinaryAdjacency *)&v7 init];

  return v5;
}

- (id)differenceWith:(id)with
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  v13 = *(with + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  v14 = v4;
  withCopy = with;
  selfCopy = self;

  ElementIdentifierTupleSet.subtract(_:)(&v13);
  v7 = v14;
  v8 = type metadata accessor for KGWrapperDirectedBinaryAdjacency();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue] = v7;
  v12.receiver = v9;
  v12.super_class = v8;
  v10 = [(KGWrapperDirectedBinaryAdjacency *)&v12 init];

  return v10;
}

- (id)unionWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  v6 = sub_255889458(withCopy);

  return v6;
}

- (id)targetsWithMinimumCount:(unint64_t)count
{
  selfCopy = self;
  v5 = sub_255889540(count);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2559658F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_255889664(v8);

  sub_255880798(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  sub_255965D50();
  selfCopy = self;

  sub_255897194(v7, v3);
  v5 = sub_255965D90();

  return v5;
}

- (NSString)description
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  sub_255889D18();
  selfCopy = self;

  sub_2559652A0();

  v5 = sub_2559653D0();

  return v5;
}

- (id)mutableCopy
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  v3 = objc_allocWithZone(type metadata accessor for KGWrapperMutableDirectedBinaryAdjacency());
  *&v3[OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue] = v2;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for KGWrapperDirectedBinaryAdjacency();

  return [(KGWrapperDirectedBinaryAdjacency *)&v5 init];
}

@end