@interface KGWrapperDirectedBinaryAdjacency
+ (id)identityWith:(id)a3;
- (BOOL)containsSource:(unint64_t)a3 target:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (KGElementIdentifierSet)sources;
- (KGElementIdentifierSet)targets;
- (NSString)description;
- (_TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency)init;
- (id)differenceWith:(id)a3;
- (id)intersectingSourcesWith:(id)a3;
- (id)intersectingTargetsWith:(id)a3;
- (id)joinOnTargetsOfAdjacency:(id)a3;
- (id)mutableCopy;
- (id)subtractingSourcesWith:(id)a3;
- (id)subtractingTargetsWith:(id)a3;
- (id)targetsForSourceIdentifier:(unint64_t)a3;
- (id)targetsForSources:(id)a3;
- (id)targetsWithMinimumCount:(unint64_t)a3;
- (id)transposed;
- (id)unionWith:(id)a3;
- (int64_t)hash;
- (void)enumerateTargetsBySourceWith:(id)a3;
@end

@implementation KGWrapperDirectedBinaryAdjacency

- (_TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency)init
{
  *(&self->super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue) = sub_255879DA8(MEMORY[0x277D84F90]);
  v4.receiver = self;
  v4.super_class = type metadata accessor for KGWrapperDirectedBinaryAdjacency();
  return [(KGWrapperDirectedBinaryAdjacency *)&v4 init];
}

+ (id)identityWith:(id)a3
{
  v3 = a3;
  v4 = sub_255889D6C(v3);

  return v4;
}

- (KGElementIdentifierSet)sources
{
  v2 = self;
  v3 = sub_255888570();

  return v3;
}

- (KGElementIdentifierSet)targets
{
  v2 = self;
  v3 = sub_255888674();

  return v3;
}

- (id)intersectingTargetsWith:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_2558888FC(v4);

  return v6;
}

- (id)intersectingSourcesWith:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_255888974(v4);

  return v6;
}

- (id)subtractingTargetsWith:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_255888AE8(v4);

  return v6;
}

- (id)subtractingSourcesWith:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_255888C90(v4);

  return v6;
}

- (id)joinOnTargetsOfAdjacency:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_255888E10(v4);

  return v6;
}

- (void)enumerateTargetsBySourceWith:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_255889E54(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (BOOL)containsSource:(unint64_t)a3 target:(unint64_t)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  v9[0] = a3;
  v9[1] = v4;
  v8 = a4;

  v5._0.rawValue = v9;
  v5._1.rawValue = &v8;
  v6 = ElementIdentifierTupleSet.contains(_:)(v5);

  return v6;
}

- (id)targetsForSources:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_255888FD4(v4);

  return v6;
}

- (id)targetsForSourceIdentifier:(unint64_t)a3
{
  v4 = self;
  v5 = sub_255889190(a3);

  return v5;
}

- (id)transposed
{
  v8 = *(&self->super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  v2 = self;

  DirectedBinaryAdjacency.transposed()();

  v3 = type metadata accessor for KGWrapperDirectedBinaryAdjacency();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue] = v9;
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = [(KGWrapperDirectedBinaryAdjacency *)&v7 init];

  return v5;
}

- (id)differenceWith:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  v13 = *(a3 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  v14 = v4;
  v5 = a3;
  v6 = self;

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

- (id)unionWith:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_255889458(v4);

  return v6;
}

- (id)targetsWithMinimumCount:(unint64_t)a3
{
  v4 = self;
  v5 = sub_255889540(a3);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_2559658F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_255889664(v8);

  sub_255880798(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  sub_255965D50();
  v4 = self;

  sub_255897194(v7, v3);
  v5 = sub_255965D90();

  return v5;
}

- (NSString)description
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  sub_255889D18();
  v4 = self;

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