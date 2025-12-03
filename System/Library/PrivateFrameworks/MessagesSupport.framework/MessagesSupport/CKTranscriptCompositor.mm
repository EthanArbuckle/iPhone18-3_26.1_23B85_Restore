@interface CKTranscriptCompositor
- (CKTranscriptCompositor)initWithLayoutContext:(int64_t)context datasource:(id)datasource;
- (CKTranscriptCompositorDatasourceDelegate)delegate;
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
- (void)setContentsInsetReference:(int64_t)reference;
- (void)setDelegate:(id)delegate;
- (void)setInterSectionSpacing:(double)spacing;
- (void)setScrollDirection:(int64_t)direction;
@end

@implementation CKTranscriptCompositor

- (CKTranscriptCompositor)initWithLayoutContext:(int64_t)context datasource:(id)datasource
{
  datasourceCopy = datasource;
  v10.receiver = self;
  v10.super_class = CKTranscriptCompositor;
  v7 = [(CKTranscriptCompositor *)&v10 init];
  if (v7)
  {
    v8 = [[CKTranscriptCompositorSwift alloc] initWithLayoutContext:context datasource:datasourceCopy];
    [(CKTranscriptCompositor *)v7 setRepresentedObject:v8];
  }

  return v7;
}

- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment
{
  environmentCopy = environment;
  representedObject = [(CKTranscriptCompositor *)self representedObject];
  v8 = [representedObject layoutSectionForSection:section layoutEnvironment:environmentCopy];

  return v8;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  representedObject = [(CKTranscriptCompositor *)self representedObject];
  [representedObject setDelegate:delegateCopy];
}

- (CKTranscriptCompositorDatasourceDelegate)delegate
{
  representedObject = [(CKTranscriptCompositor *)self representedObject];
  delegate = [representedObject delegate];

  return delegate;
}

- (int64_t)layoutContext
{
  representedObject = [(CKTranscriptCompositor *)self representedObject];
  layoutContext = [representedObject layoutContext];

  return layoutContext;
}

- (id)datasource
{
  representedObject = [(CKTranscriptCompositor *)self representedObject];
  datasource = [representedObject datasource];

  return datasource;
}

- (void)setCollectionView:(id)view
{
  viewCopy = view;
  representedObject = [(CKTranscriptCompositor *)self representedObject];
  [representedObject setCollectionView:viewCopy];
}

- (UICollectionView)collectionView
{
  representedObject = [(CKTranscriptCompositor *)self representedObject];
  collectionView = [representedObject collectionView];

  return collectionView;
}

- (UICollectionViewCompositionalLayout)collectionViewLayout
{
  representedObject = [(CKTranscriptCompositor *)self representedObject];
  collectionViewLayout = [representedObject collectionViewLayout];

  return collectionViewLayout;
}

- (void)setScrollDirection:(int64_t)direction
{
  representedObject = [(CKTranscriptCompositor *)self representedObject];
  [representedObject setScrollDirection:direction];
}

- (int64_t)scrollDirection
{
  representedObject = [(CKTranscriptCompositor *)self representedObject];
  scrollDirection = [representedObject scrollDirection];

  return scrollDirection;
}

- (void)setInterSectionSpacing:(double)spacing
{
  representedObject = [(CKTranscriptCompositor *)self representedObject];
  [representedObject setInterSectionSpacing:spacing];
}

- (double)interSectionSpacing
{
  representedObject = [(CKTranscriptCompositor *)self representedObject];
  [representedObject interSectionSpacing];
  v4 = v3;

  return v4;
}

- (void)setBoundarySupplementaryItems:(id)items
{
  itemsCopy = items;
  representedObject = [(CKTranscriptCompositor *)self representedObject];
  [representedObject setBoundarySupplementaryItems:itemsCopy];
}

- (NSArray)boundarySupplementaryItems
{
  representedObject = [(CKTranscriptCompositor *)self representedObject];
  boundarySupplementaryItems = [representedObject boundarySupplementaryItems];

  return boundarySupplementaryItems;
}

- (void)setContentsInsetReference:(int64_t)reference
{
  representedObject = [(CKTranscriptCompositor *)self representedObject];
  [representedObject setContentsInsetReference:reference];
}

- (int64_t)contentsInsetReference
{
  representedObject = [(CKTranscriptCompositor *)self representedObject];
  contentsInsetReference = [representedObject contentsInsetReference];

  return contentsInsetReference;
}

@end