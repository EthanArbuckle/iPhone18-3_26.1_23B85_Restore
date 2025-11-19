@interface MPCModelRadioGetTracksPrepareIdentityStep
- (id)nextStepWithIdentityProperties:(id)a3 delegatedIdentityProperties:(id)a4;
- (void)performWithCompletionHandler:(id)a3;
@end

@implementation MPCModelRadioGetTracksPrepareIdentityStep

- (void)performWithCompletionHandler:(id)a3
{
  v4 = a3;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__16341;
  v26[4] = __Block_byref_object_dispose__16342;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__16341;
  v24[4] = __Block_byref_object_dispose__16342;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__16341;
  v22[4] = __Block_byref_object_dispose__16342;
  v23 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 1;
  v5 = dispatch_group_create();
  v6 = dispatch_queue_create("com.apple.MediaPlaybackCore.MPCModelRadioGetTracksPrepareIdentityStep", 0);
  v7 = [(ICRadioGetTracksRequest *)self->super._request requestContext];
  v8 = [v7 identityStore];
  dispatch_group_enter(v5);
  v9 = [v7 identity];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__MPCModelRadioGetTracksPrepareIdentityStep_performWithCompletionHandler___block_invoke;
  v19[3] = &unk_1E8235320;
  v19[4] = v5;
  v19[5] = v6;
  v19[6] = v7;
  v19[7] = v22;
  v19[8] = v24;
  v19[9] = v20;
  [v8 getPropertiesForUserIdentity:v9 completionHandler:v19];

  v10 = [v7 delegatedIdentity];
  if (v10)
  {
    dispatch_group_enter(v5);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __74__MPCModelRadioGetTracksPrepareIdentityStep_performWithCompletionHandler___block_invoke_3;
    v18[3] = &unk_1E8235320;
    v18[4] = v5;
    v18[5] = v6;
    v18[6] = v7;
    v18[7] = v26;
    v18[8] = v24;
    v18[9] = v20;
    [v8 getPropertiesForUserIdentity:v10 completionHandler:v18];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__MPCModelRadioGetTracksPrepareIdentityStep_performWithCompletionHandler___block_invoke_5;
  v12[3] = &unk_1E8235348;
  v12[4] = self;
  v13 = v4;
  v14 = v20;
  v15 = v24;
  v16 = v22;
  v17 = v26;
  v11 = v4;
  dispatch_group_notify(v5, v6, v12);

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);
}

void __74__MPCModelRadioGetTracksPrepareIdentityStep_performWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__MPCModelRadioGetTracksPrepareIdentityStep_performWithCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E82352F8;
  v13 = v5;
  v14 = v6;
  v9 = *(a1 + 64);
  v15 = *(a1 + 48);
  v16 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_group_async(v7, v8, v12);
  dispatch_group_leave(*(a1 + 32));
}

void __74__MPCModelRadioGetTracksPrepareIdentityStep_performWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__MPCModelRadioGetTracksPrepareIdentityStep_performWithCompletionHandler___block_invoke_4;
  v12[3] = &unk_1E82352F8;
  v13 = v5;
  v14 = v6;
  v9 = *(a1 + 64);
  v15 = *(a1 + 48);
  v16 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_group_async(v7, v8, v12);
  dispatch_group_leave(*(a1 + 32));
}

void __74__MPCModelRadioGetTracksPrepareIdentityStep_performWithCompletionHandler___block_invoke_5(void *a1)
{
  v2 = a1[5];
  v3 = *(*(a1[6] + 8) + 24);
  v4 = a1[4];
  if (v3)
  {
    [v4 nextStepWithIdentityProperties:*(*(a1[8] + 8) + 40) delegatedIdentityProperties:*(*(a1[9] + 8) + 40)];
  }

  else
  {
    [v4 nextStepWithError:*(*(a1[7] + 8) + 40)];
  }
  v5 = ;
  (*(v2 + 16))(v2);
}

uint64_t __74__MPCModelRadioGetTracksPrepareIdentityStep_performWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) isDelegated];
  v3 = *(a1 + 32);
  if (result)
  {
    v4 = *(*(a1 + 56) + 8);
    v5 = v3;
    v6 = *(v4 + 40);
    *(v4 + 40) = v5;
  }

  else
  {
    if (v3)
    {
      return result;
    }

    v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    [v13 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = MEMORY[0x1E696AEC0];
    v8 = [*(a1 + 48) identity];
    v9 = [v7 stringWithFormat:@"Unable to get radio tracks [invalid delegate user identity] - userIdentity=%@ - properties%@", v8, *(a1 + 32)];
    [v13 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A278]];

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E4198] code:-7400 userInfo:v13];
    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v6 = v13;
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  return MEMORY[0x1EEE66BB8](v5, v6);
}

uint64_t __74__MPCModelRadioGetTracksPrepareIdentityStep_performWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*(a1 + 56) + 8);
    v4 = v2;
    v5 = *(v3 + 40);
    *(v3 + 40) = v4;
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    [v13 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v6 = MEMORY[0x1E696AEC0];
    v7 = [*(a1 + 48) identity];
    v8 = [v6 stringWithFormat:@"Unable to get radio tracks [invalid user identity] - userIdentity=%@ - properties%@", v7, *(a1 + 32)];
    [v13 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A278]];

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E4198] code:-7400 userInfo:v13];
    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v5 = v13;
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (id)nextStepWithIdentityProperties:(id)a3 delegatedIdentityProperties:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MPCModelRadioGetTracksStep *)[MPCModelRadioGetTracksRequestStep alloc] initWithPreviousStep:self];
  v9 = [v6 copy];

  delegatedIdentityProperties = v8->super._delegatedIdentityProperties;
  v8->super._delegatedIdentityProperties = v9;

  v11 = [v7 copy];
  identityProperties = v8->super._identityProperties;
  v8->super._identityProperties = v11;

  return v8;
}

@end