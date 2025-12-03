@interface GEOSharedNavETAInfo(MSPExtras)
- (uint64_t)mspDescription;
@end

@implementation GEOSharedNavETAInfo(MSPExtras)

- (uint64_t)mspDescription
{
  v2 = MEMORY[0x277CCACA8];
  waypointIndex = [self waypointIndex];
  [self remainingTime];
  v5 = (v4 / 60.0);
  [self remainingDistance];
  return [v2 stringWithFormat:@"[%lu] remaining (%d min, %d km)", waypointIndex, v5, (v6 / 1000.0)];
}

@end