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
  v12[4] = a1;
  [MEMORY[0x1E69706F8] performWithoutEnforcement:v12];
  v3 = [a1 identifiers];
  v4 = [v3 personalizedStore];
  v5 = [v4 cloudID];

  if (v5)
  {
    *(v14 + 24) = 1;
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    [v2 setRepresentativeCloudIdentifier:v6];
  }

  v7 = [v3 universalStore];
  v8 = [v7 adamID];

  if (v8)
  {
    *(v14 + 24) = 1;
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:v8];
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