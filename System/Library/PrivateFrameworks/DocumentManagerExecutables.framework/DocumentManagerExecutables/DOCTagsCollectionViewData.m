@interface DOCTagsCollectionViewData
- (_TtC26DocumentManagerExecutables25DOCTagsCollectionViewData)init;
- (_TtP26DocumentManagerExecutables33DOCTagsCollectionViewDataDelegate_)delegate;
- (id)tagAtIndex:(int64_t)a3;
- (int64_t)indexOfTag:(id)a3;
- (int64_t)presenceOf:(id)a3;
- (void)applyPendingExternalChange:(id)a3 timeout:(double)a4;
- (void)applyTagsFromNodes:(id)a3;
@end

@implementation DOCTagsCollectionViewData

- (_TtP26DocumentManagerExecutables33DOCTagsCollectionViewDataDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)applyTagsFromNodes:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  DOCTagsCollectionViewData.applyTagsFromNodes(_:)(v4);
}

- (void)applyPendingExternalChange:(id)a3 timeout:(double)a4
{
  v5 = a3;
  v6 = self;
  DOCTagsCollectionViewData.applyPendingExternalChange(_:timeout:)(v5);
}

- (id)tagAtIndex:(int64_t)a3
{
  v4 = self;
  v5 = DOCTagsCollectionViewData.tag(atIndex:)(a3);

  return v5;
}

- (int64_t)indexOfTag:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = DOCTagsCollectionViewData.index(ofTag:)(v4);

  return v6;
}

- (int64_t)presenceOf:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = DOCTagsCollectionViewData.presence(of:)(v4);

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