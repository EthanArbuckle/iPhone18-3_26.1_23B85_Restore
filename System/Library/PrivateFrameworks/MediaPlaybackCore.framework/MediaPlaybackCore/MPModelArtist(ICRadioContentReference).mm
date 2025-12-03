@interface MPModelArtist(ICRadioContentReference)
- (id)mpc_radioContentReference;
@end

@implementation MPModelArtist(ICRadioContentReference)

- (id)mpc_radioContentReference
{
  v2 = objc_alloc_init(MEMORY[0x1E69E4560]);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__MPModelArtist_ICRadioContentReference__mpc_radioContentReference__block_invoke;
  v12[3] = &unk_1E8238A50;
  v12[5] = v2;
  v12[6] = &v13;
  v12[4] = self;
  [MEMORY[0x1E69706F8] performWithoutEnforcement:v12];
  identifiers = [self identifiers];
  personalizedStore = [identifiers personalizedStore];
  cloudID = [personalizedStore cloudID];

  if (cloudID)
  {
    *(v14 + 24) = 1;
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:cloudID];
    [v2 setRepresentativeCloudIdentifier:v6];
  }

  universalStore = [identifiers universalStore];
  adamID = [universalStore adamID];

  if (adamID)
  {
    *(v14 + 24) = 1;
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:adamID];
    [v2 setStoreIdentifier:v9];
  }

  if (*(v14 + 24) == 1)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v10;
}

@end