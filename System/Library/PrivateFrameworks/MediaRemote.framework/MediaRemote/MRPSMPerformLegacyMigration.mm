@interface MRPSMPerformLegacyMigration
@end

@implementation MRPSMPerformLegacyMigration

void ___MRPSMPerformLegacyMigration_block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1[4];
  v7 = a2;
  LODWORD(a2) = [v6 startEvent:@"Finalize" role:1];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = ___MRPSMPerformLegacyMigration_block_invoke_2;
  v31[3] = &unk_1E769D978;
  v8 = a1[4];
  v34 = a2;
  v32 = v8;
  v33 = v5;
  v9 = v5;
  v10 = MEMORY[0x1A58E3570](v31);
  v11 = [a1[5] origin];
  if ([v11 isLocal])
  {
    v12 = 7.0;
  }

  else
  {
    v12 = 15.0;
  }

  v13 = [MRBlockGuard alloc];
  v14 = MEMORY[0x1E696AEC0];
  v15 = [a1[4] requestID];
  v16 = [v14 stringWithFormat:@"endPlaybackSessionMigration<%@>", v15];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = ___MRPSMPerformLegacyMigration_block_invoke_3;
  v28[3] = &unk_1E769BCD0;
  v29 = a1[6];
  v17 = v10;
  v30 = v17;
  v18 = [(MRBlockGuard *)v13 initWithTimeout:v16 reason:v28 handler:v12];

  v19 = [a1[4] playbackSessionRequest];
  v20 = a1[5];
  v21 = a1[6];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = ___MRPSMPerformLegacyMigration_block_invoke_5;
  v24[3] = &unk_1E769D9A0;
  v25 = a1[4];
  v26 = v18;
  v27 = v17;
  v22 = v17;
  v23 = v18;
  MRMediaRemoteSendPlaybackSessionMigrateFinalize(v19, v7, 0, v20, v21, v24);
}

void ___MRPSMPerformLegacyMigration_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  [v3 endEventWithID:v4 error:v5];
  (*(*(a1 + 40) + 16))();
}

void ___MRPSMPerformLegacyMigration_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___MRPSMPerformLegacyMigration_block_invoke_4;
  v8[3] = &unk_1E769AB28;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v6 = v3;
  v7 = MRCreateDonatedQosBlock(v8);
  dispatch_async(v4, v7);
}

uint64_t ___MRPSMPerformLegacyMigration_block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 request];
  v5 = [v3 merge:v4];

  result = [*(a1 + 40) disarm];
  if (result)
  {
    v7 = *(*(a1 + 48) + 16);

    return v7();
  }

  return result;
}

void ___MRPSMPerformLegacyMigration_block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___MRPSMPerformLegacyMigration_block_invoke_7;
  v8[3] = &unk_1E769AB50;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v6 = *(v4 + 16);
  v7 = v3;
  v6(v4, v7, v8);
}

uint64_t ___MRPSMPerformLegacyMigration_block_invoke_7(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void ___MRPSMPerformLegacyMigration_block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) startEvent:@"GetPlaybackSession" role:2];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = ___MRPSMPerformLegacyMigration_block_invoke_9;
  v30[3] = &unk_1E769D978;
  v5 = *(a1 + 32);
  v33 = v4;
  v31 = v5;
  v32 = v3;
  v6 = v3;
  v7 = MEMORY[0x1A58E3570](v30);
  v8 = [*(a1 + 40) origin];
  if ([v8 isLocal])
  {
    v9 = 7.0;
  }

  else
  {
    v9 = 15.0;
  }

  v10 = [MRBlockGuard alloc];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [*(a1 + 32) requestID];
  v13 = [v11 stringWithFormat:@"requestPlaybackSession<%@>", v12];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = ___MRPSMPerformLegacyMigration_block_invoke_10;
  v27[3] = &unk_1E769BCD0;
  v28 = *(a1 + 48);
  v14 = v7;
  v29 = v14;
  v15 = [(MRBlockGuard *)v10 initWithTimeout:v13 reason:v27 handler:v9];

  v16 = [*(a1 + 32) playbackSessionRequest];
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = ___MRPSMPerformLegacyMigration_block_invoke_12;
  v22[3] = &unk_1E769D9C8;
  v23 = *(a1 + 32);
  v24 = v15;
  v19 = *(a1 + 56);
  v25 = v14;
  v26 = v19;
  v20 = v14;
  v21 = v15;
  MRMediaRemotePlaybackSessionRequestWithResponse(v16, v17, v18, v22);
}

void ___MRPSMPerformLegacyMigration_block_invoke_9(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  [v3 endEventWithID:v4 error:v5];
  (*(*(a1 + 40) + 16))();
}

void ___MRPSMPerformLegacyMigration_block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___MRPSMPerformLegacyMigration_block_invoke_11;
  v8[3] = &unk_1E769AB28;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v6 = v3;
  v7 = MRCreateDonatedQosBlock(v8);
  dispatch_async(v4, v7);
}

void ___MRPSMPerformLegacyMigration_block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v11 playbackSession];
  v7 = [v6 data];

  [*(a1 + 32) setPlaybackSessionSize:{objc_msgSend(v7, "length")}];
  if ([*(a1 + 40) disarm])
  {
    v8 = [v11 playbackSession];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    (*(*(a1 + 48) + 16))();
  }
}

void ___MRPSMPerformLegacyMigration_block_invoke_13(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] startEvent:@"Prepare" role:1];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = ___MRPSMPerformLegacyMigration_block_invoke_14;
  v28[3] = &unk_1E769D978;
  v5 = a1[4];
  v31 = v4;
  v29 = v5;
  v30 = v3;
  v6 = v3;
  v7 = MEMORY[0x1A58E3570](v28);
  v8 = [a1[5] origin];
  if ([v8 isLocal])
  {
    v9 = 7.0;
  }

  else
  {
    v9 = 15.0;
  }

  v10 = [MRBlockGuard alloc];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [a1[4] requestID];
  v13 = [v11 stringWithFormat:@"beginPlaybackSessionMigration<%@>", v12];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = ___MRPSMPerformLegacyMigration_block_invoke_15;
  v25[3] = &unk_1E769BCD0;
  v26 = a1[6];
  v14 = v7;
  v27 = v14;
  v15 = [(MRBlockGuard *)v10 initWithTimeout:v13 reason:v25 handler:v9];

  v16 = [a1[4] playbackSessionRequest];
  v17 = a1[5];
  v18 = a1[6];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = ___MRPSMPerformLegacyMigration_block_invoke_17;
  v21[3] = &unk_1E769D9A0;
  v22 = a1[4];
  v23 = v15;
  v24 = v14;
  v19 = v14;
  v20 = v15;
  MRMediaRemoteSendPlaybackSessionMigrateBegin(v16, v17, v18, v21);
}

void ___MRPSMPerformLegacyMigration_block_invoke_14(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  [v3 endEventWithID:v4 error:v5];
  (*(*(a1 + 40) + 16))();
}

void ___MRPSMPerformLegacyMigration_block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___MRPSMPerformLegacyMigration_block_invoke_16;
  v8[3] = &unk_1E769AB28;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v6 = v3;
  v7 = MRCreateDonatedQosBlock(v8);
  dispatch_async(v4, v7);
}

uint64_t ___MRPSMPerformLegacyMigration_block_invoke_17(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 request];
  v5 = [v3 merge:v4];

  result = [*(a1 + 40) disarm];
  if (result)
  {
    v7 = *(*(a1 + 48) + 16);

    return v7();
  }

  return result;
}

void ___MRPSMPerformLegacyMigration_block_invoke_18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 64);
    v4 = *(*(a1 + 64) + 16);

    v4();
  }

  else
  {
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = ___MRPSMPerformLegacyMigration_block_invoke_19;
    v66[3] = &unk_1E769D888;
    v67 = *(a1 + 32);
    v68 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 72);
    v69 = v5;
    v70 = v6;
    v7 = MEMORY[0x1A58E3570](v66);
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = ___MRPSMPerformLegacyMigration_block_invoke_21;
    v64[3] = &unk_1E769DAE0;
    v65 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
    v8 = MEMORY[0x1A58E3570](v64);
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = ___MRPSMPerformLegacyMigration_block_invoke_26;
    v58[3] = &unk_1E769DB30;
    v59 = *(a1 + 32);
    v9 = v8;
    v62 = v9;
    v60 = *(a1 + 56);
    v10 = *(a1 + 48);
    v11 = *(a1 + 88);
    v61 = v10;
    v63 = v11;
    v12 = MEMORY[0x1A58E3570](v58);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = ___MRPSMPerformLegacyMigration_block_invoke_31;
    v53[3] = &unk_1E769D888;
    v54 = *(a1 + 32);
    v55 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 80);
    v56 = v13;
    v57 = v14;
    v35 = MEMORY[0x1A58E3570](v53);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = ___MRPSMPerformLegacyMigration_block_invoke_33;
    v49[3] = &unk_1E769D9F0;
    v50 = *(a1 + 32);
    v51 = *(a1 + 40);
    v52 = *(a1 + 48);
    v15 = MEMORY[0x1A58E3570](v49);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = ___MRPSMPerformLegacyMigration_block_invoke_35;
    v43[3] = &unk_1E769DBD0;
    v44 = *(a1 + 32);
    v45 = *(a1 + 40);
    v46 = *(a1 + 48);
    v16 = v15;
    v17 = *(a1 + 96);
    v47 = v16;
    v48 = v17;
    v18 = MEMORY[0x1A58E3570](v43);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = ___MRPSMPerformLegacyMigration_block_invoke_134;
    v37[3] = &unk_1E769DC48;
    v38 = *(a1 + 32);
    v41 = v9;
    v39 = *(a1 + 56);
    v40 = *(a1 + 48);
    v42 = v16;
    v19 = v16;
    v36 = v9;
    v20 = MEMORY[0x1A58E3570](v37);
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = v7;
    v23 = [v7 copy];
    v24 = MEMORY[0x1A58E3570]();
    [v21 addObject:v24];

    v25 = [v12 copy];
    v26 = MEMORY[0x1A58E3570]();
    [v21 addObject:v26];

    v27 = [v22 copy];
    v28 = MEMORY[0x1A58E3570]();
    [v21 addObject:v28];

    v29 = [v35 copy];
    v30 = MEMORY[0x1A58E3570]();
    [v21 addObject:v30];

    v31 = [v18 copy];
    v32 = MEMORY[0x1A58E3570]();
    [v21 addObject:v32];

    v33 = [v20 copy];
    v34 = MEMORY[0x1A58E3570]();
    [v21 addObject:v34];

    MRPerformAsyncOperationsUntilError(v21, *(a1 + 64));
  }
}

void ___MRPSMPerformLegacyMigration_block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) startEvent:@"GetPlaybackQueue" role:2];
  v5 = [[MRPlaybackQueueRequest alloc] initWithRange:0, 1];
  v6 = [*(a1 + 32) requestID];
  [(MRPlaybackQueueRequest *)v5 setRequestIdentifier:v6];

  [(MRPlaybackQueueRequest *)v5 setIncludeMetadata:1];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___MRPSMPerformLegacyMigration_block_invoke_20;
  v11[3] = &unk_1E769DA18;
  v14 = *(a1 + 56);
  v9 = *(a1 + 32);
  v15 = v4;
  v12 = v9;
  v13 = v3;
  v10 = v3;
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync(v5, v7, v8, v11);
}

uint64_t ___MRPSMPerformLegacyMigration_block_invoke_20(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 contentItemWithOffset:0];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(a1 + 32) endEventWithID:*(a1 + 56) error:a3];
  v8 = *(*(a1 + 40) + 16);

  return v8();
}

id ___MRPSMPerformLegacyMigration_block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 copy];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = ___MRPSMPerformLegacyMigration_block_invoke_22;
  v33[3] = &unk_1E769DA40;
  v5 = v3;
  v6 = *(a1 + 32);
  v34 = v5;
  v35 = v6;
  v7 = MEMORY[0x1A58E3570](v33);
  v8 = [*(*(*(a1 + 40) + 8) + 40) metadata];
  [v8 playbackRate];
  v10 = v9;

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = ___MRPSMPerformLegacyMigration_block_invoke_23;
  v29[3] = &unk_1E769DA68;
  v11 = v5;
  v12 = *(a1 + 40);
  v30 = v11;
  v31 = v12;
  v32 = v10;
  v13 = MEMORY[0x1A58E3570](v29);
  CalculatedPlaybackPosition = MRContentItemGetCalculatedPlaybackPosition(*(*(*(a1 + 40) + 8) + 40));
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = ___MRPSMPerformLegacyMigration_block_invoke_24;
  v25[3] = &unk_1E769DA90;
  v15 = v11;
  v16 = *(a1 + 40);
  v26 = v15;
  v27 = v16;
  v28 = CalculatedPlaybackPosition;
  v17 = MEMORY[0x1A58E3570](v25);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = ___MRPSMPerformLegacyMigration_block_invoke_25;
  v23[3] = &unk_1E769DAB8;
  v18 = v15;
  v24 = v18;
  v19 = MEMORY[0x1A58E3570](v23);
  [v4 setContentItem:*(*(*(a1 + 40) + 8) + 40)];
  if (v7[2](v7))
  {
    [v4 setPlaybackState:1];
  }

  if (v13[2](v13))
  {
    v20 = [*(*(*(a1 + 40) + 8) + 40) metadata];
    [v20 playbackRate];
    [v4 setPlaybackRate:v21];
  }

  if (v17[2](v17))
  {
    [v4 setPlaybackPosition:CalculatedPlaybackPosition];
  }

  if (v19[2](v19))
  {
    [v4 setAllowFadeTransition:1];
  }

  return v4;
}

BOOL ___MRPSMPerformLegacyMigration_block_invoke_22(uint64_t a1)
{
  if (([*(a1 + 32) playerOptions] & 4) != 0)
  {
    return 1;
  }

  if (([*(a1 + 32) playerOptions] & 2) == 0)
  {
    return 0;
  }

  v3 = *(*(*(a1 + 40) + 8) + 24);

  return MRMediaRemotePlaybackStateIsAdvancing(v3);
}

BOOL ___MRPSMPerformLegacyMigration_block_invoke_23(uint64_t a1)
{
  if (([*(a1 + 32) playerOptions] & 0x20) != 0 && (objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "metadata"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isAlwaysLive"), v2, (v3 & 1) == 0))
  {
    return fmin(fabsf(*(a1 + 48)), fabsf(*(a1 + 48) + -1.0)) >= 0.001;
  }

  else
  {
    return 0;
  }
}

BOOL ___MRPSMPerformLegacyMigration_block_invoke_24(uint64_t a1)
{
  if (([*(a1 + 32) playerOptions] & 0x10) != 0 && (objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "metadata"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isAlwaysLive"), v2, (v3 & 1) == 0))
  {
    return fabs(*(a1 + 48)) >= 0.001;
  }

  else
  {
    return 0;
  }
}

void ___MRPSMPerformLegacyMigration_block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) startEvent:@"SendPlaybackSession" role:1];
  v5 = *(a1 + 32);
  v6 = (*(*(a1 + 56) + 16))();
  [v6 setPlayerOptions:0];
  [v6 setEndpointOptions:0];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = ___MRPSMPerformLegacyMigration_block_invoke_27;
  v30[3] = &unk_1E769D978;
  v7 = *(a1 + 32);
  v33 = v4;
  v31 = v7;
  v32 = v3;
  v8 = v3;
  v9 = MEMORY[0x1A58E3570](v30);
  v10 = [*(a1 + 40) origin];
  if ([v10 isLocal])
  {
    v11 = 7.0;
  }

  else
  {
    v11 = 15.0;
  }

  v12 = [MRBlockGuard alloc];
  v13 = MEMORY[0x1E696AEC0];
  v14 = [*(a1 + 32) requestID];
  v15 = [v13 stringWithFormat:@"sendPlaybackSession<%@>", v14];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = ___MRPSMPerformLegacyMigration_block_invoke_28;
  v27[3] = &unk_1E769BCD0;
  v28 = *(a1 + 48);
  v16 = v9;
  v29 = v16;
  v17 = [(MRBlockGuard *)v12 initWithTimeout:v15 reason:v27 handler:v11];

  v18 = *(*(*(a1 + 64) + 8) + 40);
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = ___MRPSMPerformLegacyMigration_block_invoke_30;
  v23[3] = &unk_1E769DB08;
  v24 = v17;
  v25 = *(a1 + 32);
  v26 = v16;
  v21 = v16;
  v22 = v17;
  MRMediaRemoteSendPlaybackSession(v18, v6, v19, v20, v23);
}

void ___MRPSMPerformLegacyMigration_block_invoke_27(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  [v3 endEventWithID:v4 error:v5];
  (*(*(a1 + 40) + 16))();
}

void ___MRPSMPerformLegacyMigration_block_invoke_28(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___MRPSMPerformLegacyMigration_block_invoke_29;
  v8[3] = &unk_1E769AB28;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v6 = v3;
  v7 = MRCreateDonatedQosBlock(v8);
  dispatch_async(v4, v7);
}

void ___MRPSMPerformLegacyMigration_block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    v6 = [*(a1 + 40) merge:v7];
    (*(*(a1 + 48) + 16))();
  }
}

void ___MRPSMPerformLegacyMigration_block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) startEvent:@"GetPlaybackState" role:2];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___MRPSMPerformLegacyMigration_block_invoke_32;
  v9[3] = &unk_1E769DB58;
  v12 = *(a1 + 56);
  v7 = *(a1 + 32);
  v13 = v4;
  v10 = v7;
  v11 = v3;
  v8 = v3;
  MRMediaRemoteGetPlaybackStateForPlayer(v5, v6, v9);
}

uint64_t ___MRPSMPerformLegacyMigration_block_invoke_32(uint64_t a1, int a2)
{
  *(*(*(a1 + 48) + 8) + 24) = a2;
  [*(a1 + 32) endEventWithID:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void ___MRPSMPerformLegacyMigration_block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) playerOptions] & 8) != 0)
  {
    v4 = [*(a1 + 32) startEvent:@"SendPause" role:2];
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = MEMORY[0x1E696AEC0];
    v7 = [*(a1 + 32) requestID];
    v8 = MRMediaRemotePlaybackSessionMigratePlayerOptionsCopyDescription(8);
    v9 = [v6 stringWithFormat:@"migrationPlaybackSession<%@> for option %@", v7, v8];
    [v5 setObject:v9 forKeyedSubscript:@"kMRMediaRemoteOptionRemoteControlInterfaceIdentifier"];

    v10 = [*(a1 + 32) requestID];
    [v5 setObject:v10 forKeyedSubscript:@"kMRMediaRemoteOptionContextID"];

    v11 = [MRPlayerPath alloc];
    v12 = [*(a1 + 40) origin];
    v13 = [(MRPlayerPath *)v11 initWithOrigin:v12 client:0 player:0];

    v14 = *(a1 + 48);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___MRPSMPerformLegacyMigration_block_invoke_34;
    v15[3] = &unk_1E769DB80;
    v16 = *(a1 + 32);
    v18 = v4;
    v17 = v3;
    MRMediaRemoteSendCommandToPlayer(1, v5, v13, 0, v14, v15);
  }

  else
  {
    (*(v3 + 2))(v3, 0);
  }
}

void ___MRPSMPerformLegacyMigration_block_invoke_34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MRMediaRemoteErrorFromCommandStatuses(a2, a3);
  [*(a1 + 32) endEventWithID:*(a1 + 48) error:v4];
  (*(*(a1 + 40) + 16))();
}

void ___MRPSMPerformLegacyMigration_block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) playerOptions] & 0x40) != 0 && objc_msgSend(*(a1 + 32), "allowFadeTransition"))
  {
    v4 = [*(a1 + 32) startEvent:@"FadeOut" role:2];
    v5 = [[MRNowPlayingRequest alloc] initWithPlayerPath:*(a1 + 40)];
    v6 = *(a1 + 48);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___MRPSMPerformLegacyMigration_block_invoke_36;
    v9[3] = &unk_1E769DBA8;
    v10 = *(a1 + 32);
    v14 = v4;
    v11 = *(a1 + 56);
    v7 = v3;
    v8 = *(a1 + 64);
    v12 = v7;
    v13 = v8;
    [(MRNowPlayingRequest *)v5 triggerAudioFadeOutForNowPlayingApplicationWithReplyQueue:v6 completion:v9];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void ___MRPSMPerformLegacyMigration_block_invoke_36(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) endEventWithID:*(a1 + 64) error:v5];
  if (v5)
  {
    v6 = _MRLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ___MRPSMPerformLegacyMigration_block_invoke_36_cold_1(v5, v6);
    }

    v7 = *(a1 + 48);
    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = a2;
    v8 = *(*(a1 + 48) + 16);
  }

  v8();
}

void ___MRPSMPerformLegacyMigration_block_invoke_134(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) startEvent:@"CoordinatePlayback" role:1];
  v5 = *(a1 + 32);
  v6 = (*(*(a1 + 56) + 16))();
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___MRPSMPerformLegacyMigration_block_invoke_2_138;
  v13[3] = &unk_1E769DC20;
  v10 = *(a1 + 32);
  v19 = v4;
  v14 = v10;
  v15 = v7;
  v16 = *(a1 + 48);
  v17 = *(a1 + 64);
  v18 = v3;
  v11 = v3;
  v12 = v7;
  MRMediaRemoteSendPlaybackSession(0, v6, v8, v9, v13);
}

void ___MRPSMPerformLegacyMigration_block_invoke_2_138(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) merge:a2];
  [*(a1 + 32) endEventWithID:*(a1 + 72) error:v5];
  if (([*(a1 + 32) playerOptions] & 0x40) != 0 && objc_msgSend(*(a1 + 32), "allowFadeTransition"))
  {
    v7 = [MEMORY[0x1E695DF00] date];
    [v7 timeIntervalSinceDate:*(a1 + 40)];
    v9 = v8;

    v10 = 1.0 - v9;
    if (1.0 - v9 < 0.0)
    {
      v10 = 0.0;
    }

    v11 = dispatch_time(0, (v10 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___MRPSMPerformLegacyMigration_block_invoke_3_139;
    block[3] = &unk_1E769DBF8;
    v12 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v14 = v5;
    dispatch_after(v11, v12, block);
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void ___MRPSMPerformLegacyMigration_block_invoke_3_139(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___MRPSMPerformLegacyMigration_block_invoke_4_140;
  v3[3] = &unk_1E769AB50;
  v2 = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = *(a1 + 32);
  (*(v2 + 16))(v2, v3);
}

uint64_t ___MRPSMPerformLegacyMigration_block_invoke_4_140(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    a2 = *(a1 + 32);
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), a2);
}

void ___MRPSMPerformLegacyMigration_block_invoke_36_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "[MRPlaybackSession] Fade out failed with error %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end