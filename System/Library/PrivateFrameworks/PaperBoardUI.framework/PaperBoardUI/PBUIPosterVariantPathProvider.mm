@interface PBUIPosterVariantPathProvider
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPosterVariantPathProvider:(id)provider;
- (NSURL)snapshotColorStatisticsURL;
- (NSURL)snapshotMetadataURL;
- (NSURL)snapshotURL;
- (PBUIPosterVariantPathProvider)initWithInstanceURL:(id)l variant:(int64_t)variant;
@end

@implementation PBUIPosterVariantPathProvider

- (PBUIPosterVariantPathProvider)initWithInstanceURL:(id)l variant:(int64_t)variant
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = PBUIPosterVariantPathProvider;
  v8 = [(PBUIPosterVariantPathProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_instanceURL, l);
    v9->_variant = variant;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PBUIPosterVariantPathProvider *)self isEqualToPosterVariantPathProvider:v5];
  }

  return v6;
}

- (BOOL)isEqualToPosterVariantPathProvider:(id)provider
{
  providerCopy = provider;
  v5 = providerCopy;
  if (providerCopy && (v6 = [providerCopy variant], v6 == -[PBUIPosterVariantPathProvider variant](self, "variant")))
  {
    snapshotContentDirectory = [(PBUIPosterVariantPathProvider *)self snapshotContentDirectory];
    snapshotContentDirectory2 = [v5 snapshotContentDirectory];
    v9 = [snapshotContentDirectory isEqual:snapshotContentDirectory2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSURL)snapshotURL
{
  v3 = +[PBUIPosterVariantViewController snapshotFormat];
  filenameExtension = [v3 filenameExtension];

  snapshotContentDirectory = [(PBUIPosterVariantPathProvider *)self snapshotContentDirectory];
  v6 = MEMORY[0x277CCACA8];
  v7 = PBUIStringForWallpaperVariant([(PBUIPosterVariantPathProvider *)self variant]);
  v8 = [v6 stringWithFormat:@"RuntimeSnapshot-%@", v7];
  v9 = [snapshotContentDirectory URLByAppendingPathComponent:v8 isDirectory:0];
  v10 = [v9 URLByAppendingPathExtension:filenameExtension];

  return v10;
}

- (NSURL)snapshotMetadataURL
{
  snapshotContentDirectory = [(PBUIPosterVariantPathProvider *)self snapshotContentDirectory];
  v4 = MEMORY[0x277CCACA8];
  v5 = PBUIStringForWallpaperVariant([(PBUIPosterVariantPathProvider *)self variant]);
  v6 = [v4 stringWithFormat:@"RuntimeSnapshotMetadata-%@", v5];
  v7 = [snapshotContentDirectory URLByAppendingPathComponent:v6 conformingToType:*MEMORY[0x277CE1E38]];

  return v7;
}

- (NSURL)snapshotColorStatisticsURL
{
  snapshotContentDirectory = [(PBUIPosterVariantPathProvider *)self snapshotContentDirectory];
  v4 = MEMORY[0x277CCACA8];
  v5 = PBUIStringForWallpaperVariant([(PBUIPosterVariantPathProvider *)self variant]);
  v6 = [v4 stringWithFormat:@"RuntimeSnapshotColorStatisticsMetadata-%@", v5];
  v7 = [snapshotContentDirectory URLByAppendingPathComponent:v6 conformingToType:*MEMORY[0x277CE1E38]];

  return v7;
}

@end