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
  v15[4] = self;
  [MEMORY[0x1E69706F8] performWithoutEnforcement:v15];
  identifiers = [self identifiers];
  universalStore = [identifiers universalStore];
  subscriptionAdamID = [universalStore subscriptionAdamID];

  if (subscriptionAdamID || ([identifiers universalStore], v6 = objc_claimAutoreleasedReturnValue(), subscriptionAdamID = objc_msgSend(v6, "adamID"), v6, subscriptionAdamID))
  {
    *(v17 + 24) = 1;
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:subscriptionAdamID];
    [v2 setStoreAdamIdentifier:v7];
  }

  personalizedStore = [identifiers personalizedStore];
  cloudID = [personalizedStore cloudID];

  if (cloudID)
  {
    *(v17 + 24) = 1;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:cloudID];
    [v2 setStoreCloudIdentifier:v10];
  }

  universalStore2 = [identifiers universalStore];
  universalCloudLibraryID = [universalStore2 universalCloudLibraryID];

  if ([universalCloudLibraryID length])
  {
    *(v17 + 24) = 1;
    [v2 setUniversalCloudLibraryID:universalCloudLibraryID];
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