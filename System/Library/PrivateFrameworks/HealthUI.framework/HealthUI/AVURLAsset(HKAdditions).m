@interface AVURLAsset(HKAdditions)
- (double)hk_assetSize;
- (id)hk_thumbnailImage;
@end

@implementation AVURLAsset(HKAdditions)

- (double)hk_assetSize
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v13 = &unk_1C3DAF4DA;
  v14 = *MEMORY[0x1E695F060];
  v2 = dispatch_semaphore_create(0);
  v3 = *MEMORY[0x1E6987608];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__AVURLAsset_HKAdditions__hk_assetSize__block_invoke;
  v7[3] = &unk_1E81BAB50;
  v9 = &v10;
  v7[4] = a1;
  v4 = v2;
  v8 = v4;
  [a1 loadTracksWithMediaType:v3 completionHandler:v7];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v11[4];

  _Block_object_dispose(&v10, 8);
  return v5;
}

- (id)hk_thumbnailImage
{
  v2 = [MEMORY[0x1E6987E68] assetImageGeneratorWithAsset:a1];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__22;
  v16 = __Block_byref_object_dispose__22;
  v17 = 0;
  v3 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__AVURLAsset_HKAdditions__hk_thumbnailImage__block_invoke;
  v9[3] = &unk_1E81BAB78;
  v11 = &v12;
  v9[4] = a1;
  v4 = v3;
  v10 = v4;
  v7 = *MEMORY[0x1E6960CC0];
  v8 = *(MEMORY[0x1E6960CC0] + 16);
  [v2 generateCGImageAsynchronouslyForTime:&v7 completionHandler:v9];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v5;
}

@end