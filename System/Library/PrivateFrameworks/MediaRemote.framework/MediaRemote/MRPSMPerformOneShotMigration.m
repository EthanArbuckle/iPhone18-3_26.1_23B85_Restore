@interface MRPSMPerformOneShotMigration
@end

@implementation MRPSMPerformOneShotMigration

void ___MRPSMPerformOneShotMigration_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 startEvent:@"Finalize" role:6];
  v9 = [*(a1 + 40) origin];
  v10 = [v9 isLocal];

  if (v10)
  {
    v11 = [*(a1 + 32) startEvent:@"Finalize" role:1];
  }

  else
  {
    v11 = 0;
  }

  v12 = [*(a1 + 32) playbackSessionRequest];
  v13 = [*(a1 + 32) setPlaybackSessionCommandStatus];
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = ___MRPSMPerformOneShotMigration_block_invoke_2;
  v18[3] = &unk_1E769D7E8;
  v19 = *(a1 + 32);
  v16 = *(a1 + 40);
  v22 = v11;
  v23 = v8;
  v20 = v16;
  v21 = v5;
  v17 = v5;
  MRMediaRemoteSendPlaybackSessionMigrateFinalize(v12, v7, v13, v14, v15, v18);
}

void ___MRPSMPerformOneShotMigration_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = *(a1 + 32);
  v6 = [a2 request];
  v7 = [v5 merge:v6];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v12;
  }

  v9 = v8;

  v10 = [*(a1 + 40) origin];
  v11 = [v10 isLocal];

  if (v11)
  {
    [*(a1 + 32) endEventWithID:*(a1 + 56) error:v9];
  }

  [*(a1 + 32) endEventWithID:*(a1 + 60)];
  (*(*(a1 + 48) + 16))();
}

void ___MRPSMPerformOneShotMigration_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___MRPSMPerformOneShotMigration_block_invoke_4;
  v8[3] = &unk_1E769AB50;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v6 = *(v4 + 16);
  v7 = v3;
  v6(v4, v7, v8);
}

uint64_t ___MRPSMPerformOneShotMigration_block_invoke_4(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      a2 = v4;
    }

    return (*(result + 16))(result, a2);
  }

  return result;
}

void ___MRPSMPerformOneShotMigration_block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) origin];
  v5 = [v4 isLocal];

  if (v5)
  {
    v5 = [*(a1 + 40) startEvent:@"GetPlaybackSession" role:1];
  }

  v6 = [*(a1 + 40) playbackSessionRequest];
  v7 = *(a1 + 48);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___MRPSMPerformOneShotMigration_block_invoke_6;
  v13[3] = &unk_1E769D860;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  v14 = v9;
  v17 = v10;
  v11 = *(a1 + 32);
  v18 = v5;
  v15 = v11;
  v16 = v3;
  v12 = v3;
  MRMediaRemotePlaybackSessionRequestWithResponse(v6, v8, v7, v13);
}

void ___MRPSMPerformOneShotMigration_block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v16 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v6 request];
  v8 = [v5 merge:v7];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v16;
  }

  v10 = v9;

  v11 = [v6 playbackSession];

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(a1 + 40) origin];
  v15 = [v14 isLocal];

  if (v15)
  {
    [*(a1 + 32) endEventWithID:*(a1 + 64) error:v10];
  }

  (*(*(a1 + 48) + 16))();
}

void ___MRPSMPerformOneShotMigration_block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) startEvent:@"Prepare" role:6];
  v4 = [*(a1 + 40) origin];
  v5 = [v4 isLocal];

  if (v5)
  {
    v5 = [*(a1 + 32) startEvent:@"Prepare" role:1];
  }

  v6 = [*(a1 + 32) playbackSessionRequest];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___MRPSMPerformOneShotMigration_block_invoke_8;
  v11[3] = &unk_1E769D8B0;
  v12 = *(a1 + 32);
  v9 = *(a1 + 40);
  v15 = v5;
  v13 = v9;
  v14 = v3;
  v10 = v3;
  MRMediaRemoteSendPlaybackSessionMigrateBegin(v6, v7, v8, v11);
}

void ___MRPSMPerformOneShotMigration_block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = *(a1 + 32);
  v6 = [a2 request];
  v7 = [v5 merge:v6];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v12;
  }

  v9 = v8;

  v10 = [*(a1 + 40) origin];
  v11 = [v10 isLocal];

  if (v11)
  {
    [*(a1 + 32) endEventWithID:*(a1 + 56) error:v9];
  }

  (*(*(a1 + 48) + 16))();
}

void ___MRPSMPerformOneShotMigration_block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) endEventWithID:*(*(*(a1 + 64) + 8) + 24)];
  if (v3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = ___MRPSMPerformOneShotMigration_block_invoke_10;
    v13 = &unk_1E769D928;
    v14 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 72);
    v15 = v4;
    v17 = v5;
    v16 = *(a1 + 48);
    v6 = MEMORY[0x1A58E3570](&v10);
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = [v6 copy];
    v9 = MEMORY[0x1A58E3570]();
    [v7 addObject:v9];

    MRPerformAsyncOperationsUntilError(v7, *(a1 + 56));
  }
}

void ___MRPSMPerformOneShotMigration_block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) startEvent:@"Apply" role:6];
  v5 = [*(a1 + 32) copy];
  [v5 setPlayerOptions:0];
  [v5 setEndpointOptions:0];
  v6 = [*(a1 + 40) origin];
  v7 = [v6 isLocal];

  if (v7)
  {
    v8 = [*(a1 + 32) startEvent:@"SendPlaybackSession" role:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 48);
  v10 = *(*(*(a1 + 56) + 8) + 40);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ___MRPSMPerformOneShotMigration_block_invoke_11;
  v14[3] = &unk_1E769D900;
  v11 = *(a1 + 40);
  v15 = *(a1 + 32);
  v12 = *(a1 + 40);
  v18 = v8;
  v19 = v4;
  v16 = v12;
  v17 = v3;
  v13 = v3;
  MRMediaRemoteSendPlaybackSession(v10, v5, v11, v9, v14);
}

void ___MRPSMPerformOneShotMigration_block_invoke_11(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v5 = [*(a1 + 32) merge:a2];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v11;
  }

  v7 = v6;

  v8 = [*(a1 + 40) origin];
  v9 = [v8 isLocal];

  v10 = *(a1 + 32);
  if (v9)
  {
    [v10 endEventWithID:*(a1 + 56) error:v7];
    [*(a1 + 32) endEventWithID:*(a1 + 60)];
  }

  else
  {
    [v10 endEventWithID:*(a1 + 60) error:v11];
  }

  (*(*(a1 + 48) + 16))();
}

@end