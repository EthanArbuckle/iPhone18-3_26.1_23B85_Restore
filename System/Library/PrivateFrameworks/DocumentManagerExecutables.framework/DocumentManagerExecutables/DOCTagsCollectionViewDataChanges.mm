@interface DOCTagsCollectionViewDataChanges
- (BOOL)empty;
- (NSArray)deletions;
- (_TtC26DocumentManagerExecutables32DOCTagsCollectionViewDataChanges)init;
- (void)setDeletions:(id)deletions;
@end

@implementation DOCTagsCollectionViewDataChanges

- (NSArray)deletions
{
  swift_beginAccess();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setDeletions:(id)deletions
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCTagsCollectionViewDataChanges_deletions;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (BOOL)empty
{
  v2 = *((*MEMORY[0x277D85000] & *self) + 0x58);
  selfCopy = self;
  v4 = v2();
  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 == 0;
}

- (_TtC26DocumentManagerExecutables32DOCTagsCollectionViewDataChanges)init
{
  *(self + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCTagsCollectionViewDataChanges_deletions) = MEMORY[0x277D84F90];
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCTagsCollectionViewDataChanges();
  return [(DOCTagsCollectionViewDataChanges *)&v3 init];
}

@end