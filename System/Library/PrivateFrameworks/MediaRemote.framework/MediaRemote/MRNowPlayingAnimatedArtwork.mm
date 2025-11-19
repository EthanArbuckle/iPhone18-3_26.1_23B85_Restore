@interface MRNowPlayingAnimatedArtwork
- (MRNowPlayingAnimatedArtwork)initWithPreviewFrameDataRequestHandler:(id)a3 artworkAssetFileURLRequestHandler:(id)a4;
@end

@implementation MRNowPlayingAnimatedArtwork

- (MRNowPlayingAnimatedArtwork)initWithPreviewFrameDataRequestHandler:(id)a3 artworkAssetFileURLRequestHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MRNowPlayingAnimatedArtwork;
  v8 = [(MRNowPlayingAnimatedArtwork *)&v14 init];
  if (v8)
  {
    v9 = MEMORY[0x1A58E3570](v6);
    previewFrameDataRequestHandler = v8->_previewFrameDataRequestHandler;
    v8->_previewFrameDataRequestHandler = v9;

    v11 = MEMORY[0x1A58E3570](v7);
    artworkAssetFileURLRequestHandler = v8->_artworkAssetFileURLRequestHandler;
    v8->_artworkAssetFileURLRequestHandler = v11;
  }

  return v8;
}

@end