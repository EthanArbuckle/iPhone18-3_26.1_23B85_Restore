@interface FCIssueThumbnail
+ (id)issueThumbnailWithAssetHandle:(id)handle thumbnailSize:(CGSize)size;
- (CGSize)thumbnailSize;
@end

@implementation FCIssueThumbnail

+ (id)issueThumbnailWithAssetHandle:(id)handle thumbnailSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  handleCopy = handle;
  if (!handleCopy || (width == *MEMORY[0x1E695F060] ? (v7 = height == *(MEMORY[0x1E695F060] + 8)) : (v7 = 0), v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_alloc_init(FCIssueThumbnail);
    [(FCIssueThumbnail *)v8 setThumbnailAssetHandle:handleCopy];
    [(FCIssueThumbnail *)v8 setThumbnailSize:width, height];
  }

  return v8;
}

- (CGSize)thumbnailSize
{
  width = self->_thumbnailSize.width;
  height = self->_thumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end