@interface PHAssetResource(MovieResource)
- (id)vcp_avAsset;
@end

@implementation PHAssetResource(MovieResource)

- (id)vcp_avAsset
{
  v1 = [a1 privateFileURL];
  if (v1)
  {
    v2 = [MEMORY[0x1E6987E28] assetWithURL:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end