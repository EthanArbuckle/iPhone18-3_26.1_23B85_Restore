@interface DOCTagsCollectionViewData
- (_TtC26DocumentManagerExecutables25DOCTagsCollectionViewData)init;
- (_TtP26DocumentManagerExecutables33DOCTagsCollectionViewDataDelegate_)delegate;
- (id)tagAtIndex:(int64_t)index;
- (int64_t)indexOfTag:(id)tag;
- (int64_t)presenceOf:(id)of;
- (void)applyPendingExternalChange:(id)change timeout:(double)timeout;
- (void)applyTagsFromNodes:(id)nodes;
@end

@implementation DOCTagsCollectionViewData

- (_TtP26DocumentManagerExecutables33DOCTagsCollectionViewDataDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)applyTagsFromNodes:(id)nodes
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  DOCTagsCollectionViewData.applyTagsFromNodes(_:)(v4);
}

- (void)applyPendingExternalChange:(id)change timeout:(double)timeout
{
  changeCopy = change;
  selfCopy = self;
  DOCTagsCollectionViewData.applyPendingExternalChange(_:timeout:)(changeCopy);
}

- (id)tagAtIndex:(int64_t)index
{
  selfCopy = self;
  v5 = DOCTagsCollectionViewData.tag(atIndex:)(index);

  return v5;
}

- (int64_t)indexOfTag:(id)tag
{
  tagCopy = tag;
  selfCopy = self;
  v6 = DOCTagsCollectionViewData.index(ofTag:)(tagCopy);

  return v6;
}

- (int64_t)presenceOf:(id)of
{
  ofCopy = of;
  selfCopy = self;
  v6 = DOCTagsCollectionViewData.presence(of:)(ofCopy);

  return v6;
}

- (_TtC26DocumentManagerExecutables25DOCTagsCollectionViewData)init
{
  v3 = (self + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection);
  *v3 = specialized DOCTagUnionCollection.init(nodes:)(MEMORY[0x277D84F90]);
  v3[1] = v4;
  v3[2] = v5;
  *(self + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange) = 0;
  swift_unknownObjectWeakInit();
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCTagsCollectionViewData();
  return [(DOCTagsCollectionViewData *)&v7 init];
}

@end