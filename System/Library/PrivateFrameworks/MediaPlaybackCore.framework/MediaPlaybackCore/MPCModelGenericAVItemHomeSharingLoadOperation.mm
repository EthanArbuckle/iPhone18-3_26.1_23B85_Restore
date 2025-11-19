@interface MPCModelGenericAVItemHomeSharingLoadOperation
- (void)execute;
@end

@implementation MPCModelGenericAVItemHomeSharingLoadOperation

- (void)execute
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__MPCModelGenericAVItemHomeSharingLoadOperation_execute__block_invoke;
  aBlock[3] = &unk_1E8233408;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(MPCModelGenericAVItemHomeSharingLoadOperation *)self assetLoadProperties];
  v5 = [v4 homeSharingAsset];
  if ([v5 isAvailable])
  {
    v6 = [v5 URL];
    if (v6)
    {
      v7 = objc_alloc_init(MPCModelGenericAVItemAssetLoadResult);
      [(MPCModelGenericAVItemAssetLoadResult *)v7 setAssetURL:v6];
      v8 = [v6 pathExtension];
      [(MPCModelGenericAVItemAssetLoadResult *)v7 setAssetPathExtension:v8];

      [(MPCModelGenericAVItemAssetLoadResult *)v7 setAssetQualityType:2];
      v9 = [v5 protectedContentSupportStorageFileURL];
      [(MPCModelGenericAVItemAssetLoadResult *)v7 setProtectedContentSupportStorageFileURL:v9];

      [(MPCModelGenericAVItemAssetLoadResult *)v7 setIsHomeSharingAsset:1];
      [(MPCModelGenericAVItemAssetLoadResult *)v7 setSource:2];
      v3[2](v3, v7, 0);
    }

    else
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:23 userInfo:0];
      (v3)[2](v3, 0, v7);
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:24 userInfo:0];
    (v3)[2](v3, 0, v6);
  }
}

void __56__MPCModelGenericAVItemHomeSharingLoadOperation_execute__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = v6[35];
  v10 = v5;
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
    v8 = *(a1 + 32);
    v9 = *(v8 + 280);
    *(v8 + 280) = 0;

    v5 = v10;
    v6 = *(a1 + 32);
  }

  [v6 finishWithError:v5];
}

@end