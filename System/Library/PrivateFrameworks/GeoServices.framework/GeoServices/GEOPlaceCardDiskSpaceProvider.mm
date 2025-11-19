@interface GEOPlaceCardDiskSpaceProvider
- (unint64_t)purgableDiskSpaceForUrgency:(int)a3;
@end

@implementation GEOPlaceCardDiskSpaceProvider

- (unint64_t)purgableDiskSpaceForUrgency:(int)a3
{
  if ([(GEOPlaceCardDiskSpaceProvider *)self minimumUrgency]> a3)
  {
    return 0;
  }

  v4 = +[GEOPlaceDataLocalProxy shared];
  v5 = [v4 calculateFreeableSpaceSync];

  return v5;
}

@end