@interface PBUIPosterVariantPathProvider
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPosterVariantPathProvider:(id)a3;
- (NSURL)snapshotColorStatisticsURL;
- (NSURL)snapshotMetadataURL;
- (NSURL)snapshotURL;
- (PBUIPosterVariantPathProvider)initWithInstanceURL:(id)a3 variant:(int64_t)a4;
@end

@implementation PBUIPosterVariantPathProvider

- (PBUIPosterVariantPathProvider)initWithInstanceURL:(id)a3 variant:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PBUIPosterVariantPathProvider;
  v8 = [(PBUIPosterVariantPathProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_instanceURL, a3);
    v9->_variant = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PBUIPosterVariantPathProvider *)self isEqualToPosterVariantPathProvider:v5];
  }

  return v6;
}

- (BOOL)isEqualToPosterVariantPathProvider:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (v6 = [v4 variant], v6 == -[PBUIPosterVariantPathProvider variant](self, "variant")))
  {
    v7 = [(PBUIPosterVariantPathProvider *)self snapshotContentDirectory];
    v8 = [v5 snapshotContentDirectory];
    v9 = [v7 isEqual:v8];
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
  v4 = [v3 filenameExtension];

  v5 = [(PBUIPosterVariantPathProvider *)self snapshotContentDirectory];
  v6 = MEMORY[0x277CCACA8];
  v7 = PBUIStringForWallpaperVariant([(PBUIPosterVariantPathProvider *)self variant]);
  v8 = [v6 stringWithFormat:@"RuntimeSnapshot-%@", v7];
  v9 = [v5 URLByAppendingPathComponent:v8 isDirectory:0];
  v10 = [v9 URLByAppendingPathExtension:v4];

  return v10;
}

- (NSURL)snapshotMetadataURL
{
  v3 = [(PBUIPosterVariantPathProvider *)self snapshotContentDirectory];
  v4 = MEMORY[0x277CCACA8];
  v5 = PBUIStringForWallpaperVariant([(PBUIPosterVariantPathProvider *)self variant]);
  v6 = [v4 stringWithFormat:@"RuntimeSnapshotMetadata-%@", v5];
  v7 = [v3 URLByAppendingPathComponent:v6 conformingToType:*MEMORY[0x277CE1E38]];

  return v7;
}

- (NSURL)snapshotColorStatisticsURL
{
  v3 = [(PBUIPosterVariantPathProvider *)self snapshotContentDirectory];
  v4 = MEMORY[0x277CCACA8];
  v5 = PBUIStringForWallpaperVariant([(PBUIPosterVariantPathProvider *)self variant]);
  v6 = [v4 stringWithFormat:@"RuntimeSnapshotColorStatisticsMetadata-%@", v5];
  v7 = [v3 URLByAppendingPathComponent:v6 conformingToType:*MEMORY[0x277CE1E38]];

  return v7;
}

@end