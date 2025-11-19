@interface AVURLAsset(MPCHLSSessionData)
- (id)mpc_HLSAVMetadataItemInMetadata:()MPCHLSSessionData;
- (id)mpc_synchronousHLSSessionDataWithTimeout:()MPCHLSSessionData error:;
@end

@implementation AVURLAsset(MPCHLSSessionData)

- (id)mpc_HLSAVMetadataItemInMetadata:()MPCHLSSessionData
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 key];
        v10 = [v9 isEqualToString:@"com.apple.hls.audioAssetMetadata"];

        if (v10)
        {
          v11 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)mpc_synchronousHLSSessionDataWithTimeout:()MPCHLSSessionData error:
{
  v41 = *MEMORY[0x1E69E9840];
  if ([a1 statusOfValueForKey:@"metadata" error:0] == 2)
  {
    v7 = [a1 metadataForFormat:*MEMORY[0x1E69876F0]];
    v8 = [a1 mpc_HLSAVMetadataItemInMetadata:v7];

    goto LABEL_10;
  }

  v9 = dispatch_semaphore_create(0);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__33920;
  v31 = __Block_byref_object_dispose__33921;
  v32 = 0;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __80__AVURLAsset_MPCHLSSessionData__mpc_synchronousHLSSessionDataWithTimeout_error___block_invoke;
  v22 = &unk_1E8239078;
  v25 = &v33;
  v26 = &v27;
  v23 = a1;
  v10 = v9;
  v24 = v10;
  [a1 loadValuesAsynchronouslyForKeys:&unk_1F45999D0 completionHandler:&v19];
  v11 = dispatch_time(0, 1000000000 * a3);
  if (dispatch_semaphore_wait(v10, v11))
  {
    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      v8 = 0;
      goto LABEL_8;
    }

    *buf = 138543362;
    v38 = a1;
    v13 = "[AL] Time-out while retrieving HLS session metadata - Asset:%{public}@";
    v14 = v12;
    v15 = 12;
LABEL_6:
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    goto LABEL_7;
  }

  v17 = v34[3];
  if (v17 == 3)
  {
    if (a4)
    {
      *a4 = v28[5];
    }

    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v18 = v28[5];
    *buf = 138543618;
    v38 = a1;
    v39 = 2114;
    v40 = v18;
    v13 = "[AL] Error retrieving HLS session metadata - Asset:%{public}@ - Error:%{public}@";
    v14 = v12;
    v15 = 22;
    goto LABEL_6;
  }

  if (v17 != 2)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v12 = [a1 metadataForFormat:*MEMORY[0x1E69876F0], v19, v20, v21, v22, v23];
  v8 = [a1 mpc_HLSAVMetadataItemInMetadata:v12];
LABEL_8:

LABEL_9:
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
LABEL_10:

  return v8;
}

@end