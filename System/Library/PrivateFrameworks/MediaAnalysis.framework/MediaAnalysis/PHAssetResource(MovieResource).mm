@interface PHAssetResource(MovieResource)
- (id)vcp_avAsset;
@end

@implementation PHAssetResource(MovieResource)

- (id)vcp_avAsset
{
  privateFileURL = [self privateFileURL];
  if (privateFileURL)
  {
    v2 = [MEMORY[0x1E6987E28] assetWithURL:privateFileURL];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end