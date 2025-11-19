@interface MPIdentifierSetWithMPCProtoContainer
@end

@implementation MPIdentifierSetWithMPCProtoContainer

void ____MPIdentifierSetWithMPCProtoContainer_block_invoke(uint64_t a1, void *a2)
{
  v49[0] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[2];
  }

  v5 = v4;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = ____MPIdentifierSetWithMPCProtoContainer_block_invoke_2;
  v42[3] = &unk_1E8238988;
  v6 = v5;
  v43 = v6;
  [v3 setUniversalStoreIdentifiersWithBlock:v42];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = ____MPIdentifierSetWithMPCProtoContainer_block_invoke_3;
  v40[3] = &unk_1E8237EE8;
  v7 = v6;
  v41 = v7;
  [v3 setRadioIdentifiersWithBlock:v40];
  if (v7)
  {
    v8 = v7[2];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 40);
  v10 = v9;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  if (v9)
  {
    v11 = *(v9 + 1);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v13)
  {
    v16 = 0;
    goto LABEL_32;
  }

  v14 = v13;
  v37 = v3;
  v15 = *v45;
  v16 = @"0";
LABEL_9:
  v17 = 0;
  while (1)
  {
    if (*v45 != v15)
    {
      objc_enumerationMutation(v12);
    }

    v18 = *(*(&v44 + 1) + 8 * v17);
    if (!v18)
    {
      if (!v8)
      {
        goto LABEL_31;
      }

      goto LABEL_14;
    }

    if (*(v18 + 40) == v8)
    {
      break;
    }

LABEL_14:
    if (v14 == ++v17)
    {
      v19 = [v12 countByEnumeratingWithState:&v44 objects:v48 count:16];
      v14 = v19;
      if (!v19)
      {
        v16 = 0;
LABEL_31:
        v3 = v37;
        goto LABEL_32;
      }

      goto LABEL_9;
    }
  }

  v20 = *(v18 + 32);
  if (!v20)
  {
    v16 = @"0";
    goto LABEL_31;
  }

  v21 = v49 + 1;
  quot = *(v18 + 32);
  v3 = v37;
  do
  {
    v23 = lldiv(quot, 10);
    quot = v23.quot;
    if (v23.rem >= 0)
    {
      LOBYTE(v24) = v23.rem;
    }

    else
    {
      v24 = -v23.rem;
    }

    *(v21 - 2) = v24 + 48;
    v25 = (v21 - 2);
    --v21;
  }

  while (v23.quot);
  if (v20 < 0)
  {
    *(v21 - 2) = 45;
    v25 = (v21 - 2);
  }

  v16 = CFStringCreateWithBytes(0, v25, v49 - v25, 0x8000100u, 0);
LABEL_32:

  v26 = *(a1 + 48);
  v27 = v16;
  v28 = v27;
  if (v27 == v26)
  {
  }

  else
  {
    v29 = [(__CFString *)v27 isEqual:v26];

    if (!v29)
    {
      goto LABEL_45;
    }
  }

  if (v7)
  {
    v30 = v7[4];
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  if (![v31 length])
  {
    if (v7)
    {
      v32 = v7[1];

      if (v32)
      {
        goto LABEL_42;
      }

      goto LABEL_46;
    }

    goto LABEL_52;
  }

LABEL_42:
  if (![(__CFString *)v28 length])
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MPIdentifierSet *__MPIdentifierSetWithMPCProtoContainer(_MPCProtoContainer *__strong, _MPCProtoTracklist *__strong, NSString *__strong)_block_invoke"}];
    [v35 handleFailureInFunction:v36 file:@"MPRemotePlaybackQueue+MPCAdditions.m" lineNumber:462 description:@"Attempted to decode container identifier set without personID"];
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = ____MPIdentifierSetWithMPCProtoContainer_block_invoke_4;
  v38[3] = &unk_1E82389B0;
  v39 = v7;
  [v3 setPersonalStoreIdentifiersWithPersonID:v28 block:v38];

LABEL_45:
  if (!v7)
  {
LABEL_52:
    v33 = 0;
    goto LABEL_47;
  }

LABEL_46:
  v33 = v7[8];
LABEL_47:
  v34 = v33;
  [v3 setVersionHash:v34];
}

void ____MPIdentifierSetWithMPCProtoContainer_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if (v3)
  {
    v5 = *(v3 + 56);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v4 setGlobalPlaylistID:v6];

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 24);
  }

  else
  {
    v8 = 0;
  }

  [v4 setAdamID:v8];
  v9 = *(a1 + 32);
  if (v9)
  {
    v9 = v9[5];
  }

  v10 = v9;
  [v4 setUniversalCloudLibraryID:v10];
}

void ____MPIdentifierSetWithMPCProtoContainer_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    v4 = *(v2 + 48);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setStationStringID:v5];
}

void ____MPIdentifierSetWithMPCProtoContainer_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v8 = a2;
  if (v3)
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v8 setCloudAlbumID:v5];

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  [v8 setCloudID:v7];
}

@end