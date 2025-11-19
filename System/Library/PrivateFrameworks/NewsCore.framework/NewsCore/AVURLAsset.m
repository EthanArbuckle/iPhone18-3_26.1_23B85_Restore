@interface AVURLAsset
@end

@implementation AVURLAsset

void __78__AVURLAsset_FCAdditions__fc_fetchContentKeyIdentifiersWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 metadata];
    v4 = [v3 fc_firstObjectPassingTest:&__block_literal_global_179_0];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 stringValue];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = FCKeyIdentifiersFromHLSMetadata(v5);
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    v8 = *(a1 + 40);
    v8[2](v8, MEMORY[0x1E695E0F0]);
  }
}

uint64_t __50__AVURLAsset_FCAdditions___fc_hlsKeysMetadataItem__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 key];
  v3 = [v2 isEqual:@"com.apple.hls.keys"];

  return v3;
}

@end