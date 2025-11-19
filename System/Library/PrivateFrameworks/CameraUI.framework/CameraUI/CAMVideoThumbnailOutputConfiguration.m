@interface CAMVideoThumbnailOutputConfiguration
- (CAMVideoThumbnailOutputConfiguration)initWithThumbnailSize:(CGSize)a3 filters:(id)a4;
- (CGSize)thumbnailSize;
@end

@implementation CAMVideoThumbnailOutputConfiguration

- (CGSize)thumbnailSize
{
  width = self->_thumbnailSize.width;
  height = self->_thumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CAMVideoThumbnailOutputConfiguration)initWithThumbnailSize:(CGSize)a3 filters:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CAMVideoThumbnailOutputConfiguration;
  v9 = [(CAMVideoThumbnailOutputConfiguration *)&v12 self];

  if (v9)
  {
    *(v9 + 16) = width;
    *(v9 + 24) = height;
    objc_storeStrong((v9 + 8), a4);
    v10 = v9;
  }

  return v9;
}

@end