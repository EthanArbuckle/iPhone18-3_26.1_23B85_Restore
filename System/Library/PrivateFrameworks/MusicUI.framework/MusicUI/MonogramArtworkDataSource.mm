@interface MonogramArtworkDataSource
- (id)visualIdenticalityIdentifierForCatalog:(id)catalog;
- (void)cancelLoadingRepresentationForArtworkCatalog:(id)catalog;
- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler;
@end

@implementation MonogramArtworkDataSource

- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  catalogCopy = catalog;
  selfCopy = self;
  sub_216911FB4(catalogCopy, selfCopy, v6);
  _Block_release(v6);
}

- (void)cancelLoadingRepresentationForArtworkCatalog:(id)catalog
{
  catalogCopy = catalog;
  selfCopy = self;
  sub_216912A40();
}

- (id)visualIdenticalityIdentifierForCatalog:(id)catalog
{
  catalogCopy = catalog;
  selfCopy = self;
  v6 = sub_216912AC0(catalogCopy);

  return v6;
}

@end