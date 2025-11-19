@interface MPModelSong(ICRadioContentReference)
- (id)mpc_radioContentReference;
@end

@implementation MPModelSong(ICRadioContentReference)

- (id)mpc_radioContentReference
{
  v2 = objc_alloc_init(MEMORY[0x1E69E4568]);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  [v2 setKind:*MEMORY[0x1E69E41F0]];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__MPModelSong_ICRadioContentReference__mpc_radioContentReference__block_invoke;
  v15[3] = &unk_1E8238A50;
  v15[5] = v2;
  v15[6] = &v16;
  v15[4] = a1;
  [MEMORY[0x1E69706F8] performWithoutEnforcement:v15];
  v3 = [a1 identifiers];
  v4 = [v3 universalStore];
  v5 = [v4 subscriptionAdamID];

  if (v5 || ([v3 universalStore], v6 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v6, "adamID"), v6, v5))
  {
    *(v17 + 24) = 1;
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
    [v2 setStoreAdamIdentifier:v7];
  }

  v8 = [v3 personalizedStore];
  v9 = [v8 cloudID];

  if (v9)
  {
    *(v17 + 24) = 1;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v9];
    [v2 setStoreCloudIdentifier:v10];
  }

  v11 = [v3 universalStore];
  v12 = [v11 universalCloudLibraryID];

  if ([v12 length])
  {
    *(v17 + 24) = 1;
    [v2 setUniversalCloudLibraryID:v12];
  }

  if (*(v17 + 24) == 1)
  {
    v13 = v2;
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v13;
}

@end