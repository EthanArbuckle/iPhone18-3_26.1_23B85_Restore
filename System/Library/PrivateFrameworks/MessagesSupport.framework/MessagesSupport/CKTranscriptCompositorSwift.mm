@interface CKTranscriptCompositorSwift
- (CKTranscriptCompositorDatasourceDelegate)delegate;
- (CKTranscriptCompositorSwift)init;
- (NSArray)boundarySupplementaryItems;
- (UICollectionView)collectionView;
- (UICollectionViewCompositionalLayout)collectionViewLayout;
- (double)interSectionSpacing;
- (id)datasource;
- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4;
- (int64_t)contentsInsetReference;
- (int64_t)layoutContext;
- (int64_t)scrollDirection;
- (void)setBoundarySupplementaryItems:(id)a3;
- (void)setCollectionView:(id)a3;
- (void)setCollectionViewLayout:(id)a3;
- (void)setContentsInsetReference:(int64_t)a3;
- (void)setDatasource:(id)a3;
- (void)setInterSectionSpacing:(double)a3;
- (void)setLayoutContext:(int64_t)a3;
- (void)setScrollDirection:(int64_t)a3;
@end

@implementation CKTranscriptCompositorSwift

- (UICollectionView)collectionView
{
  v3 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionView;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCollectionView:(id)a3
{
  v5 = a3;
  v6 = self;
  TranscriptCompositor.collectionView.setter(a3);
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

- (void)setLayoutContext:(int64_t)a3
{
  v5 = OBJC_IVAR___CKTranscriptCompositorSwift_layoutContext;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (id)datasource
{
  v3 = OBJC_IVAR___CKTranscriptCompositorSwift_datasource;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setDatasource:(id)a3
{
  v5 = OBJC_IVAR___CKTranscriptCompositorSwift_datasource;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (UICollectionViewCompositionalLayout)collectionViewLayout
{
  v3 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionViewLayout;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCollectionViewLayout:(id)a3
{
  v5 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionViewLayout;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
  v8 = self;

  v9 = [objc_opt_self() sharedFeatureFlags];
  LODWORD(v6) = [v9 isModernSplitViewControllerEnabled];

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

- (void)setScrollDirection:(int64_t)a3
{
  v4 = self;
  TranscriptCompositor.scrollDirection.setter(a3);
}

- (double)interSectionSpacing
{
  v3 = OBJC_IVAR___CKTranscriptCompositorSwift_interSectionSpacing;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setInterSectionSpacing:(double)a3
{
  v4 = self;
  TranscriptCompositor.interSectionSpacing.setter(a3);
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

- (void)setBoundarySupplementaryItems:(id)a3
{
  sub_2156873E4(0, &qword_28119C870, 0x277CFB830);
  v4 = sub_2156930F0();
  v5 = self;
  TranscriptCompositor.boundarySupplementaryItems.setter(v4);
}

- (int64_t)contentsInsetReference
{
  v3 = OBJC_IVAR___CKTranscriptCompositorSwift_contentsInsetReference;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentsInsetReference:(int64_t)a3
{
  v4 = self;
  TranscriptCompositor.contentsInsetReference.setter(a3);
}

- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  v8 = TranscriptCompositor.layoutSection(forSection:layoutEnvironment:)(a3, a4);
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