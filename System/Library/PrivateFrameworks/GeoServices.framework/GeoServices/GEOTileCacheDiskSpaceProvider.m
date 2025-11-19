@interface GEOTileCacheDiskSpaceProvider
- (unint64_t)purgableDiskSpaceForUrgency:(int)a3;
@end

@implementation GEOTileCacheDiskSpaceProvider

- (unint64_t)purgableDiskSpaceForUrgency:(int)a3
{
  if ([(GEOTileCacheDiskSpaceProvider *)self minimumUregency]> a3)
  {
    return 0;
  }

  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];
  v6 = [NSString stringWithFormat:@"GEODiskSpaceManager-%@", v5];

  v7 = +[GEOTileLoader modernLoader];
  [v7 openForClient:v6];

  v8 = +[GEOTileLoader modernLoader];
  v9 = [v8 calculateFreeableSizeSync];

  v10 = +[GEOTileLoader modernLoader];
  [v10 closeForClient:v6];

  return v9;
}

@end