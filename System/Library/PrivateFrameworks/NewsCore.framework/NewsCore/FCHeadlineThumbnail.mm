@interface FCHeadlineThumbnail
+ (FCHeadlineThumbnail)headlineThumbnailWithAssetHandle:(id)handle thumbnailSize:(CGSize)size;
- (CGSize)thumbnailSize;
@end

@implementation FCHeadlineThumbnail

- (CGSize)thumbnailSize
{
  width = self->_thumbnailSize.width;
  height = self->_thumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (FCHeadlineThumbnail)headlineThumbnailWithAssetHandle:(id)handle thumbnailSize:(CGSize)size
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
    v8 = objc_alloc_init(FCHeadlineThumbnail);
    [(FCHeadlineThumbnail *)v8 setThumbnailAssetHandle:handleCopy];
    [(FCHeadlineThumbnail *)v8 setThumbnailSize:width, height];
  }

  return v8;
}

@end