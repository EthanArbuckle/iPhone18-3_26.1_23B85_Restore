@interface PhotoKitMediaProvider
@end

@implementation PhotoKitMediaProvider

void ___PhotoKitMediaProvider_block_invoke()
{
  v2 = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
  v0 = [MEMORY[0x1E69C3858] mediaProviderWithLibrary:v2];
  v1 = _PhotoKitMediaProvider__photoKitMediaProvider;
  _PhotoKitMediaProvider__photoKitMediaProvider = v0;
}

@end