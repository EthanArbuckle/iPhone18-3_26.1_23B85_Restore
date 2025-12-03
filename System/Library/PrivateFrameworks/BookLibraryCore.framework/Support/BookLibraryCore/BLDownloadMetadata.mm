@interface BLDownloadMetadata
- (BOOL)bl_isPurchaseRedownload;
- (NSNumber)bl_assetFileSize;
- (id)_bl_copySinfValueWithField:(int64_t)field;
@end

@implementation BLDownloadMetadata

- (id)_bl_copySinfValueWithField:(int64_t)field
{
  sinfs = [(BLDownloadMetadata *)self sinfs];
  if ([sinfs count])
  {
    v5 = [[BLDownloadDRM alloc] initWithSinfArray:sinfs];
    sinfsArray = [(BLDownloadDRM *)v5 sinfsArray];
    v7 = sinfsArray;
    if (sinfsArray)
    {
      v8 = [sinfsArray copyValueForField:field error:0];
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
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end