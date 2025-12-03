@interface GEOTileCacheDiskSpaceProvider
- (unint64_t)purgableDiskSpaceForUrgency:(int)urgency;
@end

@implementation GEOTileCacheDiskSpaceProvider

- (unint64_t)purgableDiskSpaceForUrgency:(int)urgency
{
  if ([(GEOTileCacheDiskSpaceProvider *)self minimumUregency]> urgency)
  {
    return 0;
  }

  v4 = +[NSUUID UUID];
  uUIDString = [v4 UUIDString];
  v6 = [NSString stringWithFormat:@"GEODiskSpaceManager-%@", uUIDString];

  v7 = +[GEOTileLoader modernLoader];
  [v7 openForClient:v6];

  v8 = +[GEOTileLoader modernLoader];
  calculateFreeableSizeSync = [v8 calculateFreeableSizeSync];

  v10 = +[GEOTileLoader modernLoader];
  [v10 closeForClient:v6];

  return calculateFreeableSizeSync;
}

@end