@interface CKTranscriptCompositor
- (CKTranscriptCompositor)initWithLayoutContext:(int64_t)a3 datasource:(id)a4;
- (CKTranscriptCompositorDatasourceDelegate)delegate;
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
- (void)setContentsInsetReference:(int64_t)a3;
- (void)setDelegate:(id)a3;
- (void)setInterSectionSpacing:(double)a3;
- (void)setScrollDirection:(int64_t)a3;
@end

@implementation CKTranscriptCompositor

- (CKTranscriptCompositor)initWithLayoutContext:(int64_t)a3 datasource:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = CKTranscriptCompositor;
  v7 = [(CKTranscriptCompositor *)&v10 init];
  if (v7)
  {
    v8 = [[CKTranscriptCompositorSwift alloc] initWithLayoutContext:a3 datasource:v6];
    [(CKTranscriptCompositor *)v7 setRepresentedObject:v8];
  }

  return v7;
}

- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4
{
  v6 = a4;
  v7 = [(CKTranscriptCompositor *)self representedObject];
  v8 = [v7 layoutSectionForSection:a3 layoutEnvironment:v6];

  return v8;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCompositor *)self representedObject];
  [v5 setDelegate:v4];
}

- (CKTranscriptCompositorDatasourceDelegate)delegate
{
  v2 = [(CKTranscriptCompositor *)self representedObject];
  v3 = [v2 delegate];

  return v3;
}

- (int64_t)layoutContext
{
  v2 = [(CKTranscriptCompositor *)self representedObject];
  v3 = [v2 layoutContext];

  return v3;
}

- (id)datasource
{
  v2 = [(CKTranscriptCompositor *)self representedObject];
  v3 = [v2 datasource];

  return v3;
}

- (void)setCollectionView:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCompositor *)self representedObject];
  [v5 setCollectionView:v4];
}

- (UICollectionView)collectionView
{
  v2 = [(CKTranscriptCompositor *)self representedObject];
  v3 = [v2 collectionView];

  return v3;
}

- (UICollectionViewCompositionalLayout)collectionViewLayout
{
  v2 = [(CKTranscriptCompositor *)self representedObject];
  v3 = [v2 collectionViewLayout];

  return v3;
}

- (void)setScrollDirection:(int64_t)a3
{
  v4 = [(CKTranscriptCompositor *)self representedObject];
  [v4 setScrollDirection:a3];
}

- (int64_t)scrollDirection
{
  v2 = [(CKTranscriptCompositor *)self representedObject];
  v3 = [v2 scrollDirection];

  return v3;
}

- (void)setInterSectionSpacing:(double)a3
{
  v4 = [(CKTranscriptCompositor *)self representedObject];
  [v4 setInterSectionSpacing:a3];
}

- (double)interSectionSpacing
{
  v2 = [(CKTranscriptCompositor *)self representedObject];
  [v2 interSectionSpacing];
  v4 = v3;

  return v4;
}

- (void)setBoundarySupplementaryItems:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCompositor *)self representedObject];
  [v5 setBoundarySupplementaryItems:v4];
}

- (NSArray)boundarySupplementaryItems
{
  v2 = [(CKTranscriptCompositor *)self representedObject];
  v3 = [v2 boundarySupplementaryItems];

  return v3;
}

- (void)setContentsInsetReference:(int64_t)a3
{
  v4 = [(CKTranscriptCompositor *)self representedObject];
  [v4 setContentsInsetReference:a3];
}

- (int64_t)contentsInsetReference
{
  v2 = [(CKTranscriptCompositor *)self representedObject];
  v3 = [v2 contentsInsetReference];

  return v3;
}

@end