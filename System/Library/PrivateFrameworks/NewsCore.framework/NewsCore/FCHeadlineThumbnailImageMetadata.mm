@interface FCHeadlineThumbnailImageMetadata
- (FCHeadlineThumbnailImageMetadata)initWithURL:(id)l size:(unint64_t)size assetHandle:(id)handle;
@end

@implementation FCHeadlineThumbnailImageMetadata

- (FCHeadlineThumbnailImageMetadata)initWithURL:(id)l size:(unint64_t)size assetHandle:(id)handle
{
  lCopy = l;
  handleCopy = handle;
  v18.receiver = self;
  v18.super_class = FCHeadlineThumbnailImageMetadata;
  v11 = [(FCHeadlineThumbnailImageMetadata *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_url, l);
    v12->_sizeBuffer = size;
    v13 = *(MEMORY[0x1E695F060] + 8);
    if (size)
    {
      v13 = ((size >> 8) & 0xFFFFFFF);
      v14 = (size >> 36);
    }

    else
    {
      v14 = *MEMORY[0x1E695F060];
    }

    v15 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:handleCopy thumbnailSize:v14, v13, (size >> 36), *MEMORY[0x1E695F060]];
    thumbnail = v12->_thumbnail;
    v12->_thumbnail = v15;
  }

  return v12;
}

@end