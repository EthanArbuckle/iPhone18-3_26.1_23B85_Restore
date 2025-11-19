@interface MPCCreateIdentifiersForOpaqueID
@end

@implementation MPCCreateIdentifiersForOpaqueID

void ___MPCCreateIdentifiersForOpaqueID_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = ___MPCCreateIdentifiersForOpaqueID_block_invoke_2;
    v18[3] = &unk_1E8238988;
    v19 = *(a1 + 32);
    [v3 setUniversalStoreIdentifiersWithBlock:v18];
    v4 = v19;
  }

  else if (*(a1 + 49) == 1)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___MPCCreateIdentifiersForOpaqueID_block_invoke_3;
    v16[3] = &unk_1E8237EE8;
    v17 = *(a1 + 32);
    [v3 setRadioIdentifiersWithBlock:v16];
    v4 = v17;
  }

  else if (*(a1 + 50) == 1)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___MPCCreateIdentifiersForOpaqueID_block_invoke_4;
    v14[3] = &unk_1E8238988;
    v15 = *(a1 + 32);
    [v3 setUniversalStoreIdentifiersWithBlock:v14];
    v4 = v15;
  }

  else
  {
    if (![*(a1 + 32) longLongValue])
    {
      [v3 setOpaqueID:*(a1 + 32)];
      goto LABEL_10;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___MPCCreateIdentifiersForOpaqueID_block_invoke_5;
    v12[3] = &unk_1E8238988;
    v13 = *(a1 + 32);
    [v3 setUniversalStoreIdentifiersWithBlock:v12];
    v4 = v13;
  }

LABEL_10:
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = ___MPCCreateIdentifiersForOpaqueID_block_invoke_6;
  v9 = &unk_1E8233790;
  v11 = *(a1 + 51);
  v5 = *(a1 + 40);
  v10 = *(a1 + 32);
  [v3 setPersonalStoreIdentifiersWithPersonID:v5 block:&v6];
  [v3 setPlaceholder:{*(a1 + 52), v6, v7, v8, v9}];
}

void ___MPCCreateIdentifiersForOpaqueID_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setSubscriptionAdamID:{objc_msgSend(v2, "longLongValue")}];
}

uint64_t ___MPCCreateIdentifiersForOpaqueID_block_invoke_6(uint64_t result, void *a2)
{
  if (*(result + 40) == 1)
  {
    return [a2 setCloudAlbumID:*(result + 32)];
  }

  return result;
}

@end