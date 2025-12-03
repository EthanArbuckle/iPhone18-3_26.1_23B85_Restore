@interface CKTranscriptCompositorSwift
- (CKTranscriptCompositorDatasourceDelegate)delegate;
- (CKTranscriptCompositorSwift)init;
- (NSArray)boundarySupplementaryItems;
- (UICollectionView)collectionView;
- (UICollectionViewCompositionalLayout)collectionViewLayout;
- (double)interSectionSpacing;
- (id)datasource;
- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment;
- (int64_t)contentsInsetReference;
- (int64_t)layoutContext;
- (int64_t)scrollDirection;
- (void)setBoundarySupplementaryItems:(id)items;
- (void)setCollectionView:(id)view;
- (void)setCollectionViewLayout:(id)layout;
- (void)setContentsInsetReference:(int64_t)reference;
- (void)setDatasource:(id)datasource;
- (void)setInterSectionSpacing:(double)spacing;
- (void)setLayoutContext:(int64_t)context;
- (void)setScrollDirection:(int64_t)direction;
@end

@implementation CKTranscriptCompositorSwift

- (UICollectionView)collectionView
{
  v3 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionView;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCollectionView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  TranscriptCompositor.collectionView.setter(view);
}

- (CKTranscriptCompositorDatasourceDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (int64_t)layoutContext
{
  v3 = OBJC_IVAR___CKTranscriptCompositorSwift_layoutContext;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLayoutContext:(int64_t)context
{
  v5 = OBJC_IVAR___CKTranscriptCompositorSwift_layoutContext;
  swift_beginAccess();
  *(self + v5) = context;
}

- (id)datasource
{
  v3 = OBJC_IVAR___CKTranscriptCompositorSwift_datasource;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setDatasource:(id)datasource
{
  v5 = OBJC_IVAR___CKTranscriptCompositorSwift_datasource;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = datasource;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (UICollectionViewCompositionalLayout)collectionViewLayout
{
  v3 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionViewLayout;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCollectionViewLayout:(id)layout
{
  v5 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionViewLayout;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = layout;
  layoutCopy = layout;
  selfCopy = self;

  sharedFeatureFlags = [objc_opt_self() sharedFeatureFlags];
  LODWORD(v6) = [sharedFeatureFlags isModernSplitViewControllerEnabled];

  if (v6)
  {
    sub_21568ECB8();
  }
}

- (int64_t)scrollDirection
{
  v3 = OBJC_IVAR___CKTranscriptCompositorSwift_scrollDirection;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setScrollDirection:(int64_t)direction
{
  selfCopy = self;
  TranscriptCompositor.scrollDirection.setter(direction);
}

- (double)interSectionSpacing
{
  v3 = OBJC_IVAR___CKTranscriptCompositorSwift_interSectionSpacing;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setInterSectionSpacing:(double)spacing
{
  selfCopy = self;
  TranscriptCompositor.interSectionSpacing.setter(spacing);
}

- (NSArray)boundarySupplementaryItems
{
  v3 = OBJC_IVAR___CKTranscriptCompositorSwift_boundarySupplementaryItems;
  swift_beginAccess();
  v4 = *(self + v3);
  sub_2156873E4(0, &qword_28119C870, 0x277CFB830);

  v5 = sub_2156930E0();

  return v5;
}

- (void)setBoundarySupplementaryItems:(id)items
{
  sub_2156873E4(0, &qword_28119C870, 0x277CFB830);
  v4 = sub_2156930F0();
  selfCopy = self;
  TranscriptCompositor.boundarySupplementaryItems.setter(v4);
}

- (int64_t)contentsInsetReference
{
  v3 = OBJC_IVAR___CKTranscriptCompositorSwift_contentsInsetReference;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentsInsetReference:(int64_t)reference
{
  selfCopy = self;
  TranscriptCompositor.contentsInsetReference.setter(reference);
}

- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = TranscriptCompositor.layoutSection(forSection:layoutEnvironment:)(section, environment);
  swift_unknownObjectRelease();

  return v8;
}

- (CKTranscriptCompositorSwift)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end