@interface MRGetNowPlayingInfo
@end

@implementation MRGetNowPlayingInfo

void ___MRGetNowPlayingInfo_block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isResolved] && objc_msgSend(*(a1 + 32), "isSystemMediaApplication"))
  {
    v4 = *(*(*(a1 + 64) + 8) + 40);
    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v6 = *(*(a1 + 64) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v4 = *(*(*(a1 + 64) + 8) + 40);
    }

    [v4 setObject:MEMORY[0x1E695E118] forKey:@"kMRMediaRemoteNowPlayingInfoIsMusicApp"];
  }

  if ([v3 isGroupLeader] && *(*(*(a1 + 64) + 8) + 40))
  {
    v8 = [*(a1 + 32) client];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 data];
      [*(*(*(a1 + 64) + 8) + 40) setObject:v10 forKey:@"kMRMediaRemoteNowPlayingInfoClientPropertiesData"];
    }
  }

  v11 = *(a1 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MRGetNowPlayingInfo_block_invoke_2;
  block[3] = &unk_1E769F100;
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v16 = v12;
  v17 = v13;
  v15 = *(a1 + 48);
  dispatch_async(v11, block);
}

void ___MRGetNowPlayingInfo_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__21;
  v30 = __Block_byref_object_dispose__21;
  v31 = 0;
  v4 = [v3 resolvedPlayerPath];
  if (v3)
  {
    v5 = [v3 nowPlayingInfo];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 mutableCopy];
      v8 = v27[5];
      v27[5] = v7;

      v9 = [v3 contentItemWithOffset:0];
      v10 = [v9 artwork];
      v11 = [v10 imageData];

      v12 = [v9 metadata];
      v13 = [v12 artworkMIMEType];

      if (v11)
      {
        v14 = MRNowPlayingArtworkCreateWithImageData(v11, v13);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v16 = [v15 workerQueue];

  v17 = +[MROrigin localOrigin];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ___MRGetNowPlayingInfo_block_invoke_27;
  v20[3] = &unk_1E769F128;
  v18 = v4;
  v21 = v18;
  v25 = &v26;
  v22 = *(a1 + 32);
  v24 = *(a1 + 40);
  v19 = v14;
  v23 = v19;
  [MRDeviceInfoRequest deviceInfoForOrigin:v17 queue:v16 completion:v20];

  _Block_object_dispose(&v26, 8);
}

@end