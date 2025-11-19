@interface CAMTimelapsePlaceholderResult
- (CAMTimelapsePlaceholderResult)initWithAssetUUID:(id)a3 captureSession:(unsigned __int16)a4 creationDate:(id)a5 captureOrientation:(int64_t)a6 captureDevice:(int64_t)a7 videoDimensions:(CGSize)a8 duration:(double)a9 previewImageSurface:(void *)a10 localPrivateMetadataFileURL:(id)a11;
- (CGSize)finalExpectedPixelSize;
- (CGSize)videoDimensions;
- (UIImage)placeholderImage;
- (void)dealloc;
@end

@implementation CAMTimelapsePlaceholderResult

- (CAMTimelapsePlaceholderResult)initWithAssetUUID:(id)a3 captureSession:(unsigned __int16)a4 creationDate:(id)a5 captureOrientation:(int64_t)a6 captureDevice:(int64_t)a7 videoDimensions:(CGSize)a8 duration:(double)a9 previewImageSurface:(void *)a10 localPrivateMetadataFileURL:(id)a11
{
  height = a8.height;
  width = a8.width;
  v20 = a3;
  v21 = a5;
  v22 = a11;
  v30.receiver = self;
  v30.super_class = CAMTimelapsePlaceholderResult;
  v23 = [(CAMTimelapsePlaceholderResult *)&v30 init];
  if (v23)
  {
    v24 = [v20 copy];
    assetUUID = v23->_assetUUID;
    v23->_assetUUID = v24;

    v23->_sessionIdentifier = a4;
    objc_storeStrong(&v23->_creationDate, a5);
    v23->_captureOrientation = a6;
    v23->_captureDevice = a7;
    v23->_videoDimensions.width = width;
    v23->_videoDimensions.height = height;
    v23->_timelapseDuration = a9;
    if (a10)
    {
      v23->_previewImageSurface = a10;
      CFRetain(a10);
    }

    v26 = [v22 copy];
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
  v2 = [(CAMTimelapsePlaceholderResult *)self previewImageSurface];
  if (v2)
  {
    v2 = [objc_alloc(MEMORY[0x1E69DCAB8]) _initWithIOSurface:v2 scale:0 orientation:1.0];
  }

  return v2;
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