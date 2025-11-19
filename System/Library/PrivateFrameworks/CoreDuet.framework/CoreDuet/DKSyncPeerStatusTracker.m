@interface DKSyncPeerStatusTracker
@end

@implementation DKSyncPeerStatusTracker

uint64_t __41___DKSyncPeerStatusTracker_debugLogPeers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v6;
  if (v6)
  {
    v8 = v6[2];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 sourceDeviceID];
  v11 = v5;
  v12 = v11;
  if (v11)
  {
    v13 = v11[2];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = [v14 sourceDeviceID];
  v16 = v15;
  if (!v10 || !v15)
  {
    if (!v10 || v15)
    {
      if (v10 || !v15)
      {
        v21 = [v9 identifier];
        v22 = [v14 identifier];
        v20 = [v21 compare:v22];

        goto LABEL_22;
      }

      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (!v7)
  {
    v17 = 0;
    if (v12)
    {
      goto LABEL_9;
    }

LABEL_26:
    v19 = 0;
    if (v17)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v17 = v7[3];
  if (!v12)
  {
    goto LABEL_26;
  }

LABEL_9:
  v18 = v12[3];
  v19 = v18 != 0;
  if (v17 && v18)
  {
    goto LABEL_14;
  }

  if (v17)
  {
LABEL_12:
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_17:
    v20 = -1;
    goto LABEL_22;
  }

LABEL_13:
  if (v17 == 0 && v19)
  {
LABEL_20:
    v20 = 1;
    goto LABEL_22;
  }

LABEL_14:
  v20 = [v10 compare:v15];
LABEL_22:

  return v20;
}

void __42___DKSyncPeerStatusTracker_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = [[_DKSyncContext alloc] initWithName:@"DEFAULT"];
  v2 = [v1 initWithContext:v4];
  v3 = sharedInstance_sharedInstance_4;
  sharedInstance_sharedInstance_4 = v2;
}

void __53___DKSyncPeerStatusTracker_syncPeerTransportsStrings__block_invoke()
{
  v4[16] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F05EEFD0;
  v3[1] = &unk_1F05EEFE8;
  v4[0] = @"none";
  v4[1] = @"Rapport(Pull)";
  v3[2] = &unk_1F05EF000;
  v3[3] = &unk_1F05EF018;
  v4[2] = @"Cloud(Down)";
  v4[3] = @"Cloud(Up)";
  v3[4] = &unk_1F05EF030;
  v3[5] = &unk_1F05EF048;
  v4[4] = @"Rapport(Pull) & Cloud(Down)";
  v4[5] = @"Rapport(Pull) & Cloud(Up)";
  v3[6] = &unk_1F05EF060;
  v3[7] = &unk_1F05EF078;
  v4[6] = @"Cloud(Down) & Cloud(Up)";
  v4[7] = @"Rapport(Pull), Cloud(Down) & Cloud(Up)";
  v3[8] = &unk_1F05EF090;
  v3[9] = &unk_1F05EF0A8;
  v4[8] = @"Rapport(Push)";
  v4[9] = @"Rapport(Pull) & Rapport(Push)";
  v3[10] = &unk_1F05EF0C0;
  v3[11] = &unk_1F05EF0D8;
  v4[10] = @"Rapport(Push) & Cloud(Down)";
  v4[11] = @"Rapport(Push) & Cloud(Up)";
  v3[12] = &unk_1F05EF0F0;
  v3[13] = &unk_1F05EF108;
  v4[12] = @"Rapport(Pull), Rapport(Push) & Cloud(Down)";
  v4[13] = @"Rapport(Pull), Rapport(Push) & Cloud(Up)";
  v3[14] = &unk_1F05EF120;
  v3[15] = &unk_1F05EF138;
  v4[14] = @"Rapport(Push), Cloud(Down) & Cloud(Up)";
  v4[15] = @"Rapport(Pull), Rapport(Push), Cloud(Down) & Cloud(Up)";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:16];
  v1 = syncPeerTransportsStrings_strings;
  syncPeerTransportsStrings_strings = v0;

  v2 = *MEMORY[0x1E69E9840];
}

@end