@interface AVPlayer(SnapShot)
- (id)bkui_snapshotImageAt:()SnapShot asset:error:;
@end

@implementation AVPlayer(SnapShot)

- (id)bkui_snapshotImageAt:()SnapShot asset:error:
{
  v7 = [MEMORY[0x277CE6408] assetImageGeneratorWithAsset:a4];
  v12 = *a3;
  v13 = *(a3 + 2);
  v8 = [v7 copyCGImageAtTime:&v12 actualTime:0 error:a5];
  if (v8)
  {
    v9 = v8;
    v10 = [MEMORY[0x277D755B8] imageWithCGImage:v8];
    CFAutorelease(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end