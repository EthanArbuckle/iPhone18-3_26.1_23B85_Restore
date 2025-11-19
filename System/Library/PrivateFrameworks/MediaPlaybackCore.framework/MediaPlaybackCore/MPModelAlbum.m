@interface MPModelAlbum
@end

@implementation MPModelAlbum

void __69__MPModelAlbum_BehaviorMusicSharePlayAdditions__msp_shortDescription__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  v5 = [*(a1 + 40) title];
  v4 = [v2 stringWithFormat:@" title='%@'", v5];
  [v3 insertString:v4 atIndex:{objc_msgSend(*(a1 + 32), "length") - 1}];
}

void __66__MPModelAlbum_ICRadioContentReference__mpc_radioContentReference__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) title];
  if ([v2 length])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(a1 + 40) setAlbumName:v2];
  }
}

void __122__MPModelAlbum_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) identifiers];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __122__MPModelAlbum_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_2;
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
    v9[2] = __122__MPModelAlbum_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_3;
    v9[3] = &unk_1E82389B0;
    v10 = v5;
    [v3 setPersonalStoreIdentifiersWithPersonID:v8 block:v9];
  }
}

void __122__MPModelAlbum_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasLoadedValueForKey:*MEMORY[0x1E696FC28]])
  {
    [v3 setLibraryAddEligible:{objc_msgSend(*(a1 + 32), "isLibraryAddEligible")}];
  }
}

void __122__MPModelAlbum_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_2(uint64_t a1, void *a2)
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

void __122__MPModelAlbum_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 personalizedStore];
  v4 = [v5 cloudAlbumID];
  [v3 setCloudAlbumID:v4];
}

@end