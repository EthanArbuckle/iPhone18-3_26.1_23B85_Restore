@interface MPModelSong
@end

@implementation MPModelSong

void __68__MPModelSong_BehaviorMusicSharePlayAdditions__msp_shortDescription__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  v5 = [*(a1 + 40) title];
  v4 = [v2 stringWithFormat:@" title='%@'", v5];
  [v3 insertString:v4 atIndex:{objc_msgSend(*(a1 + 32), "length") - 1}];
}

void __65__MPModelSong_ICRadioContentReference__mpc_radioContentReference__block_invoke(uint64_t a1)
{
  v37 = [*(a1 + 32) album];
  v2 = [v37 artist];
  v3 = [v2 name];

  if ([v3 length])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(a1 + 40) setAlbumArtistName:v3];
  }

  v4 = [v37 title];
  if ([v4 length])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(a1 + 40) setAlbumName:v4];
  }

  v5 = [v37 discCount];
  if (v5 >= 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    [v6 setDiscCount:v7];
  }

  if ([v37 isCompilation])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v8 setCompilation:v9];
  }

  v10 = [v37 trackCount];
  if (v10 >= 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v11 = *(a1 + 40);
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
    [v11 setTrackCount:v12];
  }

  v13 = [v37 year];
  if (v13 >= 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v14 = *(a1 + 40);
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
    [v14 setYear:v15];
  }

  v16 = [*(a1 + 32) artist];
  v17 = [v16 name];

  if ([v17 length])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(a1 + 40) setArtistName:v17];
  }

  v18 = [*(a1 + 32) composer];
  v19 = [v18 name];

  if ([v19 length])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(a1 + 40) setComposerName:v19];
  }

  v20 = [*(a1 + 32) copyrightText];
  if ([v20 length])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(a1 + 40) setCopyright:v20];
  }

  v21 = [*(a1 + 32) discNumber];
  if (v21 >= 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v22 = *(a1 + 40);
    v23 = [MEMORY[0x1E696AD98] numberWithInteger:v21];
    [v22 setDiscNumber:v23];
  }

  v24 = [*(a1 + 32) localFileAsset];
  v25 = [v24 fileSize];

  if (v25)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v26 = *(a1 + 40);
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v25];
    [v26 setFileSize:v27];
  }

  v28 = [*(a1 + 32) genre];
  v29 = [v28 name];

  if ([v29 length])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(a1 + 40) setGenreName:v29];
  }

  [*(a1 + 32) duration];
  if (v30 > 2.22044605e-16)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v31 = *(a1 + 40);
    v32 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v31 setDuration:v32];
  }

  v33 = [*(a1 + 32) title];
  if ([v33 length])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(a1 + 40) setName:v33];
  }

  v34 = [*(a1 + 32) trackNumber];
  if (v34 >= 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v35 = *(a1 + 40);
    v36 = [MEMORY[0x1E696AD98] numberWithInteger:v34];
    [v35 setTrackNumber:v36];
  }
}

void __121__MPModelSong_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) identifiers];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __121__MPModelSong_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_2;
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
    v9[2] = __121__MPModelSong_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_3;
    v9[3] = &unk_1E82389B0;
    v10 = v5;
    [v3 setPersonalStoreIdentifiersWithPersonID:v8 block:v9];
  }
}

void __121__MPModelSong_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_4(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 hasLoadedValueForKey:*MEMORY[0x1E696FF90]])
  {
    [v7 setLibraryAddEligible:{objc_msgSend(*(a1 + 32), "isLibraryAddEligible")}];
  }

  if ([v7 hasLoadedValueForKey:*MEMORY[0x1E6970200]])
  {
    v3 = [*(a1 + 32) storeAsset];
    [v7 setStoreAsset:v3];
  }

  if ([v7 hasLoadedValueForKey:*MEMORY[0x1E69701C0]])
  {
    v4 = [v7 album];
    v5 = [*(a1 + 32) album];
    v6 = [v4 MPC_modelObjectWithStoreFrontLocalEquivalentModelObject:v5];
    [v7 setAlbum:v6];
  }
}

void __121__MPModelSong_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_2(uint64_t a1, void *a2)
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

void __121__MPModelSong_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 personalizedStore];
  v4 = [v5 cloudAlbumID];
  [v3 setCloudAlbumID:v4];
}

@end