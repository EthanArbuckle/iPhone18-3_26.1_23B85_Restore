@interface MPModelTVSeason
@end

@implementation MPModelTVSeason

void __125__MPModelTVSeason_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) identifiers];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __125__MPModelTVSeason_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_2;
  v11[3] = &unk_1E8238988;
  v5 = v4;
  v12 = v5;
  [v3 setUniversalStoreIdentifiersWithBlock:v11];
  v6 = [v5 personalizedStore];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 personID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __125__MPModelTVSeason_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_3;
    v9[3] = &unk_1E82389B0;
    v10 = v5;
    [v3 setPersonalStoreIdentifiersWithPersonID:v8 block:v9];
  }
}

void __125__MPModelTVSeason_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasLoadedValueForKey:*MEMORY[0x1E69700A8]])
  {
    [v3 setLibraryAddEligible:{objc_msgSend(*(a1 + 32), "isLibraryAddEligible")}];
  }
}

void __125__MPModelTVSeason_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 universalStore];
  [v4 setAdamID:{objc_msgSend(v5, "adamID")}];

  v6 = [*(a1 + 32) universalStore];
  [v4 setSubscriptionAdamID:{objc_msgSend(v6, "subscriptionAdamID")}];

  v7 = [*(a1 + 32) universalStore];
  [v4 setPurchasedAdamID:{objc_msgSend(v7, "purchasedAdamID")}];
}

void __125__MPModelTVSeason_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 personalizedStore];
  v4 = [v5 cloudAlbumID];
  [v3 setCloudAlbumID:v4];
}

@end