@interface MRNowPlayingAnimatedArtwork
- (MRNowPlayingAnimatedArtwork)initWithPreviewFrameDataRequestHandler:(id)handler artworkAssetFileURLRequestHandler:(id)requestHandler;
@end

@implementation MRNowPlayingAnimatedArtwork

- (MRNowPlayingAnimatedArtwork)initWithPreviewFrameDataRequestHandler:(id)handler artworkAssetFileURLRequestHandler:(id)requestHandler
{
  handlerCopy = handler;
  requestHandlerCopy = requestHandler;
  v14.receiver = self;
  v14.super_class = MRNowPlayingAnimatedArtwork;
  v8 = [(MRNowPlayingAnimatedArtwork *)&v14 init];
  if (v8)
  {
    v9 = MEMORY[0x1A58E3570](handlerCopy);
    previewFrameDataRequestHandler = v8->_previewFrameDataRequestHandler;
    v8->_previewFrameDataRequestHandler = v9;

    v11 = MEMORY[0x1A58E3570](requestHandlerCopy);
    artworkAssetFileURLRequestHandler = v8->_artworkAssetFileURLRequestHandler;
    v8->_artworkAssetFileURLRequestHandler = v11;
  }

  return v8;
}

@end