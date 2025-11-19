@interface PodcastsArtworkCatalogDataSource
- (BOOL)areRepresentationsAvailableForCatalog:(id)a3;
- (id)existingRepresentationForArtworkCatalog:(id)a3;
- (id)visualIdenticalityIdentifierForCatalog:(id)a3;
- (void)loadRepresentationForArtworkCatalog:(MPArtworkCatalog *)a3 completionHandler:(id)a4;
@end

@implementation PodcastsArtworkCatalogDataSource

- (BOOL)areRepresentationsAvailableForCatalog:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1C5D027BC(v4);

  return self & 1;
}

- (id)existingRepresentationForArtworkCatalog:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1C5D028E0(v4);

  return v6;
}

- (void)loadRepresentationForArtworkCatalog:(MPArtworkCatalog *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1C5E3A9D0(&unk_1C6036910, v7);
}

- (id)visualIdenticalityIdentifierForCatalog:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1C5D03C68(v4);

  return v6;
}

@end