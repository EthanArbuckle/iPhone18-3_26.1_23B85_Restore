@interface AVURLAsset(HeartRhythmUI)
- (double)hrui_assetSize;
- (id)hrui_thumbnailImage;
@end

@implementation AVURLAsset(HeartRhythmUI)

- (double)hrui_assetSize
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v13 = &unk_25222B656;
  v14 = *MEMORY[0x277CBF3A8];
  v2 = dispatch_semaphore_create(0);
  v3 = *MEMORY[0x277CE5EA8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__AVURLAsset_HeartRhythmUI__hrui_assetSize__block_invoke;
  v7[3] = &unk_2796FB6B0;
  v9 = &v10;
  v7[4] = self;
  v4 = v2;
  v8 = v4;
  [self loadTracksWithMediaType:v3 completionHandler:v7];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v11[4];

  _Block_object_dispose(&v10, 8);
  return v5;
}

- (id)hrui_thumbnailImage
{
  v2 = [MEMORY[0x277CE6408] assetImageGeneratorWithAsset:self];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v3 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__AVURLAsset_HeartRhythmUI__hrui_thumbnailImage__block_invoke;
  v9[3] = &unk_2796FB6D8;
  v11 = &v12;
  v9[4] = self;
  v4 = v3;
  v10 = v4;
  v7 = *MEMORY[0x277CC08F0];
  v8 = *(MEMORY[0x277CC08F0] + 16);
  [v2 generateCGImageAsynchronouslyForTime:&v7 completionHandler:v9];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v5;
}

@end