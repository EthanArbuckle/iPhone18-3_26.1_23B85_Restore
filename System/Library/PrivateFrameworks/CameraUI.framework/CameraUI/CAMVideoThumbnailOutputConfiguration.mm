@interface CAMVideoThumbnailOutputConfiguration
- (CAMVideoThumbnailOutputConfiguration)initWithThumbnailSize:(CGSize)size filters:(id)filters;
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

- (CAMVideoThumbnailOutputConfiguration)initWithThumbnailSize:(CGSize)size filters:(id)filters
{
  height = size.height;
  width = size.width;
  filtersCopy = filters;
  v12.receiver = self;
  v12.super_class = CAMVideoThumbnailOutputConfiguration;
  v9 = [(CAMVideoThumbnailOutputConfiguration *)&v12 self];

  if (v9)
  {
    *(v9 + 16) = width;
    *(v9 + 24) = height;
    objc_storeStrong((v9 + 8), filters);
    v10 = v9;
  }

  return v9;
}

@end