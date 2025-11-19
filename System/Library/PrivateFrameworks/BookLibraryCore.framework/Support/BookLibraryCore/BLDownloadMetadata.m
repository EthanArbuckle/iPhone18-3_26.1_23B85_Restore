@interface BLDownloadMetadata
- (BOOL)bl_isPurchaseRedownload;
- (NSNumber)bl_assetFileSize;
- (id)_bl_copySinfValueWithField:(int64_t)a3;
@end

@implementation BLDownloadMetadata

- (id)_bl_copySinfValueWithField:(int64_t)a3
{
  v4 = [(BLDownloadMetadata *)self sinfs];
  if ([v4 count])
  {
    v5 = [[BLDownloadDRM alloc] initWithSinfArray:v4];
    v6 = [(BLDownloadDRM *)v5 sinfsArray];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 copyValueForField:a3 error:0];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSNumber)bl_assetFileSize
{
  v3 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"file-size", 0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [(BLDownloadMetadata *)self valueForMetadataKey:@"asset-info"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 objectForKeyedSubscript:@"file-size"];

      v3 = v5;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (BOOL)bl_isPurchaseRedownload
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"is-purchased-redownload", 0];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end