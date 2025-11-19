@interface MPIdentifierSetWithMPCProtoItem
@end

@implementation MPIdentifierSetWithMPCProtoItem

void ____MPIdentifierSetWithMPCProtoItem_block_invoke(uint64_t a1, void *a2)
{
  v41[0] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[1];
  }

  v5 = v4;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = ____MPIdentifierSetWithMPCProtoItem_block_invoke_2;
  v34[3] = &unk_1E8238988;
  v6 = v5;
  v35 = v6;
  [v3 setUniversalStoreIdentifiersWithBlock:v34];
  if (v6)
  {
    v7 = v6[2];
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);
  v9 = v8;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  if (v8)
  {
    v10 = *(v8 + 1);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v12)
  {
    v15 = 0;
    goto LABEL_32;
  }

  v13 = v12;
  v31 = v3;
  v14 = *v37;
  v15 = @"0";
LABEL_9:
  v16 = 0;
  while (1)
  {
    if (*v37 != v14)
    {
      objc_enumerationMutation(v11);
    }

    v17 = *(*(&v36 + 1) + 8 * v16);
    if (!v17)
    {
      if (!v7)
      {
        goto LABEL_31;
      }

      goto LABEL_14;
    }

    if (*(v17 + 40) == v7)
    {
      break;
    }

LABEL_14:
    if (v13 == ++v16)
    {
      v18 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
      v13 = v18;
      if (!v18)
      {
        v15 = 0;
LABEL_31:
        v3 = v31;
        goto LABEL_32;
      }

      goto LABEL_9;
    }
  }

  v19 = *(v17 + 32);
  if (!v19)
  {
    v15 = @"0";
    goto LABEL_31;
  }

  v20 = v41 + 1;
  quot = *(v17 + 32);
  v3 = v31;
  do
  {
    v22 = lldiv(quot, 10);
    quot = v22.quot;
    if (v22.rem >= 0)
    {
      LOBYTE(v23) = v22.rem;
    }

    else
    {
      v23 = -v22.rem;
    }

    *(v20 - 2) = v23 + 48;
    v24 = (v20 - 2);
    --v20;
  }

  while (v22.quot);
  if (v19 < 0)
  {
    *(v20 - 2) = 45;
    v24 = (v20 - 2);
  }

  v15 = CFStringCreateWithBytes(0, v24, v41 - v24, 0x8000100u, 0);
LABEL_32:

  v25 = *(a1 + 48);
  v26 = v15;
  v27 = v26;
  if (v26 == v25)
  {

    if (!v6)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v28 = [(__CFString *)v26 isEqual:v25];

    if (!v6 || !v28)
    {
      goto LABEL_41;
    }
  }

  if (v6[1])
  {
    if (![(__CFString *)v27 length])
    {
      v29 = [MEMORY[0x1E696AAA8] currentHandler];
      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MPIdentifierSet *__MPIdentifierSetWithMPCProtoItem(_MPCProtoItem *__strong, _MPCProtoTracklist *__strong, NSString *__strong)_block_invoke"}];
      [v29 handleFailureInFunction:v30 file:@"MPRemotePlaybackQueue+MPCAdditions.m" lineNumber:495 description:@"Attempted to decode container identifier set without personID"];
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = ____MPIdentifierSetWithMPCProtoItem_block_invoke_3;
    v32[3] = &unk_1E82389B0;
    v33 = v6;
    [v3 setPersonalStoreIdentifiersWithPersonID:v27 block:v32];
  }

LABEL_41:
}

void ____MPIdentifierSetWithMPCProtoItem_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = v4;
  if (!v3 || (v6 = *(v3 + 32)) == 0)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v6 = *(v7 + 40);
      if (!v6)
      {
        v6 = *(v7 + 24);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  [v4 setAdamID:v6];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 24);
  }

  else
  {
    v9 = 0;
  }

  [v5 setPurchasedAdamID:v9];
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 40);
  }

  else
  {
    v11 = 0;
  }

  [v5 setSubscriptionAdamID:v11];
  v12 = *(a1 + 32);
  if (v12)
  {
    v12 = v12[6];
  }

  v13 = v12;
  [v5 setUniversalCloudLibraryID:v13];
}

void ____MPIdentifierSetWithMPCProtoItem_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    v4 = *(v2 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = v3;
  [v3 setCloudID:v4];
}

@end