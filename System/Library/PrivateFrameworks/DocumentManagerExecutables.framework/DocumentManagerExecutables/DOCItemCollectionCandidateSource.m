@interface DOCItemCollectionCandidateSource
- (_TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource)init;
- (void)dealloc;
@end

@implementation DOCItemCollectionCandidateSource

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_nodeCollection);
  if (v3)
  {
    v4 = *((*MEMORY[0x277D85000] & *v3) + 0x1C8);
    v5 = self;
    v6 = v3;
    v4();
  }

  else
  {
    v7 = self;
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCItemCollectionCandidateSource();
  [(DOCItemCollectionCandidateSource *)&v8 dealloc];
}

- (_TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end