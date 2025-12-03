@interface GEOPlaceCardDiskSpaceProvider
- (unint64_t)purgableDiskSpaceForUrgency:(int)urgency;
@end

@implementation GEOPlaceCardDiskSpaceProvider

- (unint64_t)purgableDiskSpaceForUrgency:(int)urgency
{
  if ([(GEOPlaceCardDiskSpaceProvider *)self minimumUrgency]> urgency)
  {
    return 0;
  }

  v4 = +[GEOPlaceDataLocalProxy shared];
  calculateFreeableSpaceSync = [v4 calculateFreeableSpaceSync];

  return calculateFreeableSpaceSync;
}

@end