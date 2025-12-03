@interface PodcastsArtworkCatalogDataSource
- (BOOL)areRepresentationsAvailableForCatalog:(id)catalog;
- (id)existingRepresentationForArtworkCatalog:(id)catalog;
- (id)visualIdenticalityIdentifierForCatalog:(id)catalog;
- (void)loadRepresentationForArtworkCatalog:(MPArtworkCatalog *)catalog completionHandler:(id)handler;
@end

@implementation PodcastsArtworkCatalogDataSource

- (BOOL)areRepresentationsAvailableForCatalog:(id)catalog
{
  catalogCopy = catalog;
  selfCopy = self;
  LOBYTE(self) = sub_1C5D027BC(catalogCopy);

  return self & 1;
}

- (id)existingRepresentationForArtworkCatalog:(id)catalog
{
  catalogCopy = catalog;
  selfCopy = self;
  v6 = sub_1C5D028E0(catalogCopy);

  return v6;
}

- (void)loadRepresentationForArtworkCatalog:(MPArtworkCatalog *)catalog completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = catalog;
  v7[3] = v6;
  v7[4] = self;
  catalogCopy = catalog;
  selfCopy = self;

  sub_1C5E3A9D0(&unk_1C6036910, v7);
}

- (id)visualIdenticalityIdentifierForCatalog:(id)catalog
{
  catalogCopy = catalog;
  selfCopy = self;
  v6 = sub_1C5D03C68(catalogCopy);

  return v6;
}

@end