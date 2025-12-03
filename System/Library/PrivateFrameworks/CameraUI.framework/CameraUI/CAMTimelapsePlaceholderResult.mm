@interface CAMTimelapsePlaceholderResult
- (CAMTimelapsePlaceholderResult)initWithAssetUUID:(id)d captureSession:(unsigned __int16)session creationDate:(id)date captureOrientation:(int64_t)orientation captureDevice:(int64_t)device videoDimensions:(CGSize)dimensions duration:(double)duration previewImageSurface:(void *)self0 localPrivateMetadataFileURL:(id)self1;
- (CGSize)finalExpectedPixelSize;
- (CGSize)videoDimensions;
- (UIImage)placeholderImage;
- (void)dealloc;
@end

@implementation CAMTimelapsePlaceholderResult

- (CAMTimelapsePlaceholderResult)initWithAssetUUID:(id)d captureSession:(unsigned __int16)session creationDate:(id)date captureOrientation:(int64_t)orientation captureDevice:(int64_t)device videoDimensions:(CGSize)dimensions duration:(double)duration previewImageSurface:(void *)self0 localPrivateMetadataFileURL:(id)self1
{
  height = dimensions.height;
  width = dimensions.width;
  dCopy = d;
  dateCopy = date;
  lCopy = l;
  v30.receiver = self;
  v30.super_class = CAMTimelapsePlaceholderResult;
  v23 = [(CAMTimelapsePlaceholderResult *)&v30 init];
  if (v23)
  {
    v24 = [dCopy copy];
    assetUUID = v23->_assetUUID;
    v23->_assetUUID = v24;

    v23->_sessionIdentifier = session;
    objc_storeStrong(&v23->_creationDate, date);
    v23->_captureOrientation = orientation;
    v23->_captureDevice = device;
    v23->_videoDimensions.width = width;
    v23->_videoDimensions.height = height;
    v23->_timelapseDuration = duration;
    if (surface)
    {
      v23->_previewImageSurface = surface;
      CFRetain(surface);
    }

    v26 = [lCopy copy];
    localPrivateMetadataFileURL = v23->_localPrivateMetadataFileURL;
    v23->_localPrivateMetadataFileURL = v26;

    v28 = v23;
  }

  return v23;
}

- (void)dealloc
{
  previewImageSurface = self->_previewImageSurface;
  if (previewImageSurface)
  {
    CFRelease(previewImageSurface);
    self->_previewImageSurface = 0;
  }

  v4.receiver = self;
  v4.super_class = CAMTimelapsePlaceholderResult;
  [(CAMTimelapsePlaceholderResult *)&v4 dealloc];
}

- (UIImage)placeholderImage
{
  previewImageSurface = [(CAMTimelapsePlaceholderResult *)self previewImageSurface];
  if (previewImageSurface)
  {
    previewImageSurface = [objc_alloc(MEMORY[0x1E69DCAB8]) _initWithIOSurface:previewImageSurface scale:0 orientation:1.0];
  }

  return previewImageSurface;
}

- (CGSize)finalExpectedPixelSize
{
  width = self->_videoDimensions.width;
  height = self->_videoDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)videoDimensions
{
  width = self->_videoDimensions.width;
  height = self->_videoDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

@end