@interface DOCSharedDocumentsSpotlightCollectionObserver
- (void)collectionUpdated;
@end

@implementation DOCSharedDocumentsSpotlightCollectionObserver

- (void)collectionUpdated
{
  selfCopy = self;
  DOCSharedDocumentsSpotlightCollectionObserver.collectionUpdated()();
}

@end