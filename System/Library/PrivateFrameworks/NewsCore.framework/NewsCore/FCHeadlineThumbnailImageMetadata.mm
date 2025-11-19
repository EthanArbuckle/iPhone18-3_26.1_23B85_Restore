@interface FCHeadlineThumbnailImageMetadata
- (FCHeadlineThumbnailImageMetadata)initWithURL:(id)a3 size:(unint64_t)a4 assetHandle:(id)a5;
@end

@implementation FCHeadlineThumbnailImageMetadata

- (FCHeadlineThumbnailImageMetadata)initWithURL:(id)a3 size:(unint64_t)a4 assetHandle:(id)a5
{
  v9 = a3;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = FCHeadlineThumbnailImageMetadata;
  v11 = [(FCHeadlineThumbnailImageMetadata *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_url, a3);
    v12->_sizeBuffer = a4;
    v13 = *(MEMORY[0x1E695F060] + 8);
    if (a4)
    {
      v13 = ((a4 >> 8) & 0xFFFFFFF);
      v14 = (a4 >> 36);
    }

    else
    {
      v14 = *MEMORY[0x1E695F060];
    }

    v15 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v10 thumbnailSize:v14, v13, (a4 >> 36), *MEMORY[0x1E695F060]];
    thumbnail = v12->_thumbnail;
    v12->_thumbnail = v15;
  }

  return v12;
}

@end