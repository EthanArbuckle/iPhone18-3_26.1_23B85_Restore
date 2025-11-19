@interface MonogramArtworkDataSource
- (id)visualIdenticalityIdentifierForCatalog:(id)a3;
- (void)cancelLoadingRepresentationForArtworkCatalog:(id)a3;
- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4;
@end

@implementation MonogramArtworkDataSource

- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_216911FB4(v7, v8, v6);
  _Block_release(v6);
}

- (void)cancelLoadingRepresentationForArtworkCatalog:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_216912A40();
}

- (id)visualIdenticalityIdentifierForCatalog:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_216912AC0(v4);

  return v6;
}

@end