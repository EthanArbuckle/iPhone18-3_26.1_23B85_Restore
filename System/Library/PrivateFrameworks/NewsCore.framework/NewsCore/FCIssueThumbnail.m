@interface FCIssueThumbnail
+ (id)issueThumbnailWithAssetHandle:(id)a3 thumbnailSize:(CGSize)a4;
- (CGSize)thumbnailSize;
@end

@implementation FCIssueThumbnail

+ (id)issueThumbnailWithAssetHandle:(id)a3 thumbnailSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  if (!v6 || (width == *MEMORY[0x1E695F060] ? (v7 = height == *(MEMORY[0x1E695F060] + 8)) : (v7 = 0), v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_alloc_init(FCIssueThumbnail);
    [(FCIssueThumbnail *)v8 setThumbnailAssetHandle:v6];
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