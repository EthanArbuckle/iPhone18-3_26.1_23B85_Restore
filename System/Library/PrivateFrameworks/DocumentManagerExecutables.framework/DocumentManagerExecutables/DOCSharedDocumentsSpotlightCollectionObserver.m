@interface DOCSharedDocumentsSpotlightCollectionObserver
- (void)collectionUpdated;
@end

@implementation DOCSharedDocumentsSpotlightCollectionObserver

- (void)collectionUpdated
{
  v2 = self;
  DOCSharedDocumentsSpotlightCollectionObserver.collectionUpdated()();
}

@end