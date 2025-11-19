@interface MRNowPlayingSupportedAnimatedArtworkFormats
@end

@implementation MRNowPlayingSupportedAnimatedArtworkFormats

void ___MRNowPlayingSupportedAnimatedArtworkFormats_block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"MRContentItemAnimatedArtworkFormatSquare";
  v3[1] = @"MRContentItemAnimatedArtworkFormatTall";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v1 = _MRNowPlayingSupportedAnimatedArtworkFormats_all;
  _MRNowPlayingSupportedAnimatedArtworkFormats_all = v0;

  v2 = *MEMORY[0x1E69E9840];
}

@end